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
	<24.257751, 34.569729, 34.641216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.277790, 34.910191, 34.850224>,  <24.289814, 35.114468, 34.975628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.277790, 34.910191, 34.850224>,  <24.257751, 34.569729, 34.641216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.277790, 34.910191, 34.850224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970073, -0.165925, 0.177277,
		0.237589, 0.498003, -0.833993,
		0.050096, 0.851153, 0.522521,
		24.292818, 35.165535, 35.006981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929996, 34.760326, 34.480526>,  <24.257751, 34.569729, 34.641216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929996, 34.760326, 34.480526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788454, 34.938461, 34.809517>,  <24.703529, 35.045341, 35.006912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788454, 34.938461, 34.809517>,  <24.929996, 34.760326, 34.480526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788454, 34.938461, 34.809517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928099, 0.058277, 0.367743,
		0.115837, 0.893466, -0.433935,
		-0.353855, 0.445333, 0.822475,
		24.682297, 35.072060, 35.056259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334312, 35.339447, 34.595024>,  <24.929996, 34.760326, 34.480526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334312, 35.339447, 34.595024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159325, 35.223785, 34.935616>,  <25.054333, 35.154388, 35.139969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159325, 35.223785, 34.935616>,  <25.334312, 35.339447, 34.595024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.159325, 35.223785, 34.935616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895502, -0.053921, 0.441778,
		-0.081828, 0.955764, 0.282524,
		-0.437470, -0.289151, 0.851476,
		25.028084, 35.137039, 35.191059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862555, 34.939812, 34.467030>,  <25.334312, 35.339447, 34.595024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862555, 34.939812, 34.467030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936022, 35.291119, 34.643623>,  <25.980103, 35.501904, 34.749580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936022, 35.291119, 34.643623>,  <25.862555, 34.939812, 34.467030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936022, 35.291119, 34.643623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880006, -0.053221, 0.471972,
		0.438014, -0.475198, 0.763106,
		0.183667, 0.878268, 0.441489,
		25.991121, 35.554600, 34.776070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112829, 35.011082, 35.207737>,  <25.862555, 34.939812, 34.467030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112829, 35.011082, 35.207737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.424389, 34.968254, 35.454914>,  <26.611324, 34.942558, 35.603222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.424389, 34.968254, 35.454914>,  <26.112829, 35.011082, 35.207737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424389, 34.968254, 35.454914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219544, 0.969523, -0.108750,
		-0.587466, 0.220371, 0.778666,
		0.778899, -0.107065, 0.617943,
		26.658058, 34.936134, 35.640297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066996, 35.563572, 35.730705>,  <26.112829, 35.011082, 35.207737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066996, 35.563572, 35.730705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448053, 35.442009, 35.726440>,  <26.676687, 35.369072, 35.723881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448053, 35.442009, 35.726440>,  <26.066996, 35.563572, 35.730705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448053, 35.442009, 35.726440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301465, 0.948431, -0.097968,
		0.039881, 0.090116, 0.995133,
		0.952643, -0.303905, -0.010658,
		26.733847, 35.350838, 35.723244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369833, 35.964954, 36.198032>,  <26.066996, 35.563572, 35.730705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369833, 35.964954, 36.198032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651297, 35.823360, 35.951599>,  <26.820175, 35.738403, 35.803738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651297, 35.823360, 35.951599>,  <26.369833, 35.964954, 36.198032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651297, 35.823360, 35.951599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190819, 0.929356, -0.316047,
		0.684436, 0.104829, 0.721497,
		0.703658, -0.353989, -0.616082,
		26.862394, 35.717163, 35.766773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010641, 36.316319, 36.390354>,  <26.369833, 35.964954, 36.198032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010641, 36.316319, 36.390354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969179, 36.185226, 36.014729>,  <26.944302, 36.106571, 35.789352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969179, 36.185226, 36.014729>,  <27.010641, 36.316319, 36.390354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969179, 36.185226, 36.014729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129910, 0.931604, -0.339466,
		0.986093, -0.157182, -0.053990,
		-0.103655, -0.327731, -0.939067,
		26.938082, 36.086906, 35.733009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291058, 36.839851, 36.051342>,  <27.010641, 36.316319, 36.390354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291058, 36.839851, 36.051342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159567, 36.663155, 35.717445>,  <27.080673, 36.557137, 35.517105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159567, 36.663155, 35.717445>,  <27.291058, 36.839851, 36.051342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159567, 36.663155, 35.717445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084779, 0.894100, -0.439769,
		0.940612, -0.073795, -0.331366,
		-0.328727, -0.441745, -0.834745,
		27.060949, 36.530632, 35.467022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557131, 37.275650, 35.621838>,  <27.291058, 36.839851, 36.051342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557131, 37.275650, 35.621838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276581, 37.083885, 35.410847>,  <27.108250, 36.968826, 35.284252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276581, 37.083885, 35.410847>,  <27.557131, 37.275650, 35.621838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276581, 37.083885, 35.410847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141889, 0.819113, -0.555806,
		0.698524, -0.314987, -0.642532,
		-0.701379, -0.479412, -0.527477,
		27.066168, 36.940060, 35.252602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634678, 37.508118, 34.947910>,  <27.557131, 37.275650, 35.621838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634678, 37.508118, 34.947910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256426, 37.378952, 34.963444>,  <27.029474, 37.301453, 34.972763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256426, 37.378952, 34.963444>,  <27.634678, 37.508118, 34.947910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256426, 37.378952, 34.963444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274682, 0.728994, -0.626991,
		0.174156, -0.603568, -0.778058,
		-0.945632, -0.322913, 0.038831,
		26.972736, 37.282078, 34.975094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377378, 37.439560, 34.253483>,  <27.634678, 37.508118, 34.947910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377378, 37.439560, 34.253483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053799, 37.464344, 34.487324>,  <26.859652, 37.479214, 34.627628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053799, 37.464344, 34.487324>,  <27.377378, 37.439560, 34.253483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053799, 37.464344, 34.487324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343321, 0.757440, -0.555351,
		-0.477213, -0.649958, -0.591458,
		-0.808949, 0.061960, 0.584604,
		26.811113, 37.482933, 34.662704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789539, 37.606049, 33.860958>,  <27.377378, 37.439560, 34.253483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789539, 37.606049, 33.860958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600218, 37.718719, 34.194817>,  <26.486626, 37.786324, 34.395134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600218, 37.718719, 34.194817>,  <26.789539, 37.606049, 33.860958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600218, 37.718719, 34.194817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328629, 0.822635, -0.463978,
		-0.817305, -0.493892, -0.296788,
		-0.473303, 0.281678, 0.834651,
		26.458227, 37.803223, 34.445213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109470, 38.007099, 33.675514>,  <26.789539, 37.606049, 33.860958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109470, 38.007099, 33.675514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192286, 38.125034, 34.048653>,  <26.241976, 38.195793, 34.272537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192286, 38.125034, 34.048653>,  <26.109470, 38.007099, 33.675514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192286, 38.125034, 34.048653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051059, 0.948953, -0.311259,
		-0.976999, 0.112073, 0.181416,
		0.207039, 0.294836, 0.932849,
		26.254396, 38.213486, 34.328506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573729, 38.413010, 33.787121>,  <26.109470, 38.007099, 33.675514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573729, 38.413010, 33.787121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853544, 38.519016, 34.052574>,  <26.021435, 38.582623, 34.211845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853544, 38.519016, 34.052574>,  <25.573729, 38.413010, 33.787121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853544, 38.519016, 34.052574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088125, 0.953591, -0.287921,
		-0.709138, 0.142930, 0.690430,
		0.699541, 0.265020, 0.663632,
		26.063406, 38.598522, 34.251663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310713, 38.856220, 34.180042>,  <25.573729, 38.413010, 33.787121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310713, 38.856220, 34.180042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702961, 38.932007, 34.200012>,  <25.938309, 38.977478, 34.211994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702961, 38.932007, 34.200012>,  <25.310713, 38.856220, 34.180042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702961, 38.932007, 34.200012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160976, 0.924338, -0.345955,
		-0.111691, 0.331214, 0.936922,
		0.980618, 0.189462, 0.049922,
		25.997147, 38.988846, 34.214989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232893, 39.565159, 34.371559>,  <25.310713, 38.856220, 34.180042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232893, 39.565159, 34.371559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593801, 39.470558, 34.227352>,  <25.810347, 39.413795, 34.140827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593801, 39.470558, 34.227352>,  <25.232893, 39.565159, 34.371559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593801, 39.470558, 34.227352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107015, 0.932813, -0.344104,
		0.417681, 0.271893, 0.866958,
		0.902270, -0.236503, -0.360521,
		25.864483, 39.399609, 34.119194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586323, 40.158577, 34.518211>,  <25.232893, 39.565159, 34.371559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586323, 40.158577, 34.518211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799685, 39.978203, 34.231956>,  <25.927702, 39.869980, 34.060204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799685, 39.978203, 34.231956>,  <25.586323, 40.158577, 34.518211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799685, 39.978203, 34.231956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257402, 0.892457, -0.370494,
		0.805744, 0.013417, 0.592112,
		0.533405, -0.450934, -0.715638,
		25.959705, 39.842922, 34.017265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233135, 40.551907, 34.556477>,  <25.586323, 40.158577, 34.518211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233135, 40.551907, 34.556477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224789, 40.353249, 34.209396>,  <26.219780, 40.234055, 34.001148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224789, 40.353249, 34.209396>,  <26.233135, 40.551907, 34.556477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224789, 40.353249, 34.209396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446227, 0.772024, -0.452616,
		0.894677, -0.396636, 0.205507,
		-0.020867, -0.496648, -0.867701,
		26.218529, 40.204254, 33.949085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800421, 40.814453, 34.237419>,  <26.233135, 40.551907, 34.556477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800421, 40.814453, 34.237419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609865, 40.660297, 33.921310>,  <26.495533, 40.567806, 33.731644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609865, 40.660297, 33.921310>,  <26.800421, 40.814453, 34.237419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609865, 40.660297, 33.921310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259636, 0.797076, -0.545216,
		0.840027, -0.464916, -0.279655,
		-0.476386, -0.385388, -0.790274,
		26.466949, 40.544682, 33.684227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220751, 40.924103, 33.723957>,  <26.800421, 40.814453, 34.237419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220751, 40.924103, 33.723957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878574, 40.866825, 33.524876>,  <26.673267, 40.832458, 33.405426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878574, 40.866825, 33.524876>,  <27.220751, 40.924103, 33.723957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878574, 40.866825, 33.524876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263756, 0.706591, -0.656630,
		0.445703, -0.692982, -0.566679,
		-0.855442, -0.143197, -0.497708,
		26.621943, 40.823864, 33.375565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407074, 40.806915, 32.992146>,  <27.220751, 40.924103, 33.723957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407074, 40.806915, 32.992146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016338, 40.891834, 32.981461>,  <26.781897, 40.942787, 32.975048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016338, 40.891834, 32.981461>,  <27.407074, 40.806915, 32.992146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016338, 40.891834, 32.981461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165796, 0.672041, -0.721716,
		-0.135269, -0.709429, -0.691674,
		-0.976839, 0.212302, -0.026714,
		26.723288, 40.955524, 32.973446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261957, 40.790134, 32.311581>,  <27.407074, 40.806915, 32.992146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261957, 40.790134, 32.311581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981531, 41.022629, 32.476830>,  <26.813276, 41.162125, 32.575981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981531, 41.022629, 32.476830>,  <27.261957, 40.790134, 32.311581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981531, 41.022629, 32.476830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276874, 0.755758, -0.593440,
		-0.657152, -0.301656, -0.690764,
		-0.701065, 0.581235, 0.413127,
		26.771212, 41.196999, 32.600769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822838, 40.927315, 31.691751>,  <27.261957, 40.790134, 32.311581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822838, 40.927315, 31.691751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748575, 41.197411, 31.977293>,  <26.704018, 41.359467, 32.148617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748575, 41.197411, 31.977293>,  <26.822838, 40.927315, 31.691751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748575, 41.197411, 31.977293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127085, 0.736884, -0.663966,
		-0.974361, -0.032551, -0.222622,
		-0.185659, 0.675235, 0.713854,
		26.692877, 41.399982, 32.191448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318850, 41.335999, 31.450327>,  <26.822838, 40.927315, 31.691751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318850, 41.335999, 31.450327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493765, 41.561451, 31.730640>,  <26.598713, 41.696724, 31.898829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493765, 41.561451, 31.730640>,  <26.318850, 41.335999, 31.450327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493765, 41.561451, 31.730640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193062, 0.702236, -0.685268,
		-0.878355, 0.434953, 0.198262,
		0.437286, 0.563632, 0.700785,
		26.624950, 41.730541, 31.940876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989399, 42.165638, 31.568380>,  <26.318850, 41.335999, 31.450327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989399, 42.165638, 31.568380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373539, 42.088131, 31.648561>,  <26.604023, 42.041626, 31.696671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373539, 42.088131, 31.648561>,  <25.989399, 42.165638, 31.568380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373539, 42.088131, 31.648561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275082, 0.775513, -0.568251,
		-0.045346, 0.600861, 0.798066,
		0.960351, -0.193766, 0.200453,
		26.661644, 42.030003, 31.708696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667192, 42.455158, 30.848648>,  <25.989399, 42.165638, 31.568380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667192, 42.455158, 30.848648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602129, 42.754215, 30.591101>,  <25.563091, 42.933651, 30.436571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602129, 42.754215, 30.591101>,  <25.667192, 42.455158, 30.848648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602129, 42.754215, 30.591101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767252, -0.314454, -0.558965,
		-0.620375, -0.584933, -0.522483,
		-0.162660, 0.747645, -0.643870,
		25.553331, 42.978508, 30.397940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757723, 42.159275, 30.160343>,  <25.667192, 42.455158, 30.848648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757723, 42.159275, 30.160343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819279, 42.551899, 30.114975>,  <25.856213, 42.787472, 30.087753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819279, 42.551899, 30.114975>,  <25.757723, 42.159275, 30.160343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819279, 42.551899, 30.114975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692636, -0.189025, -0.696078,
		-0.704680, 0.028558, -0.708950,
		0.153888, 0.981557, -0.113422,
		25.865444, 42.846367, 30.080948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568806, 42.524414, 29.461472>,  <25.757723, 42.159275, 30.160343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568806, 42.524414, 29.461472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881788, 42.672482, 29.661766>,  <26.069578, 42.761322, 29.781942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881788, 42.672482, 29.661766>,  <25.568806, 42.524414, 29.461472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881788, 42.672482, 29.661766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618303, -0.366385, -0.695315,
		-0.073921, 0.853661, -0.515556,
		0.782456, 0.370169, 0.500737,
		26.116526, 42.783531, 29.811987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.063837, 43.036999, 29.113314>,  <25.568806, 42.524414, 29.461472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.063837, 43.036999, 29.113314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258722, 42.816975, 29.384624>,  <26.375652, 42.684959, 29.547411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258722, 42.816975, 29.384624>,  <26.063837, 43.036999, 29.113314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258722, 42.816975, 29.384624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688016, -0.236565, -0.686054,
		0.537827, 0.800919, 0.263192,
		0.487212, -0.550059, 0.678277,
		26.404886, 42.651958, 29.588108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758202, 43.309021, 29.057156>,  <26.063837, 43.036999, 29.113314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758202, 43.309021, 29.057156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742540, 42.948780, 29.230307>,  <26.733143, 42.732635, 29.334198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742540, 42.948780, 29.230307>,  <26.758202, 43.309021, 29.057156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742540, 42.948780, 29.230307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752053, -0.311804, -0.580684,
		0.657939, 0.302813, 0.689508,
		-0.039153, -0.900601, 0.432879,
		26.730795, 42.678600, 29.360170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465033, 43.057236, 29.141401>,  <26.758202, 43.309021, 29.057156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465033, 43.057236, 29.141401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817198, 42.922802, 29.007584>,  <28.028498, 42.842144, 28.927294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817198, 42.922802, 29.007584>,  <27.465033, 43.057236, 29.141401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817198, 42.922802, 29.007584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004243, -0.699870, 0.714257,
		-0.474185, -0.630263, -0.614750,
		0.880415, -0.336081, -0.334542,
		28.081322, 42.821976, 28.907221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529240, 42.315453, 29.089912>,  <27.465033, 43.057236, 29.141401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529240, 42.315453, 29.089912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908220, 42.419754, 29.164043>,  <28.135609, 42.482334, 29.208523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908220, 42.419754, 29.164043>,  <27.529240, 42.315453, 29.089912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908220, 42.419754, 29.164043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100177, -0.792014, 0.602228,
		0.303817, -0.552014, -0.776515,
		0.947450, 0.260756, 0.185328,
		28.192455, 42.497982, 29.219643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911877, 41.767483, 29.109272>,  <27.529240, 42.315453, 29.089912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911877, 41.767483, 29.109272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099028, 42.033993, 29.341539>,  <28.211317, 42.193897, 29.480900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099028, 42.033993, 29.341539>,  <27.911877, 41.767483, 29.109272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099028, 42.033993, 29.341539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075073, -0.684605, 0.725039,
		0.880600, -0.295636, -0.370329,
		0.467876, 0.666270, 0.580668,
		28.239391, 42.233875, 29.515739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664881, 41.623962, 29.359983>,  <27.911877, 41.767483, 29.109272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664881, 41.623962, 29.359983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518929, 41.843182, 29.661049>,  <28.431356, 41.974712, 29.841688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518929, 41.843182, 29.661049>,  <28.664881, 41.623962, 29.359983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518929, 41.843182, 29.661049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333575, -0.677782, 0.655241,
		0.869247, 0.490154, 0.064494,
		-0.364881, 0.548052, 0.752662,
		28.409464, 42.007599, 29.886848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222437, 41.688362, 29.886761>,  <28.664881, 41.623962, 29.359983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222437, 41.688362, 29.886761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875263, 41.758026, 30.072817>,  <28.666958, 41.799824, 30.184450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875263, 41.758026, 30.072817>,  <29.222437, 41.688362, 29.886761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875263, 41.758026, 30.072817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249953, -0.656118, 0.712063,
		0.429197, 0.734288, 0.525938,
		-0.867937, 0.174155, 0.465141,
		28.614882, 41.810272, 30.212358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273430, 41.885815, 30.708582>,  <29.222437, 41.688362, 29.886761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273430, 41.885815, 30.708582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933969, 41.697109, 30.612886>,  <28.730293, 41.583885, 30.555470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933969, 41.697109, 30.612886>,  <29.273430, 41.885815, 30.708582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933969, 41.697109, 30.612886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191355, -0.695464, 0.692613,
		-0.493129, 0.542006, 0.680480,
		-0.848650, -0.471761, -0.239238,
		28.679375, 41.555580, 30.541115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049868, 41.715038, 31.295588>,  <29.273430, 41.885815, 30.708582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049868, 41.715038, 31.295588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861847, 41.479626, 31.032475>,  <28.749035, 41.338379, 30.874607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861847, 41.479626, 31.032475>,  <29.049868, 41.715038, 31.295588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861847, 41.479626, 31.032475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088457, -0.772904, 0.628327,
		-0.878195, 0.237161, 0.415366,
		-0.470053, -0.588535, -0.657782,
		28.720831, 41.303066, 30.835140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949881, 41.093395, 31.713337>,  <29.049868, 41.715038, 31.295588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949881, 41.093395, 31.713337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854662, 40.932442, 31.359745>,  <28.797531, 40.835869, 31.147591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854662, 40.932442, 31.359745>,  <28.949881, 41.093395, 31.713337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854662, 40.932442, 31.359745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071091, -0.914919, 0.397326,
		-0.968648, 0.031740, 0.246402,
		-0.238049, -0.402386, -0.883978,
		28.783247, 40.811726, 31.094551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428532, 40.580025, 31.758692>,  <28.949881, 41.093395, 31.713337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428532, 40.580025, 31.758692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591940, 40.489761, 31.404926>,  <28.689985, 40.435604, 31.192667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591940, 40.489761, 31.404926>,  <28.428532, 40.580025, 31.758692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591940, 40.489761, 31.404926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012200, -0.967520, 0.252501,
		-0.912668, -0.113942, -0.392498,
		0.408520, -0.225661, -0.884414,
		28.714495, 40.422062, 31.139603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032196, 40.125595, 31.407434>,  <28.428532, 40.580025, 31.758692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032196, 40.125595, 31.407434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404409, 40.068771, 31.272421>,  <28.627737, 40.034679, 31.191412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404409, 40.068771, 31.272421>,  <28.032196, 40.125595, 31.407434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404409, 40.068771, 31.272421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021880, -0.941619, 0.335970,
		-0.365553, -0.305245, -0.879315,
		0.930533, -0.142054, -0.337533,
		28.683569, 40.026154, 31.171162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029570, 39.515743, 31.082111>,  <28.032196, 40.125595, 31.407434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029570, 39.515743, 31.082111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421919, 39.569057, 31.138851>,  <28.657328, 39.601048, 31.172895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421919, 39.569057, 31.138851>,  <28.029570, 39.515743, 31.082111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421919, 39.569057, 31.138851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059763, -0.899785, 0.432222,
		0.185245, -0.415477, -0.890541,
		0.980873, 0.133288, 0.141850,
		28.716181, 39.609043, 31.181406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417442, 38.879742, 30.957615>,  <28.029570, 39.515743, 31.082111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417442, 38.879742, 30.957615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677443, 39.077179, 31.188738>,  <28.833443, 39.195641, 31.327412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677443, 39.077179, 31.188738>,  <28.417442, 38.879742, 30.957615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677443, 39.077179, 31.188738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392047, -0.869153, 0.301450,
		0.650998, 0.030585, -0.758463,
		0.650001, 0.493596, 0.577808,
		28.872442, 39.225258, 31.362080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061527, 38.538246, 30.905886>,  <28.417442, 38.879742, 30.957615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061527, 38.538246, 30.905886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099213, 38.750759, 31.242662>,  <29.121824, 38.878265, 31.444729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099213, 38.750759, 31.242662>,  <29.061527, 38.538246, 30.905886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099213, 38.750759, 31.242662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487303, -0.762074, 0.426356,
		0.868136, 0.370113, -0.330691,
		0.094211, 0.531281, 0.841941,
		29.127476, 38.910145, 31.495245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762388, 38.423748, 31.081209>,  <29.061527, 38.538246, 30.905886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762388, 38.423748, 31.081209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526577, 38.533272, 31.385180>,  <29.385090, 38.598984, 31.567562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526577, 38.533272, 31.385180>,  <29.762388, 38.423748, 31.081209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526577, 38.533272, 31.385180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250216, -0.832617, 0.494106,
		0.768017, 0.481435, 0.422340,
		-0.589527, 0.273805, 0.759926,
		29.349718, 38.615414, 31.613157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185982, 38.129639, 31.653358>,  <29.762388, 38.423748, 31.081209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185982, 38.129639, 31.653358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809273, 38.185539, 31.775694>,  <29.583248, 38.219078, 31.849094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809273, 38.185539, 31.775694>,  <30.185982, 38.129639, 31.653358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809273, 38.185539, 31.775694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097009, -0.757948, 0.645062,
		0.321959, 0.637170, 0.700255,
		-0.941771, 0.139752, 0.305839,
		29.526741, 38.227467, 31.867445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304298, 37.807079, 32.259724>,  <30.185982, 38.129639, 31.653358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304298, 37.807079, 32.259724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908123, 37.862076, 32.255112>,  <29.670418, 37.895073, 32.252346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908123, 37.862076, 32.255112>,  <30.304298, 37.807079, 32.259724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908123, 37.862076, 32.255112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108282, -0.722835, 0.682485,
		0.085501, 0.677206, 0.730809,
		-0.990437, 0.137487, -0.011526,
		29.610992, 37.903320, 32.251656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053904, 37.859505, 32.929695>,  <30.304298, 37.807079, 32.259724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053904, 37.859505, 32.929695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732546, 37.760494, 32.713070>,  <29.539732, 37.701088, 32.583096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732546, 37.760494, 32.713070>,  <30.053904, 37.859505, 32.929695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732546, 37.760494, 32.713070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197399, -0.747352, 0.634428,
		-0.561776, 0.616599, 0.551556,
		-0.803394, -0.247530, -0.541560,
		29.491528, 37.686234, 32.550602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523306, 37.845535, 33.443359>,  <30.053904, 37.859505, 32.929695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523306, 37.845535, 33.443359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412695, 37.600792, 33.146938>,  <29.346329, 37.453945, 32.969086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412695, 37.600792, 33.146938>,  <29.523306, 37.845535, 33.443359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412695, 37.600792, 33.146938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176809, -0.725565, 0.665052,
		-0.944601, 0.314929, 0.092456,
		-0.276527, -0.611861, -0.741052,
		29.329737, 37.417233, 32.924622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828209, 37.537743, 33.696171>,  <29.523306, 37.845535, 33.443359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828209, 37.537743, 33.696171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992199, 37.312355, 33.409275>,  <29.090593, 37.177124, 33.237137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992199, 37.312355, 33.409275>,  <28.828209, 37.537743, 33.696171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992199, 37.312355, 33.409275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042840, -0.797386, 0.601947,
		-0.911091, -0.216056, -0.351045,
		0.409973, -0.563467, -0.717236,
		29.115191, 37.143314, 33.194103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503990, 37.003777, 33.616482>,  <28.828209, 37.537743, 33.696171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503990, 37.003777, 33.616482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835457, 36.862614, 33.442692>,  <29.034336, 36.777916, 33.338417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835457, 36.862614, 33.442692>,  <28.503990, 37.003777, 33.616482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835457, 36.862614, 33.442692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058386, -0.826466, 0.559950,
		-0.556688, -0.438645, -0.705471,
		0.828667, -0.352907, -0.434473,
		29.084057, 36.756741, 33.312351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331402, 36.373203, 33.433407>,  <28.503990, 37.003777, 33.616482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331402, 36.373203, 33.433407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731201, 36.373554, 33.446072>,  <28.971081, 36.373764, 33.453671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731201, 36.373554, 33.446072>,  <28.331402, 36.373203, 33.433407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731201, 36.373554, 33.446072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014970, -0.867826, 0.496643,
		0.027910, -0.496867, -0.867378,
		0.999498, 0.000877, 0.031659,
		29.031052, 36.373817, 33.455570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425911, 35.702610, 33.620052>,  <28.331402, 36.373203, 33.433407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425911, 35.702610, 33.620052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776453, 35.880424, 33.694225>,  <28.986778, 35.987114, 33.738728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776453, 35.880424, 33.694225>,  <28.425911, 35.702610, 33.620052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776453, 35.880424, 33.694225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235894, -0.731763, 0.639435,
		0.419947, -0.516630, -0.746148,
		0.876355, 0.444541, 0.185432,
		29.039360, 36.013786, 33.749855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889612, 35.206821, 33.595596>,  <28.425911, 35.702610, 33.620052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889612, 35.206821, 33.595596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063997, 35.496307, 33.809578>,  <29.168629, 35.669998, 33.937965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063997, 35.496307, 33.809578>,  <28.889612, 35.206821, 33.595596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063997, 35.496307, 33.809578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109532, -0.632663, 0.766642,
		0.893275, -0.275632, -0.355087,
		0.435962, 0.723715, 0.534951,
		29.194786, 35.713421, 33.970062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579954, 34.920174, 33.929333>,  <28.889612, 35.206821, 33.595596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579954, 34.920174, 33.929333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444948, 35.228844, 34.144962>,  <29.363945, 35.414043, 34.274342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444948, 35.228844, 34.144962>,  <29.579954, 34.920174, 33.929333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444948, 35.228844, 34.144962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245950, -0.480494, 0.841804,
		0.908620, 0.416709, -0.027619,
		-0.337516, 0.771673, 0.539076,
		29.343693, 35.460346, 34.306686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972870, 34.987469, 34.627422>,  <29.579954, 34.920174, 33.929333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972870, 34.987469, 34.627422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668476, 35.232639, 34.712490>,  <29.485840, 35.379742, 34.763531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668476, 35.232639, 34.712490>,  <29.972870, 34.987469, 34.627422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668476, 35.232639, 34.712490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015137, -0.310936, 0.950310,
		0.648595, 0.726389, 0.227340,
		-0.760983, 0.612925, 0.212667,
		29.440182, 35.416515, 34.776291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222778, 35.394173, 35.166588>,  <29.972870, 34.987469, 34.627422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222778, 35.394173, 35.166588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825235, 35.416504, 35.204807>,  <29.586710, 35.429905, 35.227741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825235, 35.416504, 35.204807>,  <30.222778, 35.394173, 35.166588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825235, 35.416504, 35.204807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072309, -0.326010, 0.942597,
		0.083778, 0.943716, 0.319970,
		-0.993858, 0.055832, 0.095552,
		29.527079, 35.433254, 35.233471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113663, 35.610817, 35.851887>,  <30.222778, 35.394173, 35.166588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113663, 35.610817, 35.851887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769178, 35.444714, 35.734665>,  <29.562489, 35.345051, 35.664330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769178, 35.444714, 35.734665>,  <30.113663, 35.610817, 35.851887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769178, 35.444714, 35.734665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096810, -0.432021, 0.896653,
		-0.498946, 0.800576, 0.331859,
		-0.861209, -0.415254, -0.293059,
		29.510817, 35.320137, 35.646748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937641, 35.029545, 36.422432>,  <30.113663, 35.610817, 35.851887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937641, 35.029545, 36.422432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744307, 34.727787, 36.600094>,  <29.628305, 34.546734, 36.706692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744307, 34.727787, 36.600094>,  <29.937641, 35.029545, 36.422432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744307, 34.727787, 36.600094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564744, -0.656359, -0.500257,
		0.668918, 0.009043, 0.743282,
		-0.483336, -0.754394, 0.444157,
		29.599306, 34.501469, 36.733341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660812, 34.759144, 36.335571>,  <29.937641, 35.029545, 36.422432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660812, 34.759144, 36.335571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641439, 34.403774, 36.152985>,  <30.629816, 34.190552, 36.043434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641439, 34.403774, 36.152985>,  <30.660812, 34.759144, 36.335571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641439, 34.403774, 36.152985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883396, 0.175167, -0.434658,
		0.466118, -0.424289, 0.776345,
		-0.048431, -0.888423, -0.456464,
		30.626911, 34.137249, 36.016045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332348, 34.392418, 36.548229>,  <30.660812, 34.759144, 36.335571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332348, 34.392418, 36.548229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183031, 34.253731, 36.204033>,  <31.093441, 34.170517, 35.997517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183031, 34.253731, 36.204033>,  <31.332348, 34.392418, 36.548229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183031, 34.253731, 36.204033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850180, 0.243349, -0.466877,
		0.371275, -0.905850, 0.203935,
		-0.373293, -0.346721, -0.860486,
		31.071043, 34.149715, 35.945889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866369, 34.629349, 37.130127>,  <31.332348, 34.392418, 36.548229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866369, 34.629349, 37.130127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526138, 34.570023, 37.331928>,  <30.322001, 34.534428, 37.453011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526138, 34.570023, 37.331928>,  <30.866369, 34.629349, 37.130127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526138, 34.570023, 37.331928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407776, 0.419742, 0.810886,
		-0.332025, 0.895445, -0.296544,
		-0.850575, -0.148311, 0.504505,
		30.270966, 34.525528, 37.483280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688553, 35.207138, 37.451080>,  <30.866369, 34.629349, 37.130127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688553, 35.207138, 37.451080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566071, 34.883755, 37.652134>,  <30.492580, 34.689724, 37.772766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566071, 34.883755, 37.652134>,  <30.688553, 35.207138, 37.451080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566071, 34.883755, 37.652134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497565, 0.314216, 0.808516,
		-0.811583, 0.497665, 0.306043,
		-0.306207, -0.808454, 0.502633,
		30.474209, 34.641220, 37.802925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282228, 35.293289, 38.084236>,  <30.688553, 35.207138, 37.451080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282228, 35.293289, 38.084236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479809, 34.947502, 38.121555>,  <30.598356, 34.740028, 38.143948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479809, 34.947502, 38.121555>,  <30.282228, 35.293289, 38.084236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479809, 34.947502, 38.121555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434370, 0.338291, 0.834794,
		-0.753217, -0.371820, 0.542599,
		0.493950, -0.864470, 0.093299,
		30.627995, 34.688160, 38.149544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108091, 35.023651, 38.728889>,  <30.282228, 35.293289, 38.084236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108091, 35.023651, 38.728889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471415, 34.916531, 38.600357>,  <30.689409, 34.852257, 38.523235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471415, 34.916531, 38.600357>,  <30.108091, 35.023651, 38.728889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471415, 34.916531, 38.600357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412394, 0.444681, 0.795104,
		-0.070042, -0.854716, 0.514350,
		0.908309, -0.267806, -0.321333,
		30.743908, 34.836189, 38.503956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401426, 34.701382, 39.335361>,  <30.108091, 35.023651, 38.728889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401426, 34.701382, 39.335361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713770, 34.791977, 39.102478>,  <30.901176, 34.846333, 38.962749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713770, 34.791977, 39.102478>,  <30.401426, 34.701382, 39.335361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713770, 34.791977, 39.102478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441946, 0.458407, 0.771069,
		0.441524, -0.859399, 0.257856,
		0.780859, 0.226487, -0.582205,
		30.948029, 34.859921, 38.927818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973961, 34.493504, 39.678764>,  <30.401426, 34.701382, 39.335361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973961, 34.493504, 39.678764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142096, 34.752655, 39.424656>,  <31.242975, 34.908146, 39.272190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142096, 34.752655, 39.424656>,  <30.973961, 34.493504, 39.678764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142096, 34.752655, 39.424656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637750, 0.287073, 0.714747,
		0.645441, -0.705577, -0.292520,
		0.420334, 0.647881, -0.635270,
		31.268196, 34.947018, 39.234074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679785, 34.435738, 39.695515>,  <30.973961, 34.493504, 39.678764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679785, 34.435738, 39.695515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579262, 34.807884, 39.588734>,  <31.518948, 35.031174, 39.524666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579262, 34.807884, 39.588734>,  <31.679785, 34.435738, 39.695515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579262, 34.807884, 39.588734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599494, 0.366149, 0.711718,
		0.759903, 0.018822, -0.649764,
		-0.251306, 0.930366, -0.266954,
		31.503870, 35.086994, 39.508648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356556, 34.671669, 39.609207>,  <31.679785, 34.435738, 39.695515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356556, 34.671669, 39.609207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085827, 34.963539, 39.648148>,  <31.923389, 35.138660, 39.671513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085827, 34.963539, 39.648148>,  <32.356556, 34.671669, 39.609207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085827, 34.963539, 39.648148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653379, 0.534534, 0.536068,
		0.339120, 0.426431, -0.838543,
		-0.676826, 0.729678, 0.097350,
		31.882778, 35.182442, 39.677353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775936, 35.176365, 39.715401>,  <32.356556, 34.671669, 39.609207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775936, 35.176365, 39.715401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417549, 35.323082, 39.815563>,  <32.202515, 35.411110, 39.875660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417549, 35.323082, 39.815563>,  <32.775936, 35.176365, 39.715401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417549, 35.323082, 39.815563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394689, 0.399128, 0.827597,
		0.203612, 0.840334, -0.502375,
		-0.895970, 0.366791, 0.250403,
		32.148758, 35.433121, 39.890686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942722, 35.824741, 39.991657>,  <32.775936, 35.176365, 39.715401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942722, 35.824741, 39.991657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579552, 35.759678, 40.146164>,  <32.361649, 35.720638, 40.238869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579552, 35.759678, 40.146164>,  <32.942722, 35.824741, 39.991657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579552, 35.759678, 40.146164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341757, 0.246177, 0.906972,
		-0.242618, 0.955478, -0.167922,
		-0.907931, -0.162660, 0.386269,
		32.307171, 35.710880, 40.262043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653152, 36.508850, 40.339508>,  <32.942722, 35.824741, 39.991657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653152, 36.508850, 40.339508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459614, 36.207458, 40.517574>,  <32.343491, 36.026623, 40.624413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459614, 36.207458, 40.517574>,  <32.653152, 36.508850, 40.339508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459614, 36.207458, 40.517574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204507, 0.397241, 0.894638,
		-0.850924, 0.523904, -0.038112,
		-0.483844, -0.753474, 0.445164,
		32.314461, 35.981415, 40.651123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241310, 36.811871, 40.880287>,  <32.653152, 36.508850, 40.339508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241310, 36.811871, 40.880287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330173, 36.427315, 40.945244>,  <32.383492, 36.196579, 40.984219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330173, 36.427315, 40.945244>,  <32.241310, 36.811871, 40.880287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330173, 36.427315, 40.945244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133912, 0.195063, 0.971606,
		-0.965771, -0.194103, 0.172077,
		0.222158, -0.961392, 0.162393,
		32.396820, 36.138897, 40.993961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976881, 36.742020, 41.523800>,  <32.241310, 36.811871, 40.880287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976881, 36.742020, 41.523800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225872, 36.432945, 41.474030>,  <32.375267, 36.247501, 41.444168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225872, 36.432945, 41.474030>,  <31.976881, 36.742020, 41.523800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225872, 36.432945, 41.474030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324067, 0.109761, 0.939645,
		-0.712394, -0.625227, 0.318726,
		0.622475, -0.772686, -0.124422,
		32.412613, 36.201138, 41.436703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854563, 36.342739, 42.110401>,  <31.976881, 36.742020, 41.523800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854563, 36.342739, 42.110401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210487, 36.213978, 41.981026>,  <32.424042, 36.136719, 41.903400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210487, 36.213978, 41.981026>,  <31.854563, 36.342739, 42.110401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210487, 36.213978, 41.981026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264549, -0.213619, 0.940415,
		-0.371818, -0.922358, -0.104921,
		0.889812, -0.321906, -0.323436,
		32.477432, 36.117405, 41.883995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004154, 35.672024, 42.388504>,  <31.854563, 36.342739, 42.110401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004154, 35.672024, 42.388504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366455, 35.821865, 42.309223>,  <32.583836, 35.911770, 42.261654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366455, 35.821865, 42.309223>,  <32.004154, 35.672024, 42.388504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366455, 35.821865, 42.309223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336766, -0.352233, 0.873224,
		0.257298, -0.857674, -0.445190,
		0.905752, 0.374604, -0.198207,
		32.638180, 35.934246, 42.249760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496197, 35.172527, 42.635876>,  <32.004154, 35.672024, 42.388504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496197, 35.172527, 42.635876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733166, 35.493908, 42.612202>,  <32.875347, 35.686737, 42.598000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733166, 35.493908, 42.612202>,  <32.496197, 35.172527, 42.635876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733166, 35.493908, 42.612202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425704, -0.249827, 0.869691,
		0.683971, -0.540415, -0.490036,
		0.592418, 0.803454, -0.059183,
		32.910892, 35.734943, 42.594448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107059, 34.888523, 42.890518>,  <32.496197, 35.172527, 42.635876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107059, 34.888523, 42.890518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136215, 35.286476, 42.918526>,  <33.153709, 35.525246, 42.935329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136215, 35.286476, 42.918526>,  <33.107059, 34.888523, 42.890518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136215, 35.286476, 42.918526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399862, -0.093469, 0.911797,
		0.913673, -0.038457, -0.404627,
		0.072885, 0.994879, 0.070022,
		33.158081, 35.584938, 42.939533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681370, 34.959553, 43.357605>,  <33.107059, 34.888523, 42.890518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681370, 34.959553, 43.357605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489983, 35.310493, 43.372181>,  <33.375153, 35.521057, 43.380924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489983, 35.310493, 43.372181>,  <33.681370, 34.959553, 43.357605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489983, 35.310493, 43.372181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320401, 0.135796, 0.937498,
		0.817567, 0.460233, -0.346077,
		-0.478464, 0.877351, 0.036437,
		33.346443, 35.573700, 43.383114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928204, 35.143242, 44.013760>,  <33.681370, 34.959553, 43.357605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928204, 35.143242, 44.013760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654846, 35.419117, 43.918015>,  <33.490829, 35.584644, 43.860569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654846, 35.419117, 43.918015>,  <33.928204, 35.143242, 44.013760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654846, 35.419117, 43.918015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095191, 0.240886, 0.965874,
		0.723814, 0.682861, -0.098968,
		-0.683397, 0.689692, -0.239358,
		33.449825, 35.626026, 43.846207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031647, 35.760616, 44.515987>,  <33.928204, 35.143242, 44.013760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031647, 35.760616, 44.515987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658913, 35.792507, 44.374378>,  <33.435272, 35.811642, 44.289413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658913, 35.792507, 44.374378>,  <34.031647, 35.760616, 44.515987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658913, 35.792507, 44.374378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318626, 0.287191, 0.903327,
		0.173690, 0.954550, -0.242211,
		-0.931831, 0.079725, -0.354026,
		33.379364, 35.816425, 44.268169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718735, 36.353069, 44.704033>,  <34.031647, 35.760616, 44.515987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718735, 36.353069, 44.704033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389793, 36.145668, 44.610321>,  <33.192429, 36.021229, 44.554092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389793, 36.145668, 44.610321>,  <33.718735, 36.353069, 44.704033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389793, 36.145668, 44.610321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303908, 0.052179, 0.951271,
		-0.481009, 0.853485, -0.200486,
		-0.822357, -0.518499, -0.234282,
		33.143085, 35.990120, 44.540035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098915, 36.694550, 44.995861>,  <33.718735, 36.353069, 44.704033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098915, 36.694550, 44.995861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958687, 36.326027, 44.928581>,  <32.874550, 36.104912, 44.888214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958687, 36.326027, 44.928581>,  <33.098915, 36.694550, 44.995861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958687, 36.326027, 44.928581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410405, -0.010306, 0.911845,
		-0.841825, 0.388693, -0.374497,
		-0.350568, -0.921310, -0.168197,
		32.853516, 36.049633, 44.878120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378704, 36.677639, 45.166672>,  <33.098915, 36.694550, 44.995861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378704, 36.677639, 45.166672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510120, 36.301250, 45.199265>,  <32.588970, 36.075417, 45.218819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510120, 36.301250, 45.199265>,  <32.378704, 36.677639, 45.166672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510120, 36.301250, 45.199265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261569, -0.007751, 0.965153,
		-0.907548, -0.338404, -0.248675,
		0.328540, -0.940969, 0.081482,
		32.608681, 36.018959, 45.223709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813572, 36.281197, 45.501915>,  <32.378704, 36.677639, 45.166672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813572, 36.281197, 45.501915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138153, 36.056877, 45.567699>,  <32.332901, 35.922283, 45.607170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138153, 36.056877, 45.567699>,  <31.813572, 36.281197, 45.501915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138153, 36.056877, 45.567699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327708, -0.203628, 0.922574,
		-0.483894, -0.802518, -0.349014,
		0.811452, -0.560803, 0.164457,
		32.381588, 35.888638, 45.617035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613060, 35.735664, 45.952202>,  <31.813572, 36.281197, 45.501915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613060, 35.735664, 45.952202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009075, 35.771893, 45.995319>,  <32.246685, 35.793629, 46.021191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009075, 35.771893, 45.995319>,  <31.613060, 35.735664, 45.952202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009075, 35.771893, 45.995319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101432, -0.072184, 0.992220,
		0.097650, -0.993270, -0.062278,
		0.990039, 0.090574, 0.107798,
		32.306087, 35.799065, 46.027660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832518, 35.118618, 46.394535>,  <31.613060, 35.735664, 45.952202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832518, 35.118618, 46.394535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157639, 35.345932, 46.445766>,  <32.352711, 35.482323, 46.476505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157639, 35.345932, 46.445766>,  <31.832518, 35.118618, 46.394535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157639, 35.345932, 46.445766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113862, -0.060633, 0.991645,
		0.571306, -0.820593, 0.015424,
		0.812801, 0.568288, 0.128074,
		32.401478, 35.516418, 46.484188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184540, 34.771481, 46.840584>,  <31.832518, 35.118618, 46.394535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184540, 34.771481, 46.840584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329163, 35.143372, 46.868526>,  <32.415936, 35.366508, 46.885292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329163, 35.143372, 46.868526>,  <32.184540, 34.771481, 46.840584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329163, 35.143372, 46.868526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149532, -0.131775, 0.979937,
		0.920283, -0.343853, -0.186668,
		0.361552, 0.929731, 0.069853,
		32.437630, 35.422291, 46.889481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763523, 34.645344, 47.242332>,  <32.184540, 34.771481, 46.840584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763523, 34.645344, 47.242332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710651, 35.040054, 47.279846>,  <32.678928, 35.276882, 47.302353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710651, 35.040054, 47.279846>,  <32.763523, 34.645344, 47.242332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710651, 35.040054, 47.279846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246485, -0.058923, 0.967354,
		0.960090, 0.150981, -0.235438,
		-0.132180, 0.986779, 0.093786,
		32.670998, 35.336086, 47.307983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408985, 34.891663, 47.649952>,  <32.763523, 34.645344, 47.242332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408985, 34.891663, 47.649952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131321, 35.177277, 47.686398>,  <32.964722, 35.348644, 47.708263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131321, 35.177277, 47.686398>,  <33.408985, 34.891663, 47.649952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131321, 35.177277, 47.686398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211487, 0.081320, 0.973992,
		0.688055, 0.695372, -0.207458,
		-0.694157, 0.714034, 0.091110,
		32.923073, 35.391487, 47.713730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758297, 35.403061, 48.068523>,  <33.408985, 34.891663, 47.649952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758297, 35.403061, 48.068523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366039, 35.473267, 48.103233>,  <33.130684, 35.515388, 48.124062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366039, 35.473267, 48.103233>,  <33.758297, 35.403061, 48.068523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366039, 35.473267, 48.103233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132300, 0.267282, 0.954493,
		0.144332, 0.947500, -0.285329,
		-0.980645, 0.175513, 0.086777,
		33.071846, 35.525921, 48.129265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642975, 36.073864, 48.301064>,  <33.758297, 35.403061, 48.068523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642975, 36.073864, 48.301064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308765, 35.885521, 48.414337>,  <33.108238, 35.772514, 48.482300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308765, 35.885521, 48.414337>,  <33.642975, 36.073864, 48.301064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308765, 35.885521, 48.414337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122010, 0.343528, 0.931183,
		-0.535733, 0.812579, -0.229578,
		-0.835526, -0.470855, 0.283182,
		33.058109, 35.744263, 48.499290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452717, 36.517456, 48.759426>,  <33.642975, 36.073864, 48.301064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452717, 36.517456, 48.759426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238518, 36.186836, 48.828777>,  <33.110001, 35.988464, 48.870388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238518, 36.186836, 48.828777>,  <33.452717, 36.517456, 48.759426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238518, 36.186836, 48.828777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021064, 0.192155, 0.981138,
		-0.844275, 0.529048, -0.085488,
		-0.535496, -0.826550, 0.173376,
		33.077869, 35.938869, 48.880791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879444, 36.695286, 49.341293>,  <33.452717, 36.517456, 48.759426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879444, 36.695286, 49.341293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953552, 36.302708, 49.321556>,  <32.998016, 36.067162, 49.309715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953552, 36.302708, 49.321556>,  <32.879444, 36.695286, 49.341293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953552, 36.302708, 49.321556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043458, -0.058347, 0.997350,
		-0.981727, -0.182630, -0.053461,
		0.185265, -0.981449, -0.049344,
		33.009132, 36.008274, 49.306751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393456, 36.449085, 49.889465>,  <32.879444, 36.695286, 49.341293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393456, 36.449085, 49.889465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640530, 36.142151, 49.820591>,  <32.788776, 35.957989, 49.779266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640530, 36.142151, 49.820591>,  <32.393456, 36.449085, 49.889465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640530, 36.142151, 49.820591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154958, -0.095900, 0.983255,
		-0.771004, -0.634029, 0.059669,
		0.617690, -0.767340, -0.172187,
		32.825836, 35.911949, 49.768936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244190, 35.960003, 50.360786>,  <32.393456, 36.449085, 49.889465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244190, 35.960003, 50.360786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590252, 35.801113, 50.238335>,  <32.797890, 35.705780, 50.164864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590252, 35.801113, 50.238335>,  <32.244190, 35.960003, 50.360786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590252, 35.801113, 50.238335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192324, -0.300968, 0.934040,
		-0.463158, -0.866968, -0.183989,
		0.865157, -0.397222, -0.306134,
		32.849800, 35.681946, 50.146496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342178, 35.357662, 50.801468>,  <32.244190, 35.960003, 50.360786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342178, 35.357662, 50.801468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700283, 35.454620, 50.651932>,  <32.915146, 35.512794, 50.562210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700283, 35.454620, 50.651932>,  <32.342178, 35.357662, 50.801468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700283, 35.454620, 50.651932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405990, -0.098192, 0.908587,
		0.183532, -0.965195, -0.186319,
		0.895259, 0.242399, -0.373837,
		32.968861, 35.527340, 50.539780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800674, 34.969833, 51.184284>,  <32.342178, 35.357662, 50.801468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800674, 34.969833, 51.184284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005165, 35.276268, 51.028461>,  <33.127857, 35.460129, 50.934967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005165, 35.276268, 51.028461>,  <32.800674, 34.969833, 51.184284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005165, 35.276268, 51.028461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590627, 0.016117, 0.806783,
		0.624347, -0.642532, -0.444234,
		0.511225, 0.766090, -0.389559,
		33.158531, 35.506096, 50.911594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481716, 34.805149, 51.381432>,  <32.800674, 34.969833, 51.184284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481716, 34.805149, 51.381432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486179, 35.190605, 51.274643>,  <33.488857, 35.421879, 51.210567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486179, 35.190605, 51.274643>,  <33.481716, 34.805149, 51.381432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486179, 35.190605, 51.274643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790924, 0.154851, 0.591997,
		0.611813, -0.217763, -0.760437,
		0.011161, 0.963639, -0.266974,
		33.489529, 35.479698, 51.194550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116737, 34.932781, 51.242424>,  <33.481716, 34.805149, 51.381432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116737, 34.932781, 51.242424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948334, 35.284309, 51.332241>,  <33.847290, 35.495228, 51.386131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948334, 35.284309, 51.332241>,  <34.116737, 34.932781, 51.242424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948334, 35.284309, 51.332241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738229, 0.188152, 0.647778,
		0.527035, 0.438485, -0.727987,
		-0.421014, 0.878823, 0.224539,
		33.822029, 35.547955, 51.399601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656273, 35.491631, 51.258163>,  <34.116737, 34.932781, 51.242424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656273, 35.491631, 51.258163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350235, 35.619164, 51.481941>,  <34.166611, 35.695683, 51.616207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350235, 35.619164, 51.481941>,  <34.656273, 35.491631, 51.258163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350235, 35.619164, 51.481941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636023, 0.238559, 0.733870,
		0.100523, 0.917297, -0.385306,
		-0.765095, 0.318834, 0.559441,
		34.120705, 35.714813, 51.649773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889496, 36.082287, 51.518032>,  <34.656273, 35.491631, 51.258163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889496, 36.082287, 51.518032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580856, 35.979179, 51.750645>,  <34.395672, 35.917313, 51.890213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580856, 35.979179, 51.750645>,  <34.889496, 36.082287, 51.518032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580856, 35.979179, 51.750645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559959, 0.158475, 0.813223,
		-0.301786, 0.953121, 0.022062,
		-0.771603, -0.257773, 0.581534,
		34.349377, 35.901848, 51.925106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773823, 36.630836, 51.991085>,  <34.889496, 36.082287, 51.518032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773823, 36.630836, 51.991085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600121, 36.311741, 52.158436>,  <34.495899, 36.120285, 52.258846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600121, 36.311741, 52.158436>,  <34.773823, 36.630836, 51.991085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600121, 36.311741, 52.158436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556715, 0.127456, 0.820867,
		-0.708162, 0.589379, 0.388765,
		-0.434251, -0.797739, 0.418376,
		34.469845, 36.072418, 52.283947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052860, 36.581970, 52.654617>,  <34.773823, 36.630836, 51.991085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052860, 36.581970, 52.654617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842533, 36.241730, 52.655460>,  <34.716339, 36.037586, 52.655968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842533, 36.241730, 52.655460>,  <35.052860, 36.581970, 52.654617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842533, 36.241730, 52.655460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489599, -0.300628, 0.818484,
		-0.695566, 0.431403, 0.574525,
		-0.525815, -0.850597, 0.002107,
		34.684788, 35.986549, 52.656094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691402, 36.519245, 53.221676>,  <35.052860, 36.581970, 52.654617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691402, 36.519245, 53.221676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768593, 36.147865, 53.094719>,  <34.814907, 35.925037, 53.018543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768593, 36.147865, 53.094719>,  <34.691402, 36.519245, 53.221676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768593, 36.147865, 53.094719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501939, -0.184537, 0.844987,
		-0.843101, -0.322373, 0.430415,
		0.192973, -0.928451, -0.317395,
		34.826485, 35.869331, 52.999500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717316, 35.858547, 53.750153>,  <34.691402, 36.519245, 53.221676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717316, 35.858547, 53.750153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965633, 35.877068, 53.437111>,  <35.114624, 35.888180, 53.249287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965633, 35.877068, 53.437111>,  <34.717316, 35.858547, 53.750153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965633, 35.877068, 53.437111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778670, 0.079488, 0.622378,
		0.091029, -0.995760, 0.013287,
		0.620795, 0.046308, -0.782604,
		35.151871, 35.890957, 53.202332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122749, 35.375351, 54.061420>,  <34.717316, 35.858547, 53.750153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122749, 35.375351, 54.061420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175316, 35.348370, 54.457031>,  <35.206856, 35.332180, 54.694397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175316, 35.348370, 54.457031>,  <35.122749, 35.375351, 54.061420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175316, 35.348370, 54.457031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886657, -0.438204, -0.147704,
		0.443360, 0.896341, 0.002222,
		0.131419, -0.067456, 0.989029,
		35.214741, 35.328133, 54.753738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579899, 35.794613, 54.369656>,  <35.122749, 35.375351, 54.061420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579899, 35.794613, 54.369656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579338, 35.446873, 54.567333>,  <35.579002, 35.238228, 54.685940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579338, 35.446873, 54.567333>,  <35.579899, 35.794613, 54.369656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579338, 35.446873, 54.567333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870475, -0.244309, -0.427302,
		0.492211, 0.429587, 0.757089,
		-0.001400, -0.869350, 0.494196,
		35.578918, 35.186069, 54.715591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261265, 35.641663, 54.736477>,  <35.579899, 35.794613, 54.369656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261265, 35.641663, 54.736477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059139, 35.326008, 54.596809>,  <35.937862, 35.136616, 54.513008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059139, 35.326008, 54.596809>,  <36.261265, 35.641663, 54.736477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059139, 35.326008, 54.596809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675159, -0.109550, -0.729493,
		0.537418, -0.604369, 0.588150,
		-0.505314, -0.789137, -0.349170,
		35.907543, 35.089268, 54.492058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743580, 34.999218, 54.622635>,  <36.261265, 35.641663, 54.736477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743580, 34.999218, 54.622635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410717, 34.961254, 54.404087>,  <36.210999, 34.938477, 54.272961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410717, 34.961254, 54.404087>,  <36.743580, 34.999218, 54.622635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410717, 34.961254, 54.404087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550272, -0.263415, -0.792347,
		-0.068722, -0.960003, 0.271426,
		-0.832153, -0.094906, -0.546365,
		36.161072, 34.932781, 54.240177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615280, 34.331558, 54.237656>,  <36.743580, 34.999218, 54.622635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615280, 34.331558, 54.237656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412300, 34.612053, 54.037354>,  <36.290512, 34.780350, 53.917171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412300, 34.612053, 54.037354>,  <36.615280, 34.331558, 54.237656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412300, 34.612053, 54.037354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442751, -0.286370, -0.849684,
		-0.739232, -0.652886, -0.165154,
		-0.507451, 0.701236, -0.500760,
		36.260063, 34.822422, 53.887127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137230, 34.041451, 53.617542>,  <36.615280, 34.331558, 54.237656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137230, 34.041451, 53.617542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268291, 34.413036, 53.548637>,  <36.346928, 34.635986, 53.507294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268291, 34.413036, 53.548637>,  <36.137230, 34.041451, 53.617542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268291, 34.413036, 53.548637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165676, -0.235997, -0.957526,
		-0.930158, 0.285197, -0.231232,
		0.327654, 0.928961, -0.172264,
		36.366589, 34.691723, 53.496960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753780, 34.253708, 52.977234>,  <36.137230, 34.041451, 53.617542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753780, 34.253708, 52.977234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124981, 34.380947, 53.054821>,  <36.347702, 34.457291, 53.101376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124981, 34.380947, 53.054821>,  <35.753780, 34.253708, 52.977234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124981, 34.380947, 53.054821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352535, -0.581261, -0.733385,
		-0.120543, 0.748964, -0.651553,
		0.928002, 0.318100, 0.193970,
		36.403381, 34.476376, 53.113010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108299, 34.725880, 52.415401>,  <35.753780, 34.253708, 52.977234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108299, 34.725880, 52.415401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313087, 34.458862, 52.631649>,  <36.435963, 34.298653, 52.761398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313087, 34.458862, 52.631649>,  <36.108299, 34.725880, 52.415401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313087, 34.458862, 52.631649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127473, -0.563351, -0.816325,
		0.849490, 0.486852, -0.203328,
		0.511974, -0.667541, 0.540621,
		36.466679, 34.258598, 52.793835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887638, 34.556393, 52.248764>,  <36.108299, 34.725880, 52.415401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887638, 34.556393, 52.248764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637260, 34.266491, 52.363953>,  <36.487034, 34.092548, 52.433064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637260, 34.266491, 52.363953>,  <36.887638, 34.556393, 52.248764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637260, 34.266491, 52.363953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058825, -0.412080, -0.909247,
		0.777646, -0.552198, 0.300573,
		-0.625944, -0.724754, 0.287969,
		36.449478, 34.049065, 52.450344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161320, 33.919865, 52.041847>,  <36.887638, 34.556393, 52.248764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161320, 33.919865, 52.041847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762348, 33.891750, 52.047523>,  <36.522964, 33.874882, 52.050930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762348, 33.891750, 52.047523>,  <37.161320, 33.919865, 52.041847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762348, 33.891750, 52.047523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006219, -0.281971, -0.959403,
		0.071435, -0.956845, 0.281682,
		-0.997425, -0.070287, 0.014192,
		36.463120, 33.870663, 52.051781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950932, 33.236221, 51.783382>,  <37.161320, 33.919865, 52.041847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950932, 33.236221, 51.783382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630859, 33.472721, 51.743107>,  <36.438816, 33.614620, 51.718941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630859, 33.472721, 51.743107>,  <36.950932, 33.236221, 51.783382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630859, 33.472721, 51.743107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001758, -0.170193, -0.985409,
		-0.599761, -0.788325, 0.137224,
		-0.800178, 0.591251, -0.100689,
		36.390804, 33.650097, 51.712898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534325, 32.925339, 51.375061>,  <36.950932, 33.236221, 51.783382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534325, 32.925339, 51.375061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384701, 33.293365, 51.328499>,  <36.294926, 33.514183, 51.300560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384701, 33.293365, 51.328499>,  <36.534325, 32.925339, 51.375061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384701, 33.293365, 51.328499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178195, -0.194486, -0.964584,
		-0.910122, -0.340073, 0.236702,
		-0.374064, 0.920068, -0.116407,
		36.272480, 33.569386, 51.293575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049160, 32.743160, 50.922771>,  <36.534325, 32.925339, 51.375061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049160, 32.743160, 50.922771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087349, 33.140705, 50.900398>,  <36.110260, 33.379230, 50.886974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087349, 33.140705, 50.900398>,  <36.049160, 32.743160, 50.922771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087349, 33.140705, 50.900398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126650, -0.043607, -0.990988,
		-0.987343, 0.101692, 0.121709,
		0.095468, 0.993860, -0.055934,
		36.115990, 33.438862, 50.883617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536854, 32.997051, 50.487667>,  <36.049160, 32.743160, 50.922771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536854, 32.997051, 50.487667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803894, 33.294838, 50.484356>,  <35.964119, 33.473511, 50.482368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803894, 33.294838, 50.484356>,  <35.536854, 32.997051, 50.487667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803894, 33.294838, 50.484356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044970, -0.051414, -0.997664,
		-0.743158, 0.665672, -0.067802,
		0.667604, 0.744471, -0.008274,
		36.004173, 33.518181, 50.481873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294086, 33.594078, 50.019970>,  <35.536854, 32.997051, 50.487667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294086, 33.594078, 50.019970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692570, 33.619175, 50.044094>,  <35.931660, 33.634232, 50.058571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692570, 33.619175, 50.044094>,  <35.294086, 33.594078, 50.019970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692570, 33.619175, 50.044094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056640, 0.058783, -0.996663,
		-0.066074, 0.996297, 0.055006,
		0.996206, 0.062738, 0.060315,
		35.991432, 33.637997, 50.062187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409294, 33.908337, 49.436424>,  <35.294086, 33.594078, 50.019970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409294, 33.908337, 49.436424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785770, 33.808865, 49.527912>,  <36.011658, 33.749180, 49.582806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785770, 33.808865, 49.527912>,  <35.409294, 33.908337, 49.436424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785770, 33.808865, 49.527912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239869, 0.015062, -0.970689,
		0.237949, 0.968468, 0.073828,
		0.941193, -0.248683, 0.228721,
		36.068127, 33.734261, 49.596527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769188, 34.213470, 48.842422>,  <35.409294, 33.908337, 49.436424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769188, 34.213470, 48.842422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042774, 33.993748, 49.034443>,  <36.206928, 33.861916, 49.149654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042774, 33.993748, 49.034443>,  <35.769188, 34.213470, 48.842422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042774, 33.993748, 49.034443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446880, -0.204648, -0.870871,
		0.576614, 0.810176, 0.105500,
		0.683969, -0.549303, 0.480055,
		36.247967, 33.828957, 49.178459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403091, 34.542286, 48.648178>,  <35.769188, 34.213470, 48.842422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403091, 34.542286, 48.648178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453613, 34.160496, 48.756275>,  <36.483925, 33.931423, 48.821133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453613, 34.160496, 48.756275>,  <36.403091, 34.542286, 48.648178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453613, 34.160496, 48.756275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577186, -0.150851, -0.802559,
		0.806786, 0.257343, 0.531855,
		0.126302, -0.954473, 0.270239,
		36.491505, 33.874153, 48.837345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097126, 34.421013, 48.709404>,  <36.403091, 34.542286, 48.648178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097126, 34.421013, 48.709404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929993, 34.061485, 48.656429>,  <36.829712, 33.845768, 48.624645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929993, 34.061485, 48.656429>,  <37.097126, 34.421013, 48.709404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929993, 34.061485, 48.656429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473243, -0.090888, -0.876231,
		0.775537, -0.428791, 0.463336,
		-0.417831, -0.898820, -0.132435,
		36.804642, 33.791840, 48.616699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656250, 33.976231, 48.541420>,  <37.097126, 34.421013, 48.709404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656250, 33.976231, 48.541420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300533, 33.836452, 48.423401>,  <37.087105, 33.752586, 48.352589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300533, 33.836452, 48.423401>,  <37.656250, 33.976231, 48.541420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300533, 33.836452, 48.423401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370647, -0.172753, -0.912566,
		0.267919, -0.920895, 0.283147,
		-0.889292, -0.349442, -0.295043,
		37.033745, 33.731621, 48.334888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894444, 33.370453, 48.105202>,  <37.656250, 33.976231, 48.541420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894444, 33.370453, 48.105202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511967, 33.466644, 48.038433>,  <37.282478, 33.524357, 47.998371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511967, 33.466644, 48.038433>,  <37.894444, 33.370453, 48.105202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511967, 33.466644, 48.038433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154102, -0.071312, -0.985478,
		-0.248888, -0.968032, 0.031130,
		-0.956194, 0.240477, -0.166925,
		37.225109, 33.538788, 47.988358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658043, 32.914555, 47.681446>,  <37.894444, 33.370453, 48.105202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658043, 32.914555, 47.681446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391724, 33.206310, 47.618584>,  <37.231930, 33.381363, 47.580868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391724, 33.206310, 47.618584>,  <37.658043, 32.914555, 47.681446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391724, 33.206310, 47.618584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023498, -0.190028, -0.981497,
		-0.745758, -0.657176, 0.109382,
		-0.665802, 0.729390, -0.157157,
		37.191982, 33.425129, 47.571438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319881, 32.617245, 47.117012>,  <37.658043, 32.914555, 47.681446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319881, 32.617245, 47.117012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193737, 32.996563, 47.131348>,  <37.118050, 33.224152, 47.139950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193737, 32.996563, 47.131348>,  <37.319881, 32.617245, 47.117012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193737, 32.996563, 47.131348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172244, -0.020058, -0.984850,
		-0.933208, -0.316760, 0.169663,
		-0.315364, 0.948294, 0.035841,
		37.099129, 33.281052, 47.142101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627716, 32.655369, 46.971157>,  <37.319881, 32.617245, 47.117012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627716, 32.655369, 46.971157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757881, 33.019920, 46.870358>,  <36.835979, 33.238651, 46.809875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757881, 33.019920, 46.870358>,  <36.627716, 32.655369, 46.971157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757881, 33.019920, 46.870358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431605, -0.093964, -0.897155,
		-0.841324, 0.400707, 0.362778,
		0.325409, 0.911375, -0.252001,
		36.855503, 33.293331, 46.794758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072750, 33.087124, 46.672104>,  <36.627716, 32.655369, 46.971157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072750, 33.087124, 46.672104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451893, 33.157532, 46.565834>,  <36.679379, 33.199776, 46.502071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451893, 33.157532, 46.565834>,  <36.072750, 33.087124, 46.672104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451893, 33.157532, 46.565834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239560, -0.156249, -0.958226,
		-0.210178, 0.971907, -0.105934,
		0.947859, 0.176020, -0.265670,
		36.736252, 33.210339, 46.486134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015137, 33.488152, 46.100620>,  <36.072750, 33.087124, 46.672104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015137, 33.488152, 46.100620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381893, 33.330509, 46.075333>,  <36.601948, 33.235924, 46.060158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381893, 33.330509, 46.075333>,  <36.015137, 33.488152, 46.100620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381893, 33.330509, 46.075333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148649, -0.190158, -0.970435,
		0.370431, 0.899178, -0.232937,
		0.916889, -0.394105, -0.063221,
		36.656960, 33.212276, 46.056366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194389, 33.702808, 45.468307>,  <36.015137, 33.488152, 46.100620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194389, 33.702808, 45.468307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420826, 33.385792, 45.559006>,  <36.556690, 33.195580, 45.613426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420826, 33.385792, 45.559006>,  <36.194389, 33.702808, 45.468307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420826, 33.385792, 45.559006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156656, -0.373478, -0.914316,
		0.809319, 0.482067, -0.335580,
		0.566093, -0.792543, 0.226745,
		36.590652, 33.148029, 45.627029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660431, 33.767216, 44.978611>,  <36.194389, 33.702808, 45.468307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660431, 33.767216, 44.978611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679718, 33.389977, 45.110207>,  <36.691292, 33.163631, 45.189163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679718, 33.389977, 45.110207>,  <36.660431, 33.767216, 44.978611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679718, 33.389977, 45.110207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048614, -0.331198, -0.942308,
		0.997653, 0.029445, -0.061818,
		0.048220, -0.943102, 0.328990,
		36.694183, 33.107044, 45.208904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102825, 33.359112, 44.478138>,  <36.660431, 33.767216, 44.978611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102825, 33.359112, 44.478138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899761, 33.073479, 44.670956>,  <36.777924, 32.902100, 44.786644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899761, 33.073479, 44.670956>,  <37.102825, 33.359112, 44.478138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899761, 33.073479, 44.670956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166028, -0.467930, -0.868030,
		0.845408, -0.520698, 0.118993,
		-0.507662, -0.714083, 0.482042,
		36.747463, 32.859253, 44.815567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270447, 32.773212, 44.236111>,  <37.102825, 33.359112, 44.478138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270447, 32.773212, 44.236111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919624, 32.685177, 44.406914>,  <36.709129, 32.632355, 44.509396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919624, 32.685177, 44.406914>,  <37.270447, 32.773212, 44.236111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919624, 32.685177, 44.406914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301641, -0.439493, -0.846084,
		0.373877, -0.870866, 0.319074,
		-0.877057, -0.220086, 0.427006,
		36.656506, 32.619152, 44.535015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159519, 32.013474, 44.088585>,  <37.270447, 32.773212, 44.236111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159519, 32.013474, 44.088585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813778, 32.183651, 44.195839>,  <36.606335, 32.285759, 44.260189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813778, 32.183651, 44.195839>,  <37.159519, 32.013474, 44.088585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813778, 32.183651, 44.195839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442406, -0.389769, -0.807686,
		-0.239118, -0.816747, 0.525117,
		-0.864349, 0.425447, 0.268133,
		36.554474, 32.311283, 44.276279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647289, 31.440331, 43.936176>,  <37.159519, 32.013474, 44.088585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647289, 31.440331, 43.936176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457535, 31.792395, 43.929607>,  <36.343681, 32.003632, 43.925667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457535, 31.792395, 43.929607>,  <36.647289, 31.440331, 43.936176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457535, 31.792395, 43.929607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479402, -0.273947, -0.833743,
		-0.738328, -0.387644, 0.551909,
		-0.474389, 0.880162, -0.016425,
		36.315216, 32.056442, 43.924679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037777, 31.269855, 43.601868>,  <36.647289, 31.440331, 43.936176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037777, 31.269855, 43.601868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002682, 31.668234, 43.609825>,  <35.981625, 31.907261, 43.614597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002682, 31.668234, 43.609825>,  <36.037777, 31.269855, 43.601868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002682, 31.668234, 43.609825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662141, -0.043391, -0.748122,
		-0.744225, -0.078809, 0.663263,
		-0.087738, 0.995945, 0.019890,
		35.976360, 31.967018, 43.615791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350334, 31.356787, 43.450176>,  <36.037777, 31.269855, 43.601868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350334, 31.356787, 43.450176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528370, 31.706108, 43.370945>,  <35.635193, 31.915701, 43.323406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528370, 31.706108, 43.370945>,  <35.350334, 31.356787, 43.450176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528370, 31.706108, 43.370945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544592, 0.088384, -0.834031,
		-0.710855, 0.479092, 0.514933,
		0.445089, 0.873304, -0.198081,
		35.661896, 31.968100, 43.311520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722237, 31.865366, 43.321613>,  <35.350334, 31.356787, 43.450176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722237, 31.865366, 43.321613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055267, 32.024300, 43.167236>,  <35.255085, 32.119659, 43.074612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055267, 32.024300, 43.167236>,  <34.722237, 31.865366, 43.321613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055267, 32.024300, 43.167236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470617, 0.139942, -0.871169,
		-0.292136, 0.906941, 0.303504,
		0.832572, 0.397334, -0.385939,
		35.305038, 32.143501, 43.051456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529709, 32.540573, 43.113518>,  <34.722237, 31.865366, 43.321613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529709, 32.540573, 43.113518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850086, 32.432499, 42.899796>,  <35.042313, 32.367653, 42.771561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850086, 32.432499, 42.899796>,  <34.529709, 32.540573, 43.113518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850086, 32.432499, 42.899796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465854, 0.279366, -0.839604,
		0.376119, 0.921386, 0.097888,
		0.800946, -0.270190, -0.534306,
		35.090370, 32.351440, 42.739502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499363, 33.043034, 42.601276>,  <34.529709, 32.540573, 43.113518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499363, 33.043034, 42.601276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750664, 32.760502, 42.470806>,  <34.901443, 32.590981, 42.392525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750664, 32.760502, 42.470806>,  <34.499363, 33.043034, 42.601276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750664, 32.760502, 42.470806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420027, 0.044970, -0.906397,
		0.654885, 0.706452, -0.268426,
		0.628255, -0.706331, -0.326179,
		34.939140, 32.548603, 42.372952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836857, 33.356548, 41.920078>,  <34.499363, 33.043034, 42.601276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836857, 33.356548, 41.920078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864422, 32.958302, 41.945400>,  <34.880959, 32.719353, 41.960594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864422, 32.958302, 41.945400>,  <34.836857, 33.356548, 41.920078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864422, 32.958302, 41.945400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517329, -0.089916, -0.851050,
		0.853008, 0.025898, -0.521255,
		0.068909, -0.995612, 0.063301,
		34.885094, 32.659618, 41.964390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075649, 33.215202, 41.294060>,  <34.836857, 33.356548, 41.920078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075649, 33.215202, 41.294060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920044, 32.867855, 41.417095>,  <34.826679, 32.659447, 41.490917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920044, 32.867855, 41.417095>,  <35.075649, 33.215202, 41.294060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920044, 32.867855, 41.417095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450221, -0.112088, -0.885854,
		0.803720, -0.483095, -0.347352,
		-0.389018, -0.868364, 0.307586,
		34.803337, 32.607346, 41.509373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118614, 32.922024, 40.656448>,  <35.075649, 33.215202, 41.294060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118614, 32.922024, 40.656448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875439, 32.712826, 40.895409>,  <34.729534, 32.587307, 41.038784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875439, 32.712826, 40.895409>,  <35.118614, 32.922024, 40.656448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875439, 32.712826, 40.895409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699037, -0.004241, -0.715073,
		0.376514, -0.852324, -0.363016,
		-0.607934, -0.522996, 0.597403,
		34.693058, 32.555927, 41.074631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854492, 32.439316, 40.255402>,  <35.118614, 32.922024, 40.656448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854492, 32.439316, 40.255402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580193, 32.474102, 40.544449>,  <34.415611, 32.494976, 40.717876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580193, 32.474102, 40.544449>,  <34.854492, 32.439316, 40.255402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580193, 32.474102, 40.544449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725097, 0.004442, -0.688632,
		-0.063099, -0.996201, 0.060014,
		-0.685750, 0.086968, 0.722623,
		34.374466, 32.500195, 40.761234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274872, 31.895885, 40.106106>,  <34.854492, 32.439316, 40.255402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274872, 31.895885, 40.106106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122810, 32.172413, 40.351891>,  <34.031574, 32.338329, 40.499359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122810, 32.172413, 40.351891>,  <34.274872, 31.895885, 40.106106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122810, 32.172413, 40.351891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771737, 0.129095, -0.622701,
		-0.509809, -0.710923, 0.484441,
		-0.380154, 0.691320, 0.614459,
		34.008762, 32.379810, 40.536228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569839, 31.636015, 40.080261>,  <34.274872, 31.895885, 40.106106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569839, 31.636015, 40.080261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596130, 32.014187, 40.207912>,  <33.611904, 32.241089, 40.284504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596130, 32.014187, 40.207912>,  <33.569839, 31.636015, 40.080261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596130, 32.014187, 40.207912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859844, 0.215937, -0.462643,
		-0.506308, -0.243991, 0.827116,
		0.065724, 0.945431, 0.319125,
		33.615849, 32.297817, 40.303650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907791, 31.886345, 40.359612>,  <33.569839, 31.636015, 40.080261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907791, 31.886345, 40.359612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090630, 32.227966, 40.260292>,  <33.200333, 32.432941, 40.200703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090630, 32.227966, 40.260292>,  <32.907791, 31.886345, 40.359612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090630, 32.227966, 40.260292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698400, 0.171798, -0.694782,
		-0.550726, 0.490993, 0.675001,
		0.457097, 0.854056, -0.248296,
		33.227760, 32.484184, 40.185802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413639, 32.331676, 40.165768>,  <32.907791, 31.886345, 40.359612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413639, 32.331676, 40.165768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728127, 32.509922, 39.994518>,  <32.916821, 32.616871, 39.891769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728127, 32.509922, 39.994518>,  <32.413639, 32.331676, 40.165768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728127, 32.509922, 39.994518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574235, 0.270899, -0.772573,
		-0.228292, 0.853253, 0.468873,
		0.786217, 0.445615, -0.428123,
		32.963993, 32.643608, 39.866081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233639, 33.058071, 40.004902>,  <32.413639, 32.331676, 40.165768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233639, 33.058071, 40.004902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552246, 32.973312, 39.778397>,  <32.743412, 32.922455, 39.642494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552246, 32.973312, 39.778397>,  <32.233639, 33.058071, 40.004902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552246, 32.973312, 39.778397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413672, 0.492050, -0.766004,
		0.440947, 0.844384, 0.304270,
		0.796518, -0.211899, -0.566266,
		32.791203, 32.909744, 39.608517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339760, 33.620926, 39.621742>,  <32.233639, 33.058071, 40.004902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339760, 33.620926, 39.621742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530937, 33.342041, 39.408024>,  <32.645641, 33.174709, 39.279793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530937, 33.342041, 39.408024>,  <32.339760, 33.620926, 39.621742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530937, 33.342041, 39.408024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361473, 0.398262, -0.843045,
		0.800569, 0.596058, -0.061677,
		0.477940, -0.697210, -0.534294,
		32.674320, 33.132877, 39.247734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737892, 34.005951, 39.161327>,  <32.339760, 33.620926, 39.621742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737892, 34.005951, 39.161327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661018, 33.654057, 38.987373>,  <32.614895, 33.442921, 38.883003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661018, 33.654057, 38.987373>,  <32.737892, 34.005951, 39.161327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661018, 33.654057, 38.987373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401593, 0.474840, -0.783103,
		0.895427, 0.024147, -0.444553,
		-0.192182, -0.879741, -0.434882,
		32.603363, 33.390133, 38.856907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776859, 34.099625, 38.485500>,  <32.737892, 34.005951, 39.161327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776859, 34.099625, 38.485500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584915, 33.749043, 38.501320>,  <32.469749, 33.538692, 38.510811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584915, 33.749043, 38.501320>,  <32.776859, 34.099625, 38.485500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584915, 33.749043, 38.501320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608235, 0.299843, -0.734945,
		0.632286, -0.376727, -0.676972,
		-0.479859, -0.876454, 0.039552,
		32.440956, 33.486107, 38.513184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257702, 33.792107, 37.982521>,  <32.776859, 34.099625, 38.485500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257702, 33.792107, 37.982521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436192, 34.023853, 37.709694>,  <33.543285, 34.162903, 37.545998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436192, 34.023853, 37.709694>,  <33.257702, 33.792107, 37.982521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436192, 34.023853, 37.709694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856860, -0.056696, 0.512423,
		0.258210, -0.813093, -0.521736,
		0.446228, 0.579367, -0.682067,
		33.570061, 34.197662, 37.505074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908321, 33.400578, 37.690163>,  <33.257702, 33.792107, 37.982521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908321, 33.400578, 37.690163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911476, 33.800522, 37.684162>,  <33.913368, 34.040489, 37.680561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911476, 33.800522, 37.684162>,  <33.908321, 33.400578, 37.690163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911476, 33.800522, 37.684162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871523, 0.000477, 0.490355,
		0.490291, -0.016941, -0.871394,
		0.007891, 0.999856, -0.014998,
		33.913845, 34.100479, 37.679665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484749, 33.645523, 37.411591>,  <33.908321, 33.400578, 37.690163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484749, 33.645523, 37.411591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377842, 33.975887, 37.610161>,  <34.313698, 34.174107, 37.729305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377842, 33.975887, 37.610161>,  <34.484749, 33.645523, 37.411591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377842, 33.975887, 37.610161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869737, -0.015052, 0.493286,
		0.414882, 0.563601, -0.714302,
		-0.267265, 0.825910, 0.496430,
		34.297661, 34.223660, 37.759090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120079, 34.142250, 37.397011>,  <34.484749, 33.645523, 37.411591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120079, 34.142250, 37.397011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887882, 34.295544, 37.684391>,  <34.748566, 34.387520, 37.856819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887882, 34.295544, 37.684391>,  <35.120079, 34.142250, 37.397011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887882, 34.295544, 37.684391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812152, 0.208932, 0.544754,
		0.058661, 0.899711, -0.432525,
		-0.580490, 0.383232, 0.718446,
		34.713734, 34.410515, 37.899925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443653, 34.758671, 37.630161>,  <35.120079, 34.142250, 37.397011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443653, 34.758671, 37.630161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188427, 34.651398, 37.918869>,  <35.035294, 34.587032, 38.092094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188427, 34.651398, 37.918869>,  <35.443653, 34.758671, 37.630161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188427, 34.651398, 37.918869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655857, 0.301799, 0.691931,
		-0.403394, 0.914874, -0.016678,
		-0.638064, -0.268182, 0.721771,
		34.997009, 34.570942, 38.135399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497963, 35.264935, 38.304062>,  <35.443653, 34.758671, 37.630161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497963, 35.264935, 38.304062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325245, 34.935482, 38.451130>,  <35.221615, 34.737812, 38.539371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325245, 34.935482, 38.451130>,  <35.497963, 35.264935, 38.304062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325245, 34.935482, 38.451130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563072, 0.072302, 0.823239,
		-0.704630, 0.562496, 0.432544,
		-0.431795, -0.823632, 0.367672,
		35.195705, 34.688393, 38.561432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396942, 35.399918, 39.050797>,  <35.497963, 35.264935, 38.304062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396942, 35.399918, 39.050797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396076, 35.002037, 39.009697>,  <35.395557, 34.763309, 38.985039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396076, 35.002037, 39.009697>,  <35.396942, 35.399918, 39.050797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396076, 35.002037, 39.009697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651290, -0.079374, 0.754666,
		-0.758826, -0.065285, 0.648013,
		-0.002167, -0.994705, -0.102750,
		35.395428, 34.703625, 38.978870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511448, 35.218033, 39.705872>,  <35.396942, 35.399918, 39.050797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511448, 35.218033, 39.705872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580193, 34.870438, 39.520264>,  <35.621441, 34.661880, 39.408897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580193, 34.870438, 39.520264>,  <35.511448, 35.218033, 39.705872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580193, 34.870438, 39.520264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592244, -0.285261, 0.753574,
		-0.787216, -0.404329, 0.465628,
		0.171866, -0.868991, -0.464023,
		35.631752, 34.609741, 39.381058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280380, 34.715149, 40.138458>,  <35.511448, 35.218033, 39.705872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280380, 34.715149, 40.138458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546890, 34.540245, 39.896835>,  <35.706795, 34.435303, 39.751862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546890, 34.540245, 39.896835>,  <35.280380, 34.715149, 40.138458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546890, 34.540245, 39.896835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552094, -0.255269, 0.793745,
		-0.501272, -0.862344, 0.071332,
		0.666272, -0.437264, -0.604054,
		35.746773, 34.409065, 39.715618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429466, 34.157177, 40.488724>,  <35.280380, 34.715149, 40.138458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429466, 34.157177, 40.488724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721565, 34.223919, 40.223728>,  <35.896824, 34.263966, 40.064732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721565, 34.223919, 40.223728>,  <35.429466, 34.157177, 40.488724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721565, 34.223919, 40.223728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681513, -0.110222, 0.723458,
		0.047694, -0.979801, -0.194206,
		0.730250, 0.166858, -0.662490,
		35.940639, 34.273975, 40.024982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768696, 33.573269, 40.526196>,  <35.429466, 34.157177, 40.488724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768696, 33.573269, 40.526196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991131, 33.885395, 40.411743>,  <36.124592, 34.072670, 40.343071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991131, 33.885395, 40.411743>,  <35.768696, 33.573269, 40.526196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991131, 33.885395, 40.411743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599815, -0.138481, 0.788064,
		0.575316, -0.609860, -0.545053,
		0.556088, 0.780317, -0.286133,
		36.157959, 34.119492, 40.325905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469875, 33.321198, 40.702045>,  <35.768696, 33.573269, 40.526196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469875, 33.321198, 40.702045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479534, 33.719879, 40.671047>,  <36.485329, 33.959087, 40.652447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479534, 33.719879, 40.671047>,  <36.469875, 33.321198, 40.702045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479534, 33.719879, 40.671047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438790, 0.059085, 0.896645,
		0.898265, -0.055657, -0.435915,
		0.024148, 0.996700, -0.077496,
		36.486778, 34.018890, 40.647797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144695, 33.520134, 40.855343>,  <36.469875, 33.321198, 40.702045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144695, 33.520134, 40.855343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941452, 33.854481, 40.938435>,  <36.819504, 34.055088, 40.988289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941452, 33.854481, 40.938435>,  <37.144695, 33.520134, 40.855343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941452, 33.854481, 40.938435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474362, 0.070273, 0.877520,
		0.718891, 0.544417, -0.432209,
		-0.508110, 0.835866, 0.207733,
		36.789021, 34.105240, 41.000755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671249, 33.876926, 41.090748>,  <37.144695, 33.520134, 40.855343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671249, 33.876926, 41.090748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344673, 34.061409, 41.229725>,  <37.148727, 34.172100, 41.313110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344673, 34.061409, 41.229725>,  <37.671249, 33.876926, 41.090748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344673, 34.061409, 41.229725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495398, 0.250331, 0.831814,
		0.296663, 0.851248, -0.432861,
		-0.816438, 0.461207, 0.347443,
		37.099743, 34.199772, 41.333958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000755, 34.370720, 41.425488>,  <37.671249, 33.876926, 41.090748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000755, 34.370720, 41.425488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638367, 34.412739, 41.589531>,  <37.420933, 34.437950, 41.687958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638367, 34.412739, 41.589531>,  <38.000755, 34.370720, 41.425488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638367, 34.412739, 41.589531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423236, 0.246898, 0.871730,
		-0.009682, 0.963331, -0.268141,
		-0.905968, 0.105047, 0.410107,
		37.366577, 34.444252, 41.712563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943176, 35.051239, 41.780972>,  <38.000755, 34.370720, 41.425488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943176, 35.051239, 41.780972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664627, 34.807484, 41.932613>,  <37.497498, 34.661232, 42.023598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664627, 34.807484, 41.932613>,  <37.943176, 35.051239, 41.780972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664627, 34.807484, 41.932613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253562, 0.285266, 0.924299,
		-0.671400, 0.739780, -0.044134,
		-0.696368, -0.609384, 0.379108,
		37.455715, 34.624668, 42.046345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624725, 35.431358, 42.335716>,  <37.943176, 35.051239, 41.780972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624725, 35.431358, 42.335716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548523, 35.045017, 42.405956>,  <37.502800, 34.813213, 42.448101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548523, 35.045017, 42.405956>,  <37.624725, 35.431358, 42.335716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548523, 35.045017, 42.405956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175190, 0.142555, 0.974159,
		-0.965927, 0.216348, 0.142050,
		-0.190508, -0.965853, 0.175600,
		37.491371, 34.755260, 42.458637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200520, 35.493458, 42.800045>,  <37.624725, 35.431358, 42.335716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200520, 35.493458, 42.800045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312218, 35.111202, 42.837536>,  <37.379238, 34.881851, 42.860031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312218, 35.111202, 42.837536>,  <37.200520, 35.493458, 42.800045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312218, 35.111202, 42.837536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214781, 0.157296, 0.963912,
		-0.935890, -0.249040, 0.249177,
		0.279247, -0.955634, 0.093723,
		37.395992, 34.824512, 42.865654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771305, 35.185959, 43.332920>,  <37.200520, 35.493458, 42.800045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771305, 35.185959, 43.332920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109684, 34.974297, 43.306469>,  <37.312710, 34.847298, 43.290600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109684, 34.974297, 43.306469>,  <36.771305, 35.185959, 43.332920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109684, 34.974297, 43.306469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118133, 0.065033, 0.990866,
		-0.520022, -0.846029, 0.117525,
		0.845945, -0.529155, -0.066126,
		37.363468, 34.815552, 43.286633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611370, 34.605167, 43.784275>,  <36.771305, 35.185959, 43.332920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611370, 34.605167, 43.784275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009598, 34.619755, 43.749611>,  <37.248535, 34.628506, 43.728813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009598, 34.619755, 43.749611>,  <36.611370, 34.605167, 43.784275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009598, 34.619755, 43.749611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086704, 0.000309, 0.996234,
		0.036363, -0.999334, -0.002855,
		0.995570, 0.036474, -0.086657,
		37.308270, 34.630695, 43.723614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963566, 34.136105, 44.244610>,  <36.611370, 34.605167, 43.784275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963566, 34.136105, 44.244610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258678, 34.393108, 44.161808>,  <37.435745, 34.547310, 44.112125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258678, 34.393108, 44.161808>,  <36.963566, 34.136105, 44.244610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258678, 34.393108, 44.161808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189549, 0.097134, 0.977055,
		0.647878, -0.760093, -0.050124,
		0.737785, 0.642513, -0.207006,
		37.480015, 34.585861, 44.099705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418488, 34.045326, 44.700813>,  <36.963566, 34.136105, 44.244610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418488, 34.045326, 44.700813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541599, 34.410969, 44.595222>,  <37.615467, 34.630356, 44.531868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541599, 34.410969, 44.595222>,  <37.418488, 34.045326, 44.700813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541599, 34.410969, 44.595222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318299, 0.162538, 0.933953,
		0.896638, -0.371471, -0.240934,
		0.307775, 0.914107, -0.263976,
		37.633930, 34.685200, 44.516029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072300, 33.940025, 44.883648>,  <37.418488, 34.045326, 44.700813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072300, 33.940025, 44.883648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014839, 34.335743, 44.873367>,  <37.980362, 34.573174, 44.867199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014839, 34.335743, 44.873367>,  <38.072300, 33.940025, 44.883648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014839, 34.335743, 44.873367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463811, 0.090243, 0.881326,
		0.874210, 0.114685, -0.471809,
		-0.143652, 0.989294, -0.025699,
		37.971745, 34.632530, 44.865658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730309, 34.325508, 45.063244>,  <38.072300, 33.940025, 44.883648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730309, 34.325508, 45.063244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428722, 34.578548, 45.134068>,  <38.247772, 34.730373, 45.176563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428722, 34.578548, 45.134068>,  <38.730309, 34.325508, 45.063244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428722, 34.578548, 45.134068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465826, 0.324813, 0.823105,
		0.463186, 0.703074, -0.539580,
		-0.753966, 0.632601, 0.177061,
		38.202534, 34.768330, 45.187187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999626, 34.952873, 45.290016>,  <38.730309, 34.325508, 45.063244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999626, 34.952873, 45.290016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623062, 34.954594, 45.424904>,  <38.397121, 34.955624, 45.505836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623062, 34.954594, 45.424904>,  <38.999626, 34.952873, 45.290016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623062, 34.954594, 45.424904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309135, 0.410690, 0.857770,
		-0.134809, 0.911765, -0.387958,
		-0.941415, 0.004297, 0.337223,
		38.340637, 34.955883, 45.526070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102493, 35.448204, 45.723339>,  <38.999626, 34.952873, 45.290016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102493, 35.448204, 45.723339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741020, 35.315327, 45.831417>,  <38.524136, 35.235600, 45.896263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741020, 35.315327, 45.831417>,  <39.102493, 35.448204, 45.723339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741020, 35.315327, 45.831417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122293, 0.404489, 0.906329,
		-0.410368, 0.852077, -0.324905,
		-0.903683, -0.332195, 0.270193,
		38.469917, 35.215668, 45.912476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681343, 36.068344, 45.992592>,  <39.102493, 35.448204, 45.723339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681343, 36.068344, 45.992592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541168, 35.724735, 46.141865>,  <38.457062, 35.518570, 46.231430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541168, 35.724735, 46.141865>,  <38.681343, 36.068344, 45.992592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541168, 35.724735, 46.141865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010212, 0.401935, 0.915611,
		-0.936530, 0.317054, -0.149626,
		-0.350439, -0.859025, 0.373186,
		38.436035, 35.467026, 46.253822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243855, 36.318619, 46.497555>,  <38.681343, 36.068344, 45.992592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243855, 36.318619, 46.497555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231186, 35.926102, 46.573517>,  <38.223583, 35.690590, 46.619095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231186, 35.926102, 46.573517>,  <38.243855, 36.318619, 46.497555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231186, 35.926102, 46.573517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150973, 0.192515, 0.969611,
		-0.988030, 0.002043, -0.154246,
		-0.031675, -0.981292, 0.189902,
		38.221684, 35.631714, 46.630489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614780, 36.173927, 46.660786>,  <38.243855, 36.318619, 46.497555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614780, 36.173927, 46.660786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913506, 35.968426, 46.829697>,  <38.092743, 35.845123, 46.931042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913506, 35.968426, 46.829697>,  <37.614780, 36.173927, 46.660786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913506, 35.968426, 46.829697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237083, 0.387577, 0.890829,
		-0.621336, -0.765400, 0.167645,
		0.746815, -0.513758, 0.422279,
		38.137550, 35.814297, 46.956379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241875, 35.964745, 47.251099>,  <37.614780, 36.173927, 46.660786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241875, 35.964745, 47.251099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629601, 35.898403, 47.323677>,  <37.862236, 35.858597, 47.367222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629601, 35.898403, 47.323677>,  <37.241875, 35.964745, 47.251099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629601, 35.898403, 47.323677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126519, 0.296246, 0.946695,
		-0.210766, -0.940601, 0.266172,
		0.969315, -0.165856, 0.181442,
		37.920395, 35.848648, 47.378109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273365, 35.448303, 47.799397>,  <37.241875, 35.964745, 47.251099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273365, 35.448303, 47.799397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628902, 35.631584, 47.799004>,  <37.842224, 35.741554, 47.798767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628902, 35.631584, 47.799004>,  <37.273365, 35.448303, 47.799397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628902, 35.631584, 47.799004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108748, 0.213035, 0.970974,
		0.445114, -0.862939, 0.239184,
		0.888846, 0.458205, -0.000982,
		37.895557, 35.769047, 47.798710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617439, 35.185104, 48.380253>,  <37.273365, 35.448303, 47.799397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617439, 35.185104, 48.380253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812225, 35.528358, 48.315170>,  <37.929096, 35.734310, 48.276119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812225, 35.528358, 48.315170>,  <37.617439, 35.185104, 48.380253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812225, 35.528358, 48.315170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068755, 0.223371, 0.972306,
		0.870713, -0.462288, 0.167774,
		0.486961, 0.858135, -0.162708,
		37.958313, 35.785797, 48.266357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171867, 35.114918, 48.835278>,  <37.617439, 35.185104, 48.380253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171867, 35.114918, 48.835278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165207, 35.507694, 48.759895>,  <38.161209, 35.743359, 48.714664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165207, 35.507694, 48.759895>,  <38.171867, 35.114918, 48.835278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165207, 35.507694, 48.759895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157185, 0.188713, 0.969371,
		0.987429, -0.013482, -0.157489,
		-0.016652, 0.981940, -0.188460,
		38.160210, 35.802277, 48.703358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670441, 35.558418, 49.247639>,  <38.171867, 35.114918, 48.835278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670441, 35.558418, 49.247639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406246, 35.834515, 49.129433>,  <38.247730, 36.000172, 49.058510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406246, 35.834515, 49.129433>,  <38.670441, 35.558418, 49.247639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406246, 35.834515, 49.129433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060670, 0.343231, 0.937289,
		0.748387, 0.636991, -0.184821,
		-0.660482, 0.690242, -0.295516,
		38.208103, 36.041588, 49.040779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941444, 36.233532, 49.455051>,  <38.670441, 35.558418, 49.247639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941444, 36.233532, 49.455051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543953, 36.253666, 49.415100>,  <38.305458, 36.265747, 49.391129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543953, 36.253666, 49.415100>,  <38.941444, 36.233532, 49.455051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543953, 36.253666, 49.415100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097875, 0.040756, 0.994364,
		0.054126, 0.997900, -0.035573,
		-0.993726, 0.050339, -0.099876,
		38.245834, 36.268768, 49.385136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803268, 36.773041, 49.792027>,  <38.941444, 36.233532, 49.455051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803268, 36.773041, 49.792027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448914, 36.588921, 49.768951>,  <38.236301, 36.478447, 49.755108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448914, 36.588921, 49.768951>,  <38.803268, 36.773041, 49.792027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448914, 36.588921, 49.768951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058679, -0.012159, 0.998203,
		-0.460179, 0.887678, -0.016239,
		-0.885885, -0.460305, -0.057683,
		38.183147, 36.450829, 49.751648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350502, 37.178440, 50.114040>,  <38.803268, 36.773041, 49.792027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350502, 37.178440, 50.114040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260967, 36.788975, 50.131378>,  <38.207249, 36.555294, 50.141781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260967, 36.788975, 50.131378>,  <38.350502, 37.178440, 50.114040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260967, 36.788975, 50.131378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002239, 0.044985, 0.998985,
		-0.974624, 0.223511, -0.012249,
		-0.223835, -0.973663, 0.043343,
		38.193817, 36.496876, 50.144382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692661, 37.023800, 50.410095>,  <38.350502, 37.178440, 50.114040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692661, 37.023800, 50.410095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985535, 36.771713, 50.513428>,  <38.161259, 36.620461, 50.575428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985535, 36.771713, 50.513428>,  <37.692661, 37.023800, 50.410095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985535, 36.771713, 50.513428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206861, 0.155613, 0.965916,
		-0.648937, -0.760664, -0.016431,
		0.732181, -0.630218, 0.258335,
		38.205189, 36.582649, 50.590927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456585, 37.229221, 51.119213>,  <37.692661, 37.023800, 50.410095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456585, 37.229221, 51.119213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471779, 37.626190, 51.072472>,  <37.480896, 37.864372, 51.044426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471779, 37.626190, 51.072472>,  <37.456585, 37.229221, 51.119213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471779, 37.626190, 51.072472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564128, -0.075228, -0.822254,
		-0.824813, 0.097156, 0.556995,
		0.037985, 0.992422, -0.116857,
		37.483173, 37.923916, 51.037415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708214, 37.565613, 51.099121>,  <37.456585, 37.229221, 51.119213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708214, 37.565613, 51.099121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998745, 37.745266, 50.890999>,  <37.173065, 37.853058, 50.766125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998745, 37.745266, 50.890999>,  <36.708214, 37.565613, 51.099121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998745, 37.745266, 50.890999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578337, -0.009727, -0.815740,
		-0.371440, 0.893410, 0.252688,
		0.726332, 0.449138, -0.520305,
		37.216644, 37.880009, 50.734909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374073, 38.162113, 50.819248>,  <36.708214, 37.565613, 51.099121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374073, 38.162113, 50.819248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708614, 38.092403, 50.611347>,  <36.909340, 38.050575, 50.486607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708614, 38.092403, 50.611347>,  <36.374073, 38.162113, 50.819248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708614, 38.092403, 50.611347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498406, 0.153051, -0.853327,
		0.228265, 0.972729, 0.041144,
		0.836353, -0.174278, -0.519750,
		36.959518, 38.040119, 50.455421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306946, 38.666119, 50.472412>,  <36.374073, 38.162113, 50.819248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306946, 38.666119, 50.472412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581329, 38.465637, 50.261410>,  <36.745960, 38.345348, 50.134808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581329, 38.465637, 50.261410>,  <36.306946, 38.666119, 50.472412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581329, 38.465637, 50.261410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569999, 0.080495, -0.817693,
		0.452289, 0.861580, -0.230467,
		0.685957, -0.501199, -0.527506,
		36.787117, 38.315277, 50.103157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507500, 39.070316, 49.852097>,  <36.306946, 38.666119, 50.472412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507500, 39.070316, 49.852097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611553, 38.697018, 49.752995>,  <36.673985, 38.473038, 49.693531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611553, 38.697018, 49.752995>,  <36.507500, 39.070316, 49.852097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611553, 38.697018, 49.752995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458750, 0.106327, -0.882181,
		0.849633, 0.343147, -0.400466,
		0.260137, -0.933244, -0.247758,
		36.689594, 38.417046, 49.678669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657742, 39.101906, 49.193592>,  <36.507500, 39.070316, 49.852097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657742, 39.101906, 49.193592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653458, 38.703781, 49.232044>,  <36.650887, 38.464905, 49.255116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653458, 38.703781, 49.232044>,  <36.657742, 39.101906, 49.193592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653458, 38.703781, 49.232044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198271, -0.092111, -0.975809,
		0.980089, -0.029511, -0.196355,
		-0.010711, -0.995311, 0.096128,
		36.650246, 38.405190, 49.260883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068058, 38.884624, 48.670448>,  <36.657742, 39.101906, 49.193592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068058, 38.884624, 48.670448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816319, 38.591438, 48.773731>,  <36.665276, 38.415527, 48.835701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816319, 38.591438, 48.773731>,  <37.068058, 38.884624, 48.670448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816319, 38.591438, 48.773731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235371, -0.136869, -0.962220,
		0.740618, -0.666351, -0.086381,
		-0.629353, -0.732969, 0.258207,
		36.627514, 38.371548, 48.851192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236610, 38.320606, 48.259441>,  <37.068058, 38.884624, 48.670448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236610, 38.320606, 48.259441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871365, 38.222870, 48.389996>,  <36.652218, 38.164227, 48.468327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871365, 38.222870, 48.389996>,  <37.236610, 38.320606, 48.259441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871365, 38.222870, 48.389996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248902, -0.299961, -0.920908,
		0.322920, -0.922128, 0.213080,
		-0.913110, -0.244343, 0.326383,
		36.597431, 38.149567, 48.487911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125725, 37.569492, 48.022297>,  <37.236610, 38.320606, 48.259441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125725, 37.569492, 48.022297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767059, 37.739094, 48.073238>,  <36.551861, 37.840855, 48.103806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767059, 37.739094, 48.073238>,  <37.125725, 37.569492, 48.022297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767059, 37.739094, 48.073238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249797, -0.247037, -0.936255,
		-0.365512, -0.871318, 0.327423,
		-0.896662, 0.424002, 0.127357,
		36.498062, 37.866295, 48.111446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576435, 37.060894, 47.810349>,  <37.125725, 37.569492, 48.022297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576435, 37.060894, 47.810349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417351, 37.426994, 47.784618>,  <36.321899, 37.646656, 47.769180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417351, 37.426994, 47.784618>,  <36.576435, 37.060894, 47.810349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417351, 37.426994, 47.784618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285328, -0.190008, -0.939407,
		-0.872017, -0.355259, 0.336716,
		-0.397711, 0.915253, -0.064325,
		36.298038, 37.701569, 47.765320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859932, 37.013165, 47.697952>,  <36.576435, 37.060894, 47.810349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859932, 37.013165, 47.697952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024223, 37.345627, 47.548031>,  <36.122799, 37.545105, 47.458076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024223, 37.345627, 47.548031>,  <35.859932, 37.013165, 47.697952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024223, 37.345627, 47.548031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322104, -0.252297, -0.912467,
		-0.852964, 0.495506, 0.164092,
		0.410733, 0.831156, -0.374804,
		36.147442, 37.594975, 47.435589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359463, 37.250935, 47.190113>,  <35.859932, 37.013165, 47.697952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359463, 37.250935, 47.190113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678165, 37.477425, 47.105667>,  <35.869385, 37.613319, 47.055000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678165, 37.477425, 47.105667>,  <35.359463, 37.250935, 47.190113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678165, 37.477425, 47.105667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154179, -0.147315, -0.976999,
		-0.584306, 0.810976, -0.030073,
		0.796753, 0.566230, -0.211112,
		35.917191, 37.647293, 47.042332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213768, 37.541492, 46.537998>,  <35.359463, 37.250935, 47.190113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213768, 37.541492, 46.537998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605404, 37.622246, 46.547928>,  <35.840385, 37.670700, 46.553886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605404, 37.622246, 46.547928>,  <35.213768, 37.541492, 46.537998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605404, 37.622246, 46.547928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042623, -0.084314, -0.995527,
		-0.198890, 0.975773, -0.091157,
		0.979095, 0.201886, 0.024821,
		35.899132, 37.682812, 46.555374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354698, 38.108917, 46.020466>,  <35.213768, 37.541492, 46.537998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354698, 38.108917, 46.020466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706024, 37.925079, 46.073143>,  <35.916821, 37.814777, 46.104748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706024, 37.925079, 46.073143>,  <35.354698, 38.108917, 46.020466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706024, 37.925079, 46.073143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182982, 0.068670, -0.980715,
		0.441685, 0.885471, 0.144411,
		0.878312, -0.459592, 0.131694,
		35.969517, 37.787201, 46.112652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812183, 38.475365, 45.539078>,  <35.354698, 38.108917, 46.020466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812183, 38.475365, 45.539078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991310, 38.124046, 45.606064>,  <36.098785, 37.913254, 45.646255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991310, 38.124046, 45.606064>,  <35.812183, 38.475365, 45.539078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991310, 38.124046, 45.606064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212333, -0.077475, -0.974121,
		0.868545, 0.471791, 0.151798,
		0.447821, -0.878300, 0.167467,
		36.125656, 37.860558, 45.656303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367569, 38.479504, 45.141293>,  <35.812183, 38.475365, 45.539078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367569, 38.479504, 45.141293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318539, 38.089508, 45.215458>,  <36.289120, 37.855511, 45.259956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318539, 38.089508, 45.215458>,  <36.367569, 38.479504, 45.141293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318539, 38.089508, 45.215458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232963, -0.209865, -0.949571,
		0.964730, -0.073198, 0.252860,
		-0.122573, -0.974986, 0.185411,
		36.281765, 37.797012, 45.271080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818253, 38.194244, 44.771225>,  <36.367569, 38.479504, 45.141293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818253, 38.194244, 44.771225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592388, 37.874744, 44.854324>,  <36.456867, 37.683044, 44.904182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592388, 37.874744, 44.854324>,  <36.818253, 38.194244, 44.771225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592388, 37.874744, 44.854324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332361, -0.450473, -0.828620,
		0.755440, -0.398846, 0.519838,
		-0.564665, -0.798747, 0.207745,
		36.422989, 37.635120, 44.916649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209213, 37.604671, 44.710239>,  <36.818253, 38.194244, 44.771225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209213, 37.604671, 44.710239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838558, 37.459393, 44.671394>,  <36.616165, 37.372227, 44.648087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838558, 37.459393, 44.671394>,  <37.209213, 37.604671, 44.710239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838558, 37.459393, 44.671394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320584, -0.628430, -0.708733,
		0.196380, -0.687871, 0.698762,
		-0.926639, -0.363193, -0.097110,
		36.560566, 37.350433, 44.642262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292267, 36.899685, 44.638306>,  <37.209213, 37.604671, 44.710239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292267, 36.899685, 44.638306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922050, 36.975418, 44.507137>,  <36.699921, 37.020859, 44.428436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922050, 36.975418, 44.507137>,  <37.292267, 36.899685, 44.638306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922050, 36.975418, 44.507137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209642, -0.464949, -0.860158,
		-0.315325, -0.864855, 0.390635,
		-0.925537, 0.189336, -0.327921,
		36.644390, 37.032219, 44.408760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159859, 36.295017, 44.209915>,  <37.292267, 36.899685, 44.638306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159859, 36.295017, 44.209915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880081, 36.565807, 44.118282>,  <36.712215, 36.728283, 44.063305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880081, 36.565807, 44.118282>,  <37.159859, 36.295017, 44.209915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880081, 36.565807, 44.118282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036729, -0.286059, -0.957508,
		-0.713743, -0.678137, 0.175218,
		-0.699444, 0.676979, -0.229080,
		36.670250, 36.768902, 44.049557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802868, 35.898380, 43.755741>,  <37.159859, 36.295017, 44.209915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802868, 35.898380, 43.755741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699379, 36.276867, 43.678032>,  <36.637283, 36.503960, 43.631405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699379, 36.276867, 43.678032>,  <36.802868, 35.898380, 43.755741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699379, 36.276867, 43.678032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092714, -0.175870, -0.980038,
		-0.961491, -0.271572, -0.042225,
		-0.258725, 0.946213, -0.194276,
		36.621761, 36.560730, 43.619751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329700, 35.829552, 43.199757>,  <36.802868, 35.898380, 43.755741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329700, 35.829552, 43.199757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450836, 36.210163, 43.221222>,  <36.523518, 36.438530, 43.234100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450836, 36.210163, 43.221222>,  <36.329700, 35.829552, 43.199757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450836, 36.210163, 43.221222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147606, 0.102453, -0.983725,
		-0.941542, 0.289990, 0.171478,
		0.302839, 0.951530, 0.053659,
		36.541687, 36.495621, 43.237320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799973, 36.220356, 42.878090>,  <36.329700, 35.829552, 43.199757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799973, 36.220356, 42.878090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143929, 36.423149, 42.854225>,  <36.350304, 36.544823, 42.839909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143929, 36.423149, 42.854225>,  <35.799973, 36.220356, 42.878090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143929, 36.423149, 42.854225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143719, 0.128292, -0.981268,
		-0.489828, 0.852357, 0.183180,
		0.859891, 0.506979, -0.059659,
		36.401897, 36.575241, 42.836327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699387, 36.785759, 42.321831>,  <35.799973, 36.220356, 42.878090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699387, 36.785759, 42.321831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095974, 36.755531, 42.364326>,  <36.333927, 36.737392, 42.389824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095974, 36.755531, 42.364326>,  <35.699387, 36.785759, 42.321831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095974, 36.755531, 42.364326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124761, 0.313414, -0.941385,
		0.037846, 0.946605, 0.320167,
		0.991465, -0.075572, 0.106238,
		36.393414, 36.732861, 42.396198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121273, 37.478474, 42.228954>,  <35.699387, 36.785759, 42.321831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121273, 37.478474, 42.228954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350407, 37.161217, 42.146214>,  <36.487885, 36.970863, 42.096569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350407, 37.161217, 42.146214>,  <36.121273, 37.478474, 42.228954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350407, 37.161217, 42.146214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106780, 0.322417, -0.940556,
		0.812688, 0.516692, 0.269383,
		0.572832, -0.793143, -0.206852,
		36.522255, 36.923275, 42.084160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640495, 37.758049, 41.759533>,  <36.121273, 37.478474, 42.228954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640495, 37.758049, 41.759533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639847, 37.365009, 41.685238>,  <36.639458, 37.129185, 41.640659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639847, 37.365009, 41.685238>,  <36.640495, 37.758049, 41.759533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639847, 37.365009, 41.685238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133776, 0.183857, -0.973807,
		0.991010, -0.026430, 0.131149,
		-0.001625, -0.982598, -0.185740,
		36.639359, 37.070229, 41.629517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244095, 37.641811, 41.523304>,  <36.640495, 37.758049, 41.759533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244095, 37.641811, 41.523304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058846, 37.314240, 41.387733>,  <36.947697, 37.117695, 41.306393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058846, 37.314240, 41.387733>,  <37.244095, 37.641811, 41.523304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058846, 37.314240, 41.387733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395382, 0.151344, -0.905962,
		0.793216, -0.553575, 0.253701,
		-0.463122, -0.818932, -0.338922,
		36.919910, 37.068562, 41.286057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756725, 37.120827, 41.219196>,  <37.244095, 37.641811, 41.523304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756725, 37.120827, 41.219196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410614, 37.014690, 41.049076>,  <37.202946, 36.951008, 40.947002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410614, 37.014690, 41.049076>,  <37.756725, 37.120827, 41.219196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410614, 37.014690, 41.049076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445978, -0.020079, -0.894819,
		0.228891, -0.963946, 0.135709,
		-0.865282, -0.265339, -0.425303,
		37.151028, 36.935089, 40.921486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980827, 36.673256, 40.746777>,  <37.756725, 37.120827, 41.219196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980827, 36.673256, 40.746777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610794, 36.761227, 40.622936>,  <37.388775, 36.814011, 40.548630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610794, 36.761227, 40.622936>,  <37.980827, 36.673256, 40.746777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610794, 36.761227, 40.622936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292034, -0.109201, -0.950153,
		-0.242773, -0.969385, 0.036793,
		-0.925082, 0.219926, -0.309604,
		37.333271, 36.827206, 40.530056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862808, 36.243473, 40.149052>,  <37.980827, 36.673256, 40.746777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862808, 36.243473, 40.149052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576981, 36.516483, 40.087669>,  <37.405483, 36.680290, 40.050838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576981, 36.516483, 40.087669>,  <37.862808, 36.243473, 40.149052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576981, 36.516483, 40.087669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316337, 0.119602, -0.941077,
		-0.623956, -0.721008, -0.301372,
		-0.714569, 0.682526, -0.153455,
		37.362610, 36.721241, 40.041634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681385, 36.181190, 39.458126>,  <37.862808, 36.243473, 40.149052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681385, 36.181190, 39.458126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508324, 36.537754, 39.512096>,  <37.404488, 36.751694, 39.544479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508324, 36.537754, 39.512096>,  <37.681385, 36.181190, 39.458126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508324, 36.537754, 39.512096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137266, 0.213047, -0.967351,
		-0.891052, -0.400002, -0.214534,
		-0.432649, 0.891408, 0.134930,
		37.378529, 36.805176, 39.552574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241409, 36.294586, 38.816402>,  <37.681385, 36.181190, 39.458126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241409, 36.294586, 38.816402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349087, 36.636814, 38.993282>,  <37.413692, 36.842152, 39.099411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349087, 36.636814, 38.993282>,  <37.241409, 36.294586, 38.816402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349087, 36.636814, 38.993282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192188, 0.402191, -0.895157,
		-0.943715, 0.325956, -0.056162,
		0.269194, 0.855567, 0.442199,
		37.429844, 36.893486, 39.125942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902817, 36.854916, 38.445583>,  <37.241409, 36.294586, 38.816402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902817, 36.854916, 38.445583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174469, 37.075562, 38.639286>,  <37.337460, 37.207951, 38.755508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174469, 37.075562, 38.639286>,  <36.902817, 36.854916, 38.445583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174469, 37.075562, 38.639286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165412, 0.527752, -0.833137,
		-0.715141, 0.645907, 0.267166,
		0.679127, 0.551617, 0.484258,
		37.378208, 37.241047, 38.784565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822365, 37.535252, 38.200672>,  <36.902817, 36.854916, 38.445583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822365, 37.535252, 38.200672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201950, 37.523468, 38.326275>,  <37.429703, 37.516399, 38.401638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201950, 37.523468, 38.326275>,  <36.822365, 37.535252, 38.200672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201950, 37.523468, 38.326275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268761, 0.596520, -0.756261,
		-0.165032, 0.802057, 0.573994,
		0.948964, -0.029459, 0.314006,
		37.486641, 37.514629, 38.420475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007809, 38.183937, 38.091892>,  <36.822365, 37.535252, 38.200672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007809, 38.183937, 38.091892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331146, 37.949287, 38.111721>,  <37.525146, 37.808498, 38.123619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331146, 37.949287, 38.111721>,  <37.007809, 38.183937, 38.091892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331146, 37.949287, 38.111721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479403, 0.607038, -0.633780,
		0.341699, 0.536076, 0.771923,
		0.808341, -0.586624, 0.049572,
		37.573650, 37.773300, 38.126595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449944, 38.646442, 38.219017>,  <37.007809, 38.183937, 38.091892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449944, 38.646442, 38.219017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649414, 38.328205, 38.081409>,  <37.769096, 38.137260, 37.998844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649414, 38.328205, 38.081409>,  <37.449944, 38.646442, 38.219017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649414, 38.328205, 38.081409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393287, 0.561361, -0.728148,
		0.772429, 0.227813, 0.592835,
		0.498676, -0.795597, -0.344016,
		37.799019, 38.089527, 37.978203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160892, 38.771900, 38.138996>,  <37.449944, 38.646442, 38.219017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160892, 38.771900, 38.138996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077785, 38.477680, 37.881065>,  <38.027924, 38.301147, 37.726307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077785, 38.477680, 37.881065>,  <38.160892, 38.771900, 38.138996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077785, 38.477680, 37.881065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487681, 0.493548, -0.720124,
		0.847939, -0.464084, 0.256173,
		-0.207764, -0.735552, -0.644824,
		38.015457, 38.257015, 37.687618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796322, 38.714775, 37.659492>,  <38.160892, 38.771900, 38.138996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796322, 38.714775, 37.659492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545868, 38.483398, 37.450356>,  <38.395596, 38.344570, 37.324875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545868, 38.483398, 37.450356>,  <38.796322, 38.714775, 37.659492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545868, 38.483398, 37.450356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369998, 0.369825, -0.852251,
		0.686340, -0.727070, -0.017535,
		-0.626131, -0.578445, -0.522840,
		38.358028, 38.309864, 37.293503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188557, 38.430000, 37.109146>,  <38.796322, 38.714775, 37.659492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188557, 38.430000, 37.109146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808578, 38.415085, 36.985073>,  <38.580593, 38.406136, 36.910629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808578, 38.415085, 36.985073>,  <39.188557, 38.430000, 37.109146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808578, 38.415085, 36.985073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287971, 0.280535, -0.915627,
		0.121157, -0.959119, -0.255756,
		-0.949944, -0.037285, -0.310187,
		38.523594, 38.403900, 36.892017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249680, 38.072571, 36.511631>,  <39.188557, 38.430000, 37.109146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249680, 38.072571, 36.511631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921616, 38.301418, 36.512970>,  <38.724777, 38.438728, 36.513775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921616, 38.301418, 36.512970>,  <39.249680, 38.072571, 36.511631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921616, 38.301418, 36.512970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248632, 0.361687, -0.898535,
		-0.515281, -0.736112, -0.438890,
		-0.820163, 0.572120, 0.003350,
		38.675568, 38.473053, 36.513973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922600, 37.705997, 36.829250>,  <39.249680, 38.072571, 36.511631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922600, 37.705997, 36.829250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214516, 37.528568, 37.037350>,  <40.389664, 37.422112, 37.162209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214516, 37.528568, 37.037350>,  <39.922600, 37.705997, 36.829250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214516, 37.528568, 37.037350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641330, 0.180524, -0.745726,
		0.236866, 0.877870, 0.416219,
		0.729788, -0.443571, 0.520245,
		40.433453, 37.395496, 37.193424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432320, 37.984169, 36.565487>,  <39.922600, 37.705997, 36.829250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432320, 37.984169, 36.565487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583080, 37.656582, 36.738571>,  <40.673538, 37.460030, 36.842422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583080, 37.656582, 36.738571>,  <40.432320, 37.984169, 36.565487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583080, 37.656582, 36.738571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598451, -0.141255, -0.788609,
		0.706966, 0.556187, 0.436870,
		0.376904, -0.818965, 0.432713,
		40.696152, 37.410892, 36.868385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239780, 37.983242, 36.651054>,  <40.432320, 37.984169, 36.565487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239780, 37.983242, 36.651054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082100, 37.616493, 36.625889>,  <40.987492, 37.396446, 36.610790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082100, 37.616493, 36.625889>,  <41.239780, 37.983242, 36.651054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082100, 37.616493, 36.625889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679931, -0.244900, -0.691172,
		0.618307, -0.315235, 0.719947,
		-0.394197, -0.916870, -0.062915,
		40.963840, 37.341431, 36.607014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718807, 37.399216, 36.839344>,  <41.239780, 37.983242, 36.651054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718807, 37.399216, 36.839344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448044, 37.275410, 36.572212>,  <41.285587, 37.201126, 36.411934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448044, 37.275410, 36.572212>,  <41.718807, 37.399216, 36.839344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448044, 37.275410, 36.572212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731956, -0.187287, -0.655106,
		0.077692, -0.932267, 0.353330,
		-0.676907, -0.309519, -0.667828,
		41.244972, 37.182552, 36.371864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747963, 36.586750, 36.634289>,  <41.718807, 37.399216, 36.839344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747963, 36.586750, 36.634289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595642, 36.802704, 36.334019>,  <41.504250, 36.932278, 36.153858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595642, 36.802704, 36.334019>,  <41.747963, 36.586750, 36.634289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595642, 36.802704, 36.334019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761888, -0.276817, -0.585576,
		-0.523945, -0.794917, -0.305923,
		-0.380799, 0.539889, -0.750674,
		41.481403, 36.964672, 36.108818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947136, 36.188072, 36.059143>,  <41.747963, 36.586750, 36.634289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947136, 36.188072, 36.059143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851044, 36.564327, 35.963230>,  <41.793388, 36.790081, 35.905682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851044, 36.564327, 35.963230>,  <41.947136, 36.188072, 36.059143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851044, 36.564327, 35.963230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766917, 0.032486, -0.640923,
		-0.595085, -0.337862, -0.729193,
		-0.240232, 0.940635, -0.239780,
		41.778973, 36.846519, 35.891296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581039, 36.328953, 35.281734>,  <41.947136, 36.188072, 36.059143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581039, 36.328953, 35.281734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829155, 36.597198, 35.444469>,  <41.978024, 36.758144, 35.542110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829155, 36.597198, 35.444469>,  <41.581039, 36.328953, 35.281734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829155, 36.597198, 35.444469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720531, -0.282200, -0.633403,
		-0.309958, 0.686034, -0.658243,
		0.620292, 0.670612, 0.406839,
		42.015244, 36.798382, 35.566521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076740, 35.748482, 35.026711>,  <41.581039, 36.328953, 35.281734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076740, 35.748482, 35.026711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449070, 35.637566, 34.931480>,  <42.672466, 35.571018, 34.874340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449070, 35.637566, 34.931480>,  <42.076740, 35.748482, 35.026711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449070, 35.637566, 34.931480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297474, -0.196393, -0.934312,
		0.212316, 0.940501, -0.265292,
		0.930823, -0.277287, -0.238078,
		42.728317, 35.554379, 34.860058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107658, 36.144794, 34.418518>,  <42.076740, 35.748482, 35.026711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107658, 36.144794, 34.418518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393040, 35.864544, 34.414463>,  <42.564270, 35.696392, 34.412029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393040, 35.864544, 34.414463>,  <42.107658, 36.144794, 34.418518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393040, 35.864544, 34.414463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179697, -0.168960, -0.969103,
		0.677269, 0.693232, -0.246446,
		0.713454, -0.700629, -0.010141,
		42.607075, 35.654354, 34.411423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512688, 36.243053, 33.786907>,  <42.107658, 36.144794, 34.418518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512688, 36.243053, 33.786907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559223, 35.859966, 33.892170>,  <42.587143, 35.630116, 33.955326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559223, 35.859966, 33.892170>,  <42.512688, 36.243053, 33.786907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559223, 35.859966, 33.892170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226083, -0.283533, -0.931931,
		0.967136, 0.048925, -0.249508,
		0.116339, -0.957714, 0.263154,
		42.594124, 35.572651, 33.971115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895477, 35.948555, 33.278000>,  <42.512688, 36.243053, 33.786907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895477, 35.948555, 33.278000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729477, 35.635708, 33.463932>,  <42.629875, 35.447998, 33.575489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729477, 35.635708, 33.463932>,  <42.895477, 35.948555, 33.278000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729477, 35.635708, 33.463932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202702, -0.418576, -0.885272,
		0.886952, -0.461612, 0.015174,
		-0.415004, -0.782118, 0.464826,
		42.604977, 35.401073, 33.603378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220387, 35.345329, 32.986954>,  <42.895477, 35.948555, 33.278000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220387, 35.345329, 32.986954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868103, 35.236744, 33.142212>,  <42.656731, 35.171593, 33.235367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868103, 35.236744, 33.142212>,  <43.220387, 35.345329, 32.986954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868103, 35.236744, 33.142212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254900, -0.419048, -0.871450,
		0.399215, -0.866434, 0.299865,
		-0.880712, -0.271460, 0.388144,
		42.603889, 35.155308, 33.258656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176388, 34.686279, 32.725788>,  <43.220387, 35.345329, 32.986954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176388, 34.686279, 32.725788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795410, 34.755310, 32.826248>,  <42.566826, 34.796730, 32.886524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795410, 34.755310, 32.826248>,  <43.176388, 34.686279, 32.725788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795410, 34.755310, 32.826248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298980, -0.369913, -0.879645,
		-0.058901, -0.912898, 0.403916,
		-0.952440, 0.172575, 0.251150,
		42.509678, 34.807083, 32.901592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829021, 34.110714, 32.540638>,  <43.176388, 34.686279, 32.725788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829021, 34.110714, 32.540638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517654, 34.360191, 32.569126>,  <42.330833, 34.509876, 32.586220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517654, 34.360191, 32.569126>,  <42.829021, 34.110714, 32.540638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517654, 34.360191, 32.569126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353560, -0.341842, -0.870712,
		-0.518712, -0.702957, 0.486609,
		-0.778417, 0.623695, 0.071220,
		42.284130, 34.547298, 32.590492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226685, 33.753605, 32.341042>,  <42.829021, 34.110714, 32.540638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226685, 33.753605, 32.341042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130749, 34.135548, 32.270931>,  <42.073189, 34.364716, 32.228863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130749, 34.135548, 32.270931>,  <42.226685, 33.753605, 32.341042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130749, 34.135548, 32.270931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053840, -0.193354, -0.979651,
		-0.969319, -0.225520, 0.097783,
		-0.239837, 0.954859, -0.175279,
		42.058796, 34.422005, 32.218346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710392, 33.779991, 31.726719>,  <42.226685, 33.753605, 32.341042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710392, 33.779991, 31.726719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899895, 34.129894, 31.767403>,  <42.013596, 34.339836, 31.791813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899895, 34.129894, 31.767403>,  <41.710392, 33.779991, 31.726719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899895, 34.129894, 31.767403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108601, 0.056581, -0.992474,
		-0.873934, 0.481237, -0.068194,
		0.473757, 0.874763, 0.101710,
		42.042023, 34.392323, 31.797916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437096, 34.163582, 31.163340>,  <41.710392, 33.779991, 31.726719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437096, 34.163582, 31.163340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759083, 34.384205, 31.250807>,  <41.952274, 34.516579, 31.303288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759083, 34.384205, 31.250807>,  <41.437096, 34.163582, 31.163340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759083, 34.384205, 31.250807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179401, 0.125037, -0.975798,
		-0.565546, 0.824715, 0.001702,
		0.804968, 0.551553, 0.218669,
		42.000572, 34.549671, 31.316408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312851, 34.805271, 30.832893>,  <41.437096, 34.163582, 31.163340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312851, 34.805271, 30.832893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710899, 34.804379, 30.872341>,  <41.949730, 34.803841, 30.896009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710899, 34.804379, 30.872341>,  <41.312851, 34.805271, 30.832893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710899, 34.804379, 30.872341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098644, 0.014347, -0.995019,
		0.000808, 0.999895, 0.014497,
		0.995123, -0.002234, 0.098622,
		42.009438, 34.803707, 30.901928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471031, 35.182072, 30.362171>,  <41.312851, 34.805271, 30.832893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471031, 35.182072, 30.362171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827301, 35.015507, 30.435162>,  <42.041061, 34.915565, 30.478956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827301, 35.015507, 30.435162>,  <41.471031, 35.182072, 30.362171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827301, 35.015507, 30.435162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308165, 0.257868, -0.915717,
		0.334265, 0.871838, 0.358001,
		0.890674, -0.416416, 0.182474,
		42.094501, 34.890583, 30.489904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919640, 35.662090, 30.255417>,  <41.471031, 35.182072, 30.362171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919640, 35.662090, 30.255417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105461, 35.312794, 30.196573>,  <42.216953, 35.103218, 30.161268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105461, 35.312794, 30.196573>,  <41.919640, 35.662090, 30.255417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105461, 35.312794, 30.196573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193604, 0.262256, -0.945378,
		0.864121, 0.410701, 0.290895,
		0.464556, -0.873239, -0.147107,
		42.244827, 35.050823, 30.152441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527622, 35.877384, 29.856003>,  <41.919640, 35.662090, 30.255417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527622, 35.877384, 29.856003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511475, 35.479908, 29.814150>,  <42.501785, 35.241421, 29.789038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511475, 35.479908, 29.814150>,  <42.527622, 35.877384, 29.856003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511475, 35.479908, 29.814150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229004, 0.092730, -0.968999,
		0.972588, -0.063076, 0.223816,
		-0.040366, -0.993691, -0.104633,
		42.499363, 35.181801, 29.782761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056873, 35.748352, 29.422894>,  <42.527622, 35.877384, 29.856003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056873, 35.748352, 29.422894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815285, 35.432209, 29.381781>,  <42.670334, 35.242523, 29.357113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815285, 35.432209, 29.381781>,  <43.056873, 35.748352, 29.422894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815285, 35.432209, 29.381781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294835, -0.101748, -0.950116,
		0.740470, -0.604143, 0.294476,
		-0.603968, -0.790354, -0.102781,
		42.634094, 35.195103, 29.350946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507435, 35.198963, 29.003479>,  <43.056873, 35.748352, 29.422894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507435, 35.198963, 29.003479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121323, 35.098957, 28.973183>,  <42.889656, 35.038956, 28.955006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121323, 35.098957, 28.973183>,  <43.507435, 35.198963, 29.003479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121323, 35.098957, 28.973183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135495, -0.231272, -0.963408,
		0.223346, -0.940217, 0.257117,
		-0.965276, -0.250012, -0.075741,
		42.831741, 35.023952, 28.950460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474052, 34.451138, 28.744795>,  <43.507435, 35.198963, 29.003479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474052, 34.451138, 28.744795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134892, 34.630745, 28.632055>,  <42.931393, 34.738510, 28.564411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134892, 34.630745, 28.632055>,  <43.474052, 34.451138, 28.744795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134892, 34.630745, 28.632055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281348, -0.069482, -0.957087,
		-0.449333, -0.890817, -0.067416,
		-0.847905, 0.449018, -0.281850,
		42.880520, 34.765450, 28.547501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289108, 34.125114, 28.182713>,  <43.474052, 34.451138, 28.744795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289108, 34.125114, 28.182713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072857, 34.458542, 28.137318>,  <42.943108, 34.658600, 28.110081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072857, 34.458542, 28.137318>,  <43.289108, 34.125114, 28.182713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072857, 34.458542, 28.137318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310149, 0.072091, -0.947951,
		-0.782004, -0.547685, -0.297506,
		-0.540626, 0.833573, -0.113489,
		42.910667, 34.708614, 28.103271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770058, 34.150665, 27.595890>,  <43.289108, 34.125114, 28.182713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770058, 34.150665, 27.595890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862526, 34.530838, 27.679066>,  <42.918007, 34.758942, 27.728971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862526, 34.530838, 27.679066>,  <42.770058, 34.150665, 27.595890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862526, 34.530838, 27.679066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501230, 0.066837, -0.862729,
		-0.833863, 0.303665, -0.460934,
		0.231173, 0.950432, 0.207939,
		42.931877, 34.815968, 27.741447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703503, 34.503700, 26.959908>,  <42.770058, 34.150665, 27.595890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703503, 34.503700, 26.959908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941612, 34.749493, 27.167006>,  <43.084476, 34.896969, 27.291264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941612, 34.749493, 27.167006>,  <42.703503, 34.503700, 26.959908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941612, 34.749493, 27.167006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508720, 0.210552, -0.834789,
		-0.621975, 0.760315, -0.187263,
		0.595274, 0.614482, 0.517745,
		43.120193, 34.933838, 27.322329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579330, 35.198975, 26.594082>,  <42.703503, 34.503700, 26.959908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579330, 35.198975, 26.594082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929279, 35.240856, 26.783243>,  <43.139248, 35.265984, 26.896740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929279, 35.240856, 26.783243>,  <42.579330, 35.198975, 26.594082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929279, 35.240856, 26.783243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400112, 0.394007, -0.827447,
		-0.272963, 0.913124, 0.302812,
		0.874872, 0.104704, 0.472901,
		43.191742, 35.272266, 26.925114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694374, 35.882065, 26.535345>,  <42.579330, 35.198975, 26.594082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694374, 35.882065, 26.535345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036633, 35.675587, 26.550323>,  <43.241989, 35.551701, 26.559311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036633, 35.675587, 26.550323>,  <42.694374, 35.882065, 26.535345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036633, 35.675587, 26.550323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340799, 0.507497, -0.791393,
		0.389513, 0.689917, 0.610160,
		0.855650, -0.516199, 0.037446,
		43.293327, 35.520725, 26.561558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279652, 36.332718, 26.668053>,  <42.694374, 35.882065, 26.535345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279652, 36.332718, 26.668053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320396, 36.019806, 26.422237>,  <43.344845, 35.832058, 26.274748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320396, 36.019806, 26.422237>,  <43.279652, 36.332718, 26.668053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320396, 36.019806, 26.422237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169292, 0.622374, -0.764193,
		0.980288, -0.026195, 0.195830,
		0.101861, -0.782282, -0.614540,
		43.350956, 35.785122, 26.237875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791260, 36.522068, 26.233862>,  <43.279652, 36.332718, 26.668053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791260, 36.522068, 26.233862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567657, 36.253056, 26.039865>,  <43.433498, 36.091648, 25.923468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567657, 36.253056, 26.039865>,  <43.791260, 36.522068, 26.233862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567657, 36.253056, 26.039865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019734, 0.595540, -0.803083,
		0.828932, -0.439354, -0.346179,
		-0.559001, -0.672533, -0.484992,
		43.399956, 36.051296, 25.894367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931332, 37.328060, 26.127234>,  <43.791260, 36.522068, 26.233862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931332, 37.328060, 26.127234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296436, 37.422504, 25.993896>,  <44.515499, 37.479172, 25.913895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296436, 37.422504, 25.993896>,  <43.931332, 37.328060, 26.127234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296436, 37.422504, 25.993896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201196, 0.970038, 0.136185,
		0.355509, -0.057238, 0.932918,
		0.912761, 0.236115, -0.333342,
		44.570263, 37.493340, 25.893894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345608, 37.790066, 26.578205>,  <43.931332, 37.328060, 26.127234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345608, 37.790066, 26.578205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436207, 37.860802, 26.195076>,  <44.490566, 37.903244, 25.965199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436207, 37.860802, 26.195076>,  <44.345608, 37.790066, 26.578205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436207, 37.860802, 26.195076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141712, 0.978899, 0.147220,
		0.963647, 0.102389, 0.246782,
		0.226501, 0.176840, -0.957823,
		44.504158, 37.913853, 25.907728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704731, 38.404087, 26.511593>,  <44.345608, 37.790066, 26.578205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704731, 38.404087, 26.511593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.542042, 38.361271, 26.148689>,  <44.444427, 38.335583, 25.930946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.542042, 38.361271, 26.148689>,  <44.704731, 38.404087, 26.511593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542042, 38.361271, 26.148689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136952, 0.989034, -0.055288,
		0.903227, 0.101764, -0.416924,
		-0.406725, -0.107036, -0.907258,
		44.420025, 38.329159, 25.876513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310783, 38.799263, 26.363073>,  <44.704731, 38.404087, 26.511593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310783, 38.799263, 26.363073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.549446, 39.074764, 26.527817>,  <45.692642, 39.240063, 26.626663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.549446, 39.074764, 26.527817>,  <45.310783, 38.799263, 26.363073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549446, 39.074764, 26.527817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015211, -0.503422, 0.863907,
		0.802354, -0.521719, -0.289893,
		0.596655, 0.688749, 0.411858,
		45.728443, 39.281387, 26.651375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968063, 38.374699, 26.579220>,  <45.310783, 38.799263, 26.363073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968063, 38.374699, 26.579220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872311, 38.684734, 26.813120>,  <45.814861, 38.870758, 26.953459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872311, 38.684734, 26.813120>,  <45.968063, 38.374699, 26.579220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872311, 38.684734, 26.813120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137621, -0.569092, 0.810676,
		0.961124, 0.274531, 0.029559,
		-0.239377, 0.775092, 0.584749,
		45.800499, 38.917263, 26.988544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.401432, 38.239849, 27.199972>,  <45.968063, 38.374699, 26.579220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.401432, 38.239849, 27.199972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105747, 38.493702, 27.290146>,  <45.928337, 38.646011, 27.344250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105747, 38.493702, 27.290146>,  <46.401432, 38.239849, 27.199972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.105747, 38.493702, 27.290146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031438, -0.366879, 0.929737,
		0.672744, 0.680182, 0.291151,
		-0.739207, 0.634628, 0.225432,
		45.883984, 38.684090, 27.357775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.572937, 38.665871, 27.674677>,  <46.401432, 38.239849, 27.199972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.572937, 38.665871, 27.674677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.176315, 38.685459, 27.722712>,  <45.938343, 38.697212, 27.751534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.176315, 38.685459, 27.722712>,  <46.572937, 38.665871, 27.674677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.176315, 38.685459, 27.722712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105587, -0.232834, 0.966768,
		0.075302, 0.971283, 0.225697,
		-0.991555, 0.048969, 0.120088,
		45.878849, 38.700150, 27.758738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.421967, 39.068600, 28.264433>,  <46.572937, 38.665871, 27.674677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.421967, 39.068600, 28.264433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101540, 38.836433, 28.205912>,  <45.909283, 38.697132, 28.170799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101540, 38.836433, 28.205912>,  <46.421967, 39.068600, 28.264433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101540, 38.836433, 28.205912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018279, -0.268026, 0.963238,
		-0.598294, 0.768945, 0.225317,
		-0.801068, -0.580418, -0.146303,
		45.861217, 38.662308, 28.162022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899437, 39.291473, 28.747387>,  <46.421967, 39.068600, 28.264433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899437, 39.291473, 28.747387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838020, 38.909939, 28.644144>,  <45.801170, 38.681019, 28.582197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838020, 38.909939, 28.644144>,  <45.899437, 39.291473, 28.747387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838020, 38.909939, 28.644144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101026, -0.244685, 0.964325,
		-0.982964, 0.174140, -0.058792,
		-0.153542, -0.953837, -0.258110,
		45.791958, 38.623787, 28.566711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300320, 39.126873, 29.074089>,  <45.899437, 39.291473, 28.747387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.300320, 39.126873, 29.074089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488602, 38.781498, 29.001532>,  <45.601570, 38.574272, 28.957998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488602, 38.781498, 29.001532>,  <45.300320, 39.126873, 29.074089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488602, 38.781498, 29.001532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191803, -0.300818, 0.934195,
		-0.861188, -0.404942, -0.307208,
		0.470708, -0.863441, -0.181392,
		45.629814, 38.522465, 28.947113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950962, 38.666500, 29.363731>,  <45.300320, 39.126873, 29.074089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950962, 38.666500, 29.363731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305161, 38.482178, 29.339893>,  <45.517681, 38.371586, 29.325590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305161, 38.482178, 29.339893>,  <44.950962, 38.666500, 29.363731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305161, 38.482178, 29.339893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072389, -0.263511, 0.961936,
		-0.458972, -0.847478, -0.266696,
		0.885497, -0.460808, -0.059596,
		45.570808, 38.343937, 29.322014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775360, 38.109985, 29.675673>,  <44.950962, 38.666500, 29.363731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775360, 38.109985, 29.675673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175274, 38.101669, 29.676565>,  <45.415222, 38.096680, 29.677101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175274, 38.101669, 29.676565>,  <44.775360, 38.109985, 29.675673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175274, 38.101669, 29.676565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012131, -0.489894, 0.871697,
		-0.017025, -0.871534, -0.490039,
		0.999781, -0.020786, 0.002232,
		45.475208, 38.095432, 29.677235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858284, 37.464924, 29.735874>,  <44.775360, 38.109985, 29.675673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858284, 37.464924, 29.735874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205399, 37.619209, 29.861208>,  <45.413666, 37.711781, 29.936409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205399, 37.619209, 29.861208>,  <44.858284, 37.464924, 29.735874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205399, 37.619209, 29.861208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056330, -0.550117, 0.833186,
		0.493739, -0.740675, -0.455656,
		0.867784, 0.385709, 0.313336,
		45.465733, 37.734921, 29.955210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267185, 36.925411, 29.983850>,  <44.858284, 37.464924, 29.735874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267185, 36.925411, 29.983850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403168, 37.257965, 30.159683>,  <45.484756, 37.457497, 30.265182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403168, 37.257965, 30.159683>,  <45.267185, 36.925411, 29.983850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403168, 37.257965, 30.159683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191740, -0.518874, 0.833070,
		0.920688, -0.198920, -0.335803,
		0.339954, 0.831385, 0.439580,
		45.505154, 37.507381, 30.291557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869026, 36.696213, 30.463194>,  <45.267185, 36.925411, 29.983850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869026, 36.696213, 30.463194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778149, 37.068722, 30.577118>,  <45.723621, 37.292225, 30.645473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778149, 37.068722, 30.577118>,  <45.869026, 36.696213, 30.463194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778149, 37.068722, 30.577118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258863, -0.224187, 0.939537,
		0.938814, 0.287185, -0.190137,
		-0.227195, 0.931270, 0.284812,
		45.709991, 37.348103, 30.662561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.433643, 36.895897, 30.855679>,  <45.869026, 36.696213, 30.463194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.433643, 36.895897, 30.855679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.112644, 37.108418, 30.964283>,  <45.920044, 37.235931, 31.029446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.112644, 37.108418, 30.964283>,  <46.433643, 36.895897, 30.855679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.112644, 37.108418, 30.964283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213808, -0.168760, 0.962188,
		0.557032, 0.830204, 0.021833,
		-0.802497, 0.531302, 0.271509,
		45.871895, 37.267807, 31.045736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.729446, 37.351776, 31.469152>,  <46.433643, 36.895897, 30.855679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.729446, 37.351776, 31.469152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331894, 37.331543, 31.508432>,  <46.093361, 37.319401, 31.532000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331894, 37.331543, 31.508432>,  <46.729446, 37.351776, 31.469152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331894, 37.331543, 31.508432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103325, -0.111401, 0.988389,
		-0.039059, 0.992487, 0.115946,
		-0.993880, -0.050585, 0.098198,
		46.033730, 37.316368, 31.537891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.561214, 37.686214, 32.223015>,  <46.729446, 37.351776, 31.469152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.561214, 37.686214, 32.223015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.224392, 37.487236, 32.139603>,  <46.022297, 37.367847, 32.089558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.224392, 37.487236, 32.139603>,  <46.561214, 37.686214, 32.223015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.224392, 37.487236, 32.139603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106846, -0.225105, 0.968458,
		-0.528697, 0.837779, 0.136402,
		-0.842059, -0.497447, -0.208526,
		45.971775, 37.338001, 32.077045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048527, 37.863667, 32.678173>,  <46.561214, 37.686214, 32.223015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048527, 37.863667, 32.678173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937210, 37.504757, 32.541088>,  <45.870422, 37.289410, 32.458836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937210, 37.504757, 32.541088>,  <46.048527, 37.863667, 32.678173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.937210, 37.504757, 32.541088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243799, -0.279135, 0.928787,
		-0.929041, 0.342024, -0.141075,
		-0.278289, -0.897275, -0.342713,
		45.853722, 37.235573, 32.438274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.382164, 37.741405, 33.042198>,  <46.048527, 37.863667, 32.678173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.382164, 37.741405, 33.042198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518627, 37.389610, 32.909466>,  <45.600506, 37.178532, 32.829826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518627, 37.389610, 32.909466>,  <45.382164, 37.741405, 33.042198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518627, 37.389610, 32.909466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321465, -0.440884, 0.838023,
		-0.883329, -0.179229, -0.433136,
		0.341161, -0.879488, -0.331830,
		45.620975, 37.125763, 32.809917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832432, 37.254684, 33.025036>,  <45.382164, 37.741405, 33.042198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832432, 37.254684, 33.025036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163185, 37.033161, 33.064140>,  <45.361637, 36.900246, 33.087605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163185, 37.033161, 33.064140>,  <44.832432, 37.254684, 33.025036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163185, 37.033161, 33.064140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419667, -0.491938, 0.762808,
		-0.374355, -0.671783, -0.639192,
		0.826884, -0.553809, 0.097766,
		45.411251, 36.867020, 33.093472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682793, 36.547997, 33.217472>,  <44.832432, 37.254684, 33.025036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682793, 36.547997, 33.217472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074825, 36.535290, 33.295891>,  <45.310043, 36.527668, 33.342941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074825, 36.535290, 33.295891>,  <44.682793, 36.547997, 33.217472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074825, 36.535290, 33.295891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181926, -0.539506, 0.822093,
		0.079654, -0.841382, -0.534538,
		0.980081, -0.031763, 0.196043,
		45.368851, 36.525761, 33.354702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821243, 35.883717, 33.251625>,  <44.682793, 36.547997, 33.217472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821243, 35.883717, 33.251625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138706, 36.039368, 33.438686>,  <45.329182, 36.132759, 33.550922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138706, 36.039368, 33.438686>,  <44.821243, 35.883717, 33.251625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138706, 36.039368, 33.438686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109203, -0.665086, 0.738739,
		0.598489, -0.637372, -0.485355,
		0.793654, 0.389124, 0.467649,
		45.376801, 36.156105, 33.578979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179913, 35.288048, 33.533649>,  <44.821243, 35.883717, 33.251625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179913, 35.288048, 33.533649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315128, 35.604942, 33.736862>,  <45.396259, 35.795078, 33.858788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315128, 35.604942, 33.736862>,  <45.179913, 35.288048, 33.533649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315128, 35.604942, 33.736862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017627, -0.534381, 0.845060,
		0.940967, -0.294618, -0.166677,
		0.338039, 0.792236, 0.508028,
		45.416538, 35.842613, 33.889271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.764698, 35.071697, 33.899403>,  <45.179913, 35.288048, 33.533649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.764698, 35.071697, 33.899403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670395, 35.403191, 34.102428>,  <45.613811, 35.602085, 34.224243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670395, 35.403191, 34.102428>,  <45.764698, 35.071697, 33.899403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670395, 35.403191, 34.102428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096202, -0.539627, 0.836390,
		0.967038, 0.148360, 0.206949,
		-0.235762, 0.828729, 0.507568,
		45.599667, 35.651810, 34.254700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.140743, 35.072109, 34.588642>,  <45.764698, 35.071697, 33.899403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.140743, 35.072109, 34.588642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.830868, 35.321861, 34.628654>,  <45.644943, 35.471710, 34.652660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.830868, 35.321861, 34.628654>,  <46.140743, 35.072109, 34.588642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.830868, 35.321861, 34.628654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210030, -0.403279, 0.890648,
		0.596439, 0.668969, 0.443555,
		-0.774692, 0.624377, 0.100028,
		45.598461, 35.509174, 34.658665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.336834, 35.371223, 35.153893>,  <46.140743, 35.072109, 34.588642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.336834, 35.371223, 35.153893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942047, 35.396622, 35.094738>,  <45.705177, 35.411861, 35.059246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942047, 35.396622, 35.094738>,  <46.336834, 35.371223, 35.153893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942047, 35.396622, 35.094738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160825, -0.423559, 0.891478,
		-0.006030, 0.903640, 0.428249,
		-0.986965, 0.063498, -0.147882,
		45.645958, 35.415672, 35.050373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110996, 35.610329, 35.796242>,  <46.336834, 35.371223, 35.153893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110996, 35.610329, 35.796242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798664, 35.433544, 35.619617>,  <45.611263, 35.327473, 35.513645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798664, 35.433544, 35.619617>,  <46.110996, 35.610329, 35.796242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.798664, 35.433544, 35.619617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333912, -0.302124, 0.892874,
		-0.528020, 0.844626, 0.088332,
		-0.780832, -0.441960, -0.441559,
		45.564415, 35.300957, 35.487148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160305, 34.957745, 36.188328>,  <46.110996, 35.610329, 35.796242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160305, 34.957745, 36.188328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457726, 34.697456, 36.126751>,  <46.636177, 34.541283, 36.089806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457726, 34.697456, 36.126751>,  <46.160305, 34.957745, 36.188328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457726, 34.697456, 36.126751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148251, 0.384913, -0.910969,
		0.652039, 0.654529, 0.382672,
		0.743550, -0.650718, -0.153943,
		46.680790, 34.502239, 36.080566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.910671, 35.313583, 36.130779>,  <46.160305, 34.957745, 36.188328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.910671, 35.313583, 36.130779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835777, 34.991081, 35.906315>,  <46.790840, 34.797581, 35.771637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835777, 34.991081, 35.906315>,  <46.910671, 35.313583, 36.130779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.835777, 34.991081, 35.906315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009318, 0.569780, -0.821745,
		0.982271, -0.159089, -0.099170,
		-0.187235, -0.806252, -0.561161,
		46.779606, 34.749207, 35.737968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.505821, 35.074577, 35.765694>,  <46.910671, 35.313583, 36.130779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.505821, 35.074577, 35.765694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.182384, 34.948608, 35.566898>,  <46.988323, 34.873028, 35.447620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.182384, 34.948608, 35.566898>,  <47.505821, 35.074577, 35.765694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.182384, 34.948608, 35.566898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198881, 0.648671, -0.734624,
		0.553730, -0.692855, -0.461881,
		-0.808597, -0.314924, -0.496985,
		46.939804, 34.854130, 35.417801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.751362, 34.709076, 35.215004>,  <47.505821, 35.074577, 35.765694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.751362, 34.709076, 35.215004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404381, 34.903973, 35.174759>,  <47.196194, 35.020912, 35.150612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404381, 34.903973, 35.174759>,  <47.751362, 34.709076, 35.215004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.404381, 34.903973, 35.174759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417197, 0.602190, -0.680672,
		-0.271063, -0.632426, -0.725646,
		-0.867451, 0.487243, -0.100615,
		47.144146, 35.050144, 35.144573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.524971, 39.497074, 46.221825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.356373, 39.134789, 46.203865>,  <33.255215, 38.917416, 46.193089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.356373, 39.134789, 46.203865>,  <33.524971, 39.497074, 46.221825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356373, 39.134789, 46.203865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115666, -0.004585, -0.993278,
		0.899422, -0.423860, 0.106693,
		-0.421500, -0.905716, -0.044903,
		33.229923, 38.863075, 46.190395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963123, 39.084702, 45.704529>,  <33.524971, 39.497074, 46.221825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963123, 39.084702, 45.704529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.608471, 38.904846, 45.747810>,  <33.395679, 38.796932, 45.773781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.608471, 38.904846, 45.747810>,  <33.963123, 39.084702, 45.704529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608471, 38.904846, 45.747810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033492, -0.295783, -0.954668,
		0.461259, -0.842816, 0.277310,
		-0.886633, -0.449637, 0.108205,
		33.342480, 38.769955, 45.780273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059849, 38.478355, 45.416656>,  <33.963123, 39.084702, 45.704529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059849, 38.478355, 45.416656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.665379, 38.541351, 45.396019>,  <33.428696, 38.579151, 45.383636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.665379, 38.541351, 45.396019>,  <34.059849, 38.478355, 45.416656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665379, 38.541351, 45.396019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016058, -0.400643, -0.916094,
		-0.164948, -0.902597, 0.397631,
		-0.986171, 0.157493, -0.051591,
		33.369526, 38.588600, 45.380543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738331, 37.866455, 45.257015>,  <34.059849, 38.478355, 45.416656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738331, 37.866455, 45.257015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.510521, 38.166786, 45.123215>,  <33.373837, 38.346985, 45.042934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.510521, 38.166786, 45.123215>,  <33.738331, 37.866455, 45.257015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510521, 38.166786, 45.123215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196143, -0.271055, -0.942368,
		-0.798229, -0.602312, 0.007103,
		-0.569525, 0.750832, -0.334504,
		33.339664, 38.392036, 45.022865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307732, 37.578892, 44.685688>,  <33.738331, 37.866455, 45.257015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307732, 37.578892, 44.685688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.264786, 37.973148, 44.633553>,  <33.239017, 38.209702, 44.602272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.264786, 37.973148, 44.633553>,  <33.307732, 37.578892, 44.685688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264786, 37.973148, 44.633553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062819, -0.137558, -0.988500,
		-0.992233, -0.097942, 0.076686,
		-0.107364, 0.985640, -0.130337,
		33.232578, 38.268841, 44.594452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980106, 37.632851, 43.954437>,  <33.307732, 37.578892, 44.685688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980106, 37.632851, 43.954437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.066662, 38.014938, 44.035175>,  <33.118595, 38.244190, 44.083618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.066662, 38.014938, 44.035175>,  <32.980106, 37.632851, 43.954437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066662, 38.014938, 44.035175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015003, 0.203466, -0.978967,
		-0.976192, 0.214864, 0.029697,
		0.216387, 0.955215, 0.201846,
		33.131577, 38.301502, 44.095730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529964, 37.993481, 43.502182>,  <32.980106, 37.632851, 43.954437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529964, 37.993481, 43.502182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.839886, 38.225639, 43.602440>,  <33.025837, 38.364933, 43.662594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.839886, 38.225639, 43.602440>,  <32.529964, 37.993481, 43.502182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839886, 38.225639, 43.602440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158617, 0.205317, -0.965756,
		-0.611982, 0.788026, 0.067020,
		0.774802, 0.580396, 0.250645,
		33.072327, 38.399757, 43.677631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459904, 38.674889, 43.232162>,  <32.529964, 37.993481, 43.502182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459904, 38.674889, 43.232162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853802, 38.634041, 43.288521>,  <33.090141, 38.609531, 43.322338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853802, 38.634041, 43.288521>,  <32.459904, 38.674889, 43.232162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853802, 38.634041, 43.288521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168058, 0.348070, -0.922282,
		0.045139, 0.931890, 0.359921,
		0.984743, -0.102118, 0.140900,
		33.149223, 38.603405, 43.330791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744408, 39.245125, 42.766693>,  <32.459904, 38.674889, 43.232162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744408, 39.245125, 42.766693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.043118, 39.002544, 42.875908>,  <33.222343, 38.856998, 42.941437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.043118, 39.002544, 42.875908>,  <32.744408, 39.245125, 42.766693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043118, 39.002544, 42.875908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376863, 0.047589, -0.925046,
		0.547998, 0.793698, 0.264086,
		0.746775, -0.606447, 0.273037,
		33.267151, 38.820610, 42.957821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392769, 39.458923, 42.396156>,  <32.744408, 39.245125, 42.766693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392769, 39.458923, 42.396156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.425632, 39.077370, 42.511642>,  <33.445351, 38.848438, 42.580933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.425632, 39.077370, 42.511642>,  <33.392769, 39.458923, 42.396156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425632, 39.077370, 42.511642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330647, -0.247195, -0.910806,
		0.940172, 0.170288, 0.295091,
		0.082155, -0.953885, 0.288711,
		33.450279, 38.791203, 42.598255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078117, 39.211491, 42.218212>,  <33.392769, 39.458923, 42.396156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078117, 39.211491, 42.218212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.837791, 38.891750, 42.221329>,  <33.693596, 38.699905, 42.223198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.837791, 38.891750, 42.221329>,  <34.078117, 39.211491, 42.218212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837791, 38.891750, 42.221329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315894, -0.246365, -0.916251,
		0.734321, -0.548041, 0.400530,
		-0.600819, -0.799347, 0.007788,
		33.657547, 38.651947, 42.223663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521439, 38.697353, 42.104263>,  <34.078117, 39.211491, 42.218212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521439, 38.697353, 42.104263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.165947, 38.542244, 42.006454>,  <33.952652, 38.449181, 41.947769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.165947, 38.542244, 42.006454>,  <34.521439, 38.697353, 42.104263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165947, 38.542244, 42.006454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369966, -0.291714, -0.882059,
		0.270706, -0.874378, 0.402717,
		-0.888731, -0.387770, -0.244522,
		33.899326, 38.425915, 41.933098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673439, 38.172894, 41.599476>,  <34.521439, 38.697353, 42.104263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673439, 38.172894, 41.599476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.280434, 38.223881, 41.545197>,  <34.044628, 38.254471, 41.512630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.280434, 38.223881, 41.545197>,  <34.673439, 38.172894, 41.599476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280434, 38.223881, 41.545197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116897, -0.144898, -0.982517,
		-0.144898, -0.981202, 0.127465,
		0.982517, -0.127465, 0.135695,
		33.985680, 38.262119, 41.504486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591278, 37.739384, 41.073025>,  <34.673439, 38.172894, 41.599476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591278, 37.739384, 41.073025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273041, 37.981659, 41.078316>,  <34.082096, 38.127022, 41.081490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273041, 37.981659, 41.078316>,  <34.591278, 37.739384, 41.073025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273041, 37.981659, 41.078316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014177, 0.003216, -0.999894,
		-0.605663, -0.795699, 0.006028,
		-0.795595, 0.605684, 0.013228,
		34.034363, 38.163364, 41.082283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068825, 37.375324, 40.705605>,  <34.591278, 37.739384, 41.073025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068825, 37.375324, 40.705605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.979366, 37.763245, 40.666698>,  <33.925690, 37.995998, 40.643356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.979366, 37.763245, 40.666698>,  <34.068825, 37.375324, 40.705605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979366, 37.763245, 40.666698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069835, -0.083593, -0.994050,
		-0.972166, -0.229107, -0.049032,
		-0.223645, 0.969805, -0.097266,
		33.912273, 38.054188, 40.637520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812874, 37.431667, 40.006294>,  <34.068825, 37.375324, 40.705605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812874, 37.431667, 40.006294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.853096, 37.813869, 40.117218>,  <33.877228, 38.043190, 40.183773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.853096, 37.813869, 40.117218>,  <33.812874, 37.431667, 40.006294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853096, 37.813869, 40.117218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137352, 0.262723, -0.955045,
		-0.985405, 0.134122, -0.104823,
		0.100553, 0.955504, 0.277311,
		33.883263, 38.100521, 40.200413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421017, 37.889614, 39.505234>,  <33.812874, 37.431667, 40.006294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421017, 37.889614, 39.505234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699806, 38.122971, 39.672028>,  <33.867081, 38.262985, 39.772106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699806, 38.122971, 39.672028>,  <33.421017, 37.889614, 39.505234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699806, 38.122971, 39.672028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184647, 0.415884, -0.890475,
		-0.692916, 0.697634, 0.182138,
		0.696974, 0.583394, 0.416989,
		33.908897, 38.297989, 39.797123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253014, 38.542950, 39.458458>,  <33.421017, 37.889614, 39.505234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253014, 38.542950, 39.458458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.651783, 38.543633, 39.489796>,  <33.891045, 38.544044, 39.508598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.651783, 38.543633, 39.489796>,  <33.253014, 38.542950, 39.458458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651783, 38.543633, 39.489796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074613, 0.284912, -0.955645,
		-0.023955, 0.958552, 0.283909,
		0.996925, 0.001709, 0.078345,
		33.950859, 38.544144, 39.513298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469273, 39.181778, 39.088432>,  <33.253014, 38.542950, 39.458458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469273, 39.181778, 39.088432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.807453, 38.970837, 39.122169>,  <34.010361, 38.844273, 39.142410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.807453, 38.970837, 39.122169>,  <33.469273, 39.181778, 39.088432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807453, 38.970837, 39.122169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272286, 0.289785, -0.917543,
		0.459431, 0.798700, 0.388590,
		0.845449, -0.527355, 0.084338,
		34.061089, 38.812630, 39.147472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144608, 39.682468, 38.901154>,  <33.469273, 39.181778, 39.088432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144608, 39.682468, 38.901154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278873, 39.307701, 38.862125>,  <34.359432, 39.082840, 38.838711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278873, 39.307701, 38.862125>,  <34.144608, 39.682468, 38.901154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278873, 39.307701, 38.862125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311490, 0.208149, -0.927172,
		0.888990, 0.280826, 0.361708,
		0.335664, -0.936915, -0.097568,
		34.379574, 39.026627, 38.832855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830235, 39.768169, 38.642361>,  <34.144608, 39.682468, 38.901154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830235, 39.768169, 38.642361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.713337, 39.396404, 38.552223>,  <34.643200, 39.173344, 38.498138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.713337, 39.396404, 38.552223>,  <34.830235, 39.768169, 38.642361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713337, 39.396404, 38.552223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403977, 0.093606, -0.909967,
		0.866832, -0.356963, 0.348108,
		-0.292240, -0.929417, -0.225346,
		34.625664, 39.117580, 38.484619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506813, 39.352657, 38.362255>,  <34.830235, 39.768169, 38.642361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506813, 39.352657, 38.362255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143116, 39.229774, 38.249897>,  <34.924896, 39.156044, 38.182484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143116, 39.229774, 38.249897>,  <35.506813, 39.352657, 38.362255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143116, 39.229774, 38.249897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287964, 0.023079, -0.957363,
		0.300590, -0.951363, 0.067480,
		-0.909242, -0.307205, -0.280896,
		34.870342, 39.137611, 38.165627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825893, 39.643650, 37.718132>,  <35.506813, 39.352657, 38.362255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825893, 39.643650, 37.718132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141342, 39.886848, 37.681458>,  <36.330612, 40.032768, 37.659454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141342, 39.886848, 37.681458>,  <35.825893, 39.643650, 37.718132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141342, 39.886848, 37.681458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129360, -0.018284, 0.991429,
		0.601111, -0.793727, -0.093070,
		0.788626, 0.607999, -0.091686,
		36.377930, 40.069248, 37.653954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348896, 39.399693, 38.185429>,  <35.825893, 39.643650, 37.718132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348896, 39.399693, 38.185429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.457012, 39.781952, 38.138649>,  <36.521881, 40.011307, 38.110580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.457012, 39.781952, 38.138649>,  <36.348896, 39.399693, 38.185429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457012, 39.781952, 38.138649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168910, 0.072514, 0.982960,
		0.947845, -0.285441, -0.141819,
		0.270294, 0.955649, -0.116946,
		36.538101, 40.068645, 38.103565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928211, 39.400021, 38.595322>,  <36.348896, 39.399693, 38.185429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928211, 39.400021, 38.595322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808708, 39.778309, 38.544159>,  <36.737007, 40.005283, 38.513462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808708, 39.778309, 38.544159>,  <36.928211, 39.400021, 38.595322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808708, 39.778309, 38.544159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160614, 0.181940, 0.970104,
		0.940717, 0.269281, -0.206251,
		-0.298756, 0.945720, -0.127903,
		36.719082, 40.062023, 38.505787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409832, 39.784973, 38.959679>,  <36.928211, 39.400021, 38.595322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409832, 39.784973, 38.959679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.069885, 39.995304, 38.945595>,  <36.865917, 40.121502, 38.937145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.069885, 39.995304, 38.945595>,  <37.409832, 39.784973, 38.959679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069885, 39.995304, 38.945595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143022, 0.294429, 0.944911,
		0.507224, 0.798010, -0.325429,
		-0.849864, 0.525825, -0.035209,
		36.814926, 40.153053, 38.935032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529903, 40.218098, 39.442852>,  <37.409832, 39.784973, 38.959679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529903, 40.218098, 39.442852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137211, 40.278004, 39.395893>,  <36.901596, 40.313946, 39.367718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137211, 40.278004, 39.395893>,  <37.529903, 40.218098, 39.442852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137211, 40.278004, 39.395893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063295, 0.324815, 0.943657,
		0.179456, 0.933845, -0.309401,
		-0.981728, 0.149761, -0.117398,
		36.842693, 40.322933, 39.360672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367249, 40.858353, 39.622097>,  <37.529903, 40.218098, 39.442852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367249, 40.858353, 39.622097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027477, 40.653156, 39.671604>,  <36.823616, 40.530037, 39.701309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027477, 40.653156, 39.671604>,  <37.367249, 40.858353, 39.622097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027477, 40.653156, 39.671604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070779, 0.343166, 0.936604,
		-0.522941, 0.786815, -0.327803,
		-0.849425, -0.512990, 0.123766,
		36.772648, 40.499260, 39.708733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905357, 41.327980, 39.944435>,  <37.367249, 40.858353, 39.622097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905357, 41.327980, 39.944435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.745373, 40.963837, 39.986935>,  <36.649384, 40.745350, 40.012436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.745373, 40.963837, 39.986935>,  <36.905357, 41.327980, 39.944435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745373, 40.963837, 39.986935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215541, 0.206097, 0.954498,
		-0.890828, 0.358859, -0.278649,
		-0.399959, -0.910354, 0.106249,
		36.625385, 40.690731, 40.018810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206036, 41.467804, 40.302670>,  <36.905357, 41.327980, 39.944435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206036, 41.467804, 40.302670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.279758, 41.082291, 40.379768>,  <36.323994, 40.850983, 40.426029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.279758, 41.082291, 40.379768>,  <36.206036, 41.467804, 40.302670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279758, 41.082291, 40.379768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232761, 0.147731, 0.961248,
		-0.954909, -0.222033, -0.197103,
		0.184310, -0.963782, 0.192751,
		36.335052, 40.793156, 40.437595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688087, 41.291599, 40.783417>,  <36.206036, 41.467804, 40.302670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688087, 41.291599, 40.783417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952576, 40.993347, 40.816448>,  <36.111271, 40.814396, 40.836266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952576, 40.993347, 40.816448>,  <35.688087, 41.291599, 40.783417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952576, 40.993347, 40.816448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210867, -0.079094, 0.974310,
		-0.719945, -0.661648, -0.209527,
		0.661222, -0.745631, 0.082576,
		36.150944, 40.769657, 40.841221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344833, 40.556431, 41.033710>,  <35.688087, 41.291599, 40.783417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344833, 40.556431, 41.033710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.733292, 40.556576, 41.129108>,  <35.966366, 40.556664, 41.186348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.733292, 40.556576, 41.129108>,  <35.344833, 40.556431, 41.033710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733292, 40.556576, 41.129108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238378, -0.029589, 0.970722,
		0.007415, -0.999562, -0.028647,
		0.971144, 0.000369, 0.238493,
		36.024635, 40.556683, 41.200657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387775, 40.060928, 41.584572>,  <35.344833, 40.556431, 41.033710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387775, 40.060928, 41.584572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731659, 40.264103, 41.606094>,  <35.937988, 40.386009, 41.619007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731659, 40.264103, 41.606094>,  <35.387775, 40.060928, 41.584572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731659, 40.264103, 41.606094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092110, 0.050553, 0.994465,
		0.502409, -0.859908, 0.090247,
		0.859710, 0.507941, 0.053808,
		35.989571, 40.416485, 41.622238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808041, 39.716068, 42.078785>,  <35.387775, 40.060928, 41.584572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808041, 39.716068, 42.078785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.001347, 40.066120, 42.068996>,  <36.117332, 40.276150, 42.063122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.001347, 40.066120, 42.068996>,  <35.808041, 39.716068, 42.078785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001347, 40.066120, 42.068996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123246, 0.095678, 0.987753,
		0.866754, -0.474334, 0.154095,
		0.483269, 0.875130, -0.024470,
		36.146328, 40.328659, 42.061657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377651, 39.704876, 42.603161>,  <35.808041, 39.716068, 42.078785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377651, 39.704876, 42.603161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208439, 40.062534, 42.544445>,  <36.106911, 40.277130, 42.509216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208439, 40.062534, 42.544445>,  <36.377651, 39.704876, 42.603161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208439, 40.062534, 42.544445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161620, 0.084938, 0.983191,
		0.891583, 0.439648, 0.108580,
		-0.423035, 0.894145, -0.146785,
		36.081528, 40.330776, 42.500408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587776, 40.143692, 43.089020>,  <36.377651, 39.704876, 42.603161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587776, 40.143692, 43.089020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282532, 40.354362, 42.939209>,  <36.099384, 40.480766, 42.849323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282532, 40.354362, 42.939209>,  <36.587776, 40.143692, 43.089020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282532, 40.354362, 42.939209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252253, 0.290813, 0.922928,
		0.595000, 0.798775, -0.089068,
		-0.763114, 0.526675, -0.374527,
		36.053596, 40.512363, 42.826851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651814, 40.799450, 43.332233>,  <36.587776, 40.143692, 43.089020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651814, 40.799450, 43.332233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263077, 40.752731, 43.250378>,  <36.029835, 40.724701, 43.201263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263077, 40.752731, 43.250378>,  <36.651814, 40.799450, 43.332233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263077, 40.752731, 43.250378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230081, 0.283165, 0.931064,
		-0.050804, 0.951932, -0.302066,
		-0.971844, -0.116801, -0.204636,
		35.971523, 40.717690, 43.188988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248020, 41.292435, 43.748058>,  <36.651814, 40.799450, 43.332233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248020, 41.292435, 43.748058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996441, 41.004261, 43.631161>,  <35.845493, 40.831356, 43.561020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996441, 41.004261, 43.631161>,  <36.248020, 41.292435, 43.748058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996441, 41.004261, 43.631161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440199, 0.020152, 0.897674,
		-0.640822, 0.693235, -0.329807,
		-0.628945, -0.720430, -0.292247,
		35.807758, 40.788132, 43.543488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619354, 41.466469, 44.095505>,  <36.248020, 41.292435, 43.748058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619354, 41.466469, 44.095505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.550957, 41.086853, 43.989616>,  <35.509918, 40.859081, 43.926083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.550957, 41.086853, 43.989616>,  <35.619354, 41.466469, 44.095505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550957, 41.086853, 43.989616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512224, -0.143890, 0.846712,
		-0.841658, 0.280378, -0.461519,
		-0.170992, -0.949044, -0.264722,
		35.499660, 40.802139, 43.910198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877125, 41.436214, 44.180340>,  <35.619354, 41.466469, 44.095505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877125, 41.436214, 44.180340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034439, 41.068768, 44.195705>,  <35.128826, 40.848301, 44.204926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034439, 41.068768, 44.195705>,  <34.877125, 41.436214, 44.180340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034439, 41.068768, 44.195705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464322, -0.162384, 0.870653,
		-0.793558, -0.360247, -0.490395,
		0.393283, -0.918615, 0.038409,
		35.152424, 40.793182, 44.207230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.286144, 40.938587, 44.351864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621624, 40.730568, 44.416538>,  <34.822910, 40.605759, 44.455341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621624, 40.730568, 44.416538>,  <34.286144, 40.938587, 44.351864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621624, 40.730568, 44.416538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455540, -0.507205, 0.731592,
		-0.298454, -0.687237, -0.662292,
		0.838695, -0.520046, 0.161686,
		34.873234, 40.574554, 44.465046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093288, 40.258480, 44.568604>,  <34.286144, 40.938587, 44.351864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093288, 40.258480, 44.568604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.464180, 40.316711, 44.706623>,  <34.686714, 40.351650, 44.789436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.464180, 40.316711, 44.706623>,  <34.093288, 40.258480, 44.568604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464180, 40.316711, 44.706623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316189, -0.189431, 0.929592,
		0.200695, -0.971041, -0.129614,
		0.927225, 0.145582, 0.345050,
		34.742348, 40.360386, 44.810139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183769, 39.764954, 45.032619>,  <34.093288, 40.258480, 44.568604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183769, 39.764954, 45.032619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459782, 40.032867, 45.142342>,  <34.625389, 40.193615, 45.208176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459782, 40.032867, 45.142342>,  <34.183769, 39.764954, 45.032619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459782, 40.032867, 45.142342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244049, -0.141487, 0.959386,
		0.681389, -0.728955, 0.065828,
		0.690036, 0.669780, 0.274309,
		34.666794, 40.233803, 45.224636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723389, 39.483967, 45.637177>,  <34.183769, 39.764954, 45.032619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723389, 39.483967, 45.637177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.748604, 39.881874, 45.669334>,  <34.763733, 40.120617, 45.688629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.748604, 39.881874, 45.669334>,  <34.723389, 39.483967, 45.637177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748604, 39.881874, 45.669334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041353, -0.083090, 0.995684,
		0.997154, -0.059445, -0.046374,
		0.063042, 0.994767, 0.080395,
		34.767517, 40.180305, 45.693455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312984, 39.572136, 46.127640>,  <34.723389, 39.483967, 45.637177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312984, 39.572136, 46.127640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084801, 39.900219, 46.110512>,  <34.947891, 40.097069, 46.100235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084801, 39.900219, 46.110512>,  <35.312984, 39.572136, 46.127640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084801, 39.900219, 46.110512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004920, 0.048722, 0.998800,
		0.821313, 0.569983, -0.023758,
		-0.570456, 0.820211, -0.042821,
		34.913662, 40.146282, 46.097664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585022, 40.067032, 46.628006>,  <35.312984, 39.572136, 46.127640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585022, 40.067032, 46.628006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.211205, 40.184628, 46.547813>,  <34.986912, 40.255184, 46.499699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.211205, 40.184628, 46.547813>,  <35.585022, 40.067032, 46.628006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211205, 40.184628, 46.547813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156603, 0.166119, 0.973591,
		0.319528, 0.941263, -0.109206,
		-0.934547, 0.293988, -0.200484,
		34.930840, 40.272823, 46.487667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494244, 40.612305, 47.017887>,  <35.585022, 40.067032, 46.628006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494244, 40.612305, 47.017887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117420, 40.505306, 46.936920>,  <34.891327, 40.441109, 46.888340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117420, 40.505306, 46.936920>,  <35.494244, 40.612305, 47.017887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117420, 40.505306, 46.936920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269144, 0.242561, 0.932055,
		-0.200223, 0.932528, -0.300502,
		-0.942058, -0.267497, -0.202418,
		34.834805, 40.425056, 46.876194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050571, 41.145054, 47.237934>,  <35.494244, 40.612305, 47.017887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050571, 41.145054, 47.237934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.813957, 40.822937, 47.221928>,  <34.671989, 40.629669, 47.212326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.813957, 40.822937, 47.221928>,  <35.050571, 41.145054, 47.237934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813957, 40.822937, 47.221928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365463, 0.223556, 0.903581,
		-0.718699, 0.549120, -0.426543,
		-0.591531, -0.805289, -0.040014,
		34.636497, 40.581352, 47.209923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492565, 41.345280, 47.476116>,  <35.050571, 41.145054, 47.237934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492565, 41.345280, 47.476116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.486179, 40.947323, 47.515987>,  <34.482349, 40.708549, 47.539909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.486179, 40.947323, 47.515987>,  <34.492565, 41.345280, 47.476116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486179, 40.947323, 47.515987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446804, 0.096278, 0.889436,
		-0.894489, -0.030337, -0.446059,
		-0.015963, -0.994892, 0.099675,
		34.481392, 40.648857, 47.545891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852322, 41.067081, 47.653564>,  <34.492565, 41.345280, 47.476116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852322, 41.067081, 47.653564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.098915, 40.782627, 47.788761>,  <34.246872, 40.611954, 47.869881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.098915, 40.782627, 47.788761>,  <33.852322, 41.067081, 47.653564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098915, 40.782627, 47.788761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346681, 0.140263, 0.927436,
		-0.706938, -0.688925, -0.160066,
		0.616483, -0.711132, 0.337995,
		34.283859, 40.569286, 47.890160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495441, 40.782215, 48.181217>,  <33.852322, 41.067081, 47.653564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495441, 40.782215, 48.181217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853592, 40.625183, 48.265305>,  <34.068481, 40.530964, 48.315758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853592, 40.625183, 48.265305>,  <33.495441, 40.782215, 48.181217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853592, 40.625183, 48.265305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282734, -0.136425, 0.949447,
		-0.344052, -0.909545, -0.233146,
		0.895371, -0.392577, 0.210222,
		34.122204, 40.507412, 48.328373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379139, 40.511803, 48.864548>,  <33.495441, 40.782215, 48.181217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379139, 40.511803, 48.864548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.777332, 40.473854, 48.866261>,  <34.016247, 40.451084, 48.867287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.777332, 40.473854, 48.866261>,  <33.379139, 40.511803, 48.864548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777332, 40.473854, 48.866261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023256, -0.199839, 0.979553,
		-0.092075, -0.975225, -0.201142,
		0.995481, -0.094870, 0.004280,
		34.075977, 40.445393, 48.867546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457699, 40.026314, 49.330051>,  <33.379139, 40.511803, 48.864548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457699, 40.026314, 49.330051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.825924, 40.182213, 49.340317>,  <34.046860, 40.275753, 49.346478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.825924, 40.182213, 49.340317>,  <33.457699, 40.026314, 49.330051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825924, 40.182213, 49.340317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109604, -0.320836, 0.940772,
		0.374894, -0.863229, -0.338068,
		0.920566, 0.389743, 0.025666,
		34.102093, 40.299137, 49.348015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006706, 39.452843, 49.528130>,  <33.457699, 40.026314, 49.330051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006706, 39.452843, 49.528130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.136875, 39.817772, 49.627548>,  <34.214977, 40.036728, 49.687199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.136875, 39.817772, 49.627548>,  <34.006706, 39.452843, 49.528130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136875, 39.817772, 49.627548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301952, -0.349352, 0.887005,
		0.896063, -0.213599, -0.389162,
		0.325418, 0.912321, 0.248545,
		34.234501, 40.091469, 49.702110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646832, 39.266628, 49.783062>,  <34.006706, 39.452843, 49.528130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646832, 39.266628, 49.783062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.585209, 39.638138, 49.917912>,  <34.548237, 39.861042, 49.998821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.585209, 39.638138, 49.917912>,  <34.646832, 39.266628, 49.783062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585209, 39.638138, 49.917912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398475, -0.253821, 0.881358,
		0.904148, 0.270115, -0.330989,
		-0.154056, 0.928770, 0.337125,
		34.538994, 39.916767, 50.019051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278450, 39.457569, 49.982166>,  <34.646832, 39.266628, 49.783062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278450, 39.457569, 49.982166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014679, 39.680065, 50.184452>,  <34.856415, 39.813564, 50.305824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014679, 39.680065, 50.184452>,  <35.278450, 39.457569, 49.982166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014679, 39.680065, 50.184452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502392, -0.174357, 0.846877,
		0.559242, 0.812525, -0.164474,
		-0.659432, 0.556240, 0.505714,
		34.816849, 39.846935, 50.336166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650429, 39.876781, 50.391327>,  <35.278450, 39.457569, 49.982166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650429, 39.876781, 50.391327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.297188, 39.864594, 50.578606>,  <35.085243, 39.857281, 50.690971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.297188, 39.864594, 50.578606>,  <35.650429, 39.876781, 50.391327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297188, 39.864594, 50.578606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467947, -0.129594, 0.874203,
		0.034040, 0.991099, 0.128702,
		-0.883100, -0.030468, 0.468194,
		35.032257, 39.855453, 50.719063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809105, 40.134693, 51.035118>,  <35.650429, 39.876781, 50.391327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809105, 40.134693, 51.035118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451233, 39.965420, 51.092346>,  <35.236511, 39.863857, 51.126682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451233, 39.965420, 51.092346>,  <35.809105, 40.134693, 51.035118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451233, 39.965420, 51.092346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221195, -0.141419, 0.964921,
		-0.388102, 0.894941, 0.220130,
		-0.894679, -0.423179, 0.143072,
		35.182831, 39.838467, 51.135269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633686, 40.287891, 51.637127>,  <35.809105, 40.134693, 51.035118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633686, 40.287891, 51.637127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.394485, 39.972790, 51.578014>,  <35.250965, 39.783730, 51.542545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.394485, 39.972790, 51.578014>,  <35.633686, 40.287891, 51.637127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394485, 39.972790, 51.578014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248372, -0.357439, 0.900304,
		-0.762041, 0.501678, 0.409405,
		-0.598001, -0.787754, -0.147781,
		35.215084, 39.736465, 51.533680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310268, 40.319477, 52.216351>,  <35.633686, 40.287891, 51.637127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310268, 40.319477, 52.216351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277203, 39.950317, 52.065926>,  <35.257362, 39.728821, 51.975670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277203, 39.950317, 52.065926>,  <35.310268, 40.319477, 52.216351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277203, 39.950317, 52.065926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186197, -0.385012, 0.903934,
		-0.979028, 0.004705, 0.203670,
		-0.082668, -0.922900, -0.376061,
		35.252403, 39.673447, 51.953106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066357, 39.990456, 52.736732>,  <35.310268, 40.319477, 52.216351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066357, 39.990456, 52.736732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194931, 39.681831, 52.517143>,  <35.272076, 39.496658, 52.385387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194931, 39.681831, 52.517143>,  <35.066357, 39.990456, 52.736732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194931, 39.681831, 52.517143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473580, -0.371048, 0.798778,
		-0.820001, -0.516740, 0.246127,
		0.321435, -0.771559, -0.548977,
		35.291363, 39.450363, 52.352451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906918, 39.396965, 53.062229>,  <35.066357, 39.990456, 52.736732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906918, 39.396965, 53.062229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.222389, 39.292294, 52.839699>,  <35.411674, 39.229488, 52.706181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.222389, 39.292294, 52.839699>,  <34.906918, 39.396965, 53.062229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222389, 39.292294, 52.839699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414929, -0.441165, 0.795743,
		-0.453664, -0.858426, -0.239360,
		0.788684, -0.261683, -0.556327,
		35.458996, 39.213787, 52.672802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479050, 39.207104, 53.598648>,  <34.906918, 39.396965, 53.062229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479050, 39.207104, 53.598648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283047, 39.483246, 53.811550>,  <34.165443, 39.648933, 53.939293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283047, 39.483246, 53.811550>,  <34.479050, 39.207104, 53.598648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283047, 39.483246, 53.811550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545764, -0.719066, 0.430215,
		0.679731, -0.079679, 0.729121,
		-0.490007, 0.690358, 0.532258,
		34.136044, 39.690353, 53.971226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523560, 38.976814, 54.249195>,  <34.479050, 39.207104, 53.598648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523560, 38.976814, 54.249195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.197174, 39.206451, 54.222023>,  <34.001343, 39.344234, 54.205719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.197174, 39.206451, 54.222023>,  <34.523560, 38.976814, 54.249195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197174, 39.206451, 54.222023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507073, -0.654325, 0.561013,
		0.277630, 0.492211, 0.825015,
		-0.815965, 0.574097, -0.067926,
		33.952385, 39.378681, 54.201645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915043, 38.396015, 54.189449>,  <34.523560, 38.976814, 54.249195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915043, 38.396015, 54.189449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.896912, 38.679817, 53.908150>,  <33.886032, 38.850098, 53.739372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.896912, 38.679817, 53.908150>,  <33.915043, 38.396015, 54.189449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896912, 38.679817, 53.908150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131105, -0.702104, -0.699901,
		-0.990332, 0.060476, 0.124843,
		-0.045326, 0.709502, -0.703244,
		33.883312, 38.892666, 53.697178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571434, 37.820305, 53.852600>,  <33.915043, 38.396015, 54.189449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571434, 37.820305, 53.852600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.194553, 37.768993, 53.728794>,  <32.968426, 37.738209, 53.654510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.194553, 37.768993, 53.728794>,  <33.571434, 37.820305, 53.852600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194553, 37.768993, 53.728794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330299, -0.200720, -0.922287,
		0.056181, -0.971214, 0.231488,
		-0.942203, -0.128275, -0.309515,
		32.911892, 37.730511, 53.635941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449875, 37.137566, 53.477802>,  <33.571434, 37.820305, 53.852600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449875, 37.137566, 53.477802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.160625, 37.382454, 53.349876>,  <32.987076, 37.529388, 53.273121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.160625, 37.382454, 53.349876>,  <33.449875, 37.137566, 53.477802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160625, 37.382454, 53.349876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170911, -0.290025, -0.941634,
		-0.669243, -0.735575, 0.105087,
		-0.723120, 0.612222, -0.319815,
		32.943687, 37.566120, 53.253933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161732, 36.801956, 52.909073>,  <33.449875, 37.137566, 53.477802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161732, 36.801956, 52.909073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069290, 37.187851, 52.858662>,  <33.013824, 37.419388, 52.828415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069290, 37.187851, 52.858662>,  <33.161732, 36.801956, 52.909073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069290, 37.187851, 52.858662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400507, -0.023715, -0.915987,
		-0.886671, -0.262163, -0.380901,
		-0.231105, 0.964732, -0.126025,
		32.999958, 37.477272, 52.820854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728001, 36.889774, 52.243191>,  <33.161732, 36.801956, 52.909073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728001, 36.889774, 52.243191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876686, 37.255093, 52.309795>,  <32.965897, 37.474281, 52.349758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876686, 37.255093, 52.309795>,  <32.728001, 36.889774, 52.243191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876686, 37.255093, 52.309795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165015, 0.111504, -0.979968,
		-0.913563, 0.391745, -0.109259,
		0.371715, 0.913292, 0.166510,
		32.988201, 37.529079, 52.359749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418148, 37.337166, 51.788235>,  <32.728001, 36.889774, 52.243191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418148, 37.337166, 51.788235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.730198, 37.570667, 51.878250>,  <32.917427, 37.710770, 51.932259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.730198, 37.570667, 51.878250>,  <32.418148, 37.337166, 51.788235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730198, 37.570667, 51.878250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100168, 0.238516, -0.965959,
		-0.617558, 0.776106, 0.127598,
		0.780120, 0.583755, 0.225039,
		32.964233, 37.745792, 51.945763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275928, 38.036976, 51.567028>,  <32.418148, 37.337166, 51.788235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275928, 38.036976, 51.567028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675854, 38.033409, 51.573917>,  <32.915810, 38.031269, 51.578053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675854, 38.033409, 51.573917>,  <32.275928, 38.036976, 51.567028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675854, 38.033409, 51.573917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019385, 0.487754, -0.872766,
		-0.000617, 0.872936, 0.487835,
		0.999812, -0.008919, 0.017223,
		32.975796, 38.030735, 51.579082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533764, 38.649940, 51.480164>,  <32.275928, 38.036976, 51.567028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533764, 38.649940, 51.480164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.832802, 38.411846, 51.362320>,  <33.012226, 38.268990, 51.291615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.832802, 38.411846, 51.362320>,  <32.533764, 38.649940, 51.480164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832802, 38.411846, 51.362320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141009, 0.575725, -0.805392,
		0.649009, 0.560568, 0.514345,
		0.747598, -0.595235, -0.294606,
		33.057083, 38.233276, 51.273937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792957, 38.898098, 50.896069>,  <32.533764, 38.649940, 51.480164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792957, 38.898098, 50.896069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.039631, 38.585800, 50.855793>,  <33.187637, 38.398422, 50.831627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.039631, 38.585800, 50.855793>,  <32.792957, 38.898098, 50.896069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039631, 38.585800, 50.855793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292282, 0.345848, -0.891606,
		0.730936, 0.520414, 0.441477,
		0.616688, -0.780742, -0.100685,
		33.224636, 38.351578, 50.825588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371971, 39.084351, 50.506638>,  <32.792957, 38.898098, 50.896069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371971, 39.084351, 50.506638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.397137, 38.687504, 50.463303>,  <33.412235, 38.449394, 50.437302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.397137, 38.687504, 50.463303>,  <33.371971, 39.084351, 50.506638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397137, 38.687504, 50.463303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217779, 0.119585, -0.968644,
		0.973968, 0.037345, 0.223587,
		0.062911, -0.992121, -0.108339,
		33.416012, 38.389866, 50.430801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034214, 38.887604, 50.236946>,  <33.371971, 39.084351, 50.506638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034214, 38.887604, 50.236946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789577, 38.590115, 50.128994>,  <33.642796, 38.411621, 50.064224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789577, 38.590115, 50.128994>,  <34.034214, 38.887604, 50.236946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789577, 38.590115, 50.128994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287696, 0.108708, -0.951532,
		0.737012, -0.659593, 0.147481,
		-0.611591, -0.743720, -0.269881,
		33.606098, 38.366997, 50.048031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334538, 38.525845, 49.600491>,  <34.034214, 38.887604, 50.236946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334538, 38.525845, 49.600491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.958836, 38.389210, 49.587086>,  <33.733414, 38.307228, 49.579041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.958836, 38.389210, 49.587086>,  <34.334538, 38.525845, 49.600491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958836, 38.389210, 49.587086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020452, 0.041775, -0.998918,
		0.342620, -0.938921, -0.032251,
		-0.939252, -0.341589, -0.033516,
		33.677059, 38.286732, 49.577030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352200, 38.019550, 49.124489>,  <34.334538, 38.525845, 49.600491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352200, 38.019550, 49.124489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.977680, 38.159470, 49.137028>,  <33.752968, 38.243423, 49.144550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.977680, 38.159470, 49.137028>,  <34.352200, 38.019550, 49.124489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977680, 38.159470, 49.137028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065959, -0.087469, -0.993981,
		-0.344953, -0.932732, 0.104970,
		-0.936299, 0.349801, 0.031349,
		33.696789, 38.264408, 49.146431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011127, 37.601677, 48.666740>,  <34.352200, 38.019550, 49.124489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011127, 37.601677, 48.666740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.769341, 37.919315, 48.692108>,  <33.624268, 38.109898, 48.707329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.769341, 37.919315, 48.692108>,  <34.011127, 37.601677, 48.666740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769341, 37.919315, 48.692108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009222, 0.086583, -0.996202,
		-0.796575, -0.601589, -0.059660,
		-0.604469, 0.794099, 0.063422,
		33.588001, 38.157547, 48.711136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396843, 37.423584, 48.300289>,  <34.011127, 37.601677, 48.666740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396843, 37.423584, 48.300289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430038, 37.821262, 48.327652>,  <33.449955, 38.059872, 48.344070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430038, 37.821262, 48.327652>,  <33.396843, 37.423584, 48.300289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430038, 37.821262, 48.327652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288196, 0.089658, -0.953365,
		-0.953968, 0.059406, 0.293965,
		0.082992, 0.994199, 0.068410,
		33.454937, 38.119522, 48.348175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922516, 37.605568, 47.815674>,  <33.396843, 37.423584, 48.300289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922516, 37.605568, 47.815674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.074596, 37.958244, 47.927433>,  <33.165844, 38.169849, 47.994488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.074596, 37.958244, 47.927433>,  <32.922516, 37.605568, 47.815674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074596, 37.958244, 47.927433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366418, 0.420955, -0.829780,
		-0.849225, 0.213107, 0.483116,
		0.380203, 0.881693, 0.279399,
		33.188656, 38.222752, 48.011253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323643, 38.176212, 47.915745>,  <32.922516, 37.605568, 47.815674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323643, 38.176212, 47.915745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.691971, 38.306976, 47.830688>,  <32.912968, 38.385433, 47.779655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.691971, 38.306976, 47.830688>,  <32.323643, 38.176212, 47.915745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691971, 38.306976, 47.830688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313164, 0.294900, -0.902753,
		-0.232409, 0.897867, 0.373926,
		0.920823, 0.326908, -0.212642,
		32.968216, 38.405048, 47.766895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265797, 38.767059, 47.582687>,  <32.323643, 38.176212, 47.915745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265797, 38.767059, 47.582687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.636971, 38.669430, 47.470005>,  <32.859676, 38.610851, 47.402393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.636971, 38.669430, 47.470005>,  <32.265797, 38.767059, 47.582687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636971, 38.669430, 47.470005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198776, 0.315308, -0.927938,
		0.315308, 0.917066, 0.244071,
		0.927938, -0.244071, -0.281710,
		32.915352, 38.596207, 47.385490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514416, 39.167042, 47.137356>,  <32.265797, 38.767059, 47.582687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514416, 39.167042, 47.137356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.774929, 38.876556, 47.049309>,  <32.931236, 38.702267, 46.996483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.774929, 38.876556, 47.049309>,  <32.514416, 39.167042, 47.137356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774929, 38.876556, 47.049309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007327, 0.284038, -0.958785,
		0.758803, 0.626050, 0.179667,
		0.651279, -0.726212, -0.220116,
		32.970314, 38.658691, 46.983273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043262, 39.450912, 46.767826>,  <32.514416, 39.167042, 47.137356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043262, 39.450912, 46.767826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071938, 39.067245, 46.658386>,  <33.089142, 38.837044, 46.592724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071938, 39.067245, 46.658386>,  <33.043262, 39.450912, 46.767826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071938, 39.067245, 46.658386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291926, 0.282470, -0.913777,
		0.953750, -0.014363, 0.300256,
		0.071689, -0.959168, -0.273599,
		33.093445, 38.779495, 46.576305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.245529, 35.311886, 27.650009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.907635, 35.336514, 27.437357>,  <43.704899, 35.351288, 27.309765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.907635, 35.336514, 27.437357>,  <44.245529, 35.311886, 27.650009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907635, 35.336514, 27.437357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531561, 0.018866, 0.846810,
		0.062164, 0.997925, 0.016788,
		-0.844736, 0.061565, -0.531631,
		43.654213, 35.354984, 27.277868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766502, 35.885696, 27.908344>,  <44.245529, 35.311886, 27.650009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766502, 35.885696, 27.908344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540695, 35.610855, 27.725389>,  <43.405209, 35.445950, 27.615618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540695, 35.610855, 27.725389>,  <43.766502, 35.885696, 27.908344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540695, 35.610855, 27.725389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611575, -0.023963, 0.790824,
		-0.554340, 0.726162, -0.406689,
		-0.564520, -0.687106, -0.457386,
		43.371338, 35.404724, 27.588173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091770, 36.086933, 27.988798>,  <43.766502, 35.885696, 27.908344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091770, 36.086933, 27.988798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.044456, 35.696804, 27.914232>,  <43.016068, 35.462727, 27.869493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.044456, 35.696804, 27.914232>,  <43.091770, 36.086933, 27.988798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044456, 35.696804, 27.914232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626056, -0.072471, 0.776403,
		-0.770756, 0.208538, -0.602036,
		-0.118280, -0.975326, -0.186413,
		43.008972, 35.404205, 27.858309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313816, 35.909077, 28.062899>,  <43.091770, 36.086933, 27.988798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313816, 35.909077, 28.062899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489166, 35.549782, 28.075510>,  <42.594376, 35.334206, 28.083076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489166, 35.549782, 28.075510>,  <42.313816, 35.909077, 28.062899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489166, 35.549782, 28.075510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495872, -0.212452, 0.842007,
		-0.749623, -0.384753, -0.538545,
		0.438379, -0.898237, 0.031529,
		42.620682, 35.280312, 28.084969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816326, 35.422729, 28.315222>,  <42.313816, 35.909077, 28.062899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816326, 35.422729, 28.315222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.159557, 35.224358, 28.368519>,  <42.365498, 35.105335, 28.400497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.159557, 35.224358, 28.368519>,  <41.816326, 35.422729, 28.315222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159557, 35.224358, 28.368519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297887, -0.269365, 0.915809,
		-0.418288, -0.825527, -0.378868,
		0.858078, -0.495932, 0.133242,
		42.416981, 35.075577, 28.408491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625690, 34.789413, 28.670761>,  <41.816326, 35.422729, 28.315222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625690, 34.789413, 28.670761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.006577, 34.875767, 28.757179>,  <42.235107, 34.927578, 28.809031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.006577, 34.875767, 28.757179>,  <41.625690, 34.789413, 28.670761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006577, 34.875767, 28.757179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170641, -0.210611, 0.962561,
		0.253300, -0.953435, -0.163710,
		0.952219, 0.215881, 0.216043,
		42.292244, 34.940533, 28.821993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842434, 34.224178, 29.096354>,  <41.625690, 34.789413, 28.670761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842434, 34.224178, 29.096354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.087105, 34.527000, 29.188200>,  <42.233906, 34.708694, 29.243307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.087105, 34.527000, 29.188200>,  <41.842434, 34.224178, 29.096354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087105, 34.527000, 29.188200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031167, -0.313081, 0.949215,
		0.790495, -0.573455, -0.215099,
		0.611675, 0.757054, 0.229617,
		42.270607, 34.754116, 29.257086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163021, 33.921600, 29.588219>,  <41.842434, 34.224178, 29.096354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163021, 33.921600, 29.588219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275909, 34.302608, 29.633919>,  <42.343643, 34.531212, 29.661339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275909, 34.302608, 29.633919>,  <42.163021, 33.921600, 29.588219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275909, 34.302608, 29.633919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107205, -0.149657, 0.982909,
		0.953340, -0.265154, -0.144352,
		0.282225, 0.952521, 0.114248,
		42.360577, 34.588364, 29.668194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862675, 33.940079, 29.972900>,  <42.163021, 33.921600, 29.588219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862675, 33.940079, 29.972900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.663628, 34.282825, 30.026791>,  <42.544197, 34.488472, 30.059124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.663628, 34.282825, 30.026791>,  <42.862675, 33.940079, 29.972900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663628, 34.282825, 30.026791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038088, -0.133584, 0.990305,
		0.866558, 0.497929, 0.033837,
		-0.497621, 0.856868, 0.134723,
		42.514339, 34.539886, 30.067207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172207, 34.173492, 30.559219>,  <42.862675, 33.940079, 29.972900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172207, 34.173492, 30.559219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851662, 34.412746, 30.561897>,  <42.659332, 34.556297, 30.563503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851662, 34.412746, 30.561897>,  <43.172207, 34.173492, 30.559219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851662, 34.412746, 30.561897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019319, 0.014692, 0.999705,
		0.597861, 0.801260, -0.023329,
		-0.801367, 0.598136, 0.006695,
		42.611252, 34.592186, 30.563906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296879, 34.668568, 31.115627>,  <43.172207, 34.173492, 30.559219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296879, 34.668568, 31.115627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.903450, 34.711075, 31.057268>,  <42.667393, 34.736580, 31.022253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.903450, 34.711075, 31.057268>,  <43.296879, 34.668568, 31.115627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903450, 34.711075, 31.057268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132679, 0.122374, 0.983576,
		0.122374, 0.986779, -0.106265,
		-0.983576, 0.106265, -0.145900,
		42.608376, 34.742954, 31.013498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147427, 35.224422, 31.514009>,  <43.296879, 34.668568, 31.115627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147427, 35.224422, 31.514009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791409, 35.052185, 31.454138>,  <42.577797, 34.948841, 31.418215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791409, 35.052185, 31.454138>,  <43.147427, 35.224422, 31.514009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791409, 35.052185, 31.454138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266647, 0.225438, 0.937058,
		-0.369749, 0.873937, -0.315468,
		-0.890048, -0.430595, -0.149677,
		42.524395, 34.923008, 31.409235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525169, 35.573360, 31.837460>,  <43.147427, 35.224422, 31.514009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525169, 35.573360, 31.837460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.372406, 35.203793, 31.828398>,  <42.280746, 34.982052, 31.822960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.372406, 35.203793, 31.828398>,  <42.525169, 35.573360, 31.837460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372406, 35.203793, 31.828398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342703, 0.118808, 0.931901,
		-0.858312, 0.363665, -0.362005,
		-0.381909, -0.923922, -0.022655,
		42.257832, 34.926617, 31.821602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930954, 35.676102, 32.045578>,  <42.525169, 35.573360, 31.837460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930954, 35.676102, 32.045578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973625, 35.283836, 32.111210>,  <41.999229, 35.048477, 32.150589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973625, 35.283836, 32.111210>,  <41.930954, 35.676102, 32.045578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973625, 35.283836, 32.111210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251134, 0.133098, 0.958758,
		-0.962056, -0.143484, -0.232079,
		0.106677, -0.980661, 0.164082,
		42.005627, 34.989639, 32.160435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469933, 35.568321, 32.567131>,  <41.930954, 35.676102, 32.045578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469933, 35.568321, 32.567131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.706726, 35.246990, 32.593113>,  <41.848801, 35.054192, 32.608704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.706726, 35.246990, 32.593113>,  <41.469933, 35.568321, 32.567131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706726, 35.246990, 32.593113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026236, 0.099758, 0.994666,
		-0.805524, -0.587120, 0.080131,
		0.591982, -0.803330, 0.064953,
		41.884319, 35.005993, 32.612598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309212, 35.161888, 33.201195>,  <41.469933, 35.568321, 32.567131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309212, 35.161888, 33.201195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.676582, 35.031559, 33.111458>,  <41.897007, 34.953362, 33.057617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.676582, 35.031559, 33.111458>,  <41.309212, 35.161888, 33.201195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676582, 35.031559, 33.111458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265354, 0.086829, 0.960233,
		-0.293388, -0.941434, 0.166205,
		0.918428, -0.325825, -0.224339,
		41.952110, 34.933811, 33.044155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526718, 34.659065, 33.802433>,  <41.309212, 35.161888, 33.201195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526718, 34.659065, 33.802433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864811, 34.783794, 33.628834>,  <42.067665, 34.858631, 33.524673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864811, 34.783794, 33.628834>,  <41.526718, 34.659065, 33.802433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864811, 34.783794, 33.628834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395797, 0.180404, 0.900444,
		0.359076, -0.932856, 0.029064,
		0.845227, 0.311824, -0.434000,
		42.118378, 34.877342, 33.498634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059917, 34.328735, 34.183136>,  <41.526718, 34.659065, 33.802433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059917, 34.328735, 34.183136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.213039, 34.646397, 33.994335>,  <42.304913, 34.836994, 33.881054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.213039, 34.646397, 33.994335>,  <42.059917, 34.328735, 34.183136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213039, 34.646397, 33.994335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476247, 0.268156, 0.837425,
		0.791613, -0.545356, -0.275563,
		0.382801, 0.794153, -0.472000,
		42.327881, 34.884644, 33.852734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729218, 34.343632, 34.350456>,  <42.059917, 34.328735, 34.183136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729218, 34.343632, 34.350456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.656834, 34.722782, 34.245552>,  <42.613403, 34.950272, 34.182610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.656834, 34.722782, 34.245552>,  <42.729218, 34.343632, 34.350456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656834, 34.722782, 34.245552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525256, 0.318593, 0.789053,
		0.831480, 0.005032, -0.555531,
		-0.180958, 0.947878, -0.262261,
		42.602547, 35.007145, 34.166874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435574, 34.638950, 34.359478>,  <42.729218, 34.343632, 34.350456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435574, 34.638950, 34.359478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187744, 34.952194, 34.380898>,  <43.039047, 35.140141, 34.393749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187744, 34.952194, 34.380898>,  <43.435574, 34.638950, 34.359478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187744, 34.952194, 34.380898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552240, 0.386410, 0.738728,
		0.557812, 0.487270, -0.671874,
		-0.619578, 0.783106, 0.053546,
		43.001869, 35.187126, 34.396961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858883, 35.151745, 34.378700>,  <43.435574, 34.638950, 34.359478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858883, 35.151745, 34.378700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.509983, 35.252048, 34.546658>,  <43.300644, 35.312229, 34.647430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.509983, 35.252048, 34.546658>,  <43.858883, 35.151745, 34.378700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509983, 35.252048, 34.546658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486327, 0.353928, 0.798887,
		0.051717, 0.901030, -0.430663,
		-0.872245, 0.250759, 0.419891,
		43.248310, 35.327278, 34.672626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311554, 34.967503, 34.963966>,  <43.858883, 35.151745, 34.378700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311554, 34.967503, 34.963966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660450, 35.090027, 35.116470>,  <44.869789, 35.163540, 35.207973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660450, 35.090027, 35.116470>,  <44.311554, 34.967503, 34.963966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660450, 35.090027, 35.116470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021531, 0.754764, -0.655643,
		-0.488595, 0.580091, 0.651744,
		0.872245, 0.306312, 0.381264,
		44.922123, 35.181919, 35.230850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357903, 35.583363, 34.643074>,  <44.311554, 34.967503, 34.963966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357903, 35.583363, 34.643074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.719051, 35.552036, 34.812157>,  <44.935741, 35.533241, 34.913609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.719051, 35.552036, 34.812157>,  <44.357903, 35.583363, 34.643074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719051, 35.552036, 34.812157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366490, 0.654200, -0.661594,
		-0.224727, 0.752256, 0.619361,
		0.902875, -0.078312, 0.422711,
		44.989914, 35.528542, 34.938969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552551, 36.222103, 34.793652>,  <44.357903, 35.583363, 34.643074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552551, 36.222103, 34.793652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.884182, 36.005638, 34.737415>,  <45.083160, 35.875759, 34.703674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.884182, 36.005638, 34.737415>,  <44.552551, 36.222103, 34.793652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.884182, 36.005638, 34.737415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303214, 0.646424, -0.700141,
		0.469772, 0.537845, 0.700027,
		0.829081, -0.541165, -0.140590,
		45.132908, 35.843288, 34.695240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051315, 36.685936, 34.750538>,  <44.552551, 36.222103, 34.793652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051315, 36.685936, 34.750538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245735, 36.359676, 34.625019>,  <45.362389, 36.163921, 34.549709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245735, 36.359676, 34.625019>,  <45.051315, 36.685936, 34.750538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245735, 36.359676, 34.625019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389529, 0.523621, -0.757687,
		0.782318, 0.246042, 0.572226,
		0.486052, -0.815650, -0.313797,
		45.391552, 36.114983, 34.530880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728355, 36.943024, 34.585289>,  <45.051315, 36.685936, 34.750538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728355, 36.943024, 34.585289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639366, 36.610985, 34.380760>,  <45.585972, 36.411762, 34.258045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639366, 36.610985, 34.380760>,  <45.728355, 36.943024, 34.585289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639366, 36.610985, 34.380760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252567, 0.457485, -0.852594,
		0.941655, -0.318825, 0.107875,
		-0.222477, -0.830095, -0.511318,
		45.572624, 36.361958, 34.227364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385658, 36.700775, 34.256229>,  <45.728355, 36.943024, 34.585289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385658, 36.700775, 34.256229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.060619, 36.575562, 34.059578>,  <45.865597, 36.500431, 33.941586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.060619, 36.575562, 34.059578>,  <46.385658, 36.700775, 34.256229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060619, 36.575562, 34.059578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377126, 0.360729, -0.853024,
		0.444377, -0.878567, -0.175070,
		-0.812592, -0.313041, -0.491630,
		45.816841, 36.481651, 33.912090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.671753, 36.521465, 33.580917>,  <46.385658, 36.700775, 34.256229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.671753, 36.521465, 33.580917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.277847, 36.543968, 33.515110>,  <46.041504, 36.557468, 33.475624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.277847, 36.543968, 33.515110>,  <46.671753, 36.521465, 33.580917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277847, 36.543968, 33.515110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170063, 0.114601, -0.978747,
		-0.036210, -0.991817, -0.122423,
		-0.984767, 0.056260, -0.164522,
		45.982418, 36.560844, 33.465752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466537, 36.140652, 32.890186>,  <46.671753, 36.521465, 33.580917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.466537, 36.140652, 32.890186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.148365, 36.371075, 32.965488>,  <45.957462, 36.509331, 33.010670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.148365, 36.371075, 32.965488>,  <46.466537, 36.140652, 32.890186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.148365, 36.371075, 32.965488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095563, 0.187522, -0.977601,
		-0.598458, -0.795607, -0.094111,
		-0.795434, 0.576060, 0.188255,
		45.909733, 36.543892, 33.021965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094135, 36.002525, 32.366974>,  <46.466537, 36.140652, 32.890186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094135, 36.002525, 32.366974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.960556, 36.352497, 32.507248>,  <45.880409, 36.562481, 32.591412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.960556, 36.352497, 32.507248>,  <46.094135, 36.002525, 32.366974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960556, 36.352497, 32.507248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105348, 0.335064, -0.936287,
		-0.936685, -0.349617, -0.019723,
		-0.333950, 0.874928, 0.350682,
		45.860371, 36.614975, 32.612453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353157, 36.099312, 31.988808>,  <46.094135, 36.002525, 32.366974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353157, 36.099312, 31.988808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.502907, 36.445240, 32.122635>,  <45.592758, 36.652798, 32.202930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.502907, 36.445240, 32.122635>,  <45.353157, 36.099312, 31.988808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502907, 36.445240, 32.122635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179350, 0.421527, -0.888903,
		-0.909767, 0.272779, 0.312914,
		0.374375, 0.864816, 0.334568,
		45.615219, 36.704685, 32.223007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913120, 36.602562, 31.880922>,  <45.353157, 36.099312, 31.988808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913120, 36.602562, 31.880922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.256516, 36.806992, 31.897854>,  <45.462555, 36.929649, 31.908012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.256516, 36.806992, 31.897854>,  <44.913120, 36.602562, 31.880922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.256516, 36.806992, 31.897854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213786, 0.431691, -0.876321,
		-0.466142, 0.743264, 0.479864,
		0.858491, 0.511078, 0.042330,
		45.514061, 36.960316, 31.910553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781700, 37.287643, 31.747280>,  <44.913120, 36.602562, 31.880922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781700, 37.287643, 31.747280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171181, 37.312641, 31.659649>,  <45.404869, 37.327641, 31.607071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171181, 37.312641, 31.659649>,  <44.781700, 37.287643, 31.747280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171181, 37.312641, 31.659649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226254, 0.377777, -0.897827,
		0.026649, 0.923785, 0.381983,
		0.973704, 0.062499, -0.219077,
		45.463291, 37.331390, 31.593925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864475, 37.972034, 31.455050>,  <44.781700, 37.287643, 31.747280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864475, 37.972034, 31.455050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.173527, 37.752800, 31.326897>,  <45.358959, 37.621258, 31.250004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.173527, 37.752800, 31.326897>,  <44.864475, 37.972034, 31.455050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173527, 37.752800, 31.326897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021074, 0.526518, -0.849903,
		0.634507, 0.649909, 0.418354,
		0.772630, -0.548086, -0.320383,
		45.405315, 37.588375, 31.230782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.422413, 38.453732, 31.224937>,  <44.864475, 37.972034, 31.455050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.422413, 38.453732, 31.224937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513103, 38.113884, 31.034470>,  <45.567516, 37.909973, 30.920189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513103, 38.113884, 31.034470>,  <45.422413, 38.453732, 31.224937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513103, 38.113884, 31.034470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189638, 0.518055, -0.834060,
		0.955318, 0.098804, 0.278577,
		0.226727, -0.849622, -0.476170,
		45.581120, 37.858997, 30.891619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931595, 38.638031, 30.781155>,  <45.422413, 38.453732, 31.224937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.931595, 38.638031, 30.781155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827232, 38.276447, 30.645638>,  <45.764614, 38.059498, 30.564327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827232, 38.276447, 30.645638>,  <45.931595, 38.638031, 30.781155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827232, 38.276447, 30.645638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233249, 0.281520, -0.930775,
		0.936761, -0.321871, 0.137397,
		-0.260909, -0.903961, -0.338793,
		45.748959, 38.005260, 30.544001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496044, 38.310909, 30.382441>,  <45.931595, 38.638031, 30.781155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.496044, 38.310909, 30.382441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.161209, 38.127312, 30.263369>,  <45.960308, 38.017155, 30.191925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.161209, 38.127312, 30.263369>,  <46.496044, 38.310909, 30.382441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.161209, 38.127312, 30.263369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274828, 0.117675, -0.954265,
		0.473031, -0.880612, 0.027640,
		-0.837085, -0.458993, -0.297681,
		45.910084, 37.989613, 30.174065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.800716, 38.019070, 29.829941>,  <46.496044, 38.310909, 30.382441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.800716, 38.019070, 29.829941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.405243, 38.055481, 29.782251>,  <46.167957, 38.077328, 29.753637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.405243, 38.055481, 29.782251>,  <46.800716, 38.019070, 29.829941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.405243, 38.055481, 29.782251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134953, 0.192820, -0.971909,
		-0.065481, -0.977003, -0.202923,
		-0.988686, 0.091026, -0.119223,
		46.108639, 38.082790, 29.746485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.689480, 37.656467, 29.241039>,  <46.800716, 38.019070, 29.829941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.689480, 37.656467, 29.241039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.378483, 37.904942, 29.280308>,  <46.191883, 38.054024, 29.303869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.378483, 37.904942, 29.280308>,  <46.689480, 37.656467, 29.241039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378483, 37.904942, 29.280308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014738, 0.138065, -0.990314,
		-0.628718, -0.771409, -0.098190,
		-0.777494, 0.621181, 0.098173,
		46.145233, 38.091297, 29.309759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159588, 37.374340, 28.732077>,  <46.689480, 37.656467, 29.241039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159588, 37.374340, 28.732077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.988483, 37.730213, 28.795938>,  <45.885822, 37.943737, 28.834255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.988483, 37.730213, 28.795938>,  <46.159588, 37.374340, 28.732077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988483, 37.730213, 28.795938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131499, 0.113497, -0.984798,
		-0.894276, -0.442250, 0.068443,
		-0.427759, 0.889682, 0.159653,
		45.860157, 37.997116, 28.843834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571880, 37.399944, 28.233658>,  <46.159588, 37.374340, 28.732077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571880, 37.399944, 28.233658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.630299, 37.780876, 28.340797>,  <45.665348, 38.009434, 28.405081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.630299, 37.780876, 28.340797>,  <45.571880, 37.399944, 28.233658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630299, 37.780876, 28.340797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120235, 0.285832, -0.950707,
		-0.981944, 0.106641, 0.156247,
		0.146045, 0.952328, 0.267849,
		45.674110, 38.066574, 28.421152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057743, 37.722294, 27.965738>,  <45.571880, 37.399944, 28.233658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057743, 37.722294, 27.965738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.343319, 37.996891, 28.020905>,  <45.514664, 38.161648, 28.054005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.343319, 37.996891, 28.020905>,  <45.057743, 37.722294, 27.965738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343319, 37.996891, 28.020905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004679, 0.192283, -0.981328,
		-0.700190, 0.701257, 0.134067,
		0.713942, 0.686489, 0.137916,
		45.557503, 38.202839, 28.062279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.691704, 41.484360, 42.101982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523529, 41.121944, 42.082668>,  <36.422623, 40.904495, 42.071079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523529, 41.121944, 42.082668>,  <36.691704, 41.484360, 42.101982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523529, 41.121944, 42.082668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321749, -0.099128, -0.941621,
		0.848355, -0.411431, 0.333193,
		-0.420441, -0.906034, -0.048282,
		36.397396, 40.850136, 42.068184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132065, 41.106174, 41.727119>,  <36.691704, 41.484360, 42.101982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132065, 41.106174, 41.727119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806335, 40.874687, 41.709381>,  <36.610897, 40.735794, 41.698738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806335, 40.874687, 41.709381>,  <37.132065, 41.106174, 41.727119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806335, 40.874687, 41.709381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220137, -0.237257, -0.946176,
		0.537045, -0.780256, 0.320600,
		-0.814324, -0.578715, -0.044345,
		36.562038, 40.701073, 41.696079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308926, 40.500710, 41.430161>,  <37.132065, 41.106174, 41.727119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308926, 40.500710, 41.430161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919067, 40.552849, 41.357410>,  <36.685154, 40.584133, 41.313759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919067, 40.552849, 41.357410>,  <37.308926, 40.500710, 41.430161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919067, 40.552849, 41.357410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159625, -0.164599, -0.973359,
		-0.156777, -0.977714, 0.139625,
		-0.974649, 0.130313, -0.181873,
		36.626675, 40.591953, 41.302849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156727, 39.915062, 40.982277>,  <37.308926, 40.500710, 41.430161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156727, 39.915062, 40.982277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834404, 40.147499, 40.936665>,  <36.641010, 40.286961, 40.909298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834404, 40.147499, 40.936665>,  <37.156727, 39.915062, 40.982277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834404, 40.147499, 40.936665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017207, -0.169511, -0.985378,
		-0.591931, -0.795985, 0.126594,
		-0.805805, 0.581097, -0.114035,
		36.592663, 40.321827, 40.902454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581875, 39.508160, 40.656673>,  <37.156727, 39.915062, 40.982277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581875, 39.508160, 40.656673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545643, 39.901012, 40.590679>,  <36.523903, 40.136723, 40.551083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545643, 39.901012, 40.590679>,  <36.581875, 39.508160, 40.656673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545643, 39.901012, 40.590679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187830, -0.179541, -0.965653,
		-0.978016, -0.056483, 0.200737,
		-0.090583, 0.982128, -0.164985,
		36.518467, 40.195652, 40.541183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069939, 39.560238, 40.175556>,  <36.581875, 39.508160, 40.656673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069939, 39.560238, 40.175556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238472, 39.920956, 40.137112>,  <36.339592, 40.137386, 40.114044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238472, 39.920956, 40.137112>,  <36.069939, 39.560238, 40.175556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238472, 39.920956, 40.137112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200665, -0.010652, -0.979602,
		-0.884425, 0.432030, 0.176471,
		0.421338, 0.901796, -0.096114,
		36.364872, 40.191494, 40.108276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636772, 39.840118, 39.734383>,  <36.069939, 39.560238, 40.175556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636772, 39.840118, 39.734383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976856, 40.050560, 39.726795>,  <36.180908, 40.176823, 39.722244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976856, 40.050560, 39.726795>,  <35.636772, 39.840118, 39.734383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976856, 40.050560, 39.726795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040349, 0.029200, -0.998759,
		-0.524893, 0.849922, 0.046053,
		0.850212, 0.526099, -0.018967,
		36.231918, 40.208389, 39.721104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538052, 40.305008, 39.174335>,  <35.636772, 39.840118, 39.734383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538052, 40.305008, 39.174335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933952, 40.339455, 39.219902>,  <36.171494, 40.360123, 39.247242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933952, 40.339455, 39.219902>,  <35.538052, 40.305008, 39.174335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933952, 40.339455, 39.219902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112807, 0.017628, -0.993461,
		-0.087557, 0.996129, 0.007733,
		0.989752, 0.086112, 0.113913,
		36.230877, 40.365288, 39.254078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759796, 40.907993, 38.863613>,  <35.538052, 40.305008, 39.174335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759796, 40.907993, 38.863613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081635, 40.670563, 38.870476>,  <36.274738, 40.528107, 38.874596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081635, 40.670563, 38.870476>,  <35.759796, 40.907993, 38.863613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081635, 40.670563, 38.870476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136557, 0.156830, -0.978139,
		0.577905, 0.789352, 0.207242,
		0.804598, -0.593572, 0.017159,
		36.323013, 40.492493, 38.875622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175766, 41.272232, 38.335678>,  <35.759796, 40.907993, 38.863613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175766, 41.272232, 38.335678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376450, 40.930050, 38.387024>,  <36.496861, 40.724739, 38.417831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376450, 40.930050, 38.387024>,  <36.175766, 41.272232, 38.335678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376450, 40.930050, 38.387024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180526, -0.041584, -0.982691,
		0.845991, 0.516196, 0.133570,
		0.501707, -0.855460, 0.128367,
		36.526962, 40.673412, 38.425533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822441, 41.289181, 38.018887>,  <36.175766, 41.272232, 38.335678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822441, 41.289181, 38.018887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748798, 40.896584, 38.039978>,  <36.704613, 40.661026, 38.052635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748798, 40.896584, 38.039978>,  <36.822441, 41.289181, 38.018887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748798, 40.896584, 38.039978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150303, -0.081130, -0.985305,
		0.971346, -0.173475, 0.162457,
		-0.184106, -0.981491, 0.052732,
		36.693565, 40.602135, 38.055798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374748, 40.852657, 37.670124>,  <36.822441, 41.289181, 38.018887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374748, 40.852657, 37.670124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055580, 40.611553, 37.669487>,  <36.864079, 40.466892, 37.669106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055580, 40.611553, 37.669487>,  <37.374748, 40.852657, 37.670124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055580, 40.611553, 37.669487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109794, -0.142738, -0.983652,
		0.592679, -0.785051, 0.180073,
		-0.797921, -0.602761, -0.001597,
		36.816204, 40.430725, 37.669006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656681, 40.263561, 37.390976>,  <37.374748, 40.852657, 37.670124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656681, 40.263561, 37.390976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266010, 40.318096, 37.324619>,  <37.031609, 40.350819, 37.284805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266010, 40.318096, 37.324619>,  <37.656681, 40.263561, 37.390976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266010, 40.318096, 37.324619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166190, -0.009281, -0.986050,
		-0.135980, -0.990618, -0.013594,
		-0.976673, 0.136343, -0.165892,
		36.973007, 40.358997, 37.274853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483433, 39.734520, 36.877655>,  <37.656681, 40.263561, 37.390976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483433, 39.734520, 36.877655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222218, 40.037178, 36.890453>,  <37.065487, 40.218773, 36.898132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222218, 40.037178, 36.890453>,  <37.483433, 39.734520, 36.877655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222218, 40.037178, 36.890453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079412, 0.110436, -0.990706,
		-0.753146, -0.644432, -0.132206,
		-0.653042, 0.756645, 0.031999,
		37.026306, 40.264172, 36.900051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528175, 38.945503, 36.651707>,  <37.483433, 39.734520, 36.877655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528175, 38.945503, 36.651707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818794, 38.708656, 36.512264>,  <37.993164, 38.566547, 36.428600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818794, 38.708656, 36.512264>,  <37.528175, 38.945503, 36.651707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818794, 38.708656, 36.512264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000855, -0.508121, 0.861285,
		-0.687117, -0.625466, -0.369680,
		0.726546, -0.592120, -0.348603,
		38.036758, 38.531021, 36.407684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315166, 38.263798, 36.472710>,  <37.528175, 38.945503, 36.651707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315166, 38.263798, 36.472710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694912, 38.291790, 36.595230>,  <37.922760, 38.308586, 36.668743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694912, 38.291790, 36.595230>,  <37.315166, 38.263798, 36.472710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694912, 38.291790, 36.595230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243454, -0.452399, 0.857942,
		0.198611, -0.889065, -0.412452,
		0.949359, 0.069984, 0.306299,
		37.979721, 38.312786, 36.687119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672115, 37.568161, 36.516769>,  <37.315166, 38.263798, 36.472710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672115, 37.568161, 36.516769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846264, 37.829449, 36.764561>,  <37.950752, 37.986221, 36.913235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846264, 37.829449, 36.764561>,  <37.672115, 37.568161, 36.516769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846264, 37.829449, 36.764561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357345, -0.506191, 0.784904,
		0.826293, -0.563089, 0.013047,
		0.435367, 0.653223, 0.619480,
		37.976875, 38.025417, 36.950405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858307, 37.146809, 37.039185>,  <37.672115, 37.568161, 36.516769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858307, 37.146809, 37.039185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917797, 37.496536, 37.223988>,  <37.953491, 37.706371, 37.334869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917797, 37.496536, 37.223988>,  <37.858307, 37.146809, 37.039185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917797, 37.496536, 37.223988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083188, -0.454482, 0.886863,
		0.985373, -0.170335, 0.005139,
		0.148729, 0.874318, 0.462004,
		37.962414, 37.758831, 37.362587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305534, 36.979931, 37.447964>,  <37.858307, 37.146809, 37.039185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305534, 36.979931, 37.447964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135406, 37.305534, 37.606197>,  <38.033329, 37.500896, 37.701138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135406, 37.305534, 37.606197>,  <38.305534, 36.979931, 37.447964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135406, 37.305534, 37.606197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000319, -0.436957, 0.899482,
		0.905042, 0.382695, 0.185587,
		-0.425321, 0.814011, 0.395587,
		38.007809, 37.549736, 37.724873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734001, 37.131783, 38.052402>,  <38.305534, 36.979931, 37.447964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734001, 37.131783, 38.052402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380501, 37.314892, 38.091228>,  <38.168400, 37.424759, 38.114525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380501, 37.314892, 38.091228>,  <38.734001, 37.131783, 38.052402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380501, 37.314892, 38.091228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092296, -0.373868, 0.922878,
		0.458759, 0.806638, 0.372658,
		-0.883754, 0.457774, 0.097066,
		38.115376, 37.452225, 38.120350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683491, 37.241978, 38.789612>,  <38.734001, 37.131783, 38.052402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683491, 37.241978, 38.789612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304443, 37.319618, 38.688145>,  <38.077015, 37.366203, 38.627266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304443, 37.319618, 38.688145>,  <38.683491, 37.241978, 38.789612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304443, 37.319618, 38.688145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276566, -0.101314, 0.955639,
		0.159790, 0.975736, 0.149689,
		-0.947617, 0.194100, -0.253667,
		38.020157, 37.377850, 38.612045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443665, 37.799377, 39.381626>,  <38.683491, 37.241978, 38.789612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443665, 37.799377, 39.381626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147423, 37.606236, 39.194714>,  <37.969677, 37.490349, 39.082565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147423, 37.606236, 39.194714>,  <38.443665, 37.799377, 39.381626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147423, 37.606236, 39.194714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490284, -0.087218, 0.867188,
		-0.459481, 0.871346, -0.172142,
		-0.740607, -0.482855, -0.467282,
		37.925240, 37.461380, 39.054527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842022, 38.047668, 39.677673>,  <38.443665, 37.799377, 39.381626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842022, 38.047668, 39.677673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737698, 37.691250, 39.529072>,  <37.675102, 37.477398, 39.439911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737698, 37.691250, 39.529072>,  <37.842022, 38.047668, 39.677673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737698, 37.691250, 39.529072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416993, -0.243088, 0.875799,
		-0.870685, 0.383333, -0.308160,
		-0.260813, -0.891046, -0.371501,
		37.659454, 37.423935, 39.417622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080589, 38.084026, 39.773430>,  <37.842022, 38.047668, 39.677673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080589, 38.084026, 39.773430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158943, 37.697437, 39.707027>,  <37.205956, 37.465485, 39.667187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158943, 37.697437, 39.707027>,  <37.080589, 38.084026, 39.773430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158943, 37.697437, 39.707027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448377, -0.238828, 0.861348,
		-0.872118, -0.094286, -0.480126,
		0.195880, -0.966474, -0.166010,
		37.217709, 37.407494, 39.657223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524479, 37.699856, 39.839027>,  <37.080589, 38.084026, 39.773430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524479, 37.699856, 39.839027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797035, 37.414246, 39.903366>,  <36.960571, 37.242878, 39.941971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797035, 37.414246, 39.903366>,  <36.524479, 37.699856, 39.839027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797035, 37.414246, 39.903366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392133, -0.170581, 0.903955,
		-0.618009, -0.679021, -0.396225,
		0.681393, -0.714025, 0.160846,
		37.001453, 37.200039, 39.951618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159389, 37.104877, 40.054962>,  <36.524479, 37.699856, 39.839027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159389, 37.104877, 40.054962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518246, 37.037048, 40.218121>,  <36.733559, 36.996349, 40.316017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518246, 37.037048, 40.218121>,  <36.159389, 37.104877, 40.054962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518246, 37.037048, 40.218121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435392, -0.183407, 0.881360,
		-0.074645, -0.968301, -0.238373,
		0.897141, -0.169575, 0.407899,
		36.787388, 36.986176, 40.340488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015266, 36.592674, 40.463543>,  <36.159389, 37.104877, 40.054962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015266, 36.592674, 40.463543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376251, 36.695236, 40.602009>,  <36.592842, 36.756771, 40.685089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376251, 36.695236, 40.602009>,  <36.015266, 36.592674, 40.463543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376251, 36.695236, 40.602009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286482, -0.242898, 0.926784,
		0.321712, -0.935552, -0.145750,
		0.902457, 0.256403, 0.346162,
		36.646988, 36.772156, 40.705856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341602, 35.993797, 40.858139>,  <36.015266, 36.592674, 40.463543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341602, 35.993797, 40.858139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490746, 36.340614, 40.990334>,  <36.580231, 36.548702, 41.069649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490746, 36.340614, 40.990334>,  <36.341602, 35.993797, 40.858139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490746, 36.340614, 40.990334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188935, -0.277761, 0.941887,
		0.908448, -0.413633, 0.060248,
		0.372861, 0.867039, 0.330482,
		36.602604, 36.600727, 41.089478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636375, 35.303944, 40.540070>,  <36.341602, 35.993797, 40.858139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636375, 35.303944, 40.540070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594208, 34.907608, 40.573841>,  <36.568905, 34.669807, 40.594105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594208, 34.907608, 40.573841>,  <36.636375, 35.303944, 40.540070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594208, 34.907608, 40.573841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255888, -0.055012, -0.965140,
		0.960941, -0.123350, -0.247744,
		-0.105421, -0.990837, 0.084427,
		36.562580, 34.610355, 40.599171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884300, 35.084141, 39.819321>,  <36.636375, 35.303944, 40.540070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884300, 35.084141, 39.819321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677036, 34.783642, 39.982857>,  <36.552677, 34.603344, 40.080978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677036, 34.783642, 39.982857>,  <36.884300, 35.084141, 39.819321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677036, 34.783642, 39.982857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440011, -0.175761, -0.880624,
		0.733421, -0.636193, -0.239484,
		-0.518155, -0.751244, 0.408838,
		36.521591, 34.558270, 40.105507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967201, 34.534107, 39.257378>,  <36.884300, 35.084141, 39.819321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967201, 34.534107, 39.257378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630440, 34.491840, 39.469051>,  <36.428383, 34.466480, 39.596058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630440, 34.491840, 39.469051>,  <36.967201, 34.534107, 39.257378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630440, 34.491840, 39.469051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455566, -0.386460, -0.801940,
		0.289248, -0.916233, 0.277223,
		-0.841900, -0.105666, 0.529187,
		36.377869, 34.460140, 39.627808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647484, 33.928596, 38.907154>,  <36.967201, 34.534107, 39.257378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647484, 33.928596, 38.907154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378956, 34.103283, 39.146690>,  <36.217838, 34.208096, 39.290413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378956, 34.103283, 39.146690>,  <36.647484, 33.928596, 38.907154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378956, 34.103283, 39.146690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735053, -0.288717, -0.613465,
		-0.095013, -0.852011, 0.514829,
		-0.671319, 0.436714, 0.598842,
		36.177559, 34.234299, 39.326344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011547, 33.477917, 38.899242>,  <36.647484, 33.928596, 38.907154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011547, 33.477917, 38.899242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886421, 33.838570, 39.018707>,  <35.811344, 34.054962, 39.090385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886421, 33.838570, 39.018707>,  <36.011547, 33.477917, 38.899242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886421, 33.838570, 39.018707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796099, -0.077385, -0.600198,
		-0.518047, -0.425519, 0.741998,
		-0.312815, 0.901635, 0.298666,
		35.792576, 34.109058, 39.108307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427288, 33.454975, 38.731846>,  <36.011547, 33.477917, 38.899242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427288, 33.454975, 38.731846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423733, 33.839306, 38.842648>,  <35.421600, 34.069904, 38.909130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423733, 33.839306, 38.842648>,  <35.427288, 33.454975, 38.731846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423733, 33.839306, 38.842648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830708, 0.147107, -0.536920,
		-0.556637, -0.234884, 0.796859,
		-0.008891, 0.960827, 0.277005,
		35.421066, 34.127556, 38.925751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777176, 33.573460, 39.002098>,  <35.427288, 33.454975, 38.731846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777176, 33.573460, 39.002098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895115, 33.927494, 38.858051>,  <34.965881, 34.139915, 38.771626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895115, 33.927494, 38.858051>,  <34.777176, 33.573460, 39.002098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895115, 33.927494, 38.858051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859270, 0.080738, -0.505110,
		-0.417992, 0.458368, 0.784335,
		0.294852, 0.885088, -0.360114,
		34.983570, 34.193020, 38.750019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205349, 34.036732, 39.113300>,  <34.777176, 33.573460, 39.002098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205349, 34.036732, 39.113300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436768, 34.180187, 38.820271>,  <34.575619, 34.266258, 38.644451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436768, 34.180187, 38.820271>,  <34.205349, 34.036732, 39.113300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436768, 34.180187, 38.820271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807572, 0.125747, -0.576208,
		-0.114529, 0.924969, 0.362375,
		0.578542, 0.358636, -0.732577,
		34.610329, 34.287777, 38.600498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013210, 34.817230, 38.922501>,  <34.205349, 34.036732, 39.113300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013210, 34.817230, 38.922501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216713, 34.682819, 38.605450>,  <34.338814, 34.602173, 38.415218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216713, 34.682819, 38.605450>,  <34.013210, 34.817230, 38.922501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216713, 34.682819, 38.605450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719867, 0.338931, -0.605737,
		0.472188, 0.878757, -0.069461,
		0.508753, -0.336024, -0.792627,
		34.369339, 34.582012, 38.367661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932991, 35.304924, 38.403988>,  <34.013210, 34.817230, 38.922501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932991, 35.304924, 38.403988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058399, 34.976242, 38.213615>,  <34.133644, 34.779034, 38.099392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058399, 34.976242, 38.213615>,  <33.932991, 35.304924, 38.403988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058399, 34.976242, 38.213615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630253, 0.194825, -0.751548,
		0.710271, 0.535585, -0.456797,
		0.313523, -0.821700, -0.475933,
		34.152454, 34.729733, 38.070835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036640, 35.406025, 37.684147>,  <33.932991, 35.304924, 38.403988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036640, 35.406025, 37.684147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009216, 35.007015, 37.677933>,  <33.992764, 34.767609, 37.674206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009216, 35.007015, 37.677933>,  <34.036640, 35.406025, 37.684147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009216, 35.007015, 37.677933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574217, 0.052188, -0.817038,
		0.815827, -0.047096, -0.576375,
		-0.068559, -0.997526, -0.015534,
		33.988647, 34.707756, 37.673271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204178, 35.192707, 36.996159>,  <34.036640, 35.406025, 37.684147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204178, 35.192707, 36.996159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990093, 34.889732, 37.145741>,  <33.861645, 34.707947, 37.235489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990093, 34.889732, 37.145741>,  <34.204178, 35.192707, 36.996159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990093, 34.889732, 37.145741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509590, -0.063560, -0.858066,
		0.673698, -0.649810, -0.351964,
		-0.535209, -0.757435, 0.373956,
		33.829529, 34.662502, 37.257927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.463528, 35.369534, 43.842274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.151184, 35.131092, 43.917019>,  <37.963776, 34.988026, 43.961864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.151184, 35.131092, 43.917019>,  <38.463528, 35.369534, 43.842274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151184, 35.131092, 43.917019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138671, -0.126260, -0.982257,
		0.609119, -0.792919, 0.015929,
		-0.780861, -0.596103, 0.186862,
		37.916927, 34.952263, 43.973076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607574, 34.713497, 43.407013>,  <38.463528, 35.369534, 43.842274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607574, 34.713497, 43.407013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.223953, 34.684784, 43.516605>,  <37.993782, 34.667557, 43.582359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.223953, 34.684784, 43.516605>,  <38.607574, 34.713497, 43.407013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223953, 34.684784, 43.516605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238693, -0.315840, -0.918298,
		0.152455, -0.946093, 0.285772,
		-0.959053, -0.071787, 0.273978,
		37.936237, 34.663246, 43.598797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339451, 33.993328, 43.252842>,  <38.607574, 34.713497, 43.407013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339451, 33.993328, 43.252842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029488, 34.245651, 43.268803>,  <37.843510, 34.397045, 43.278381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029488, 34.245651, 43.268803>,  <38.339451, 33.993328, 43.252842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029488, 34.245651, 43.268803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361287, -0.390247, -0.846864,
		-0.518639, -0.670660, 0.530310,
		-0.774910, 0.630811, 0.039903,
		37.797016, 34.434895, 43.280773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847645, 33.597721, 42.932674>,  <38.339451, 33.993328, 43.252842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847645, 33.597721, 42.932674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699371, 33.969128, 42.941097>,  <37.610405, 34.191971, 42.946152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699371, 33.969128, 42.941097>,  <37.847645, 33.597721, 42.932674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699371, 33.969128, 42.941097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478023, -0.171302, -0.861481,
		-0.796296, -0.329404, 0.507353,
		-0.370686, 0.928520, 0.021055,
		37.588165, 34.247684, 42.947414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158302, 33.586651, 42.796551>,  <37.847645, 33.597721, 42.932674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158302, 33.586651, 42.796551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.253975, 33.957115, 42.679920>,  <37.311378, 34.179394, 42.609943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.253975, 33.957115, 42.679920>,  <37.158302, 33.586651, 42.796551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253975, 33.957115, 42.679920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540442, -0.122492, -0.832417,
		-0.806668, 0.356681, 0.471238,
		0.239184, 0.926161, -0.291576,
		37.325729, 34.234962, 42.592449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563354, 33.831436, 42.517334>,  <37.158302, 33.586651, 42.796551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563354, 33.831436, 42.517334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835896, 34.083054, 42.367630>,  <36.999420, 34.234024, 42.277809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835896, 34.083054, 42.367630>,  <36.563354, 33.831436, 42.517334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835896, 34.083054, 42.367630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576573, 0.146256, -0.803848,
		-0.450916, 0.763490, 0.462339,
		0.681350, 0.629040, -0.374259,
		37.040302, 34.271767, 42.255352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183704, 34.447414, 42.281696>,  <36.563354, 33.831436, 42.517334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183704, 34.447414, 42.281696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.534351, 34.411560, 42.092594>,  <36.744740, 34.390049, 41.979134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.534351, 34.411560, 42.092594>,  <36.183704, 34.447414, 42.281696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534351, 34.411560, 42.092594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459079, 0.138547, -0.877526,
		0.144157, 0.986291, 0.080303,
		0.876622, -0.089637, -0.472758,
		36.797337, 34.384670, 41.950768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992481, 34.726025, 41.658222>,  <36.183704, 34.447414, 42.281696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992481, 34.726025, 41.658222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.360245, 34.588657, 41.581535>,  <36.580902, 34.506237, 41.535522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.360245, 34.588657, 41.581535>,  <35.992481, 34.726025, 41.658222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360245, 34.588657, 41.581535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197752, 0.017722, -0.980092,
		0.339979, 0.939016, -0.051618,
		0.919407, -0.343418, -0.191717,
		36.636066, 34.485634, 41.524021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317333, 35.251110, 41.233128>,  <35.992481, 34.726025, 41.658222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317333, 35.251110, 41.233128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451633, 34.880890, 41.163132>,  <36.532211, 34.658756, 41.121132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451633, 34.880890, 41.163132>,  <36.317333, 35.251110, 41.233128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451633, 34.880890, 41.163132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378357, 0.037619, -0.924895,
		0.862623, 0.376742, -0.337560,
		0.335748, -0.925554, -0.174994,
		36.552357, 34.603222, 41.110634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925999, 35.783253, 41.425156>,  <36.317333, 35.251110, 41.233128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925999, 35.783253, 41.425156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.817039, 36.160824, 41.499767>,  <36.751663, 36.387367, 41.544533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.817039, 36.160824, 41.499767>,  <36.925999, 35.783253, 41.425156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817039, 36.160824, 41.499767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077002, -0.171853, 0.982109,
		0.959100, 0.281884, -0.025873,
		-0.272395, 0.943932, 0.186529,
		36.735321, 36.444004, 41.555725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371559, 36.064934, 41.899269>,  <36.925999, 35.783253, 41.425156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371559, 36.064934, 41.899269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.067017, 36.321606, 41.936302>,  <36.884289, 36.475609, 41.958523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.067017, 36.321606, 41.936302>,  <37.371559, 36.064934, 41.899269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067017, 36.321606, 41.936302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133232, 0.015108, 0.990970,
		0.634491, 0.766820, -0.096995,
		-0.761361, 0.641685, 0.092579,
		36.838608, 36.514111, 41.964077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614883, 36.541798, 42.395817>,  <37.371559, 36.064934, 41.899269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614883, 36.541798, 42.395817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.227982, 36.643318, 42.394699>,  <36.995842, 36.704231, 42.394028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.227982, 36.643318, 42.394699>,  <37.614883, 36.541798, 42.395817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227982, 36.643318, 42.394699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091329, 0.358281, 0.929136,
		0.236819, 0.898453, -0.369727,
		-0.967252, 0.253804, -0.002793,
		36.937805, 36.719460, 42.393860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525455, 37.236774, 42.705601>,  <37.614883, 36.541798, 42.395817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525455, 37.236774, 42.705601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.183552, 37.032784, 42.744198>,  <36.978409, 36.910389, 42.767357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.183552, 37.032784, 42.744198>,  <37.525455, 37.236774, 42.705601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183552, 37.032784, 42.744198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086085, 0.322636, 0.942600,
		-0.511833, 0.797391, -0.319677,
		-0.854761, -0.509974, 0.096492,
		36.927124, 36.879791, 42.773144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079014, 37.713997, 43.082573>,  <37.525455, 37.236774, 42.705601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079014, 37.713997, 43.082573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911869, 37.355556, 43.142422>,  <36.811581, 37.140491, 43.178329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911869, 37.355556, 43.142422>,  <37.079014, 37.713997, 43.082573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911869, 37.355556, 43.142422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099682, 0.208915, 0.972840,
		-0.903026, 0.391598, -0.176623,
		-0.417861, -0.896106, 0.149621,
		36.786510, 37.086723, 43.187309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363216, 37.797779, 43.342129>,  <37.079014, 37.713997, 43.082573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363216, 37.797779, 43.342129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442879, 37.414528, 43.424431>,  <36.490677, 37.184578, 43.473812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442879, 37.414528, 43.424431>,  <36.363216, 37.797779, 43.342129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442879, 37.414528, 43.424431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408322, 0.109735, 0.906218,
		-0.890848, -0.264495, -0.369368,
		0.199158, -0.958123, 0.205757,
		36.502625, 37.127090, 43.486156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734905, 37.490746, 43.405193>,  <36.363216, 37.797779, 43.342129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734905, 37.490746, 43.405193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.007011, 37.303799, 43.631042>,  <36.170277, 37.191631, 43.766552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.007011, 37.303799, 43.631042>,  <35.734905, 37.490746, 43.405193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007011, 37.303799, 43.631042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474439, 0.306407, 0.825241,
		-0.558697, -0.829265, -0.013299,
		0.680269, -0.467369, 0.564624,
		36.211094, 37.163589, 43.800430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405670, 37.159206, 43.893970>,  <35.734905, 37.490746, 43.405193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405670, 37.159206, 43.893970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.773956, 37.132412, 44.047745>,  <35.994930, 37.116337, 44.140007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.773956, 37.132412, 44.047745>,  <35.405670, 37.159206, 43.893970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773956, 37.132412, 44.047745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343112, 0.330296, 0.879306,
		-0.185877, -0.941497, 0.281127,
		0.920719, -0.066985, 0.384433,
		36.050171, 37.112316, 44.163074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321316, 36.936153, 44.598408>,  <35.405670, 37.159206, 43.893970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321316, 36.936153, 44.598408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.698277, 37.069798, 44.604675>,  <35.924454, 37.149982, 44.608437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.698277, 37.069798, 44.604675>,  <35.321316, 36.936153, 44.598408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698277, 37.069798, 44.604675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125577, 0.310009, 0.942404,
		0.310009, -0.890093, 0.334110,
		-0.942404, -0.334110, -0.015670,
		35.980999, 37.170029, 44.609375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640915, 36.656372, 45.142612>,  <35.321316, 36.936153, 44.598408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640915, 36.656372, 45.142612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892792, 36.960258, 45.077728>,  <36.043919, 37.142590, 45.038795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892792, 36.960258, 45.077728>,  <35.640915, 36.656372, 45.142612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892792, 36.960258, 45.077728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057039, 0.163032, 0.984971,
		0.774746, -0.629483, 0.059327,
		0.629695, 0.759718, -0.162213,
		36.081699, 37.188175, 45.029064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149342, 36.468815, 45.585735>,  <35.640915, 36.656372, 45.142612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149342, 36.468815, 45.585735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.163944, 36.859024, 45.499004>,  <36.172707, 37.093151, 45.446968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.163944, 36.859024, 45.499004>,  <36.149342, 36.468815, 45.585735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163944, 36.859024, 45.499004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205464, 0.205008, 0.956951,
		0.977984, -0.079483, -0.192952,
		0.036505, 0.975528, -0.216825,
		36.174896, 37.151684, 45.433956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748444, 36.729927, 45.867905>,  <36.149342, 36.468815, 45.585735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748444, 36.729927, 45.867905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.537434, 37.066254, 45.819321>,  <36.410828, 37.268047, 45.790169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.537434, 37.066254, 45.819321>,  <36.748444, 36.729927, 45.867905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537434, 37.066254, 45.819321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015503, 0.133421, 0.990938,
		0.849400, 0.524625, -0.057348,
		-0.527522, 0.840814, -0.121461,
		36.379177, 37.318497, 45.782883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154034, 37.273323, 46.243694>,  <36.748444, 36.729927, 45.867905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154034, 37.273323, 46.243694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.773304, 37.390099, 46.206146>,  <36.544868, 37.460163, 46.183617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.773304, 37.390099, 46.206146>,  <37.154034, 37.273323, 46.243694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773304, 37.390099, 46.206146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046254, 0.165919, 0.985054,
		0.303148, 0.941936, -0.144422,
		-0.951820, 0.291938, -0.093867,
		36.487759, 37.477680, 46.177986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187569, 37.833118, 46.630608>,  <37.154034, 37.273323, 46.243694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187569, 37.833118, 46.630608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795475, 37.755283, 46.616337>,  <36.560219, 37.708584, 46.607773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795475, 37.755283, 46.616337>,  <37.187569, 37.833118, 46.630608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795475, 37.755283, 46.616337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084837, 0.250540, 0.964382,
		-0.178719, 0.948348, -0.262097,
		-0.980236, -0.194589, -0.035679,
		36.501404, 37.696907, 46.605633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.830988, 35.741287, 48.324032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.217159, 35.665714, 48.252193>,  <32.448860, 35.620369, 48.209091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.217159, 35.665714, 48.252193>,  <31.830988, 35.741287, 48.324032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217159, 35.665714, 48.252193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160547, 0.111825, -0.980673,
		0.205365, 0.975602, 0.077626,
		0.965427, -0.188933, -0.179595,
		32.506786, 35.609035, 48.198315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026863, 36.263741, 47.948051>,  <31.830988, 35.741287, 48.324032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026863, 36.263741, 47.948051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326889, 36.013855, 47.861206>,  <32.506905, 35.863926, 47.809101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326889, 36.013855, 47.861206>,  <32.026863, 36.263741, 47.948051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326889, 36.013855, 47.861206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133779, 0.178179, -0.974862,
		0.647691, 0.760255, 0.050073,
		0.750066, -0.624711, -0.217111,
		32.551910, 35.826443, 47.796074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324318, 36.552914, 47.517738>,  <32.026863, 36.263741, 47.948051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324318, 36.552914, 47.517738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.454643, 36.182793, 47.440117>,  <32.532837, 35.960720, 47.393543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.454643, 36.182793, 47.440117>,  <32.324318, 36.552914, 47.517738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454643, 36.182793, 47.440117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153389, 0.150795, -0.976592,
		0.932908, 0.347952, -0.092800,
		0.325813, -0.925306, -0.194050,
		32.552387, 35.905201, 47.381901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977299, 36.581863, 47.062996>,  <32.324318, 36.552914, 47.517738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977299, 36.581863, 47.062996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.802883, 36.226978, 47.002693>,  <32.698235, 36.014050, 46.966511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.802883, 36.226978, 47.002693>,  <32.977299, 36.581863, 47.062996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802883, 36.226978, 47.002693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216972, 0.058937, -0.974397,
		0.873381, -0.457584, 0.166801,
		-0.436038, -0.887211, -0.150757,
		32.672073, 35.960815, 46.957466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371494, 36.355068, 46.444134>,  <32.977299, 36.581863, 47.062996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371494, 36.355068, 46.444134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.099556, 36.062870, 46.470020>,  <32.936394, 35.887550, 46.485554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.099556, 36.062870, 46.470020>,  <33.371494, 36.355068, 46.444134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099556, 36.062870, 46.470020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058889, -0.142344, -0.988064,
		0.730984, -0.667923, 0.139790,
		-0.679849, -0.730491, 0.064717,
		32.895599, 35.843723, 46.489437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616268, 35.762390, 46.054054>,  <33.371494, 36.355068, 46.444134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616268, 35.762390, 46.054054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217747, 35.729748, 46.064812>,  <32.978634, 35.710163, 46.071266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217747, 35.729748, 46.064812>,  <33.616268, 35.762390, 46.054054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217747, 35.729748, 46.064812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020004, -0.084075, -0.996259,
		0.083568, -0.993112, 0.082132,
		-0.996301, -0.081612, 0.026892,
		32.918858, 35.705265, 46.072880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361420, 35.106964, 45.723156>,  <33.616268, 35.762390, 46.054054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361420, 35.106964, 45.723156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.056957, 35.365391, 45.700397>,  <32.874279, 35.520447, 45.686745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.056957, 35.365391, 45.700397>,  <33.361420, 35.106964, 45.723156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056957, 35.365391, 45.700397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088836, -0.190749, -0.977611,
		-0.642453, -0.739062, 0.202584,
		-0.761158, 0.646066, -0.056892,
		32.828609, 35.559212, 45.683331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933422, 34.801319, 45.332844>,  <33.361420, 35.106964, 45.723156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933422, 34.801319, 45.332844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.828289, 35.184540, 45.287155>,  <32.765209, 35.414474, 45.259743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.828289, 35.184540, 45.287155>,  <32.933422, 34.801319, 45.332844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828289, 35.184540, 45.287155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050597, -0.104533, -0.993233,
		-0.963513, -0.266837, -0.021000,
		-0.262836, 0.958056, -0.114221,
		32.749439, 35.471958, 45.252888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381470, 34.817333, 44.860355>,  <32.933422, 34.801319, 45.332844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381470, 34.817333, 44.860355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.551243, 35.179398, 44.851055>,  <32.653107, 35.396637, 44.845474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.551243, 35.179398, 44.851055>,  <32.381470, 34.817333, 44.860355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551243, 35.179398, 44.851055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070389, -0.058588, -0.995798,
		-0.902718, 0.421015, -0.088580,
		0.424435, 0.905160, -0.023254,
		32.678574, 35.450947, 44.844078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094715, 35.190651, 44.314663>,  <32.381470, 34.817333, 44.860355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094715, 35.190651, 44.314663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.430496, 35.400097, 44.372833>,  <32.631966, 35.525764, 44.407738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.430496, 35.400097, 44.372833>,  <32.094715, 35.190651, 44.314663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430496, 35.400097, 44.372833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098330, 0.116842, -0.988271,
		-0.534463, 0.843907, 0.046597,
		0.839453, 0.523612, 0.145429,
		32.682331, 35.557182, 44.416462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147858, 35.619186, 43.780758>,  <32.094715, 35.190651, 44.314663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147858, 35.619186, 43.780758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.515385, 35.668011, 43.930893>,  <32.735901, 35.697304, 44.020973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.515385, 35.668011, 43.930893>,  <32.147858, 35.619186, 43.780758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515385, 35.668011, 43.930893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353642, 0.167686, -0.920228,
		-0.175259, 0.978255, 0.110908,
		0.918815, 0.122057, 0.375340,
		32.791031, 35.704628, 44.043495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367523, 36.240417, 43.442070>,  <32.147858, 35.619186, 43.780758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367523, 36.240417, 43.442070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.691044, 36.041683, 43.567924>,  <32.885155, 35.922443, 43.643436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.691044, 36.041683, 43.567924>,  <32.367523, 36.240417, 43.442070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691044, 36.041683, 43.567924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477946, 0.243602, -0.843935,
		0.342652, 0.832953, 0.434486,
		0.808800, -0.496837, 0.314637,
		32.933685, 35.892632, 43.662315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918510, 36.788818, 43.528679>,  <32.367523, 36.240417, 43.442070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918510, 36.788818, 43.528679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050861, 36.417316, 43.461819>,  <33.130272, 36.194416, 43.421703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050861, 36.417316, 43.461819>,  <32.918510, 36.788818, 43.528679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050861, 36.417316, 43.461819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331306, 0.280182, -0.900963,
		0.883604, 0.242730, 0.400407,
		0.330878, -0.928752, -0.167152,
		33.150124, 36.138691, 43.411674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474354, 36.846470, 43.131832>,  <32.918510, 36.788818, 43.528679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474354, 36.846470, 43.131832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.378906, 36.462658, 43.072025>,  <33.321640, 36.232368, 43.036140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.378906, 36.462658, 43.072025>,  <33.474354, 36.846470, 43.131832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378906, 36.462658, 43.072025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131976, 0.120497, -0.983902,
		0.962104, -0.254507, 0.097883,
		-0.238616, -0.959535, -0.149520,
		33.307320, 36.174797, 43.027168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587147, 37.528034, 42.887035>,  <33.474354, 36.846470, 43.131832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587147, 37.528034, 42.887035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.543629, 37.910912, 42.779751>,  <33.517517, 38.140640, 42.715378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.543629, 37.910912, 42.779751>,  <33.587147, 37.528034, 42.887035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543629, 37.910912, 42.779751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045406, 0.274320, 0.960566,
		0.993027, 0.092326, -0.073308,
		-0.108795, 0.957196, -0.268215,
		33.510990, 38.198071, 42.699287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986996, 37.802517, 43.309723>,  <33.587147, 37.528034, 42.887035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986996, 37.802517, 43.309723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792278, 38.132332, 43.194363>,  <33.675449, 38.330219, 43.125145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792278, 38.132332, 43.194363>,  <33.986996, 37.802517, 43.309723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792278, 38.132332, 43.194363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059874, 0.297889, 0.952721,
		0.871463, 0.481046, -0.095642,
		-0.486793, 0.824534, -0.288402,
		33.646240, 38.379692, 43.107841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333363, 38.403347, 43.593319>,  <33.986996, 37.802517, 43.309723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333363, 38.403347, 43.593319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948833, 38.491222, 43.526882>,  <33.718117, 38.543945, 43.487019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948833, 38.491222, 43.526882>,  <34.333363, 38.403347, 43.593319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948833, 38.491222, 43.526882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112283, 0.238062, 0.964738,
		0.251480, 0.946079, -0.204188,
		-0.961327, 0.219685, -0.166097,
		33.660435, 38.557129, 43.477055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219395, 39.005596, 43.994610>,  <34.333363, 38.403347, 43.593319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219395, 39.005596, 43.994610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.866390, 38.839359, 43.906563>,  <33.654587, 38.739616, 43.853733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.866390, 38.839359, 43.906563>,  <34.219395, 39.005596, 43.994610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866390, 38.839359, 43.906563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336666, 0.231481, 0.912728,
		-0.328366, 0.879604, -0.344200,
		-0.882515, -0.415589, -0.220122,
		33.601635, 38.714684, 43.840527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683323, 39.473545, 44.286526>,  <34.219395, 39.005596, 43.994610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683323, 39.473545, 44.286526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492485, 39.126408, 44.231056>,  <33.377983, 38.918125, 44.197777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492485, 39.126408, 44.231056>,  <33.683323, 39.473545, 44.286526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492485, 39.126408, 44.231056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313164, 0.020445, 0.949479,
		-0.821163, 0.496418, -0.281532,
		-0.477094, -0.867843, -0.138671,
		33.349358, 38.866055, 44.189453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977028, 39.521038, 44.423512>,  <33.683323, 39.473545, 44.286526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977028, 39.521038, 44.423512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063713, 39.132149, 44.458870>,  <33.115723, 38.898815, 44.480087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063713, 39.132149, 44.458870>,  <32.977028, 39.521038, 44.423512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063713, 39.132149, 44.458870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155502, 0.055019, 0.986302,
		-0.963772, -0.227486, -0.139260,
		0.216708, -0.972226, 0.088401,
		33.128727, 38.840481, 44.485390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419445, 39.228966, 44.768738>,  <32.977028, 39.521038, 44.423512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419445, 39.228966, 44.768738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724239, 38.979416, 44.838211>,  <32.907116, 38.829685, 44.879894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724239, 38.979416, 44.838211>,  <32.419445, 39.228966, 44.768738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724239, 38.979416, 44.838211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226989, -0.006122, 0.973878,
		-0.606512, -0.781502, -0.146277,
		0.761983, -0.623872, 0.173679,
		32.952835, 38.792255, 44.890316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102448, 38.874313, 45.274521>,  <32.419445, 39.228966, 44.768738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102448, 38.874313, 45.274521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.493679, 38.797058, 45.305656>,  <32.728416, 38.750706, 45.324337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.493679, 38.797058, 45.305656>,  <32.102448, 38.874313, 45.274521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493679, 38.797058, 45.305656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124926, -0.245215, 0.961386,
		-0.166590, -0.950036, -0.263967,
		0.978080, -0.193133, 0.077834,
		32.787102, 38.739117, 45.329006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254807, 38.174477, 45.603271>,  <32.102448, 38.874313, 45.274521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254807, 38.174477, 45.603271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.588257, 38.381119, 45.681442>,  <32.788326, 38.505104, 45.728344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.588257, 38.381119, 45.681442>,  <32.254807, 38.174477, 45.603271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588257, 38.381119, 45.681442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034438, -0.304511, 0.951886,
		0.551258, -0.800245, -0.236057,
		0.833624, 0.516605, 0.195423,
		32.838345, 38.536102, 45.740070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604828, 37.720772, 46.011017>,  <32.254807, 38.174477, 45.603271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604828, 37.720772, 46.011017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.817524, 38.055508, 46.063107>,  <32.945141, 38.256348, 46.094360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.817524, 38.055508, 46.063107>,  <32.604828, 37.720772, 46.011017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817524, 38.055508, 46.063107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082460, -0.204195, 0.975451,
		0.842884, -0.507947, -0.177584,
		0.531739, 0.836836, 0.130227,
		32.977047, 38.306557, 46.102173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233864, 37.482319, 46.343544>,  <32.604828, 37.720772, 46.011017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233864, 37.482319, 46.343544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.172405, 37.871677, 46.411537>,  <33.135529, 38.105293, 46.452332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.172405, 37.871677, 46.411537>,  <33.233864, 37.482319, 46.343544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172405, 37.871677, 46.411537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160907, -0.145079, 0.976248,
		0.974937, 0.177349, -0.134335,
		-0.153647, 0.973396, 0.169979,
		33.126312, 38.163696, 46.462532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701050, 37.625038, 46.870487>,  <33.233864, 37.482319, 46.343544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701050, 37.625038, 46.870487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.447155, 37.931896, 46.907566>,  <33.294819, 38.116013, 46.929813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.447155, 37.931896, 46.907566>,  <33.701050, 37.625038, 46.870487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447155, 37.931896, 46.907566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311314, 0.144081, 0.939321,
		0.707244, 0.625078, -0.330278,
		-0.634736, 0.767149, 0.092696,
		33.256733, 38.162041, 46.935375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090698, 38.349678, 46.934582>,  <33.701050, 37.625038, 46.870487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090698, 38.349678, 46.934582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.744553, 38.454170, 47.105648>,  <33.536865, 38.516865, 47.208286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.744553, 38.454170, 47.105648>,  <34.090698, 38.349678, 46.934582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744553, 38.454170, 47.105648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466638, 0.108898, 0.877719,
		0.182717, 0.959114, -0.216138,
		-0.865369, 0.261232, 0.427662,
		33.484943, 38.532539, 47.233948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132782, 38.923428, 47.431023>,  <34.090698, 38.349678, 46.934582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132782, 38.923428, 47.431023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788815, 38.747894, 47.535297>,  <33.582436, 38.642574, 47.597862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788815, 38.747894, 47.535297>,  <34.132782, 38.923428, 47.431023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788815, 38.747894, 47.535297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250210, 0.082751, 0.964649,
		-0.444896, 0.894748, 0.038642,
		-0.859920, -0.438837, 0.260690,
		33.530838, 38.616241, 47.613506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871319, 39.570091, 47.097675>,  <34.132782, 38.923428, 47.431023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871319, 39.570091, 47.097675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.108265, 39.888794, 47.145473>,  <34.250431, 40.080017, 47.174152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.108265, 39.888794, 47.145473>,  <33.871319, 39.570091, 47.097675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108265, 39.888794, 47.145473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002341, 0.146613, -0.989191,
		-0.805668, 0.586240, 0.084983,
		0.592363, 0.796760, 0.119494,
		34.285973, 40.127823, 47.181320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626587, 40.112740, 46.699593>,  <33.871319, 39.570091, 47.097675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626587, 40.112740, 46.699593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.007702, 40.222034, 46.752575>,  <34.236370, 40.287609, 46.784367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.007702, 40.222034, 46.752575>,  <33.626587, 40.112740, 46.699593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007702, 40.222034, 46.752575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095998, 0.142794, -0.985086,
		-0.288074, 0.951290, 0.109822,
		0.952784, 0.273235, 0.132458,
		34.293537, 40.304005, 46.792313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743519, 40.712296, 46.199501>,  <33.626587, 40.112740, 46.699593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743519, 40.712296, 46.199501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.102669, 40.572117, 46.306087>,  <34.318157, 40.488010, 46.370041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.102669, 40.572117, 46.306087>,  <33.743519, 40.712296, 46.199501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102669, 40.572117, 46.306087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329237, 0.132675, -0.934880,
		0.292274, 0.927137, 0.234506,
		0.897875, -0.350449, 0.266470,
		34.372032, 40.466984, 46.386028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271278, 41.261494, 46.083111>,  <33.743519, 40.712296, 46.199501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271278, 41.261494, 46.083111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.462982, 40.910515, 46.091122>,  <34.578003, 40.699928, 46.095928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.462982, 40.910515, 46.091122>,  <34.271278, 41.261494, 46.083111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462982, 40.910515, 46.091122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524251, 0.267893, -0.808328,
		0.703897, 0.397900, 0.588391,
		0.479260, -0.877444, 0.020030,
		34.606762, 40.647282, 46.097130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029633, 41.391113, 45.819263>,  <34.271278, 41.261494, 46.083111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029633, 41.391113, 45.819263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.959309, 40.999104, 45.782082>,  <34.917114, 40.763897, 45.759773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.959309, 40.999104, 45.782082>,  <35.029633, 41.391113, 45.819263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959309, 40.999104, 45.782082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467053, 0.000081, -0.884229,
		0.866575, -0.198869, 0.457710,
		-0.175809, -0.980026, -0.092953,
		34.906567, 40.705097, 45.754196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618011, 41.057961, 45.508270>,  <35.029633, 41.391113, 45.819263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618011, 41.057961, 45.508270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.344879, 40.779144, 45.420742>,  <35.181000, 40.611855, 45.368225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.344879, 40.779144, 45.420742>,  <35.618011, 41.057961, 45.508270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344879, 40.779144, 45.420742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446870, -0.161537, -0.879894,
		0.577973, -0.698600, 0.421788,
		-0.682828, -0.697039, -0.218820,
		35.140030, 40.570034, 45.355095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954880, 40.463772, 45.214211>,  <35.618011, 41.057961, 45.508270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954880, 40.463772, 45.214211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576397, 40.441608, 45.086697>,  <35.349308, 40.428310, 45.010189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576397, 40.441608, 45.086697>,  <35.954880, 40.463772, 45.214211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576397, 40.441608, 45.086697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317794, 0.026126, -0.947800,
		0.060850, -0.998121, -0.007110,
		-0.946205, -0.055414, -0.318787,
		35.292534, 40.424984, 44.991062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990681, 39.939301, 44.652325>,  <35.954880, 40.463772, 45.214211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990681, 39.939301, 44.652325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.635853, 40.117657, 44.604515>,  <35.422955, 40.224670, 44.575829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.635853, 40.117657, 44.604515>,  <35.990681, 39.939301, 44.652325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635853, 40.117657, 44.604515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159705, 0.053500, -0.985714,
		-0.433123, -0.893488, -0.118669,
		-0.887073, 0.445888, -0.119523,
		35.369732, 40.251423, 44.568657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799477, 39.563404, 44.144260>,  <35.990681, 39.939301, 44.652325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799477, 39.563404, 44.144260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.611019, 39.915512, 44.166737>,  <35.497944, 40.126778, 44.180222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.611019, 39.915512, 44.166737>,  <35.799477, 39.563404, 44.144260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611019, 39.915512, 44.166737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265604, 0.202324, -0.942613,
		-0.841119, -0.429180, -0.329125,
		-0.471141, 0.880267, 0.056186,
		35.469677, 40.179592, 44.183594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351608, 39.566956, 43.549438>,  <35.799477, 39.563404, 44.144260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351608, 39.566956, 43.549438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389881, 39.947750, 43.665760>,  <35.412846, 40.176228, 43.735554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389881, 39.947750, 43.665760>,  <35.351608, 39.566956, 43.549438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389881, 39.947750, 43.665760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146080, 0.275552, -0.950122,
		-0.984635, 0.133386, -0.112702,
		0.095678, 0.951987, 0.290803,
		35.418583, 40.233345, 43.753002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888794, 39.943462, 43.146862>,  <35.351608, 39.566956, 43.549438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888794, 39.943462, 43.146862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.167614, 40.197609, 43.279789>,  <35.334904, 40.350098, 43.359547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.167614, 40.197609, 43.279789>,  <34.888794, 39.943462, 43.146862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167614, 40.197609, 43.279789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128395, 0.345380, -0.929638,
		-0.705437, 0.690670, 0.159168,
		0.697047, 0.635365, 0.332322,
		35.376728, 40.388218, 43.379486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677044, 40.623211, 42.890049>,  <34.888794, 39.943462, 43.146862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677044, 40.623211, 42.890049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.067970, 40.641613, 42.972733>,  <35.302528, 40.652653, 43.022343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.067970, 40.641613, 42.972733>,  <34.677044, 40.623211, 42.890049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067970, 40.641613, 42.972733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185070, 0.288897, -0.939302,
		-0.102932, 0.956254, 0.273830,
		0.977320, 0.046006, 0.206710,
		35.361168, 40.655415, 43.034744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952133, 41.120384, 42.537769>,  <34.677044, 40.623211, 42.890049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952133, 41.120384, 42.537769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278427, 40.913437, 42.641228>,  <35.474205, 40.789268, 42.703304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278427, 40.913437, 42.641228>,  <34.952133, 41.120384, 42.537769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278427, 40.913437, 42.641228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337059, 0.061778, -0.939454,
		0.470069, 0.853527, 0.224779,
		0.815736, -0.517373, 0.258649,
		35.523148, 40.758224, 42.718822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520020, 41.499428, 42.287876>,  <34.952133, 41.120384, 42.537769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520020, 41.499428, 42.287876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.645523, 41.121281, 42.323288>,  <35.720825, 40.894394, 42.344536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.645523, 41.121281, 42.323288>,  <35.520020, 41.499428, 42.287876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645523, 41.121281, 42.323288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558209, 0.108233, -0.822611,
		0.768088, 0.307515, 0.561672,
		0.313756, -0.945368, 0.088525,
		35.739651, 40.837669, 42.349846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.162397, 42.475559, 32.874367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.958939, 42.263817, 32.602760>,  <26.836863, 42.136772, 32.439796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.958939, 42.263817, 32.602760>,  <27.162397, 42.475559, 32.874367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958939, 42.263817, 32.602760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390772, -0.560803, 0.729930,
		-0.767187, 0.636615, 0.078392,
		-0.508647, -0.529359, -0.679012,
		26.806345, 42.105011, 32.399055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498966, 42.307850, 33.259769>,  <27.162397, 42.475559, 32.874367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498966, 42.307850, 33.259769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.511803, 42.067249, 32.940479>,  <26.519505, 41.922890, 32.748905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.511803, 42.067249, 32.940479>,  <26.498966, 42.307850, 33.259769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511803, 42.067249, 32.940479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413949, -0.734922, 0.537155,
		-0.909734, 0.313189, -0.272573,
		0.032089, -0.601499, -0.798228,
		26.521429, 41.886799, 32.701012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874544, 41.849693, 33.246006>,  <26.498966, 42.307850, 33.259769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874544, 41.849693, 33.246006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.153353, 41.658901, 33.031845>,  <26.320639, 41.544426, 32.903347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.153353, 41.658901, 33.031845>,  <25.874544, 41.849693, 33.246006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153353, 41.658901, 33.031845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393627, -0.878632, 0.270304,
		-0.599349, 0.022340, -0.800176,
		0.697022, -0.476977, -0.535401,
		26.362459, 41.515808, 32.871223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501831, 41.369106, 32.838455>,  <25.874544, 41.849693, 33.246006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.501831, 41.369106, 32.838455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.874138, 41.243725, 32.913738>,  <26.097523, 41.168495, 32.958908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.874138, 41.243725, 32.913738>,  <25.501831, 41.369106, 32.838455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874138, 41.243725, 32.913738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360087, -0.875068, 0.323409,
		0.063320, -0.368788, -0.927354,
		0.930767, -0.313450, 0.188205,
		26.153368, 41.149689, 32.970200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487749, 40.625744, 32.672241>,  <25.501831, 41.369106, 32.838455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487749, 40.625744, 32.672241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.818281, 40.666451, 32.893806>,  <26.016602, 40.690872, 33.026745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.818281, 40.666451, 32.893806>,  <25.487749, 40.625744, 32.672241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818281, 40.666451, 32.893806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117278, -0.930884, 0.345978,
		0.550837, -0.350855, -0.757285,
		0.826332, 0.101765, 0.553913,
		26.066181, 40.696980, 33.059978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828703, 39.992207, 32.614761>,  <25.487749, 40.625744, 32.672241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828703, 39.992207, 32.614761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.012131, 40.134480, 32.940510>,  <26.122187, 40.219845, 33.135960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.012131, 40.134480, 32.940510>,  <25.828703, 39.992207, 32.614761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012131, 40.134480, 32.940510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084293, -0.929686, 0.358579,
		0.884653, -0.095786, -0.456305,
		0.458567, 0.355681, 0.814375,
		26.149700, 40.241184, 33.184822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284252, 39.508839, 32.828335>,  <25.828703, 39.992207, 32.614761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284252, 39.508839, 32.828335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.272923, 39.726891, 33.163486>,  <26.266125, 39.857719, 33.364578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.272923, 39.726891, 33.163486>,  <26.284252, 39.508839, 32.828335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272923, 39.726891, 33.163486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047399, -0.836536, 0.545858,
		0.998474, 0.055177, -0.002143,
		-0.028326, 0.545127, 0.837875,
		26.264425, 39.890427, 33.414848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923948, 39.345219, 33.266758>,  <26.284252, 39.508839, 32.828335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923948, 39.345219, 33.266758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.629272, 39.489880, 33.495319>,  <26.452467, 39.576675, 33.632458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.629272, 39.489880, 33.495319>,  <26.923948, 39.345219, 33.266758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629272, 39.489880, 33.495319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002226, -0.846270, 0.532749,
		0.676230, 0.391198, 0.624242,
		-0.736687, 0.361650, 0.571402,
		26.408266, 39.598373, 33.666740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195850, 39.377872, 33.933121>,  <26.923948, 39.345219, 33.266758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195850, 39.377872, 33.933121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.797951, 39.352905, 33.965565>,  <26.559212, 39.337925, 33.985031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.797951, 39.352905, 33.965565>,  <27.195850, 39.377872, 33.933121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797951, 39.352905, 33.965565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098772, -0.793107, 0.601020,
		0.026810, 0.605875, 0.795108,
		-0.994749, -0.062420, 0.081107,
		26.499527, 39.334179, 33.989899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145481, 39.275860, 34.542747>,  <27.195850, 39.377872, 33.933121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145481, 39.275860, 34.542747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.798054, 39.134083, 34.404209>,  <26.589598, 39.049015, 34.321087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.798054, 39.134083, 34.404209>,  <27.145481, 39.275860, 34.542747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798054, 39.134083, 34.404209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047109, -0.754780, 0.654285,
		-0.493325, 0.551975, 0.672276,
		-0.868569, -0.354445, -0.346349,
		26.537483, 39.027748, 34.300304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963127, 38.955219, 35.139946>,  <27.145481, 39.275860, 34.542747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963127, 38.955219, 35.139946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688618, 38.830898, 34.876907>,  <26.523912, 38.756306, 34.719086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688618, 38.830898, 34.876907>,  <26.963127, 38.955219, 35.139946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688618, 38.830898, 34.876907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007117, -0.901190, 0.433366,
		-0.727309, 0.302088, 0.616251,
		-0.686273, -0.310805, -0.657594,
		26.482737, 38.737656, 34.679630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433725, 38.582973, 35.569462>,  <26.963127, 38.955219, 35.139946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433725, 38.582973, 35.569462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.389168, 38.465046, 35.189846>,  <26.362434, 38.394287, 34.962078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.389168, 38.465046, 35.189846>,  <26.433725, 38.582973, 35.569462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389168, 38.465046, 35.189846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124419, -0.943329, 0.307653,
		-0.985957, 0.152348, 0.068398,
		-0.111392, -0.294823, -0.949037,
		26.355751, 38.376598, 34.905136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027916, 38.084824, 35.601894>,  <26.433725, 38.582973, 35.569462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027916, 38.084824, 35.601894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.197762, 38.033382, 35.243416>,  <26.299669, 38.002518, 35.028328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.197762, 38.033382, 35.243416>,  <26.027916, 38.084824, 35.601894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197762, 38.033382, 35.243416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170351, -0.960833, 0.218588,
		-0.889203, -0.245483, -0.386078,
		0.424616, -0.128601, -0.896194,
		26.325146, 37.994801, 34.974556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782164, 37.377274, 35.421822>,  <26.027916, 38.084824, 35.601894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782164, 37.377274, 35.421822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098320, 37.435215, 35.183731>,  <26.288013, 37.469978, 35.040874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098320, 37.435215, 35.183731>,  <25.782164, 37.377274, 35.421822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098320, 37.435215, 35.183731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168810, -0.985524, -0.015675,
		-0.588883, -0.088091, -0.803403,
		0.790392, 0.144853, -0.595229,
		26.335438, 37.478672, 35.005161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776417, 36.817047, 35.084450>,  <25.782164, 37.377274, 35.421822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776417, 36.817047, 35.084450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.145441, 36.951668, 35.008961>,  <26.366856, 37.032440, 34.963669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.145441, 36.951668, 35.008961>,  <25.776417, 36.817047, 35.084450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145441, 36.951668, 35.008961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357586, -0.929488, 0.090470,
		-0.144964, -0.150947, -0.977855,
		0.922560, 0.336552, -0.188719,
		26.422209, 37.052635, 34.952347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034601, 36.353977, 34.679996>,  <25.776417, 36.817047, 35.084450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034601, 36.353977, 34.679996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.369749, 36.526226, 34.814182>,  <26.570839, 36.629578, 34.894691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.369749, 36.526226, 34.814182>,  <26.034601, 36.353977, 34.679996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369749, 36.526226, 34.814182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409409, -0.902219, 0.135592,
		0.361047, 0.023732, -0.932245,
		0.837871, 0.430625, 0.335460,
		26.621111, 36.655415, 34.914822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491508, 35.889778, 34.480583>,  <26.034601, 36.353977, 34.679996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491508, 35.889778, 34.480583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.682980, 36.095882, 34.764942>,  <26.797863, 36.219543, 34.935558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.682980, 36.095882, 34.764942>,  <26.491508, 35.889778, 34.480583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682980, 36.095882, 34.764942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455607, -0.837913, 0.300539,
		0.750526, 0.180029, -0.635846,
		0.478678, 0.515258, 0.710898,
		26.826582, 36.250462, 34.978210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203257, 35.629650, 34.496223>,  <26.491508, 35.889778, 34.480583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203257, 35.629650, 34.496223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.149035, 35.779579, 34.863075>,  <27.116501, 35.869537, 35.083187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.149035, 35.779579, 34.863075>,  <27.203257, 35.629650, 34.496223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149035, 35.779579, 34.863075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228727, -0.888831, 0.397067,
		0.964007, 0.263598, 0.034753,
		-0.135556, 0.374827, 0.917131,
		27.108368, 35.892029, 35.138214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769833, 35.428654, 34.886143>,  <27.203257, 35.629650, 34.496223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769833, 35.428654, 34.886143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.486025, 35.493393, 35.160480>,  <27.315741, 35.532238, 35.325085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.486025, 35.493393, 35.160480>,  <27.769833, 35.428654, 34.886143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486025, 35.493393, 35.160480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154848, -0.913671, 0.375802,
		0.687460, 0.372842, 0.623207,
		-0.709521, 0.161847, 0.685847,
		27.273169, 35.541946, 35.366234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942230, 34.983402, 35.500393>,  <27.769833, 35.428654, 34.886143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942230, 34.983402, 35.500393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.560987, 35.085377, 35.565628>,  <27.332243, 35.146561, 35.604767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.560987, 35.085377, 35.565628>,  <27.942230, 34.983402, 35.500393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560987, 35.085377, 35.565628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181087, -0.912172, 0.367628,
		0.242484, 0.320855, 0.915562,
		-0.953105, 0.254940, 0.163084,
		27.275057, 35.161858, 35.614552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279718, 35.681652, 35.392216>,  <27.942230, 34.983402, 35.500393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279718, 35.681652, 35.392216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667849, 35.612549, 35.324543>,  <28.900726, 35.571087, 35.283939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667849, 35.612549, 35.324543>,  <28.279718, 35.681652, 35.392216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667849, 35.612549, 35.324543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074721, 0.451206, -0.889286,
		0.229963, 0.875540, 0.424909,
		0.970327, -0.172754, -0.169182,
		28.958946, 35.560722, 35.273788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498856, 36.243637, 35.054848>,  <28.279718, 35.681652, 35.392216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498856, 36.243637, 35.054848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777088, 35.965748, 34.981609>,  <28.944027, 35.799015, 34.937668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777088, 35.965748, 34.981609>,  <28.498856, 36.243637, 35.054848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777088, 35.965748, 34.981609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158285, 0.396773, -0.904166,
		0.700796, 0.599939, 0.385952,
		0.695580, -0.694726, -0.183095,
		28.985762, 35.757332, 34.926682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200390, 36.478001, 35.031204>,  <28.498856, 36.243637, 35.054848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200390, 36.478001, 35.031204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239351, 36.152954, 34.801365>,  <29.262728, 35.957924, 34.663464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239351, 36.152954, 34.801365>,  <29.200390, 36.478001, 35.031204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239351, 36.152954, 34.801365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182356, 0.582140, -0.792376,
		0.978396, -0.027601, 0.204889,
		0.097404, -0.812620, -0.574597,
		29.268572, 35.909168, 34.628986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784458, 36.594845, 34.693542>,  <29.200390, 36.478001, 35.031204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784458, 36.594845, 34.693542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606581, 36.327518, 34.455013>,  <29.499855, 36.167122, 34.311897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606581, 36.327518, 34.455013>,  <29.784458, 36.594845, 34.693542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606581, 36.327518, 34.455013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217812, 0.565097, -0.795753,
		0.868796, -0.483751, -0.105726,
		-0.444692, -0.668319, -0.596321,
		29.473173, 36.127022, 34.276115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172264, 36.481918, 34.070423>,  <29.784458, 36.594845, 34.693542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172264, 36.481918, 34.070423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805868, 36.352898, 33.974987>,  <29.586031, 36.275486, 33.917725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805868, 36.352898, 33.974987>,  <30.172264, 36.481918, 34.070423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805868, 36.352898, 33.974987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098251, 0.396239, -0.912875,
		0.388957, -0.859636, -0.331268,
		-0.916001, -0.322522, -0.238581,
		29.531071, 36.256134, 33.903408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326576, 36.308826, 33.356735>,  <30.172264, 36.481918, 34.070423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326576, 36.308826, 33.356735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.927456, 36.317341, 33.381851>,  <29.687984, 36.322449, 33.396923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.927456, 36.317341, 33.381851>,  <30.326576, 36.308826, 33.356735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927456, 36.317341, 33.381851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052809, 0.317537, -0.946774,
		-0.040093, -0.948007, -0.315714,
		-0.997800, 0.021287, 0.062795,
		29.628117, 36.323727, 33.400688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135124, 36.327015, 32.671127>,  <30.326576, 36.308826, 33.356735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135124, 36.327015, 32.671127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.812250, 36.444256, 32.876083>,  <29.618526, 36.514599, 32.999058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.812250, 36.444256, 32.876083>,  <30.135124, 36.327015, 32.671127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812250, 36.444256, 32.876083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260760, 0.601686, -0.754969,
		-0.529582, -0.743010, -0.409242,
		-0.807185, 0.293104, 0.512389,
		29.570095, 36.532188, 33.029800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628279, 36.408672, 32.131073>,  <30.135124, 36.327015, 32.671127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628279, 36.408672, 32.131073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455679, 36.591618, 32.442104>,  <29.352119, 36.701385, 32.628723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455679, 36.591618, 32.442104>,  <29.628279, 36.408672, 32.131073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455679, 36.591618, 32.442104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165831, 0.807048, -0.566722,
		-0.886741, -0.373485, -0.272395,
		-0.431498, 0.457364, 0.777578,
		29.326229, 36.728828, 32.675377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950933, 36.606243, 31.976501>,  <29.628279, 36.408672, 32.131073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950933, 36.606243, 31.976501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.071243, 36.862080, 32.259472>,  <29.143429, 37.015583, 32.429253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.071243, 36.862080, 32.259472>,  <28.950933, 36.606243, 31.976501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071243, 36.862080, 32.259472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092822, 0.718620, -0.689181,
		-0.949167, 0.272953, 0.156775,
		0.300776, 0.639595, 0.707426,
		29.161476, 37.053959, 32.471699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499063, 37.206459, 31.861113>,  <28.950933, 36.606243, 31.976501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499063, 37.206459, 31.861113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.810961, 37.341640, 32.071934>,  <28.998100, 37.422749, 32.198425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.810961, 37.341640, 32.071934>,  <28.499063, 37.206459, 31.861113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810961, 37.341640, 32.071934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048321, 0.871783, -0.487504,
		-0.624229, 0.354661, 0.696099,
		0.779745, 0.337951, 0.527055,
		29.044884, 37.443027, 32.230049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318521, 37.929016, 32.042690>,  <28.499063, 37.206459, 31.861113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318521, 37.929016, 32.042690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.712440, 37.926060, 32.112110>,  <28.948792, 37.924286, 32.153763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.712440, 37.926060, 32.112110>,  <28.318521, 37.929016, 32.042690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712440, 37.926060, 32.112110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071100, 0.928717, -0.363909,
		-0.158486, 0.370716, 0.915124,
		0.984798, -0.007391, 0.173547,
		29.007879, 37.923843, 32.164173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435577, 38.524853, 32.499619>,  <28.318521, 37.929016, 32.042690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435577, 38.524853, 32.499619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.775267, 38.423939, 32.314072>,  <28.979080, 38.363392, 32.202744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.775267, 38.423939, 32.314072>,  <28.435577, 38.524853, 32.499619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775267, 38.423939, 32.314072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031321, 0.901000, -0.432687,
		0.527102, 0.352919, 0.773053,
		0.849225, -0.252283, -0.463865,
		29.030033, 38.348255, 32.174911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868029, 39.016315, 32.711739>,  <28.435577, 38.524853, 32.499619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868029, 39.016315, 32.711739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018934, 38.879734, 32.367393>,  <29.109478, 38.797783, 32.160786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018934, 38.879734, 32.367393>,  <28.868029, 39.016315, 32.711739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018934, 38.879734, 32.367393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121995, 0.939771, -0.319293,
		0.918036, 0.015436, 0.396196,
		0.377262, -0.341457, -0.860860,
		29.132113, 38.777298, 32.109135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420334, 39.566410, 32.526840>,  <28.868029, 39.016315, 32.711739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420334, 39.566410, 32.526840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301462, 39.360283, 32.205311>,  <29.230139, 39.236607, 32.012394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301462, 39.360283, 32.205311>,  <29.420334, 39.566410, 32.526840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301462, 39.360283, 32.205311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061564, 0.850447, -0.522446,
		0.952835, -0.105773, -0.284459,
		-0.297178, -0.515318, -0.803824,
		29.212309, 39.205688, 31.964163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800842, 39.802277, 31.933699>,  <29.420334, 39.566410, 32.526840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800842, 39.802277, 31.933699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477160, 39.626743, 31.777439>,  <29.282949, 39.521423, 31.683683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477160, 39.626743, 31.777439>,  <29.800842, 39.802277, 31.933699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477160, 39.626743, 31.777439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009348, 0.655205, -0.755394,
		0.587448, -0.614922, -0.526094,
		-0.809208, -0.438837, -0.390647,
		29.234398, 39.495090, 31.660244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980740, 39.833008, 31.261055>,  <29.800842, 39.802277, 31.933699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980740, 39.833008, 31.261055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.587208, 39.763420, 31.244019>,  <29.351089, 39.721668, 31.233797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.587208, 39.763420, 31.244019>,  <29.980740, 39.833008, 31.261055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587208, 39.763420, 31.244019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097865, 0.721300, -0.685674,
		0.150009, -0.670418, -0.726662,
		-0.983829, -0.173972, -0.042591,
		29.292059, 39.711227, 31.231241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810900, 39.913746, 30.562399>,  <29.980740, 39.833008, 31.261055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810900, 39.913746, 30.562399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461178, 39.943523, 30.754255>,  <29.251345, 39.961388, 30.869370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461178, 39.943523, 30.754255>,  <29.810900, 39.913746, 30.562399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461178, 39.943523, 30.754255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238853, 0.794261, -0.558658,
		-0.422545, -0.603000, -0.676644,
		-0.874302, 0.074440, 0.479639,
		29.198887, 39.965855, 30.898148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214008, 40.157330, 30.027201>,  <29.810900, 39.913746, 30.562399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214008, 40.157330, 30.027201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073090, 40.235714, 30.393257>,  <28.988539, 40.282745, 30.612892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073090, 40.235714, 30.393257>,  <29.214008, 40.157330, 30.027201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073090, 40.235714, 30.393257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398459, 0.853375, -0.336129,
		-0.846829, -0.483063, -0.222557,
		-0.352296, 0.195964, 0.915143,
		28.967402, 40.294502, 30.667799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587240, 40.363258, 29.913391>,  <29.214008, 40.157330, 30.027201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587240, 40.363258, 29.913391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.638279, 40.491478, 30.288832>,  <28.668903, 40.568409, 30.514095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.638279, 40.491478, 30.288832>,  <28.587240, 40.363258, 29.913391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638279, 40.491478, 30.288832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410874, 0.878398, -0.244131,
		-0.902719, -0.354495, 0.243786,
		0.127598, 0.320547, 0.938599,
		28.676558, 40.587643, 30.570412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859056, 40.545673, 30.163242>,  <28.587240, 40.363258, 29.913391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859056, 40.545673, 30.163242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.154226, 40.749413, 30.340343>,  <28.331329, 40.871655, 30.446604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.154226, 40.749413, 30.340343>,  <27.859056, 40.545673, 30.163242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154226, 40.749413, 30.340343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373052, 0.854558, -0.361334,
		-0.562402, 0.101468, 0.820614,
		0.737927, 0.509347, 0.442753,
		28.375605, 40.902218, 30.473169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461403, 41.026215, 30.278894>,  <27.859056, 40.545673, 30.163242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461403, 41.026215, 30.278894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830843, 41.172741, 30.324110>,  <28.052507, 41.260658, 30.351240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830843, 41.172741, 30.324110>,  <27.461403, 41.026215, 30.278894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830843, 41.172741, 30.324110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350310, 0.926222, -0.139272,
		-0.155717, 0.089033, 0.983781,
		0.923599, 0.366315, 0.113040,
		28.107924, 41.282635, 30.358023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517115, 41.578571, 30.796713>,  <27.461403, 41.026215, 30.278894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517115, 41.578571, 30.796713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.770706, 41.599087, 30.488054>,  <27.922861, 41.611397, 30.302858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.770706, 41.599087, 30.488054>,  <27.517115, 41.578571, 30.796713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770706, 41.599087, 30.488054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392244, 0.881255, -0.263693,
		0.666494, 0.469850, 0.578815,
		0.633980, 0.051287, -0.771647,
		27.960899, 41.614471, 30.256559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.864929, 38.523968, 46.811264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584126, 38.248425, 46.883556>,  <36.415642, 38.083099, 46.926933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584126, 38.248425, 46.883556>,  <36.864929, 38.523968, 46.811264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584126, 38.248425, 46.883556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026527, 0.278892, 0.959956,
		-0.711674, 0.669104, -0.214058,
		-0.702009, -0.688854, 0.180731,
		36.373524, 38.041767, 46.937775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391510, 38.835304, 47.191189>,  <36.864929, 38.523968, 46.811264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391510, 38.835304, 47.191189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.332275, 38.445633, 47.259357>,  <36.296734, 38.211830, 47.300259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.332275, 38.445633, 47.259357>,  <36.391510, 38.835304, 47.191189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332275, 38.445633, 47.259357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187169, 0.196817, 0.962409,
		-0.971102, 0.110620, -0.211482,
		-0.148085, -0.974180, 0.170425,
		36.287849, 38.153378, 47.310486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767788, 38.825691, 47.614174>,  <36.391510, 38.835304, 47.191189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767788, 38.825691, 47.614174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985508, 38.492889, 47.657097>,  <36.116138, 38.293209, 47.682850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985508, 38.492889, 47.657097>,  <35.767788, 38.825691, 47.614174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985508, 38.492889, 47.657097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157289, 0.024435, 0.987250,
		-0.824015, -0.554235, -0.117565,
		0.544296, -0.832001, 0.107310,
		36.148796, 38.243290, 47.689289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382687, 38.451317, 48.136669>,  <35.767788, 38.825691, 47.614174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382687, 38.451317, 48.136669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.739857, 38.275108, 48.173813>,  <35.954159, 38.169384, 48.196098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.739857, 38.275108, 48.173813>,  <35.382687, 38.451317, 48.136669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739857, 38.275108, 48.173813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012846, 0.181241, 0.983355,
		-0.450019, -0.879257, 0.156176,
		0.892927, -0.440522, 0.092857,
		36.007736, 38.142952, 48.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362610, 38.007374, 48.674316>,  <35.382687, 38.451317, 48.136669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362610, 38.007374, 48.674316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758732, 38.041569, 48.630531>,  <35.996407, 38.062088, 48.604259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758732, 38.041569, 48.630531>,  <35.362610, 38.007374, 48.674316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758732, 38.041569, 48.630531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109173, 0.008044, 0.993990,
		0.085859, -0.996306, -0.001368,
		0.990308, 0.085492, -0.109460,
		36.055824, 38.067215, 48.597694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730114, 37.490910, 49.036926>,  <35.362610, 38.007374, 48.674316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730114, 37.490910, 49.036926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011089, 37.771011, 48.985966>,  <36.179672, 37.939072, 48.955391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011089, 37.771011, 48.985966>,  <35.730114, 37.490910, 49.036926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011089, 37.771011, 48.985966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301060, -0.130130, 0.944685,
		0.644940, -0.701935, -0.302226,
		0.702436, 0.700253, -0.127398,
		36.221821, 37.981087, 48.947746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239273, 37.226067, 49.425335>,  <35.730114, 37.490910, 49.036926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239273, 37.226067, 49.425335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381577, 37.596249, 49.373238>,  <36.466957, 37.818359, 49.341980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381577, 37.596249, 49.373238>,  <36.239273, 37.226067, 49.425335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381577, 37.596249, 49.373238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565399, -0.102163, 0.818466,
		0.744151, -0.364814, -0.559599,
		0.355758, 0.925459, -0.130241,
		36.488304, 37.873886, 49.334164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977665, 37.199162, 49.393925>,  <36.239273, 37.226067, 49.425335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977665, 37.199162, 49.393925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901054, 37.584934, 49.466805>,  <36.855087, 37.816399, 49.510532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901054, 37.584934, 49.466805>,  <36.977665, 37.199162, 49.393925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901054, 37.584934, 49.466805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681304, -0.002989, 0.731995,
		0.706502, 0.264326, -0.656496,
		-0.191523, 0.964429, 0.182198,
		36.843597, 37.874264, 49.521465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541363, 37.560272, 49.408791>,  <36.977665, 37.199162, 49.393925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541363, 37.560272, 49.408791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288410, 37.759548, 49.646076>,  <37.136639, 37.879116, 49.788448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288410, 37.759548, 49.646076>,  <37.541363, 37.560272, 49.408791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288410, 37.759548, 49.646076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690117, 0.014444, 0.723554,
		0.351901, 0.866946, -0.352945,
		-0.632380, 0.498192, 0.593211,
		37.098698, 37.909004, 49.824039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061382, 37.961006, 49.810825>,  <37.541363, 37.560272, 49.408791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061382, 37.961006, 49.810825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.705910, 37.972454, 49.993881>,  <37.492626, 37.979321, 50.103714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.705910, 37.972454, 49.993881>,  <38.061382, 37.961006, 49.810825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705910, 37.972454, 49.993881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455246, 0.174294, 0.873140,
		-0.054776, 0.984278, -0.167919,
		-0.888679, 0.028617, 0.457636,
		37.439304, 37.981041, 50.131172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142864, 38.546032, 50.118923>,  <38.061382, 37.961006, 49.810825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142864, 38.546032, 50.118923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.875172, 38.329044, 50.322041>,  <37.714554, 38.198853, 50.443909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.875172, 38.329044, 50.322041>,  <38.142864, 38.546032, 50.118923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875172, 38.329044, 50.322041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382923, 0.333865, 0.861338,
		-0.636785, 0.770882, -0.015709,
		-0.669235, -0.542471, 0.507789,
		37.674400, 38.166302, 50.474377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209686, 38.841217, 50.734440>,  <38.142864, 38.546032, 50.118923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209686, 38.841217, 50.734440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997749, 38.514488, 50.825710>,  <37.870586, 38.318451, 50.880470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997749, 38.514488, 50.825710>,  <38.209686, 38.841217, 50.734440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997749, 38.514488, 50.825710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080462, 0.219412, 0.972309,
		-0.844269, 0.533531, -0.050530,
		-0.529844, -0.816825, 0.228172,
		37.838795, 38.269440, 50.894161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486488, 38.928791, 51.115311>,  <38.209686, 38.841217, 50.734440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486488, 38.928791, 51.115311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.682316, 38.588123, 51.190132>,  <37.799812, 38.383724, 51.235027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.682316, 38.588123, 51.190132>,  <37.486488, 38.928791, 51.115311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682316, 38.588123, 51.190132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030025, 0.230860, 0.972524,
		-0.871449, -0.470498, 0.138592,
		0.489566, -0.851666, 0.187056,
		37.829185, 38.332623, 51.246250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188557, 38.670597, 51.722515>,  <37.486488, 38.928791, 51.115311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188557, 38.670597, 51.722515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560825, 38.527256, 51.693043>,  <37.784187, 38.441254, 51.675362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560825, 38.527256, 51.693043>,  <37.188557, 38.670597, 51.722515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560825, 38.527256, 51.693043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136587, 0.153515, 0.978661,
		-0.339393, -0.920879, 0.191818,
		0.930675, -0.358350, -0.073678,
		37.840027, 38.419750, 51.670940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422943, 38.870789, 51.895401>,  <37.188557, 38.670597, 51.722515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422943, 38.870789, 51.895401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.131779, 38.987988, 52.143364>,  <35.957081, 39.058308, 52.292145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.131779, 38.987988, 52.143364>,  <36.422943, 38.870789, 51.895401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131779, 38.987988, 52.143364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594244, 0.181470, -0.783545,
		-0.342076, -0.938732, 0.042020,
		-0.727914, 0.293002, 0.619912,
		35.913406, 39.075890, 52.329338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866890, 38.599125, 51.570961>,  <36.422943, 38.870789, 51.895401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866890, 38.599125, 51.570961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692295, 38.853512, 51.825527>,  <35.587540, 39.006142, 51.978268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692295, 38.853512, 51.825527>,  <35.866890, 38.599125, 51.570961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692295, 38.853512, 51.825527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612795, 0.307778, -0.727843,
		-0.658757, -0.707689, 0.255374,
		-0.436488, 0.635963, 0.636419,
		35.561348, 39.044300, 52.016453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237728, 38.518543, 51.347012>,  <35.866890, 38.599125, 51.570961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237728, 38.518543, 51.347012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.218521, 38.852127, 51.566906>,  <35.206997, 39.052277, 51.698845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.218521, 38.852127, 51.566906>,  <35.237728, 38.518543, 51.347012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218521, 38.852127, 51.566906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687555, 0.371635, -0.623823,
		-0.724543, -0.407928, 0.555546,
		-0.048015, 0.833956, 0.549739,
		35.204117, 39.102314, 51.731827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512913, 38.692852, 51.334423>,  <35.237728, 38.518543, 51.347012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512913, 38.692852, 51.334423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732468, 39.020401, 51.401569>,  <34.864201, 39.216930, 51.441856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732468, 39.020401, 51.401569>,  <34.512913, 38.692852, 51.334423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732468, 39.020401, 51.401569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426676, 0.447150, -0.786132,
		-0.718801, 0.359871, 0.594826,
		0.548883, 0.818871, 0.167864,
		34.897133, 39.266064, 51.451927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082687, 39.164886, 51.304611>,  <34.512913, 38.692852, 51.334423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082687, 39.164886, 51.304611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413483, 39.386513, 51.266457>,  <34.611961, 39.519489, 51.243565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413483, 39.386513, 51.266457>,  <34.082687, 39.164886, 51.304611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413483, 39.386513, 51.266457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443417, 0.538472, -0.716540,
		-0.345649, 0.634866, 0.690993,
		0.826987, 0.554070, -0.095389,
		34.661579, 39.552734, 51.237839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817436, 39.771118, 51.162266>,  <34.082687, 39.164886, 51.304611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817436, 39.771118, 51.162266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197529, 39.800220, 51.041096>,  <34.425583, 39.817680, 50.968391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197529, 39.800220, 51.041096>,  <33.817436, 39.771118, 51.162266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197529, 39.800220, 51.041096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299252, 0.483554, -0.822571,
		0.086637, 0.872286, 0.481261,
		0.950233, 0.072753, -0.302927,
		34.482597, 39.822048, 50.950218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816074, 40.460159, 50.998455>,  <33.817436, 39.771118, 51.162266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816074, 40.460159, 50.998455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122810, 40.289661, 50.806507>,  <34.306850, 40.187363, 50.691338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122810, 40.289661, 50.806507>,  <33.816074, 40.460159, 50.998455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122810, 40.289661, 50.806507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233657, 0.510952, -0.827244,
		0.597795, 0.746489, 0.292224,
		0.766841, -0.426242, -0.479867,
		34.352863, 40.161789, 50.662548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259548, 41.041523, 50.583504>,  <33.816074, 40.460159, 50.998455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259548, 41.041523, 50.583504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362274, 40.701748, 50.399113>,  <34.423908, 40.497883, 50.288479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362274, 40.701748, 50.399113>,  <34.259548, 41.041523, 50.583504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362274, 40.701748, 50.399113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001558, 0.477336, -0.878719,
		0.966460, 0.224949, 0.123910,
		0.256814, -0.849440, -0.460975,
		34.439320, 40.446915, 50.260818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716782, 41.262779, 50.052494>,  <34.259548, 41.041523, 50.583504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716782, 41.262779, 50.052494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585403, 40.900467, 49.945404>,  <34.506577, 40.683079, 49.881149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585403, 40.900467, 49.945404>,  <34.716782, 41.262779, 50.052494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585403, 40.900467, 49.945404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128383, 0.323637, -0.937431,
		0.935756, -0.273527, -0.222585,
		-0.328449, -0.905783, -0.267729,
		34.486870, 40.628731, 49.865086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174755, 40.983864, 49.500675>,  <34.716782, 41.262779, 50.052494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174755, 40.983864, 49.500675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.840988, 40.773296, 49.435394>,  <34.640728, 40.646954, 49.396225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.840988, 40.773296, 49.435394>,  <35.174755, 40.983864, 49.500675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840988, 40.773296, 49.435394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037026, 0.241899, -0.969595,
		0.549893, -0.815086, -0.182353,
		-0.834414, -0.526422, -0.163198,
		34.590664, 40.615372, 49.386436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171024, 40.897701, 48.779892>,  <35.174755, 40.983864, 49.500675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171024, 40.897701, 48.779892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.852539, 40.655807, 48.787281>,  <34.661446, 40.510674, 48.791714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.852539, 40.655807, 48.787281>,  <35.171024, 40.897701, 48.779892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852539, 40.655807, 48.787281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206375, -0.300172, -0.931293,
		0.568728, -0.737696, 0.363803,
		-0.796215, -0.604732, 0.018474,
		34.613674, 40.474388, 48.792824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363407, 40.239376, 48.454456>,  <35.171024, 40.897701, 48.779892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363407, 40.239376, 48.454456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.964886, 40.250526, 48.421951>,  <34.725773, 40.257217, 48.402447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.964886, 40.250526, 48.421951>,  <35.363407, 40.239376, 48.454456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964886, 40.250526, 48.421951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071436, -0.256710, -0.963845,
		-0.047728, -0.966086, 0.253770,
		-0.996302, 0.027874, -0.081266,
		34.665997, 40.258888, 48.397572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071915, 39.603832, 48.173454>,  <35.363407, 40.239376, 48.454456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071915, 39.603832, 48.173454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809757, 39.888386, 48.071957>,  <34.652462, 40.059120, 48.011059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809757, 39.888386, 48.071957>,  <35.071915, 39.603832, 48.173454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809757, 39.888386, 48.071957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124035, -0.230025, -0.965248,
		-0.745033, -0.664091, 0.062520,
		-0.655394, 0.711387, -0.253747,
		34.613140, 40.101803, 47.995834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591381, 39.377102, 47.743015>,  <35.071915, 39.603832, 48.173454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591381, 39.377102, 47.743015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570629, 39.770073, 47.671307>,  <34.558178, 40.005856, 47.628281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570629, 39.770073, 47.671307>,  <34.591381, 39.377102, 47.743015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570629, 39.770073, 47.671307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078697, -0.182975, -0.979963,
		-0.995548, -0.036731, 0.086807,
		-0.051878, 0.982431, -0.179270,
		34.555065, 40.064804, 47.617527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933075, 39.350513, 48.177666>,  <34.591381, 39.377102, 47.743015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933075, 39.350513, 48.177666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702229, 39.031254, 48.108490>,  <33.563721, 38.839699, 48.066986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.702229, 39.031254, 48.108490>,  <33.933075, 39.350513, 48.177666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702229, 39.031254, 48.108490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000665, -0.211303, 0.977420,
		-0.816665, 0.564195, 0.121415,
		-0.577111, -0.798144, -0.172939,
		33.529095, 38.791809, 48.056610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283112, 39.397099, 48.432659>,  <33.933075, 39.350513, 48.177666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283112, 39.397099, 48.432659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.356739, 39.005188, 48.401272>,  <33.400913, 38.770042, 48.382439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.356739, 39.005188, 48.401272>,  <33.283112, 39.397099, 48.432659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356739, 39.005188, 48.401272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137332, -0.104687, 0.984977,
		-0.973273, -0.170522, -0.153824,
		0.184064, -0.979777, -0.078471,
		33.411957, 38.711254, 48.377731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709900, 39.147503, 48.726383>,  <33.283112, 39.397099, 48.432659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709900, 39.147503, 48.726383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962963, 38.837734, 48.728088>,  <33.114799, 38.651875, 48.729111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962963, 38.837734, 48.728088>,  <32.709900, 39.147503, 48.726383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962963, 38.837734, 48.728088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169756, -0.133303, 0.976429,
		-0.755599, -0.618467, -0.215797,
		0.632655, -0.774422, 0.004265,
		33.152760, 38.605408, 48.729366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446793, 38.730282, 49.262737>,  <32.709900, 39.147503, 48.726383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446793, 38.730282, 49.262737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823952, 38.601055, 49.230320>,  <33.050247, 38.523518, 49.210869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823952, 38.601055, 49.230320>,  <32.446793, 38.730282, 49.262737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823952, 38.601055, 49.230320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056028, -0.085997, 0.994719,
		-0.328329, -0.942461, -0.062986,
		0.942900, -0.323066, -0.081039,
		33.106823, 38.504135, 49.206009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418732, 38.072594, 49.593021>,  <32.446793, 38.730282, 49.262737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418732, 38.072594, 49.593021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815861, 38.120377, 49.590809>,  <33.054138, 38.149044, 49.589481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815861, 38.120377, 49.590809>,  <32.418732, 38.072594, 49.593021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815861, 38.120377, 49.590809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037710, -0.268858, 0.962441,
		0.113480, -0.955744, -0.271433,
		0.992824, 0.119454, -0.005531,
		33.113708, 38.156212, 49.589149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665897, 37.461975, 49.885204>,  <32.418732, 38.072594, 49.593021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665897, 37.461975, 49.885204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.946617, 37.745434, 49.914310>,  <33.115047, 37.915508, 49.931774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.946617, 37.745434, 49.914310>,  <32.665897, 37.461975, 49.885204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946617, 37.745434, 49.914310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120920, -0.219171, 0.968165,
		0.702038, -0.670657, -0.239504,
		0.701798, 0.708649, 0.072770,
		33.157158, 37.958027, 49.936142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362373, 37.128544, 50.174751>,  <32.665897, 37.461975, 49.885204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362373, 37.128544, 50.174751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369183, 37.520515, 50.254200>,  <33.373268, 37.755699, 50.301868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369183, 37.520515, 50.254200>,  <33.362373, 37.128544, 50.174751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369183, 37.520515, 50.254200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219491, -0.197469, 0.955421,
		0.975466, 0.027333, -0.218446,
		0.017022, 0.979928, 0.198623,
		33.374290, 37.814495, 50.313786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752628, 36.589161, 50.474293>,  <33.362373, 37.128544, 50.174751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752628, 36.589161, 50.474293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562588, 36.259670, 50.598072>,  <33.448563, 36.061977, 50.672340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562588, 36.259670, 50.598072>,  <33.752628, 36.589161, 50.474293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562588, 36.259670, 50.598072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108837, -0.293963, -0.949600,
		0.873174, -0.484836, 0.050011,
		-0.475101, -0.823723, 0.309449,
		33.420055, 36.012554, 50.690907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093678, 36.070679, 50.073170>,  <33.752628, 36.589161, 50.474293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093678, 36.070679, 50.073170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753136, 35.907181, 50.204704>,  <33.548813, 35.809082, 50.283623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753136, 35.907181, 50.204704>,  <34.093678, 36.070679, 50.073170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753136, 35.907181, 50.204704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164165, -0.387766, -0.907021,
		0.498249, -0.826176, 0.263024,
		-0.851351, -0.408743, 0.328833,
		33.497730, 35.784557, 50.303352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036674, 35.441685, 49.669876>,  <34.093678, 36.070679, 50.073170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036674, 35.441685, 49.669876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676384, 35.500561, 49.833355>,  <33.460209, 35.535885, 49.931442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676384, 35.500561, 49.833355>,  <34.036674, 35.441685, 49.669876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676384, 35.500561, 49.833355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432501, -0.391664, -0.812122,
		0.040538, -0.908260, 0.416439,
		-0.900722, 0.147188, 0.408700,
		33.406166, 35.544716, 49.955967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625149, 34.856964, 49.552223>,  <34.036674, 35.441685, 49.669876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625149, 34.856964, 49.552223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415730, 35.195301, 49.593102>,  <33.290077, 35.398304, 49.617630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415730, 35.195301, 49.593102>,  <33.625149, 34.856964, 49.552223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415730, 35.195301, 49.593102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514136, -0.218001, -0.829542,
		-0.679385, -0.486847, 0.549013,
		-0.523546, 0.845846, 0.102199,
		33.258667, 35.449055, 49.623760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922279, 34.629364, 49.281792>,  <33.625149, 34.856964, 49.552223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922279, 34.629364, 49.281792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928844, 35.029045, 49.296326>,  <32.932785, 35.268856, 49.305046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928844, 35.029045, 49.296326>,  <32.922279, 34.629364, 49.281792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928844, 35.029045, 49.296326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480571, 0.039750, -0.876054,
		-0.876802, -0.003080, 0.480842,
		0.016415, 0.999205, 0.036333,
		32.933769, 35.328808, 49.307224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337154, 34.854755, 49.249817>,  <32.922279, 34.629364, 49.281792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337154, 34.854755, 49.249817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547348, 35.173820, 49.131424>,  <32.673462, 35.365261, 49.060390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547348, 35.173820, 49.131424>,  <32.337154, 34.854755, 49.249817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547348, 35.173820, 49.131424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451002, -0.033830, -0.891882,
		-0.721434, 0.602154, 0.341971,
		0.525481, 0.797663, -0.295978,
		32.704994, 35.413120, 49.042629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968864, 35.132362, 48.695274>,  <32.337154, 34.854755, 49.249817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968864, 35.132362, 48.695274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.305328, 35.341339, 48.639404>,  <32.507206, 35.466724, 48.605881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.305328, 35.341339, 48.639404>,  <31.968864, 35.132362, 48.695274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305328, 35.341339, 48.639404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271558, 0.184705, -0.944532,
		-0.467662, 0.832431, 0.297238,
		0.841159, 0.522439, -0.139674,
		32.557674, 35.498070, 48.597504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.113182, 35.764954, 50.527485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.874313, 36.085464, 50.512844>,  <37.730991, 36.277771, 50.504059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.874313, 36.085464, 50.512844>,  <38.113182, 35.764954, 50.527485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874313, 36.085464, 50.512844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048513, -0.009462, -0.998778,
		-0.800645, -0.598217, -0.033222,
		-0.597171, 0.801278, -0.036597,
		37.695164, 36.325848, 50.501865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519680, 35.554291, 50.157619>,  <38.113182, 35.764954, 50.527485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519680, 35.554291, 50.157619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.593906, 35.946068, 50.125984>,  <37.638443, 36.181133, 50.107002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.593906, 35.946068, 50.125984>,  <37.519680, 35.554291, 50.157619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593906, 35.946068, 50.125984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018947, -0.084038, -0.996282,
		-0.982448, 0.183381, -0.034153,
		0.185570, 0.979443, -0.079089,
		37.649578, 36.239902, 50.102257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012363, 35.875038, 49.669651>,  <37.519680, 35.554291, 50.157619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012363, 35.875038, 49.669651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.352158, 36.085941, 49.677444>,  <37.556034, 36.212482, 49.682121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.352158, 36.085941, 49.677444>,  <37.012363, 35.875038, 49.669651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352158, 36.085941, 49.677444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017812, 0.065570, -0.997689,
		-0.527318, 0.847171, 0.065092,
		0.849482, 0.527258, 0.019487,
		37.607002, 36.244118, 49.683289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990883, 36.287254, 49.210861>,  <37.012363, 35.875038, 49.669651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990883, 36.287254, 49.210861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.387852, 36.272667, 49.257782>,  <37.626034, 36.263916, 49.285934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.387852, 36.272667, 49.257782>,  <36.990883, 36.287254, 49.210861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387852, 36.272667, 49.257782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122319, 0.205254, -0.971035,
		0.011331, 0.978029, 0.208160,
		0.992426, -0.036465, 0.117306,
		37.685581, 36.261726, 49.292973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210419, 36.825790, 48.711609>,  <36.990883, 36.287254, 49.210861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210419, 36.825790, 48.711609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.527912, 36.600391, 48.803223>,  <37.718407, 36.465153, 48.858189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.527912, 36.600391, 48.803223>,  <37.210419, 36.825790, 48.711609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527912, 36.600391, 48.803223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322055, 0.069899, -0.944137,
		0.516014, 0.823152, 0.236960,
		0.793732, -0.563502, 0.229031,
		37.766033, 36.431339, 48.871933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898907, 37.074844, 48.291046>,  <37.210419, 36.825790, 48.711609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898907, 37.074844, 48.291046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.967361, 36.702694, 48.420734>,  <38.008434, 36.479404, 48.498547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.967361, 36.702694, 48.420734>,  <37.898907, 37.074844, 48.291046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967361, 36.702694, 48.420734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506004, -0.199361, -0.839175,
		0.845383, 0.307670, 0.436655,
		0.171137, -0.930373, 0.324219,
		38.018703, 36.423580, 48.518002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654720, 36.855217, 48.042244>,  <37.898907, 37.074844, 48.291046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654720, 36.855217, 48.042244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.454437, 36.516529, 48.114185>,  <38.334267, 36.313316, 48.157352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.454437, 36.516529, 48.114185>,  <38.654720, 36.855217, 48.042244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454437, 36.516529, 48.114185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445051, -0.430031, -0.785495,
		0.742441, -0.313261, 0.592156,
		-0.500711, -0.846724, 0.179856,
		38.304226, 36.262512, 48.168140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047707, 36.310101, 47.757061>,  <38.654720, 36.855217, 48.042244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047707, 36.310101, 47.757061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.697060, 36.118835, 47.778641>,  <38.486671, 36.004078, 47.791588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.697060, 36.118835, 47.778641>,  <39.047707, 36.310101, 47.757061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697060, 36.118835, 47.778641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170155, -0.412899, -0.894741,
		0.450108, -0.775161, 0.443314,
		-0.876612, -0.478162, 0.053952,
		38.434074, 35.975388, 47.794827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195320, 35.578930, 47.640083>,  <39.047707, 36.310101, 47.757061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195320, 35.578930, 47.640083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.814003, 35.669189, 47.559765>,  <38.585213, 35.723347, 47.511574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.814003, 35.669189, 47.559765>,  <39.195320, 35.578930, 47.640083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814003, 35.669189, 47.559765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103770, -0.379653, -0.919291,
		-0.283672, -0.897188, 0.338503,
		-0.953290, 0.225651, -0.200798,
		38.528015, 35.736885, 47.499527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938114, 34.964787, 47.406143>,  <39.195320, 35.578930, 47.640083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938114, 34.964787, 47.406143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.680885, 35.238453, 47.268517>,  <38.526550, 35.402653, 47.185940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.680885, 35.238453, 47.268517>,  <38.938114, 34.964787, 47.406143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680885, 35.238453, 47.268517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067729, -0.498335, -0.864335,
		-0.762807, -0.532524, 0.366802,
		-0.643069, 0.684164, -0.344066,
		38.487965, 35.443703, 47.165298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274376, 34.525196, 47.214500>,  <38.938114, 34.964787, 47.406143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274376, 34.525196, 47.214500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.292854, 34.880280, 47.031269>,  <38.303940, 35.093330, 46.921329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.292854, 34.880280, 47.031269>,  <38.274376, 34.525196, 47.214500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292854, 34.880280, 47.031269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229742, -0.436832, -0.869711,
		-0.972155, 0.145415, 0.183765,
		0.046195, 0.887712, -0.458076,
		38.306713, 35.146595, 46.893845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692688, 34.576668, 46.823547>,  <38.274376, 34.525196, 47.214500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692688, 34.576668, 46.823547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.956760, 34.818714, 46.645565>,  <38.115204, 34.963943, 46.538776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.956760, 34.818714, 46.645565>,  <37.692688, 34.576668, 46.823547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956760, 34.818714, 46.645565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193099, -0.435757, -0.879107,
		-0.725857, 0.666295, -0.170833,
		0.660186, 0.605117, -0.444958,
		38.154816, 35.000248, 46.512077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979130, 34.603928, 47.127567>,  <37.692688, 34.576668, 46.823547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979130, 34.603928, 47.127567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.949471, 34.205032, 47.128860>,  <36.931675, 33.965694, 47.129639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.949471, 34.205032, 47.128860>,  <36.979130, 34.603928, 47.127567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949471, 34.205032, 47.128860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279056, 0.023865, 0.959978,
		-0.957408, 0.070278, -0.280056,
		-0.074149, -0.997242, 0.003237,
		36.927227, 33.905861, 47.129833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327587, 34.322926, 47.356445>,  <36.979130, 34.603928, 47.127567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327587, 34.322926, 47.356445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.577137, 34.020672, 47.436237>,  <36.726868, 33.839317, 47.484112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.577137, 34.020672, 47.436237>,  <36.327587, 34.322926, 47.356445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577137, 34.020672, 47.436237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394220, -0.083878, 0.915181,
		-0.674813, -0.649597, -0.350217,
		0.623874, -0.755638, 0.199482,
		36.764297, 33.793980, 47.496082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911964, 33.872780, 47.743458>,  <36.327587, 34.322926, 47.356445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911964, 33.872780, 47.743458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.299561, 33.805515, 47.815876>,  <36.532120, 33.765156, 47.859329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.299561, 33.805515, 47.815876>,  <35.911964, 33.872780, 47.743458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299561, 33.805515, 47.815876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217140, -0.229816, 0.948702,
		-0.117924, -0.958596, -0.259204,
		0.968992, -0.168159, 0.181049,
		36.590260, 33.755066, 47.870190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933746, 33.170181, 47.996853>,  <35.911964, 33.872780, 47.743458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933746, 33.170181, 47.996853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.271740, 33.355328, 48.104000>,  <36.474537, 33.466415, 48.168289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.271740, 33.355328, 48.104000>,  <35.933746, 33.170181, 47.996853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271740, 33.355328, 48.104000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165427, -0.250100, 0.953983,
		0.508557, -0.850417, -0.134761,
		0.844987, 0.462862, 0.267872,
		36.525234, 33.494186, 48.184361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059517, 32.693111, 48.496212>,  <35.933746, 33.170181, 47.996853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059517, 32.693111, 48.496212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.318813, 32.993603, 48.545910>,  <36.474392, 33.173897, 48.575729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.318813, 32.993603, 48.545910>,  <36.059517, 32.693111, 48.496212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318813, 32.993603, 48.545910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147620, -0.036082, 0.988386,
		0.746989, -0.659053, 0.087507,
		0.648241, 0.751231, 0.124242,
		36.513287, 33.218971, 48.583183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517860, 32.559292, 49.102020>,  <36.059517, 32.693111, 48.496212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517860, 32.559292, 49.102020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.505047, 32.952129, 49.027767>,  <36.497356, 33.187832, 48.983215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.505047, 32.952129, 49.027767>,  <36.517860, 32.559292, 49.102020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505047, 32.952129, 49.027767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175098, 0.177342, 0.968447,
		0.984030, 0.063530, 0.166281,
		-0.032037, 0.982096, -0.185634,
		36.495438, 33.246758, 48.972076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066132, 32.847401, 49.537952>,  <36.517860, 32.559292, 49.102020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066132, 32.847401, 49.537952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.794174, 33.122742, 49.436825>,  <36.631001, 33.287945, 49.376148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.794174, 33.122742, 49.436825>,  <37.066132, 32.847401, 49.537952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794174, 33.122742, 49.436825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162380, 0.194886, 0.967291,
		0.715105, 0.698709, -0.020728,
		-0.679895, 0.688349, -0.252821,
		36.590206, 33.329247, 49.360977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268246, 33.382595, 49.919300>,  <37.066132, 32.847401, 49.537952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268246, 33.382595, 49.919300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.896713, 33.501480, 49.830818>,  <36.673794, 33.572811, 49.777729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.896713, 33.501480, 49.830818>,  <37.268246, 33.382595, 49.919300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896713, 33.501480, 49.830818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120655, 0.321857, 0.939069,
		0.350297, 0.898930, -0.263092,
		-0.928835, 0.297210, -0.221205,
		36.618061, 33.590645, 49.764458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226059, 34.022476, 50.205273>,  <37.268246, 33.382595, 49.919300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226059, 34.022476, 50.205273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.847874, 33.899342, 50.162697>,  <36.620960, 33.825462, 50.137150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.847874, 33.899342, 50.162697>,  <37.226059, 34.022476, 50.205273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847874, 33.899342, 50.162697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221736, 0.368909, 0.902629,
		-0.238595, 0.877007, -0.417050,
		-0.945466, -0.307837, -0.106444,
		36.564236, 33.806992, 50.130764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878098, 34.497013, 50.413704>,  <37.226059, 34.022476, 50.205273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878098, 34.497013, 50.413704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.628387, 34.188774, 50.465012>,  <36.478561, 34.003830, 50.495796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.628387, 34.188774, 50.465012>,  <36.878098, 34.497013, 50.413704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628387, 34.188774, 50.465012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248157, 0.351308, 0.902774,
		-0.740738, 0.531753, -0.410544,
		-0.624280, -0.770598, 0.128269,
		36.441105, 33.957596, 50.503494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311588, 34.790043, 50.798607>,  <36.878098, 34.497013, 50.413704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311588, 34.790043, 50.798607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.259300, 34.394573, 50.828110>,  <36.227928, 34.157291, 50.845814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.259300, 34.394573, 50.828110>,  <36.311588, 34.790043, 50.798607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259300, 34.394573, 50.828110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212268, 0.100583, 0.972021,
		-0.968429, 0.111407, -0.223012,
		-0.130721, -0.988672, 0.073760,
		36.220085, 34.097973, 50.850239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753384, 34.757366, 51.175304>,  <36.311588, 34.790043, 50.798607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753384, 34.757366, 51.175304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.908131, 34.390491, 51.213451>,  <36.000980, 34.170364, 51.236340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.908131, 34.390491, 51.213451>,  <35.753384, 34.757366, 51.175304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908131, 34.390491, 51.213451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188928, 0.022393, 0.981736,
		-0.902573, -0.397821, -0.164620,
		0.386869, -0.917190, 0.095370,
		36.024193, 34.115334, 51.242062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437233, 34.489269, 51.726295>,  <35.753384, 34.757366, 51.175304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437233, 34.489269, 51.726295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.726673, 34.213776, 51.708179>,  <35.900337, 34.048481, 51.697311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.726673, 34.213776, 51.708179>,  <35.437233, 34.489269, 51.726295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726673, 34.213776, 51.708179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044582, -0.112115, 0.992695,
		-0.688781, -0.716292, -0.111831,
		0.723597, -0.688735, -0.045289,
		35.943752, 34.007156, 51.694592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232853, 33.958340, 52.309704>,  <35.437233, 34.489269, 51.726295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232853, 33.958340, 52.309704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.620510, 33.926601, 52.216351>,  <35.853104, 33.907558, 52.160339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.620510, 33.926601, 52.216351>,  <35.232853, 33.958340, 52.309704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620510, 33.926601, 52.216351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239931, 0.086425, 0.966935,
		-0.056556, -0.993093, 0.102797,
		0.969141, -0.079350, -0.233386,
		35.911251, 33.902798, 52.146336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125103, 34.764782, 52.510056>,  <35.232853, 33.958340, 52.309704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125103, 34.764782, 52.510056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.002792, 35.096085, 52.697884>,  <34.929405, 35.294865, 52.810581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.002792, 35.096085, 52.697884>,  <35.125103, 34.764782, 52.510056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002792, 35.096085, 52.697884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663980, 0.167967, -0.728640,
		-0.682371, -0.534588, 0.498583,
		-0.305777, 0.828252, 0.469572,
		34.911060, 35.344559, 52.838757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388393, 34.735821, 52.599789>,  <35.125103, 34.764782, 52.510056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388393, 34.735821, 52.599789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.469162, 35.127197, 52.617168>,  <34.517624, 35.362022, 52.627594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.469162, 35.127197, 52.617168>,  <34.388393, 34.735821, 52.599789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469162, 35.127197, 52.617168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869086, 0.199457, -0.452666,
		-0.451571, 0.053647, 0.890621,
		0.201925, 0.978437, 0.043445,
		34.529739, 35.420727, 52.630203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743374, 35.083786, 52.739277>,  <34.388393, 34.735821, 52.599789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743374, 35.083786, 52.739277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.976334, 35.386055, 52.619431>,  <34.116108, 35.567417, 52.547523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.976334, 35.386055, 52.619431>,  <33.743374, 35.083786, 52.739277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976334, 35.386055, 52.619431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769038, 0.392744, -0.504315,
		-0.263427, 0.524125, 0.809876,
		0.582397, 0.755676, -0.299612,
		34.151054, 35.612759, 52.529549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319191, 35.646660, 52.697411>,  <33.743374, 35.083786, 52.739277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319191, 35.646660, 52.697411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.617043, 35.723080, 52.441589>,  <33.795753, 35.768932, 52.288097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.617043, 35.723080, 52.441589>,  <33.319191, 35.646660, 52.697411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617043, 35.723080, 52.441589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663067, 0.321742, -0.675887,
		0.076644, 0.927352, 0.366257,
		0.744626, 0.191050, -0.639557,
		33.840431, 35.780396, 52.249722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159294, 36.289185, 52.309628>,  <33.319191, 35.646660, 52.697411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159294, 36.289185, 52.309628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441032, 36.097385, 52.100254>,  <33.610077, 35.982307, 51.974632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441032, 36.097385, 52.100254>,  <33.159294, 36.289185, 52.309628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441032, 36.097385, 52.100254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523308, 0.147482, -0.839284,
		0.479629, 0.865062, -0.147045,
		0.704346, -0.479495, -0.523431,
		33.652336, 35.953537, 51.943226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168385, 36.647755, 51.695217>,  <33.159294, 36.289185, 52.309628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168385, 36.647755, 51.695217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.371967, 36.314629, 51.608154>,  <33.494118, 36.114754, 51.555916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.371967, 36.314629, 51.608154>,  <33.168385, 36.647755, 51.695217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371967, 36.314629, 51.608154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423819, -0.022360, -0.905471,
		0.749226, 0.553095, -0.364345,
		0.508958, -0.832818, -0.217659,
		33.524654, 36.064781, 51.542858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312531, 36.812496, 51.013950>,  <33.168385, 36.647755, 51.695217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312531, 36.812496, 51.013950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.368881, 36.419426, 51.062134>,  <33.402691, 36.183586, 51.091042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.368881, 36.419426, 51.062134>,  <33.312531, 36.812496, 51.013950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368881, 36.419426, 51.062134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177639, -0.144783, -0.973387,
		0.973960, 0.115727, -0.194958,
		0.140874, -0.982673, 0.120456,
		33.411144, 36.124622, 51.098270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885483, 37.278271, 50.639938>,  <33.312531, 36.812496, 51.013950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885483, 37.278271, 50.639938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.688622, 37.616714, 50.721802>,  <33.570507, 37.819782, 50.770920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.688622, 37.616714, 50.721802>,  <33.885483, 37.278271, 50.639938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688622, 37.616714, 50.721802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166512, -0.139266, 0.976155,
		0.854437, 0.514494, -0.072348,
		-0.492150, 0.846110, 0.204663,
		33.540977, 37.870548, 50.783199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243031, 37.686874, 51.131348>,  <33.885483, 37.278271, 50.639938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243031, 37.686874, 51.131348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.872025, 37.827549, 51.181999>,  <33.649422, 37.911953, 51.212391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.872025, 37.827549, 51.181999>,  <34.243031, 37.686874, 51.131348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872025, 37.827549, 51.181999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127899, -0.019727, 0.991591,
		0.351231, 0.935908, -0.026684,
		-0.927512, 0.351691, 0.126630,
		33.593769, 37.933056, 51.219990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233078, 37.895733, 51.731503>,  <34.243031, 37.686874, 51.131348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233078, 37.895733, 51.731503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.839760, 37.888954, 51.659019>,  <33.603767, 37.884888, 51.615528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.839760, 37.888954, 51.659019>,  <34.233078, 37.895733, 51.731503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839760, 37.888954, 51.659019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180239, -0.047380, 0.982481,
		-0.025236, 0.998733, 0.043534,
		-0.983299, -0.016947, -0.181207,
		33.544769, 37.883869, 51.604656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995815, 38.371834, 52.338142>,  <34.233078, 37.895733, 51.731503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995815, 38.371834, 52.338142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.671707, 38.178844, 52.205059>,  <33.477242, 38.063053, 52.125210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.671707, 38.178844, 52.205059>,  <33.995815, 38.371834, 52.338142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671707, 38.178844, 52.205059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239871, -0.244950, 0.939394,
		-0.534724, 0.840966, 0.082744,
		-0.810266, -0.482469, -0.332704,
		33.428627, 38.034103, 52.105247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507072, 38.645916, 52.721169>,  <33.995815, 38.371834, 52.338142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507072, 38.645916, 52.721169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.335976, 38.313721, 52.578438>,  <33.233318, 38.114403, 52.492802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.335976, 38.313721, 52.578438>,  <33.507072, 38.645916, 52.721169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335976, 38.313721, 52.578438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423970, -0.164307, 0.890648,
		-0.798303, 0.532249, -0.281822,
		-0.427741, -0.830490, -0.356824,
		33.207653, 38.064575, 52.471390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735062, 38.724678, 52.799831>,  <33.507072, 38.645916, 52.721169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735062, 38.724678, 52.799831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.824894, 38.335052, 52.788761>,  <32.878792, 38.101276, 52.782120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.824894, 38.335052, 52.788761>,  <32.735062, 38.724678, 52.799831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824894, 38.335052, 52.788761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531558, -0.146263, 0.834298,
		-0.816707, -0.172655, -0.550618,
		0.224580, -0.974062, -0.027678,
		32.892269, 38.042835, 52.780457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137825, 38.539360, 53.026215>,  <32.735062, 38.724678, 52.799831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137825, 38.539360, 53.026215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.392223, 38.236599, 53.086357>,  <32.544861, 38.054943, 53.122444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.392223, 38.236599, 53.086357>,  <32.137825, 38.539360, 53.026215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392223, 38.236599, 53.086357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529470, -0.286259, 0.798572,
		-0.561401, -0.587497, -0.582818,
		0.635996, -0.756903, 0.150356,
		32.583023, 38.009529, 53.131466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738722, 38.154297, 53.244492>,  <32.137825, 38.539360, 53.026215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738722, 38.154297, 53.244492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.091206, 38.042583, 53.397053>,  <32.302696, 37.975555, 53.488590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.091206, 38.042583, 53.397053>,  <31.738722, 38.154297, 53.244492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091206, 38.042583, 53.397053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472171, -0.481062, 0.738670,
		-0.022819, -0.831012, -0.555786,
		0.881212, -0.279282, 0.381402,
		32.355568, 37.958797, 53.511475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945948, 38.343163, 53.418365>,  <31.738722, 38.154297, 53.244492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945948, 38.343163, 53.418365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.570148, 38.208824, 53.445351>,  <30.344669, 38.128223, 53.461540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.570148, 38.208824, 53.445351>,  <30.945948, 38.343163, 53.418365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570148, 38.208824, 53.445351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335186, -0.860687, 0.383234,
		-0.070644, 0.382660, 0.921185,
		-0.939500, -0.335841, 0.067460,
		30.288298, 38.108070, 53.465588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.871880, 38.389587, 37.760384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222454, 38.551624, 37.864510>,  <34.432796, 38.648846, 37.926987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222454, 38.551624, 37.864510>,  <33.871880, 38.389587, 37.760384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222454, 38.551624, 37.864510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155119, -0.274273, 0.949059,
		0.455852, -0.872168, -0.177545,
		0.876434, 0.405089, 0.260318,
		34.485386, 38.673149, 37.942604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201431, 37.806202, 38.185112>,  <33.871880, 38.389587, 37.760384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201431, 37.806202, 38.185112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326271, 38.176411, 38.270908>,  <34.401176, 38.398537, 38.322388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326271, 38.176411, 38.270908>,  <34.201431, 37.806202, 38.185112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326271, 38.176411, 38.270908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106542, -0.190252, 0.975937,
		0.944055, -0.327446, 0.039228,
		0.312103, 0.925518, 0.214495,
		34.419903, 38.454067, 38.335258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713417, 37.792717, 38.733265>,  <34.201431, 37.806202, 38.185112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713417, 37.792717, 38.733265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583305, 38.169960, 38.760830>,  <34.505238, 38.396305, 38.777370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583305, 38.169960, 38.760830>,  <34.713417, 37.792717, 38.733265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583305, 38.169960, 38.760830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038280, -0.085948, 0.995564,
		0.944843, 0.321198, 0.064059,
		-0.325279, 0.943104, 0.068911,
		34.485722, 38.452892, 38.781502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180950, 38.177414, 39.193649>,  <34.713417, 37.792717, 38.733265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180950, 38.177414, 39.193649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814529, 38.337482, 39.182938>,  <34.594677, 38.433521, 39.176510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814529, 38.337482, 39.182938>,  <35.180950, 38.177414, 39.193649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814529, 38.337482, 39.182938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026419, 0.006429, 0.999630,
		0.400192, 0.916419, 0.004683,
		-0.916050, 0.400168, -0.026783,
		34.539715, 38.457535, 39.174904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217670, 38.618038, 39.763901>,  <35.180950, 38.177414, 39.193649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217670, 38.618038, 39.763901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828079, 38.601395, 39.674786>,  <34.594326, 38.591408, 39.621315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828079, 38.601395, 39.674786>,  <35.217670, 38.618038, 39.763901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828079, 38.601395, 39.674786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225392, 0.074805, 0.971392,
		-0.023750, 0.996330, -0.082236,
		-0.973979, -0.041606, -0.222788,
		34.535885, 38.588913, 39.607948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871639, 39.002647, 40.278625>,  <35.217670, 38.618038, 39.763901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871639, 39.002647, 40.278625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568069, 38.786854, 40.132751>,  <34.385929, 38.657379, 40.045227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568069, 38.786854, 40.132751>,  <34.871639, 39.002647, 40.278625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568069, 38.786854, 40.132751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323347, -0.173907, 0.930163,
		-0.565230, 0.823840, -0.042459,
		-0.758922, -0.539485, -0.364684,
		34.340393, 38.625008, 40.023346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249554, 39.306667, 40.497898>,  <34.871639, 39.002647, 40.278625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249554, 39.306667, 40.497898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145756, 38.927135, 40.425922>,  <34.083477, 38.699417, 40.382736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145756, 38.927135, 40.425922>,  <34.249554, 39.306667, 40.497898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145756, 38.927135, 40.425922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490869, -0.030874, 0.870686,
		-0.831690, 0.314272, -0.457740,
		-0.259500, -0.948831, -0.179944,
		34.067905, 38.642487, 40.371941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671467, 39.294598, 40.864395>,  <34.249554, 39.306667, 40.497898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671467, 39.294598, 40.864395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722481, 38.913265, 40.754929>,  <33.753090, 38.684467, 40.689247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722481, 38.913265, 40.754929>,  <33.671467, 39.294598, 40.864395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722481, 38.913265, 40.754929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333361, -0.301069, 0.893436,
		-0.934134, -0.022713, -0.356200,
		0.127533, -0.953332, -0.273667,
		33.760742, 38.627266, 40.672829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021988, 38.986721, 40.961868>,  <33.671467, 39.294598, 40.864395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021988, 38.986721, 40.961868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329140, 38.733166, 40.998844>,  <33.513432, 38.581032, 41.021030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329140, 38.733166, 40.998844>,  <33.021988, 38.986721, 40.961868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329140, 38.733166, 40.998844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213525, -0.117223, 0.969879,
		-0.603957, -0.764492, -0.225364,
		0.767883, -0.633886, 0.092441,
		33.559505, 38.542999, 41.026577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737152, 38.366535, 41.287899>,  <33.021988, 38.986721, 40.961868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737152, 38.366535, 41.287899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128605, 38.346455, 41.367661>,  <33.363476, 38.334408, 41.415516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128605, 38.346455, 41.367661>,  <32.737152, 38.366535, 41.287899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128605, 38.346455, 41.367661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205308, -0.184799, 0.961092,
		-0.011399, -0.981493, -0.191157,
		0.978631, -0.050201, 0.199402,
		33.422195, 38.331394, 41.427483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795284, 37.798985, 41.728596>,  <32.737152, 38.366535, 41.287899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795284, 37.798985, 41.728596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134384, 38.001240, 41.792664>,  <33.337845, 38.122593, 41.831104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134384, 38.001240, 41.792664>,  <32.795284, 37.798985, 41.728596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134384, 38.001240, 41.792664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106916, -0.132867, 0.985350,
		0.519514, -0.852452, -0.058577,
		0.847747, 0.505641, 0.160167,
		33.388710, 38.152931, 41.840714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126461, 37.495224, 42.270454>,  <32.795284, 37.798985, 41.728596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126461, 37.495224, 42.270454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272385, 37.867634, 42.266209>,  <33.359940, 38.091080, 42.263660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272385, 37.867634, 42.266209>,  <33.126461, 37.495224, 42.270454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272385, 37.867634, 42.266209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043985, -0.005840, 0.999015,
		0.930042, -0.364918, -0.043081,
		0.364810, 0.931021, -0.010619,
		33.381828, 38.146938, 42.263023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463348, 36.810108, 42.335049>,  <33.126461, 37.495224, 42.270454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463348, 36.810108, 42.335049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283016, 36.470776, 42.446106>,  <33.174816, 36.267178, 42.512741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283016, 36.470776, 42.446106>,  <33.463348, 36.810108, 42.335049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283016, 36.470776, 42.446106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120612, -0.250297, -0.960627,
		0.884423, -0.466567, 0.010522,
		-0.450830, -0.848332, 0.277642,
		33.147766, 36.216274, 42.529400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804939, 36.332451, 41.899246>,  <33.463348, 36.810108, 42.335049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804939, 36.332451, 41.899246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442711, 36.210594, 42.017323>,  <33.225372, 36.137482, 42.088169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442711, 36.210594, 42.017323>,  <33.804939, 36.332451, 41.899246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442711, 36.210594, 42.017323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212592, -0.276253, -0.937277,
		0.367078, -0.911526, 0.185403,
		-0.905571, -0.304639, 0.295190,
		33.171040, 36.119202, 42.105881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557831, 35.588562, 41.629948>,  <33.804939, 36.332451, 41.899246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557831, 35.588562, 41.629948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217983, 35.793221, 41.681118>,  <33.014072, 35.916016, 41.711823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217983, 35.793221, 41.681118>,  <33.557831, 35.588562, 41.629948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217983, 35.793221, 41.681118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329958, -0.326448, -0.885754,
		-0.411427, -0.794766, 0.446177,
		-0.849620, 0.511643, 0.127930,
		32.963097, 35.946712, 41.719498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068451, 35.084614, 41.343609>,  <33.557831, 35.588562, 41.629948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068451, 35.084614, 41.343609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887383, 35.440605, 41.365627>,  <32.778740, 35.654198, 41.378838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887383, 35.440605, 41.365627>,  <33.068451, 35.084614, 41.343609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887383, 35.440605, 41.365627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561429, -0.236512, -0.793007,
		-0.692738, -0.389877, 0.606721,
		-0.452672, 0.889977, 0.055047,
		32.751579, 35.707600, 41.382141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380501, 34.917328, 41.211060>,  <33.068451, 35.084614, 41.343609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380501, 34.917328, 41.211060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398300, 35.312630, 41.152576>,  <32.408981, 35.549812, 41.117489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398300, 35.312630, 41.152576>,  <32.380501, 34.917328, 41.211060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398300, 35.312630, 41.152576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675859, -0.077993, -0.732893,
		-0.735687, 0.131427, 0.664449,
		0.044500, 0.988253, -0.146204,
		32.411652, 35.609104, 41.108715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669897, 35.044300, 41.248890>,  <32.380501, 34.917328, 41.211060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669897, 35.044300, 41.248890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868536, 35.331097, 41.053207>,  <31.987720, 35.503174, 40.935799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868536, 35.331097, 41.053207>,  <31.669897, 35.044300, 41.248890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868536, 35.331097, 41.053207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644824, -0.072536, -0.760881,
		-0.581027, 0.693303, 0.426309,
		0.496598, 0.716987, -0.489204,
		32.017517, 35.546192, 40.906445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168516, 35.595703, 40.882339>,  <31.669897, 35.044300, 41.248890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168516, 35.595703, 40.882339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515158, 35.595203, 40.682739>,  <31.723143, 35.594902, 40.562981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515158, 35.595203, 40.682739>,  <31.168516, 35.595703, 40.882339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515158, 35.595203, 40.682739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498809, 0.025394, -0.866340,
		0.013755, 0.999677, 0.021383,
		0.866603, -0.001250, -0.498997,
		31.775139, 35.594830, 40.533039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993597, 36.057926, 40.278244>,  <31.168516, 35.595703, 40.882339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993597, 36.057926, 40.278244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324604, 35.872047, 40.152218>,  <31.523209, 35.760521, 40.076603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324604, 35.872047, 40.152218>,  <30.993597, 36.057926, 40.278244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324604, 35.872047, 40.152218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497522, -0.346922, -0.795058,
		0.260161, 0.814677, -0.518284,
		0.827519, -0.464701, -0.315064,
		31.572859, 35.732635, 40.057697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019539, 36.196720, 39.557987>,  <30.993597, 36.057926, 40.278244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019539, 36.196720, 39.557987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319420, 35.933159, 39.582634>,  <31.499348, 35.775024, 39.597424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319420, 35.933159, 39.582634>,  <31.019539, 36.196720, 39.557987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319420, 35.933159, 39.582634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352038, -0.475920, -0.805959,
		0.560370, 0.582539, -0.588757,
		0.749703, -0.658900, 0.061615,
		31.544331, 35.735489, 39.601120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321106, 36.173077, 38.892956>,  <31.019539, 36.196720, 39.557987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321106, 36.173077, 38.892956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413862, 35.834641, 39.084938>,  <31.469517, 35.631580, 39.200127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413862, 35.834641, 39.084938>,  <31.321106, 36.173077, 38.892956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413862, 35.834641, 39.084938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237411, -0.527710, -0.815572,
		0.943325, 0.075178, -0.323243,
		0.231891, -0.846091, 0.479954,
		31.483429, 35.580814, 39.228924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699209, 35.769978, 38.393841>,  <31.321106, 36.173077, 38.892956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699209, 35.769978, 38.393841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599550, 35.498325, 38.670017>,  <31.539755, 35.335335, 38.835724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599550, 35.498325, 38.670017>,  <31.699209, 35.769978, 38.393841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599550, 35.498325, 38.670017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221532, -0.654059, -0.723278,
		0.942788, -0.333157, 0.012508,
		-0.249147, -0.679127, 0.690444,
		31.524807, 35.294586, 38.877151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973978, 35.085056, 38.209770>,  <31.699209, 35.769978, 38.393841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973978, 35.085056, 38.209770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654116, 35.007565, 38.437111>,  <31.462198, 34.961067, 38.573513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654116, 35.007565, 38.437111>,  <31.973978, 35.085056, 38.209770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654116, 35.007565, 38.437111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332578, -0.645177, -0.687850,
		0.499944, -0.739063, 0.451489,
		-0.799655, -0.193731, 0.568348,
		31.414219, 34.949444, 38.607616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878651, 34.264824, 38.258034>,  <31.973978, 35.085056, 38.209770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878651, 34.264824, 38.258034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535122, 34.454552, 38.335434>,  <31.329004, 34.568390, 38.381874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535122, 34.454552, 38.335434>,  <31.878651, 34.264824, 38.258034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535122, 34.454552, 38.335434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483192, -0.624596, -0.613519,
		-0.170146, -0.620402, 0.765606,
		-0.858822, 0.474322, 0.193500,
		31.277475, 34.596848, 38.393482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473381, 33.721828, 38.124962>,  <31.878651, 34.264824, 38.258034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473381, 33.721828, 38.124962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216154, 34.028149, 38.126286>,  <31.061819, 34.211941, 38.127079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216154, 34.028149, 38.126286>,  <31.473381, 33.721828, 38.124962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216154, 34.028149, 38.126286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646781, -0.540799, -0.537783,
		-0.410048, -0.347968, 0.843077,
		-0.643067, 0.765803, 0.003306,
		31.023233, 34.257889, 38.127277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871122, 33.448479, 38.248791>,  <31.473381, 33.721828, 38.124962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871122, 33.448479, 38.248791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828047, 33.774162, 38.020592>,  <30.802202, 33.969574, 37.883675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828047, 33.774162, 38.020592>,  <30.871122, 33.448479, 38.248791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828047, 33.774162, 38.020592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551658, -0.526323, -0.647038,
		-0.827089, 0.245038, 0.505845,
		-0.107689, 0.814212, -0.570493,
		30.795740, 34.018425, 37.849445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355577, 33.032478, 38.474812>,  <30.871122, 33.448479, 38.248791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355577, 33.032478, 38.474812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694052, 33.145527, 38.294106>,  <31.897137, 33.213356, 38.185684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694052, 33.145527, 38.294106>,  <31.355577, 33.032478, 38.474812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694052, 33.145527, 38.294106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531527, -0.387156, 0.753385,
		0.038023, -0.877629, -0.477830,
		0.846187, 0.282625, -0.451762,
		31.947908, 33.230316, 38.158577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791464, 32.414627, 38.274570>,  <31.355577, 33.032478, 38.474812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791464, 32.414627, 38.274570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007927, 32.738010, 38.367130>,  <32.137806, 32.932041, 38.422668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007927, 32.738010, 38.367130>,  <31.791464, 32.414627, 38.274570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007927, 32.738010, 38.367130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577473, -0.557307, 0.596602,
		0.611288, -0.189228, -0.768453,
		0.541158, 0.808456, 0.231402,
		32.170273, 32.980549, 38.436550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621792, 32.239124, 38.203590>,  <31.791464, 32.414627, 38.274570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621792, 32.239124, 38.203590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616081, 32.573444, 38.423130>,  <32.612656, 32.774036, 38.554852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616081, 32.573444, 38.423130>,  <32.621792, 32.239124, 38.203590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616081, 32.573444, 38.423130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770193, -0.340849, 0.539096,
		0.637651, 0.430415, -0.638862,
		-0.014279, 0.835802, 0.548845,
		32.611797, 32.824184, 38.587784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299290, 32.205566, 38.542480>,  <32.621792, 32.239124, 38.203590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299290, 32.205566, 38.542480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124779, 32.501976, 38.746655>,  <33.020073, 32.679821, 38.869160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124779, 32.501976, 38.746655>,  <33.299290, 32.205566, 38.542480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124779, 32.501976, 38.746655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654654, -0.127779, 0.745050,
		0.617325, 0.659206, -0.429369,
		-0.436277, 0.741027, 0.510433,
		32.993896, 32.724285, 38.899784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825550, 32.684338, 38.856823>,  <33.299290, 32.205566, 38.542480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825550, 32.684338, 38.856823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504379, 32.759872, 39.082973>,  <33.311676, 32.805191, 39.218662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504379, 32.759872, 39.082973>,  <33.825550, 32.684338, 38.856823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504379, 32.759872, 39.082973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548885, -0.135657, 0.824816,
		0.232450, 0.972594, 0.005274,
		-0.802927, 0.188834, 0.565376,
		33.263500, 32.816525, 39.252586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052956, 33.166294, 39.361015>,  <33.825550, 32.684338, 38.856823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052956, 33.166294, 39.361015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720009, 33.009350, 39.517590>,  <33.520241, 32.915184, 39.611534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720009, 33.009350, 39.517590>,  <34.052956, 33.166294, 39.361015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720009, 33.009350, 39.517590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372238, 0.127496, 0.919339,
		-0.410616, 0.910934, 0.039927,
		-0.832366, -0.392357, 0.391436,
		33.470299, 32.891644, 39.635021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900879, 33.544216, 39.967392>,  <34.052956, 33.166294, 39.361015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900879, 33.544216, 39.967392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706001, 33.198345, 40.016342>,  <33.589073, 32.990822, 40.045712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706001, 33.198345, 40.016342>,  <33.900879, 33.544216, 39.967392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706001, 33.198345, 40.016342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420265, -0.109310, 0.900793,
		-0.765519, 0.490290, 0.416649,
		-0.487194, -0.864678, 0.122373,
		33.559845, 32.938942, 40.053055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719700, 33.542736, 40.692589>,  <33.900879, 33.544216, 39.967392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719700, 33.542736, 40.692589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704052, 33.164303, 40.563969>,  <33.694664, 32.937244, 40.486797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704052, 33.164303, 40.563969>,  <33.719700, 33.542736, 40.692589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704052, 33.164303, 40.563969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459331, -0.302809, 0.835058,
		-0.887403, -0.115033, 0.446411,
		-0.039118, -0.946084, -0.321552,
		33.692318, 32.880478, 40.467503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503582, 33.273445, 41.260899>,  <33.719700, 33.542736, 40.692589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503582, 33.273445, 41.260899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648758, 32.978485, 41.033035>,  <33.735863, 32.801510, 40.896317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648758, 32.978485, 41.033035>,  <33.503582, 33.273445, 41.260899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648758, 32.978485, 41.033035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500707, -0.361249, 0.786633,
		-0.785855, -0.570732, 0.238112,
		0.362939, -0.737404, -0.569658,
		33.757641, 32.757263, 40.862137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433502, 32.547710, 41.654404>,  <33.503582, 33.273445, 41.260899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433502, 32.547710, 41.654404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722748, 32.525894, 41.378975>,  <33.896294, 32.512806, 41.213718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722748, 32.525894, 41.378975>,  <33.433502, 32.547710, 41.654404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722748, 32.525894, 41.378975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612185, -0.411085, 0.675454,
		-0.319898, -0.909964, -0.263876,
		0.723114, -0.054536, -0.688572,
		33.939682, 32.509533, 41.172401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835999, 32.040604, 41.907555>,  <33.433502, 32.547710, 41.654404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835999, 32.040604, 41.907555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093548, 32.182846, 41.636566>,  <34.248077, 32.268192, 41.473972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093548, 32.182846, 41.636566>,  <33.835999, 32.040604, 41.907555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093548, 32.182846, 41.636566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762724, -0.368519, 0.531456,
		-0.060671, -0.858916, -0.508510,
		0.643872, 0.355609, -0.677475,
		34.286709, 32.289528, 41.433323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288319, 31.488672, 41.850101>,  <33.835999, 32.040604, 41.907555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288319, 31.488672, 41.850101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478325, 31.822979, 41.739933>,  <34.592327, 32.023563, 41.673832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478325, 31.822979, 41.739933>,  <34.288319, 31.488672, 41.850101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478325, 31.822979, 41.739933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689308, -0.158839, 0.706841,
		0.547007, -0.525608, -0.651551,
		0.475013, 0.835767, -0.275420,
		34.620831, 32.073708, 41.657307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080448, 31.377390, 41.887894>,  <34.288319, 31.488672, 41.850101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080448, 31.377390, 41.887894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017166, 31.771896, 41.906857>,  <34.979198, 32.008602, 41.918236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017166, 31.771896, 41.906857>,  <35.080448, 31.377390, 41.887894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017166, 31.771896, 41.906857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788849, 0.097367, 0.606825,
		0.593877, 0.133398, -0.793420,
		-0.158202, 0.986268, 0.047407,
		34.969707, 32.067776, 41.921078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729111, 31.640451, 41.797207>,  <35.080448, 31.377390, 41.887894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729111, 31.640451, 41.797207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516346, 31.926626, 41.978409>,  <35.388687, 32.098331, 42.087132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516346, 31.926626, 41.978409>,  <35.729111, 31.640451, 41.797207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516346, 31.926626, 41.978409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688262, 0.053608, 0.723479,
		0.493319, 0.696616, -0.520924,
		-0.531913, 0.715438, 0.453009,
		35.356773, 32.141258, 42.114311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228760, 31.951155, 42.094906>,  <35.729111, 31.640451, 41.797207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228760, 31.951155, 42.094906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900341, 32.093082, 42.273785>,  <35.703289, 32.178238, 42.381111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900341, 32.093082, 42.273785>,  <36.228760, 31.951155, 42.094906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900341, 32.093082, 42.273785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467118, -0.032734, 0.883589,
		0.328153, 0.934362, -0.138867,
		-0.821046, 0.354820, 0.447199,
		35.654026, 32.199528, 42.407944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401794, 32.469936, 42.502659>,  <36.228760, 31.951155, 42.094906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401794, 32.469936, 42.502659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049110, 32.372963, 42.664558>,  <35.837502, 32.314777, 42.761696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049110, 32.372963, 42.664558>,  <36.401794, 32.469936, 42.502659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049110, 32.372963, 42.664558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395023, 0.089733, 0.914278,
		-0.257970, 0.966009, 0.016649,
		-0.881707, -0.242433, 0.404745,
		35.784599, 32.300232, 42.785980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246769, 33.059887, 42.898926>,  <36.401794, 32.469936, 42.502659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246769, 33.059887, 42.898926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060703, 32.733799, 43.036938>,  <35.949066, 32.538147, 43.119747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060703, 32.733799, 43.036938>,  <36.246769, 33.059887, 42.898926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060703, 32.733799, 43.036938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427336, 0.134550, 0.894025,
		-0.775248, 0.563310, 0.285784,
		-0.465162, -0.815216, 0.345032,
		35.921154, 32.489235, 43.140446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963890, 33.248337, 43.525017>,  <36.246769, 33.059887, 42.898926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963890, 33.248337, 43.525017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976318, 32.849903, 43.558147>,  <35.983776, 32.610844, 43.578026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976318, 32.849903, 43.558147>,  <35.963890, 33.248337, 43.525017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976318, 32.849903, 43.558147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531723, 0.086638, 0.842475,
		-0.846348, 0.017866, 0.532330,
		0.031069, -0.996079, 0.082826,
		35.985638, 32.551079, 43.582996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508846, 33.090790, 43.994583>,  <35.963890, 33.248337, 43.525017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508846, 33.090790, 43.994583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742397, 32.766087, 43.989822>,  <35.882526, 32.571266, 43.986965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742397, 32.766087, 43.989822>,  <35.508846, 33.090790, 43.994583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742397, 32.766087, 43.989822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338879, 0.230373, 0.912189,
		-0.737732, -0.536641, 0.409596,
		0.583878, -0.811754, -0.011903,
		35.917561, 32.522560, 43.986252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330448, 32.637920, 44.590530>,  <35.508846, 33.090790, 43.994583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330448, 32.637920, 44.590530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704670, 32.530151, 44.499191>,  <35.929203, 32.465492, 44.444389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704670, 32.530151, 44.499191>,  <35.330448, 32.637920, 44.590530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704670, 32.530151, 44.499191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290278, 0.218326, 0.931704,
		-0.201166, -0.937948, 0.282464,
		0.935559, -0.269420, -0.228346,
		35.985336, 32.449326, 44.430687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583927, 32.160313, 45.129242>,  <35.330448, 32.637920, 44.590530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583927, 32.160313, 45.129242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908703, 32.303768, 44.945011>,  <36.103569, 32.389839, 44.834473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908703, 32.303768, 44.945011>,  <35.583927, 32.160313, 45.129242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908703, 32.303768, 44.945011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418693, 0.192001, 0.887599,
		0.406756, -0.913519, 0.005735,
		0.811940, 0.358635, -0.460581,
		36.152287, 32.411358, 44.806835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031002, 31.957878, 45.479523>,  <35.583927, 32.160313, 45.129242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031002, 31.957878, 45.479523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247059, 32.224091, 45.273487>,  <36.376694, 32.383816, 45.149864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247059, 32.224091, 45.273487>,  <36.031002, 31.957878, 45.479523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247059, 32.224091, 45.273487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550128, 0.183957, 0.814567,
		0.636873, -0.723347, -0.266763,
		0.540141, 0.665529, -0.515091,
		36.409100, 32.423748, 45.118961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649281, 31.936554, 45.769081>,  <36.031002, 31.957878, 45.479523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649281, 31.936554, 45.769081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691677, 32.280296, 45.568974>,  <36.717117, 32.486542, 45.448910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691677, 32.280296, 45.568974>,  <36.649281, 31.936554, 45.769081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691677, 32.280296, 45.568974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474935, 0.398259, 0.784746,
		0.873614, -0.320774, -0.365926,
		0.105993, 0.859357, -0.500271,
		36.723476, 32.538105, 45.418892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339058, 32.104988, 45.946922>,  <36.649281, 31.936554, 45.769081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339058, 32.104988, 45.946922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124649, 32.429996, 45.855289>,  <36.996002, 32.625004, 45.800308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124649, 32.429996, 45.855289>,  <37.339058, 32.104988, 45.946922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124649, 32.429996, 45.855289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295893, 0.434977, 0.850437,
		0.790647, 0.388072, -0.473579,
		-0.536026, 0.812524, -0.229085,
		36.963840, 32.673756, 45.786564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791409, 32.667858, 45.903950>,  <37.339058, 32.104988, 45.946922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791409, 32.667858, 45.903950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424576, 32.809074, 45.978058>,  <37.204475, 32.893803, 46.022522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424576, 32.809074, 45.978058>,  <37.791409, 32.667858, 45.903950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424576, 32.809074, 45.978058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346913, 0.477560, 0.807210,
		0.196502, 0.804549, -0.560436,
		-0.917081, 0.353041, 0.185267,
		37.149452, 32.914986, 46.033638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919605, 33.294861, 46.021439>,  <37.791409, 32.667858, 45.903950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919605, 33.294861, 46.021439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559303, 33.234951, 46.184517>,  <37.343121, 33.199005, 46.282364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559303, 33.234951, 46.184517>,  <37.919605, 33.294861, 46.021439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559303, 33.234951, 46.184517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327101, 0.383614, 0.863623,
		-0.285742, 0.911268, -0.296552,
		-0.900753, -0.149771, 0.407691,
		37.289078, 33.190022, 46.306824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641144, 33.911697, 46.317226>,  <37.919605, 33.294861, 46.021439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641144, 33.911697, 46.317226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539177, 33.571732, 46.501690>,  <37.477997, 33.367752, 46.612366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539177, 33.571732, 46.501690>,  <37.641144, 33.911697, 46.317226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539177, 33.571732, 46.501690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374653, 0.352848, 0.857399,
		-0.891433, 0.391338, 0.228476,
		-0.254916, -0.849913, 0.461156,
		37.462704, 33.316757, 46.640038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346210, 34.721844, 46.176983>,  <37.641144, 33.911697, 46.317226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346210, 34.721844, 46.176983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691505, 34.911350, 46.107277>,  <37.898682, 35.025055, 46.065453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691505, 34.911350, 46.107277>,  <37.346210, 34.721844, 46.176983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691505, 34.911350, 46.107277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118557, -0.145276, -0.982262,
		-0.490678, 0.868585, -0.069239,
		0.863238, 0.473766, -0.174260,
		37.950478, 35.053478, 46.055000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068184, 35.109783, 45.792381>,  <37.346210, 34.721844, 46.176983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068184, 35.109783, 45.792381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457870, 35.116062, 45.702358>,  <37.691681, 35.119831, 45.648342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457870, 35.116062, 45.702358>,  <37.068184, 35.109783, 45.792381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457870, 35.116062, 45.702358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223770, 0.194374, -0.955063,
		0.028752, 0.980802, 0.192876,
		0.974218, 0.015699, -0.225062,
		37.750137, 35.120773, 45.634838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251095, 35.717613, 45.405273>,  <37.068184, 35.109783, 45.792381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251095, 35.717613, 45.405273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503677, 35.422604, 45.309509>,  <37.655228, 35.245598, 45.252052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503677, 35.422604, 45.309509>,  <37.251095, 35.717613, 45.405273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503677, 35.422604, 45.309509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145435, 0.190621, -0.970831,
		0.761651, 0.647855, 0.013107,
		0.631456, -0.737528, -0.239408,
		37.693115, 35.201344, 45.237686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740204, 35.904701, 44.799549>,  <37.251095, 35.717613, 45.405273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740204, 35.904701, 44.799549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788532, 35.507797, 44.811020>,  <37.817532, 35.269653, 44.817902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788532, 35.507797, 44.811020>,  <37.740204, 35.904701, 44.799549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788532, 35.507797, 44.811020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077958, -0.038284, -0.996221,
		0.989608, 0.118132, -0.081980,
		0.120825, -0.992259, 0.028677,
		37.824780, 35.210121, 44.819622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892715, 35.861061, 44.149128>,  <37.740204, 35.904701, 44.799549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892715, 35.861061, 44.149128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830284, 35.479706, 44.252422>,  <37.792824, 35.250893, 44.314400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830284, 35.479706, 44.252422>,  <37.892715, 35.861061, 44.149128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830284, 35.479706, 44.252422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190419, -0.227497, -0.954980,
		0.969216, -0.198230, -0.146035,
		-0.156083, -0.953389, 0.258240,
		37.783459, 35.193687, 44.329895>
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
