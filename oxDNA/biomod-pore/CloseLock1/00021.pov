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
	<24.572245, 34.730381, 34.750690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.376595, 34.912800, 35.048088>,  <24.259205, 35.022251, 35.226524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.376595, 34.912800, 35.048088>,  <24.572245, 34.730381, 34.750690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.376595, 34.912800, 35.048088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398538, 0.875087, -0.274573,
		-0.775837, 0.162009, -0.609779,
		-0.489126, 0.456044, 0.743491,
		24.229856, 35.049614, 35.271137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.563353, 34.030582, 34.345535>,  <24.572245, 34.730381, 34.750690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.563353, 34.030582, 34.345535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917500, 34.170315, 34.222836>,  <25.129988, 34.254154, 34.149216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917500, 34.170315, 34.222836>,  <24.563353, 34.030582, 34.345535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917500, 34.170315, 34.222836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383971, -0.921465, 0.058887,
		-0.262087, -0.169919, -0.949967,
		0.885368, 0.349326, -0.306748,
		25.183109, 34.275112, 34.130810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.747978, 33.549400, 33.730827>,  <24.563353, 34.030582, 34.345535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.747978, 33.549400, 33.730827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040764, 33.733177, 33.932079>,  <25.216436, 33.843445, 34.052830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040764, 33.733177, 33.932079>,  <24.747978, 33.549400, 33.730827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040764, 33.733177, 33.932079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483932, -0.870385, 0.090780,
		0.479622, 0.177031, -0.859432,
		0.731965, 0.459446, 0.503126,
		25.260353, 33.871010, 34.083015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388092, 33.402935, 33.360916>,  <24.747978, 33.549400, 33.730827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388092, 33.402935, 33.360916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462873, 33.457771, 33.750019>,  <25.507742, 33.490673, 33.983479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462873, 33.457771, 33.750019>,  <25.388092, 33.402935, 33.360916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462873, 33.457771, 33.750019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556306, -0.830915, 0.010188,
		0.809674, 0.539245, -0.231609,
		0.186954, 0.137095, 0.972756,
		25.518959, 33.498901, 34.041847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165482, 33.364765, 33.561085>,  <25.388092, 33.402935, 33.360916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165482, 33.364765, 33.561085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920835, 33.272343, 33.863750>,  <25.774048, 33.216888, 34.045349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920835, 33.272343, 33.863750>,  <26.165482, 33.364765, 33.561085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920835, 33.272343, 33.863750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486694, -0.863906, 0.129600,
		0.623741, 0.447529, 0.640831,
		-0.611617, -0.231052, 0.756663,
		25.737350, 33.203026, 34.090748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638987, 33.980026, 33.258873>,  <26.165482, 33.364765, 33.561085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638987, 33.980026, 33.258873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837111, 34.249382, 33.039337>,  <26.955984, 34.410995, 32.907616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837111, 34.249382, 33.039337>,  <26.638987, 33.980026, 33.258873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837111, 34.249382, 33.039337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410464, -0.375398, -0.831021,
		-0.765629, 0.636890, 0.090461,
		0.495310, 0.673385, -0.548836,
		26.985704, 34.451397, 32.874687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151672, 34.327404, 32.821884>,  <26.638987, 33.980026, 33.258873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151672, 34.327404, 32.821884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514944, 34.342819, 32.655163>,  <26.732906, 34.352066, 32.555130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514944, 34.342819, 32.655163>,  <26.151672, 34.327404, 32.821884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514944, 34.342819, 32.655163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398182, -0.227551, -0.888635,
		-0.129088, 0.973003, -0.191313,
		0.908178, 0.038535, -0.416806,
		26.787397, 34.354382, 32.530121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097105, 34.774826, 32.150673>,  <26.151672, 34.327404, 32.821884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097105, 34.774826, 32.150673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419958, 34.539177, 32.135326>,  <26.613670, 34.397789, 32.126118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419958, 34.539177, 32.135326>,  <26.097105, 34.774826, 32.150673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419958, 34.539177, 32.135326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210675, -0.226711, -0.950904,
		0.551502, 0.775588, -0.307099,
		0.807132, -0.589123, -0.038365,
		26.662098, 34.362438, 32.123817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364086, 34.924065, 31.568151>,  <26.097105, 34.774826, 32.150673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364086, 34.924065, 31.568151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532175, 34.572868, 31.659847>,  <26.633028, 34.362152, 31.714865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532175, 34.572868, 31.659847>,  <26.364086, 34.924065, 31.568151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532175, 34.572868, 31.659847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234625, -0.349166, -0.907212,
		0.876564, 0.327445, -0.352725,
		0.420221, -0.877988, 0.229240,
		26.658241, 34.309471, 31.728619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798708, 34.754700, 31.044102>,  <26.364086, 34.924065, 31.568151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798708, 34.754700, 31.044102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761946, 34.395897, 31.217043>,  <26.739889, 34.180614, 31.320808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761946, 34.395897, 31.217043>,  <26.798708, 34.754700, 31.044102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761946, 34.395897, 31.217043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142272, -0.417909, -0.897279,
		0.985552, -0.143977, -0.089211,
		-0.091905, -0.897007, 0.432355,
		26.734375, 34.126793, 31.346750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225269, 34.282188, 30.758093>,  <26.798708, 34.754700, 31.044102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225269, 34.282188, 30.758093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945913, 34.047832, 30.922522>,  <26.778299, 33.907219, 31.021179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945913, 34.047832, 30.922522>,  <27.225269, 34.282188, 30.758093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945913, 34.047832, 30.922522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308288, -0.272078, -0.911555,
		0.645918, -0.763349, 0.009393,
		-0.698390, -0.585894, 0.411072,
		26.736397, 33.872063, 31.045843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153742, 33.739243, 30.308455>,  <27.225269, 34.282188, 30.758093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153742, 33.739243, 30.308455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814970, 33.703671, 30.518141>,  <26.611708, 33.682327, 30.643953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814970, 33.703671, 30.518141>,  <27.153742, 33.739243, 30.308455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814970, 33.703671, 30.518141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411591, -0.514504, -0.752249,
		0.336606, -0.852864, 0.399148,
		-0.846929, -0.088926, 0.524217,
		26.560892, 33.676994, 30.675406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991171, 33.089745, 30.240818>,  <27.153742, 33.739243, 30.308455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991171, 33.089745, 30.240818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650095, 33.267010, 30.351477>,  <26.445450, 33.373367, 30.417871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650095, 33.267010, 30.351477>,  <26.991171, 33.089745, 30.240818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650095, 33.267010, 30.351477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442109, -0.330010, -0.834046,
		-0.278324, -0.833486, 0.477322,
		-0.852687, 0.443164, 0.276642,
		26.394289, 33.399960, 30.434469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490437, 32.569977, 30.207848>,  <26.991171, 33.089745, 30.240818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490437, 32.569977, 30.207848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310581, 32.925259, 30.170059>,  <26.202667, 33.138428, 30.147387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310581, 32.925259, 30.170059>,  <26.490437, 32.569977, 30.207848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310581, 32.925259, 30.170059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386869, -0.288987, -0.875682,
		-0.805082, -0.357194, 0.473557,
		-0.449640, 0.888200, -0.094471,
		26.175690, 33.191719, 30.141718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764921, 32.491806, 30.121679>,  <26.490437, 32.569977, 30.207848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764921, 32.491806, 30.121679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879850, 32.838326, 29.958229>,  <25.948809, 33.046238, 29.860159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879850, 32.838326, 29.958229>,  <25.764921, 32.491806, 30.121679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879850, 32.838326, 29.958229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356743, -0.299132, -0.885017,
		-0.888920, 0.400061, 0.223097,
		0.287325, 0.866297, -0.408624,
		25.966047, 33.098213, 29.835642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225462, 32.628807, 29.535803>,  <25.764921, 32.491806, 30.121679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225462, 32.628807, 29.535803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512835, 32.899689, 29.472239>,  <25.685259, 33.062218, 29.434099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512835, 32.899689, 29.472239>,  <25.225462, 32.628807, 29.535803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512835, 32.899689, 29.472239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207291, -0.009642, -0.978232,
		-0.663992, 0.735735, 0.133450,
		0.718433, 0.677201, -0.158913,
		25.728365, 33.102848, 29.424564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918222, 33.122845, 29.149443>,  <25.225462, 32.628807, 29.535803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918222, 33.122845, 29.149443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310192, 33.179207, 29.093019>,  <25.545374, 33.213024, 29.059166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310192, 33.179207, 29.093019>,  <24.918222, 33.122845, 29.149443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310192, 33.179207, 29.093019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155896, 0.100472, -0.982650,
		-0.124287, 0.984912, 0.120421,
		0.979923, 0.140903, -0.141056,
		25.604170, 33.221478, 29.050703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.945972, 33.755707, 28.793365>,  <24.918222, 33.122845, 29.149443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.945972, 33.755707, 28.793365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309828, 33.605209, 28.722940>,  <25.528141, 33.514912, 28.680685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309828, 33.605209, 28.722940>,  <24.945972, 33.755707, 28.793365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309828, 33.605209, 28.722940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146242, 0.106655, -0.983483,
		0.388802, 0.920364, 0.041996,
		0.909641, -0.376239, -0.176063,
		25.582720, 33.492336, 28.670122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364891, 34.245670, 28.451164>,  <24.945972, 33.755707, 28.793365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364891, 34.245670, 28.451164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514124, 33.888111, 28.351767>,  <25.603664, 33.673576, 28.292128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514124, 33.888111, 28.351767>,  <25.364891, 34.245670, 28.451164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.514124, 33.888111, 28.351767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219343, 0.175259, -0.959778,
		0.901498, 0.412581, -0.130685,
		0.373082, -0.893902, -0.248492,
		25.626049, 33.619942, 28.277220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738550, 34.438858, 27.904413>,  <25.364891, 34.245670, 28.451164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738550, 34.438858, 27.904413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682013, 34.042900, 27.899763>,  <25.648090, 33.805325, 27.896973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682013, 34.042900, 27.899763>,  <25.738550, 34.438858, 27.904413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682013, 34.042900, 27.899763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065077, 0.021007, -0.997659,
		0.987819, -0.140259, -0.067388,
		-0.141346, -0.989892, -0.011623,
		25.639608, 33.745934, 27.896276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207811, 34.182144, 27.478828>,  <25.738550, 34.438858, 27.904413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207811, 34.182144, 27.478828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962118, 33.866543, 27.473232>,  <25.814701, 33.677181, 27.469873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962118, 33.866543, 27.473232>,  <26.207811, 34.182144, 27.478828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962118, 33.866543, 27.473232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069357, 0.071640, -0.995016,
		0.786070, -0.610202, -0.098726,
		-0.614234, -0.789000, -0.013992,
		25.777847, 33.629845, 27.469034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446156, 33.841148, 26.927794>,  <26.207811, 34.182144, 27.478828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446156, 33.841148, 26.927794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067600, 33.722206, 26.978273>,  <25.840467, 33.650841, 27.008560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067600, 33.722206, 26.978273>,  <26.446156, 33.841148, 26.927794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067600, 33.722206, 26.978273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141031, 0.028875, -0.989584,
		0.290615, -0.954330, -0.069263,
		-0.946390, -0.297356, 0.126198,
		25.783684, 33.632999, 27.016132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314213, 33.281277, 26.485878>,  <26.446156, 33.841148, 26.927794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314213, 33.281277, 26.485878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971952, 33.465912, 26.579514>,  <25.766596, 33.576694, 26.635695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971952, 33.465912, 26.579514>,  <26.314213, 33.281277, 26.485878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971952, 33.465912, 26.579514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150226, 0.211315, -0.965804,
		-0.495274, -0.861556, -0.111469,
		-0.855649, 0.461592, 0.234087,
		25.715258, 33.604389, 26.649740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916969, 33.133572, 25.898706>,  <26.314213, 33.281277, 26.485878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916969, 33.133572, 25.898706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709251, 33.427876, 26.072598>,  <25.584621, 33.604458, 26.176933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709251, 33.427876, 26.072598>,  <25.916969, 33.133572, 25.898706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709251, 33.427876, 26.072598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380104, 0.256757, -0.888593,
		-0.765413, -0.626681, 0.146334,
		-0.519292, 0.735762, 0.434729,
		25.553463, 33.648605, 26.203016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295525, 33.198265, 25.587231>,  <25.916969, 33.133572, 25.898706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295525, 33.198265, 25.587231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268757, 33.557419, 25.761276>,  <25.252697, 33.772911, 25.865704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268757, 33.557419, 25.761276>,  <25.295525, 33.198265, 25.587231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268757, 33.557419, 25.761276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554377, 0.329120, -0.764426,
		-0.829571, -0.292370, 0.475743,
		-0.066918, 0.897887, 0.435112,
		25.248682, 33.826786, 25.891809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826685, 32.597225, 25.688168>,  <25.295525, 33.198265, 25.587231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826685, 32.597225, 25.688168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.564127, 32.456421, 25.421265>,  <24.406591, 32.371937, 25.261124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.564127, 32.456421, 25.421265>,  <24.826685, 32.597225, 25.688168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.564127, 32.456421, 25.421265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579192, -0.801877, -0.146731,
		-0.483405, -0.482782, 0.730233,
		-0.656396, -0.352015, -0.667255,
		24.367208, 32.350815, 25.221088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567957, 31.898754, 25.783857>,  <24.826685, 32.597225, 25.688168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567957, 31.898754, 25.783857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.571112, 31.989849, 25.394381>,  <24.573004, 32.044506, 25.160694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.571112, 31.989849, 25.394381>,  <24.567957, 31.898754, 25.783857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.571112, 31.989849, 25.394381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618894, -0.765930, -0.174133,
		-0.785435, -0.601238, -0.146986,
		0.007886, 0.227739, -0.973690,
		24.573477, 32.058170, 25.102274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.373192, 31.269279, 25.386789>,  <24.567957, 31.898754, 25.783857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.373192, 31.269279, 25.386789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593176, 31.490883, 25.136791>,  <24.725166, 31.623844, 24.986792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593176, 31.490883, 25.136791>,  <24.373192, 31.269279, 25.386789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.593176, 31.490883, 25.136791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640900, -0.759771, -0.109521,
		-0.535529, -0.340328, -0.772907,
		0.549960, 0.554008, -0.624995,
		24.758163, 31.657085, 24.949293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.621588, 30.873325, 24.785290>,  <24.373192, 31.269279, 25.386789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.621588, 30.873325, 24.785290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885008, 31.163319, 24.865999>,  <25.043060, 31.337315, 24.914425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885008, 31.163319, 24.865999>,  <24.621588, 30.873325, 24.785290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.885008, 31.163319, 24.865999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749965, -0.654418, -0.096379,
		0.062171, 0.214793, -0.974679,
		0.658549, 0.724983, 0.201773,
		25.082573, 31.380814, 24.926531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154709, 30.992769, 24.222155>,  <24.621588, 30.873325, 24.785290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154709, 30.992769, 24.222155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317833, 31.126249, 24.562117>,  <25.415707, 31.206337, 24.766094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317833, 31.126249, 24.562117>,  <25.154709, 30.992769, 24.222155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.317833, 31.126249, 24.562117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794081, -0.589080, -0.149730,
		0.450697, 0.735954, -0.505217,
		0.407808, 0.333701, 0.849904,
		25.440176, 31.226360, 24.817087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775711, 30.759684, 23.764841>,  <25.154709, 30.992769, 24.222155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775711, 30.759684, 23.764841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972975, 31.047422, 23.569155>,  <26.091333, 31.220066, 23.451742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972975, 31.047422, 23.569155>,  <25.775711, 30.759684, 23.764841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972975, 31.047422, 23.569155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646103, 0.073704, 0.759683,
		0.582534, -0.690729, -0.428425,
		0.493159, 0.719348, -0.489217,
		26.120922, 31.263227, 23.422390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480520, 30.467979, 23.791695>,  <25.775711, 30.759684, 23.764841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480520, 30.467979, 23.791695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404078, 30.860186, 23.773493>,  <26.358212, 31.095509, 23.762571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404078, 30.860186, 23.773493>,  <26.480520, 30.467979, 23.791695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404078, 30.860186, 23.773493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545455, 0.144625, 0.825568,
		0.816061, 0.132953, -0.562465,
		-0.191108, 0.980514, -0.045503,
		26.346745, 31.154339, 23.759842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071745, 30.792370, 24.112480>,  <26.480520, 30.467979, 23.791695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071745, 30.792370, 24.112480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797483, 31.076000, 24.178324>,  <26.632927, 31.246178, 24.217831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797483, 31.076000, 24.178324>,  <27.071745, 30.792370, 24.112480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797483, 31.076000, 24.178324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438513, 0.221849, 0.870913,
		0.581023, 0.669326, -0.463049,
		-0.685652, 0.709074, 0.164609,
		26.591787, 31.288723, 24.227707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350969, 31.404898, 24.209301>,  <27.071745, 30.792370, 24.112480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350969, 31.404898, 24.209301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998079, 31.416422, 24.397278>,  <26.786345, 31.423336, 24.510063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998079, 31.416422, 24.397278>,  <27.350969, 31.404898, 24.209301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998079, 31.416422, 24.397278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459804, 0.267415, 0.846800,
		-0.101271, 0.963151, -0.249169,
		-0.882227, 0.028812, 0.469942,
		26.733412, 31.425066, 24.538260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955315, 31.814013, 23.754549>,  <27.350969, 31.404898, 24.209301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955315, 31.814013, 23.754549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964239, 32.208664, 23.689970>,  <27.969595, 32.445454, 23.651222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964239, 32.208664, 23.689970>,  <27.955315, 31.814013, 23.754549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964239, 32.208664, 23.689970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295535, 0.147759, 0.943836,
		0.955071, -0.068773, -0.288286,
		0.022313, 0.986629, -0.161445,
		27.970934, 32.504654, 23.641537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325327, 32.020500, 24.305294>,  <27.955315, 31.814013, 23.754549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325327, 32.020500, 24.305294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179609, 32.367210, 24.169069>,  <28.092178, 32.575237, 24.087334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179609, 32.367210, 24.169069>,  <28.325327, 32.020500, 24.305294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179609, 32.367210, 24.169069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224891, 0.436746, 0.871021,
		0.903722, 0.240719, -0.354035,
		-0.364295, 0.866780, -0.340562,
		28.070320, 32.627243, 24.066900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815994, 32.612240, 24.351072>,  <28.325327, 32.020500, 24.305294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815994, 32.612240, 24.351072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442017, 32.751762, 24.377054>,  <28.217630, 32.835476, 24.392643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442017, 32.751762, 24.377054>,  <28.815994, 32.612240, 24.351072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442017, 32.751762, 24.377054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241989, 0.493014, 0.835690,
		0.259470, 0.797040, -0.545347,
		-0.934942, 0.348804, 0.064953,
		28.161533, 32.856403, 24.396540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909977, 33.236431, 24.599585>,  <28.815994, 32.612240, 24.351072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909977, 33.236431, 24.599585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514353, 33.203381, 24.648468>,  <28.276979, 33.183548, 24.677797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514353, 33.203381, 24.648468>,  <28.909977, 33.236431, 24.599585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514353, 33.203381, 24.648468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040190, 0.646145, 0.762156,
		-0.141941, 0.758729, -0.635754,
		-0.989059, -0.082630, 0.122208,
		28.217634, 33.178593, 24.685131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768112, 33.879578, 24.701771>,  <28.909977, 33.236431, 24.599585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768112, 33.879578, 24.701771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448652, 33.673958, 24.826935>,  <28.256977, 33.550587, 24.902033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448652, 33.673958, 24.826935>,  <28.768112, 33.879578, 24.701771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448652, 33.673958, 24.826935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035382, 0.559169, 0.828298,
		-0.600757, 0.650448, -0.464768,
		-0.798648, -0.514050, 0.312910,
		28.209057, 33.519741, 24.920809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270452, 34.311329, 25.032619>,  <28.768112, 33.879578, 24.701771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270452, 34.311329, 25.032619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184078, 33.952160, 25.186041>,  <28.132254, 33.736660, 25.278093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184078, 33.952160, 25.186041>,  <28.270452, 34.311329, 25.032619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184078, 33.952160, 25.186041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205501, 0.425817, 0.881163,
		-0.954537, 0.111453, -0.276473,
		-0.215935, -0.897919, 0.383555,
		28.119297, 33.682785, 25.301107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872339, 34.465355, 25.574316>,  <28.270452, 34.311329, 25.032619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872339, 34.465355, 25.574316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949558, 34.077049, 25.631376>,  <27.995890, 33.844067, 25.665611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949558, 34.077049, 25.631376>,  <27.872339, 34.465355, 25.574316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949558, 34.077049, 25.631376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006232, 0.146593, 0.989177,
		-0.981170, -0.190069, 0.034349,
		0.193047, -0.970765, 0.142648,
		28.007473, 33.785820, 25.674171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403437, 34.231022, 26.143028>,  <27.872339, 34.465355, 25.574316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403437, 34.231022, 26.143028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719189, 33.985878, 26.128721>,  <27.908640, 33.838791, 26.120136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719189, 33.985878, 26.128721>,  <27.403437, 34.231022, 26.143028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719189, 33.985878, 26.128721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058639, 0.017272, 0.998130,
		-0.611100, -0.790000, 0.049572,
		0.789379, -0.612864, -0.035770,
		27.956003, 33.802017, 26.117990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257051, 33.690735, 26.585058>,  <27.403437, 34.231022, 26.143028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257051, 33.690735, 26.585058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654612, 33.692410, 26.540970>,  <27.893147, 33.693413, 26.514517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654612, 33.692410, 26.540970>,  <27.257051, 33.690735, 26.585058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654612, 33.692410, 26.540970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109890, -0.123883, 0.986193,
		-0.009528, -0.992288, -0.123587,
		0.993898, 0.004185, -0.110223,
		27.952782, 33.693665, 26.507902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560482, 33.070461, 26.877708>,  <27.257051, 33.690735, 26.585058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560482, 33.070461, 26.877708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834848, 33.361462, 26.871180>,  <27.999468, 33.536060, 26.867262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834848, 33.361462, 26.871180>,  <27.560482, 33.070461, 26.877708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834848, 33.361462, 26.871180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175912, -0.144011, 0.973815,
		0.706097, -0.670827, -0.226755,
		0.685917, 0.727497, -0.016321,
		28.040623, 33.579712, 26.866283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999607, 32.790997, 27.369886>,  <27.560482, 33.070461, 26.877708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999607, 32.790997, 27.369886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138657, 33.163940, 27.330160>,  <28.222086, 33.387707, 27.306324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138657, 33.163940, 27.330160>,  <27.999607, 32.790997, 27.369886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138657, 33.163940, 27.330160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343575, -0.028109, 0.938704,
		0.872418, -0.360438, -0.330107,
		0.347624, 0.932360, -0.099315,
		28.242945, 33.443649, 27.300365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624786, 32.791752, 27.709305>,  <27.999607, 32.790997, 27.369886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624786, 32.791752, 27.709305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524086, 33.178642, 27.696102>,  <28.463665, 33.410778, 27.688181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524086, 33.178642, 27.696102>,  <28.624786, 32.791752, 27.709305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524086, 33.178642, 27.696102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509986, 0.161573, 0.844871,
		0.822517, 0.195864, -0.533950,
		-0.251752, 0.967228, -0.033009,
		28.448561, 33.468811, 27.686199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206841, 33.179890, 28.000462>,  <28.624786, 32.791752, 27.709305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206841, 33.179890, 28.000462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895395, 33.429428, 28.027525>,  <28.708529, 33.579151, 28.043762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895395, 33.429428, 28.027525>,  <29.206841, 33.179890, 28.000462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895395, 33.429428, 28.027525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322753, 0.305674, 0.895765,
		0.538138, 0.719291, -0.439350,
		-0.778613, 0.623846, 0.067658,
		28.661812, 33.616581, 28.047823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489111, 33.892330, 28.177652>,  <29.206841, 33.179890, 28.000462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489111, 33.892330, 28.177652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103209, 33.912277, 28.281004>,  <28.871668, 33.924248, 28.343014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103209, 33.912277, 28.281004>,  <29.489111, 33.892330, 28.177652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103209, 33.912277, 28.281004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260530, 0.319124, 0.911199,
		-0.037013, 0.946400, -0.320870,
		-0.964756, 0.049870, 0.258377,
		28.813782, 33.927238, 28.358517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529512, 34.472412, 28.646387>,  <29.489111, 33.892330, 28.177652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529512, 34.472412, 28.646387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174547, 34.308250, 28.730358>,  <28.961569, 34.209755, 28.780741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174547, 34.308250, 28.730358>,  <29.529512, 34.472412, 28.646387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174547, 34.308250, 28.730358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178846, 0.113210, 0.977342,
		-0.424867, 0.904851, -0.027066,
		-0.887413, -0.410399, 0.209928,
		28.908323, 34.185131, 28.793337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238022, 34.899315, 29.135590>,  <29.529512, 34.472412, 28.646387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238022, 34.899315, 29.135590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040417, 34.552124, 29.155863>,  <28.921854, 34.343811, 29.168026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040417, 34.552124, 29.155863>,  <29.238022, 34.899315, 29.135590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040417, 34.552124, 29.155863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011454, 0.064785, 0.997833,
		-0.869379, 0.492363, -0.041947,
		-0.494014, -0.867976, 0.050683,
		28.892212, 34.291733, 29.171068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580740, 35.010284, 29.542580>,  <29.238022, 34.899315, 29.135590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580740, 35.010284, 29.542580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681557, 34.623440, 29.556232>,  <28.742046, 34.391331, 29.564425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681557, 34.623440, 29.556232>,  <28.580740, 35.010284, 29.542580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681557, 34.623440, 29.556232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187688, -0.014251, 0.982125,
		-0.949341, -0.253941, -0.185107,
		0.252040, -0.967115, 0.034133,
		28.757168, 34.333305, 29.566473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016613, 34.682713, 29.803606>,  <28.580740, 35.010284, 29.542580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016613, 34.682713, 29.803606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331272, 34.453705, 29.896049>,  <28.520067, 34.316299, 29.951515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331272, 34.453705, 29.896049>,  <28.016613, 34.682713, 29.803606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331272, 34.453705, 29.896049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286561, -0.007009, 0.958036,
		-0.546872, -0.819863, -0.169574,
		0.786648, -0.572516, 0.231108,
		28.567266, 34.281948, 29.965382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825462, 34.288452, 30.382586>,  <28.016613, 34.682713, 29.803606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825462, 34.288452, 30.382586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212158, 34.186253, 30.387287>,  <28.444176, 34.124931, 30.390108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212158, 34.186253, 30.387287>,  <27.825462, 34.288452, 30.382586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212158, 34.186253, 30.387287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032660, -0.077734, 0.996439,
		-0.253674, -0.963680, -0.083493,
		0.966738, -0.255497, 0.011755,
		28.502180, 34.109604, 30.390814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895334, 33.750969, 30.963987>,  <27.825462, 34.288452, 30.382586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895334, 33.750969, 30.963987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263945, 33.893703, 30.902727>,  <28.485111, 33.979343, 30.865971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263945, 33.893703, 30.902727>,  <27.895334, 33.750969, 30.963987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263945, 33.893703, 30.902727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188245, -0.065559, 0.979932,
		0.339639, -0.931862, -0.127588,
		0.921525, 0.356841, -0.153152,
		28.540401, 34.000755, 30.856781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294991, 33.373524, 31.581215>,  <27.895334, 33.750969, 30.963987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294991, 33.373524, 31.581215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520918, 33.659920, 31.417097>,  <28.656475, 33.831757, 31.318626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520918, 33.659920, 31.417097>,  <28.294991, 33.373524, 31.581215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520918, 33.659920, 31.417097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433225, 0.165897, 0.885886,
		0.702350, -0.678115, -0.216482,
		0.564820, 0.715987, -0.410294,
		28.690363, 33.874718, 31.294008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058365, 33.239899, 31.742178>,  <28.294991, 33.373524, 31.581215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058365, 33.239899, 31.742178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014553, 33.631020, 31.670727>,  <28.988266, 33.865692, 31.627857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014553, 33.631020, 31.670727>,  <29.058365, 33.239899, 31.742178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014553, 33.631020, 31.670727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578304, 0.208850, 0.788636,
		0.808436, -0.016920, -0.588341,
		-0.109531, 0.977802, -0.178626,
		28.981693, 33.924358, 31.617138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645144, 33.404961, 31.944031>,  <29.058365, 33.239899, 31.742178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645144, 33.404961, 31.944031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454657, 33.756691, 31.942598>,  <29.340364, 33.967728, 31.941738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454657, 33.756691, 31.942598>,  <29.645144, 33.404961, 31.944031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454657, 33.756691, 31.942598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445737, 0.244907, 0.861011,
		0.757983, 0.408430, -0.508574,
		-0.476216, 0.879321, -0.003583,
		29.311792, 34.020489, 31.941523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108912, 33.278744, 31.328604>,  <29.645144, 33.404961, 31.944031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108912, 33.278744, 31.328604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760796, 33.452900, 31.420719>,  <29.551926, 33.557392, 31.475988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760796, 33.452900, 31.420719>,  <30.108912, 33.278744, 31.328604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760796, 33.452900, 31.420719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215806, -0.757352, 0.616316,
		0.442746, 0.486677, 0.753075,
		-0.870290, 0.435390, 0.230286,
		29.499708, 33.583515, 31.489805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501612, 33.601009, 31.851913>,  <30.108912, 33.278744, 31.328604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501612, 33.601009, 31.851913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893791, 33.575649, 31.926430>,  <31.129099, 33.560432, 31.971140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893791, 33.575649, 31.926430>,  <30.501612, 33.601009, 31.851913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893791, 33.575649, 31.926430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146115, -0.868663, 0.473365,
		0.131813, -0.491329, -0.860942,
		0.980447, -0.063401, 0.186292,
		31.187925, 33.556629, 31.982317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115108, 33.393074, 31.349977>,  <30.501612, 33.601009, 31.851913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115108, 33.393074, 31.349977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146278, 33.774384, 31.466726>,  <31.164980, 34.003170, 31.536776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146278, 33.774384, 31.466726>,  <31.115108, 33.393074, 31.349977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146278, 33.774384, 31.466726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496248, -0.291004, 0.817957,
		0.864677, 0.081101, -0.495739,
		0.077925, 0.953278, 0.291871,
		31.169657, 34.060368, 31.554287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715801, 33.415848, 31.595186>,  <31.115108, 33.393074, 31.349977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715801, 33.415848, 31.595186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504765, 33.723614, 31.739214>,  <31.378143, 33.908272, 31.825630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504765, 33.723614, 31.739214>,  <31.715801, 33.415848, 31.595186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504765, 33.723614, 31.739214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392633, -0.155007, 0.906538,
		0.753317, 0.619656, -0.220318,
		-0.527591, 0.769415, 0.360067,
		31.346487, 33.954437, 31.847235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941494, 33.686840, 32.275352>,  <31.715801, 33.415848, 31.595186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941494, 33.686840, 32.275352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555283, 33.790958, 32.275280>,  <31.323555, 33.853428, 32.275238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555283, 33.790958, 32.275280>,  <31.941494, 33.686840, 32.275352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555283, 33.790958, 32.275280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078197, 0.290715, 0.953609,
		0.248273, 0.920723, -0.301049,
		-0.965529, 0.260297, -0.000179,
		31.265623, 33.869049, 32.275227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832802, 34.371197, 32.410980>,  <31.941494, 33.686840, 32.275352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832802, 34.371197, 32.410980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493153, 34.189610, 32.518982>,  <31.289362, 34.080658, 32.583782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493153, 34.189610, 32.518982>,  <31.832802, 34.371197, 32.410980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493153, 34.189610, 32.518982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067237, 0.414132, 0.907730,
		-0.523897, 0.788930, -0.321126,
		-0.849124, -0.453965, 0.270008,
		31.238415, 34.053421, 32.599983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446960, 34.821926, 32.788113>,  <31.832802, 34.371197, 32.410980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446960, 34.821926, 32.788113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350874, 34.451309, 32.903923>,  <31.293222, 34.228939, 32.973408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350874, 34.451309, 32.903923>,  <31.446960, 34.821926, 32.788113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350874, 34.451309, 32.903923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120290, 0.267543, 0.956008,
		-0.963237, 0.264475, 0.047185,
		-0.240216, -0.926538, 0.289521,
		31.278809, 34.173347, 32.990780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935928, 34.880989, 33.353073>,  <31.446960, 34.821926, 32.788113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935928, 34.880989, 33.353073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127356, 34.530907, 33.381340>,  <31.242212, 34.320858, 33.398300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127356, 34.530907, 33.381340>,  <30.935928, 34.880989, 33.353073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127356, 34.530907, 33.381340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164690, 0.168528, 0.971841,
		-0.862467, -0.453453, 0.224789,
		0.478568, -0.875202, 0.070671,
		31.270926, 34.268345, 33.402542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606340, 34.492313, 33.875751>,  <30.935928, 34.880989, 33.353073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606340, 34.492313, 33.875751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969219, 34.325722, 33.851955>,  <31.186947, 34.225765, 33.837677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969219, 34.325722, 33.851955>,  <30.606340, 34.492313, 33.875751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969219, 34.325722, 33.851955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064594, -0.001841, 0.997910,
		-0.415722, -0.909142, 0.025232,
		0.907195, -0.416483, -0.059491,
		31.241379, 34.200779, 33.834106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664986, 34.009209, 34.562920>,  <30.606340, 34.492313, 33.875751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664986, 34.009209, 34.562920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041039, 34.080307, 34.446606>,  <31.266670, 34.122967, 34.376816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041039, 34.080307, 34.446606>,  <30.664986, 34.009209, 34.562920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041039, 34.080307, 34.446606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289881, 0.031646, 0.956539,
		0.179227, -0.983567, -0.021775,
		0.940131, 0.177750, -0.290789,
		31.323078, 34.133633, 34.359367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156572, 33.493420, 34.843361>,  <30.664986, 34.009209, 34.562920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156572, 33.493420, 34.843361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389643, 33.808643, 34.763905>,  <31.529484, 33.997776, 34.716232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389643, 33.808643, 34.763905>,  <31.156572, 33.493420, 34.843361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389643, 33.808643, 34.763905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160150, 0.128284, 0.978721,
		0.796770, -0.602088, -0.051460,
		0.582674, 0.788057, -0.198638,
		31.564445, 34.045059, 34.704315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683422, 33.374897, 35.325722>,  <31.156572, 33.493420, 34.843361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683422, 33.374897, 35.325722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689859, 33.752605, 35.194214>,  <31.693722, 33.979233, 35.115311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689859, 33.752605, 35.194214>,  <31.683422, 33.374897, 35.325722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689859, 33.752605, 35.194214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090191, 0.326097, 0.941024,
		0.995794, -0.044797, -0.079917,
		0.016095, 0.944274, -0.328766,
		31.694687, 34.035889, 35.095585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290024, 33.618816, 35.535877>,  <31.683422, 33.374897, 35.325722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290024, 33.618816, 35.535877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094055, 33.965195, 35.495647>,  <31.976475, 34.173023, 35.471508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094055, 33.965195, 35.495647>,  <32.290024, 33.618816, 35.535877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094055, 33.965195, 35.495647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157530, 0.201411, 0.966756,
		0.857416, 0.457790, -0.235088,
		-0.489920, 0.865946, -0.100577,
		31.947079, 34.224979, 35.465473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809532, 34.212620, 35.668465>,  <32.290024, 33.618816, 35.535877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809532, 34.212620, 35.668465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434696, 34.323677, 35.753113>,  <32.209797, 34.390312, 35.803902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434696, 34.323677, 35.753113>,  <32.809532, 34.212620, 35.668465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434696, 34.323677, 35.753113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275241, 0.214732, 0.937087,
		0.214732, 0.936379, -0.277641,
		-0.937087, 0.277641, 0.211620,
		32.153568, 34.406971, 35.816597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925781, 34.862888, 35.996017>,  <32.809532, 34.212620, 35.668465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925781, 34.862888, 35.996017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545227, 34.763741, 36.069149>,  <32.316895, 34.704250, 36.113029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545227, 34.763741, 36.069149>,  <32.925781, 34.862888, 35.996017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545227, 34.763741, 36.069149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149126, 0.148689, 0.977575,
		-0.269497, 0.957315, -0.104497,
		-0.951385, -0.247870, 0.182832,
		32.259811, 34.689381, 36.124001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838470, 35.282585, 36.566673>,  <32.925781, 34.862888, 35.996017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838470, 35.282585, 36.566673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541885, 35.014275, 36.573528>,  <32.363934, 34.853291, 36.577641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541885, 35.014275, 36.573528>,  <32.838470, 35.282585, 36.566673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541885, 35.014275, 36.573528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005321, 0.031413, 0.999492,
		-0.670970, 0.740998, -0.026861,
		-0.741466, -0.670772, 0.017135,
		32.319447, 34.813042, 36.578671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519592, 35.490719, 37.210033>,  <32.838470, 35.282585, 36.566673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519592, 35.490719, 37.210033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356476, 35.133900, 37.132095>,  <32.258606, 34.919807, 37.085335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356476, 35.133900, 37.132095>,  <32.519592, 35.490719, 37.210033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356476, 35.133900, 37.132095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227925, -0.107187, 0.967761,
		-0.884172, 0.439050, -0.159610,
		-0.407788, -0.892046, -0.194842,
		32.234138, 34.866287, 37.073643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922087, 35.523933, 37.705250>,  <32.519592, 35.490719, 37.210033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922087, 35.523933, 37.705250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994299, 35.140717, 37.616196>,  <32.037628, 34.910786, 37.562763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994299, 35.140717, 37.616196>,  <31.922087, 35.523933, 37.705250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994299, 35.140717, 37.616196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164786, -0.252616, 0.953431,
		-0.969667, -0.135438, -0.203477,
		0.180532, -0.958041, -0.222636,
		32.048458, 34.853306, 37.549404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356674, 35.198212, 37.960884>,  <31.922087, 35.523933, 37.705250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356674, 35.198212, 37.960884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667936, 34.949898, 37.922722>,  <31.854692, 34.800911, 37.899822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667936, 34.949898, 37.922722>,  <31.356674, 35.198212, 37.960884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667936, 34.949898, 37.922722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220465, -0.412218, 0.884009,
		-0.588111, -0.666858, -0.457630,
		0.778152, -0.620787, -0.095411,
		31.901382, 34.763660, 37.894100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128233, 34.474609, 38.011425>,  <31.356674, 35.198212, 37.960884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128233, 34.474609, 38.011425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514456, 34.474419, 38.115498>,  <31.746189, 34.474304, 38.177940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514456, 34.474419, 38.115498>,  <31.128233, 34.474609, 38.011425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514456, 34.474419, 38.115498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211166, -0.585660, 0.782567,
		0.152007, -0.810557, -0.565590,
		0.965558, -0.000478, 0.260186,
		31.804123, 34.474274, 38.193554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428064, 33.737747, 38.082481>,  <31.128233, 34.474609, 38.011425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428064, 33.737747, 38.082481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596886, 34.020821, 38.309128>,  <31.698179, 34.190666, 38.445114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596886, 34.020821, 38.309128>,  <31.428064, 33.737747, 38.082481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596886, 34.020821, 38.309128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313526, -0.472501, 0.823677,
		0.850631, -0.525284, 0.022458,
		0.422053, 0.707686, 0.566614,
		31.723501, 34.233128, 38.479111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802904, 33.372108, 38.615940>,  <31.428064, 33.737747, 38.082481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802904, 33.372108, 38.615940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685740, 33.734947, 38.736862>,  <31.615440, 33.952648, 38.809414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685740, 33.734947, 38.736862>,  <31.802904, 33.372108, 38.615940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685740, 33.734947, 38.736862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339299, -0.394202, 0.854096,
		0.893913, 0.147602, 0.423241,
		-0.292909, 0.907093, 0.302301,
		31.597866, 34.007076, 38.827553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212482, 33.553139, 39.246311>,  <31.802904, 33.372108, 38.615940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212482, 33.553139, 39.246311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920134, 33.824696, 39.274414>,  <31.744724, 33.987629, 39.291275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920134, 33.824696, 39.274414>,  <32.212482, 33.553139, 39.246311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920134, 33.824696, 39.274414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026592, -0.074537, 0.996864,
		0.681999, 0.730445, 0.036424,
		-0.730869, 0.678892, 0.070258,
		31.700872, 34.028362, 39.295490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345806, 34.142899, 39.755482>,  <32.212482, 33.553139, 39.246311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345806, 34.142899, 39.755482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945862, 34.138626, 39.750477>,  <31.705894, 34.136063, 39.747475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945862, 34.138626, 39.750477>,  <32.345806, 34.142899, 39.755482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945862, 34.138626, 39.750477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013675, 0.116270, 0.993124,
		-0.009155, 0.993160, -0.116400,
		-0.999865, -0.010684, -0.012517,
		31.645903, 34.135422, 39.746723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147869, 34.672798, 40.261009>,  <32.345806, 34.142899, 39.755482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147869, 34.672798, 40.261009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823305, 34.443951, 40.213196>,  <31.628567, 34.306641, 40.184509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823305, 34.443951, 40.213196>,  <32.147869, 34.672798, 40.261009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823305, 34.443951, 40.213196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203596, 0.084968, 0.975361,
		-0.547871, 0.815754, -0.185426,
		-0.811410, -0.572123, -0.119533,
		31.579882, 34.272312, 40.177338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540552, 34.976677, 40.610710>,  <32.147869, 34.672798, 40.261009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540552, 34.976677, 40.610710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459507, 34.586346, 40.577965>,  <31.410879, 34.352146, 40.558319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459507, 34.586346, 40.577965>,  <31.540552, 34.976677, 40.610710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459507, 34.586346, 40.577965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312412, -0.014811, 0.949831,
		-0.928087, 0.218023, -0.301860,
		-0.202614, -0.975831, -0.081859,
		31.398724, 34.293594, 40.553406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952513, 34.840427, 41.117607>,  <31.540552, 34.976677, 40.610710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952513, 34.840427, 41.117607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052660, 34.459827, 41.046085>,  <31.112747, 34.231468, 41.003170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052660, 34.459827, 41.046085>,  <30.952513, 34.840427, 41.117607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052660, 34.459827, 41.046085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340995, -0.259520, 0.903533,
		-0.906112, -0.165242, -0.389430,
		0.250366, -0.951496, -0.178808,
		31.127769, 34.174377, 40.992443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329340, 34.441216, 41.023544>,  <30.952513, 34.840427, 41.117607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329340, 34.441216, 41.023544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644581, 34.238346, 41.163067>,  <30.833725, 34.116623, 41.246780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644581, 34.238346, 41.163067>,  <30.329340, 34.441216, 41.023544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644581, 34.238346, 41.163067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519981, -0.245289, 0.818201,
		-0.329412, -0.826201, -0.457034,
		0.788103, -0.507175, 0.348808,
		30.881012, 34.086193, 41.267708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050545, 33.879944, 41.352692>,  <30.329340, 34.441216, 41.023544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050545, 33.879944, 41.352692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422516, 33.850365, 41.496784>,  <30.645699, 33.832615, 41.583241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422516, 33.850365, 41.496784>,  <30.050545, 33.879944, 41.352692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422516, 33.850365, 41.496784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367697, -0.170797, 0.914127,
		-0.006072, -0.982527, -0.186020,
		0.929926, -0.073950, 0.360235,
		30.701494, 33.828178, 41.604855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945499, 33.363708, 41.845272>,  <30.050545, 33.879944, 41.352692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945499, 33.363708, 41.845272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283075, 33.561760, 41.927841>,  <30.485620, 33.680592, 41.977383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283075, 33.561760, 41.927841>,  <29.945499, 33.363708, 41.845272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283075, 33.561760, 41.927841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237858, 0.000478, 0.971300,
		0.480822, -0.868818, 0.118174,
		0.843939, 0.495131, 0.206426,
		30.536257, 33.710300, 41.989769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191515, 33.034828, 42.387589>,  <29.945499, 33.363708, 41.845272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191515, 33.034828, 42.387589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388058, 33.382168, 42.414543>,  <30.505983, 33.590572, 42.430714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388058, 33.382168, 42.414543>,  <30.191515, 33.034828, 42.387589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388058, 33.382168, 42.414543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149526, 0.007885, 0.988726,
		0.858027, -0.495893, 0.133715,
		0.491356, 0.868348, 0.067383,
		30.535465, 33.642673, 42.434757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528999, 32.923527, 43.031906>,  <30.191515, 33.034828, 42.387589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528999, 32.923527, 43.031906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524691, 33.314270, 42.946453>,  <30.522104, 33.548714, 42.895180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524691, 33.314270, 42.946453>,  <30.528999, 32.923527, 43.031906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524691, 33.314270, 42.946453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128697, 0.210517, 0.969082,
		0.991625, 0.037935, 0.123450,
		-0.010774, 0.976854, -0.213636,
		30.521458, 33.607327, 42.882362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171122, 33.292091, 43.379593>,  <30.528999, 32.923527, 43.031906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171122, 33.292091, 43.379593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883968, 33.563141, 43.315765>,  <30.711676, 33.725773, 43.277470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883968, 33.563141, 43.315765>,  <31.171122, 33.292091, 43.379593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883968, 33.563141, 43.315765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034036, 0.263108, 0.964166,
		0.695329, 0.686729, -0.211945,
		-0.717885, 0.677627, -0.159573,
		30.668604, 33.766430, 43.267895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352709, 33.846287, 43.695942>,  <31.171122, 33.292091, 43.379593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352709, 33.846287, 43.695942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954781, 33.876019, 43.668213>,  <30.716024, 33.893860, 43.651577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954781, 33.876019, 43.668213>,  <31.352709, 33.846287, 43.695942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954781, 33.876019, 43.668213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034261, 0.396880, 0.917231,
		0.095692, 0.914856, -0.392278,
		-0.994821, 0.074332, -0.069322,
		30.656334, 33.898319, 43.647415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092068, 34.521233, 43.873230>,  <31.352709, 33.846287, 43.695942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092068, 34.521233, 43.873230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807026, 34.250549, 43.947273>,  <30.636002, 34.088139, 43.991699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807026, 34.250549, 43.947273>,  <31.092068, 34.521233, 43.873230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807026, 34.250549, 43.947273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202435, 0.450966, 0.869281,
		-0.671727, 0.581980, -0.458349,
		-0.712603, -0.676705, 0.185112,
		30.593245, 34.047539, 44.002808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676733, 34.865593, 44.364479>,  <31.092068, 34.521233, 43.873230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676733, 34.865593, 44.364479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564470, 34.482933, 44.395592>,  <30.497112, 34.253338, 44.414257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564470, 34.482933, 44.395592>,  <30.676733, 34.865593, 44.364479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564470, 34.482933, 44.395592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194572, 0.136060, 0.971406,
		-0.939879, 0.257499, -0.224324,
		-0.280657, -0.956652, 0.077778,
		30.480272, 34.195938, 44.418926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155491, 35.002422, 44.788235>,  <30.676733, 34.865593, 44.364479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155491, 35.002422, 44.788235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167593, 34.602631, 44.792786>,  <30.174854, 34.362755, 44.795517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167593, 34.602631, 44.792786>,  <30.155491, 35.002422, 44.788235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167593, 34.602631, 44.792786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392655, -0.001413, 0.919685,
		-0.919188, -0.032293, -0.392492,
		0.030254, -0.999477, 0.011381,
		30.176668, 34.302788, 44.796200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550175, 34.748562, 45.157658>,  <30.155491, 35.002422, 44.788235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550175, 34.748562, 45.157658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780050, 34.425037, 45.207558>,  <29.917976, 34.230923, 45.237499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780050, 34.425037, 45.207558>,  <29.550175, 34.748562, 45.157658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780050, 34.425037, 45.207558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197317, 0.010995, 0.980278,
		-0.794228, -0.587970, -0.153273,
		0.574689, -0.808808, 0.124749,
		29.952457, 34.182396, 45.244984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223936, 34.226723, 45.609711>,  <29.550175, 34.748562, 45.157658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223936, 34.226723, 45.609711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616549, 34.152584, 45.628674>,  <29.852116, 34.108101, 45.640053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616549, 34.152584, 45.628674>,  <29.223936, 34.226723, 45.609711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616549, 34.152584, 45.628674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106832, -0.325440, 0.939508,
		-0.158700, -0.927220, -0.339230,
		0.981530, -0.185341, 0.047410,
		29.911007, 34.096981, 45.642895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334148, 33.581882, 45.974190>,  <29.223936, 34.226723, 45.609711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334148, 33.581882, 45.974190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673988, 33.787327, 46.022160>,  <29.877893, 33.910595, 46.050941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673988, 33.787327, 46.022160>,  <29.334148, 33.581882, 45.974190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673988, 33.787327, 46.022160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065081, -0.123549, 0.990202,
		0.523395, -0.849082, -0.071541,
		0.849601, 0.513611, 0.119924,
		29.928869, 33.941410, 46.058136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671288, 33.285946, 46.503483>,  <29.334148, 33.581882, 45.974190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671288, 33.285946, 46.503483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910814, 33.606289, 46.505909>,  <30.054531, 33.798496, 46.507362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910814, 33.606289, 46.505909>,  <29.671288, 33.285946, 46.503483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910814, 33.606289, 46.505909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284091, -0.219485, 0.933337,
		0.748805, -0.557177, -0.358949,
		0.598818, 0.800862, 0.006062,
		30.090460, 33.846546, 46.507729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383368, 33.092480, 46.510128>,  <29.671288, 33.285946, 46.503483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383368, 33.092480, 46.510128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315985, 33.443527, 46.689640>,  <30.275555, 33.654156, 46.797348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315985, 33.443527, 46.689640>,  <30.383368, 33.092480, 46.510128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315985, 33.443527, 46.689640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063700, -0.444638, 0.893442,
		0.983648, 0.179096, 0.018999,
		-0.168459, 0.877623, 0.448776,
		30.265448, 33.706814, 46.824272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776281, 32.980476, 47.065308>,  <30.383368, 33.092480, 46.510128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776281, 32.980476, 47.065308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571238, 33.318027, 47.128674>,  <30.448212, 33.520557, 47.166695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571238, 33.318027, 47.128674>,  <30.776281, 32.980476, 47.065308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571238, 33.318027, 47.128674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091439, -0.129795, 0.987316,
		0.853738, 0.520594, -0.010629,
		-0.512612, 0.843881, 0.158413,
		30.417454, 33.571190, 47.176197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170227, 33.305065, 47.541161>,  <30.776281, 32.980476, 47.065308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170227, 33.305065, 47.541161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807293, 33.472809, 47.553047>,  <30.589533, 33.573456, 47.560181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807293, 33.472809, 47.553047>,  <31.170227, 33.305065, 47.541161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807293, 33.472809, 47.553047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035713, 0.006447, 0.999341,
		0.418890, 0.907798, -0.020826,
		-0.907335, 0.419357, 0.029720,
		30.535093, 33.598618, 47.561962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176378, 33.791618, 48.053787>,  <31.170227, 33.305065, 47.541161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176378, 33.791618, 48.053787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783422, 33.718487, 48.038387>,  <30.547649, 33.674606, 48.029148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783422, 33.718487, 48.038387>,  <31.176378, 33.791618, 48.053787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783422, 33.718487, 48.038387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046677, 0.040628, 0.998083,
		-0.180915, 0.982305, -0.048447,
		-0.982391, -0.182829, -0.038500,
		30.488705, 33.663639, 48.026836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855619, 34.226009, 48.505268>,  <31.176378, 33.791618, 48.053787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855619, 34.226009, 48.505268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584843, 33.933567, 48.471237>,  <30.422377, 33.758102, 48.450821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584843, 33.933567, 48.471237>,  <30.855619, 34.226009, 48.505268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584843, 33.933567, 48.471237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027490, -0.140616, 0.989683,
		-0.735521, 0.667620, 0.115287,
		-0.676944, -0.731102, -0.085073,
		30.381760, 33.714237, 48.445717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288580, 34.423462, 48.966427>,  <30.855619, 34.226009, 48.505268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288580, 34.423462, 48.966427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235462, 34.031254, 48.908546>,  <30.203590, 33.795929, 48.873817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235462, 34.031254, 48.908546>,  <30.288580, 34.423462, 48.966427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235462, 34.031254, 48.908546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115043, -0.160260, 0.980348,
		-0.984444, 0.113539, 0.134084,
		-0.132796, -0.980523, -0.144705,
		30.195623, 33.737099, 48.865135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896408, 34.131744, 49.586708>,  <30.288580, 34.423462, 48.966427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896408, 34.131744, 49.586708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040915, 33.808193, 49.401150>,  <30.127619, 33.614063, 49.289814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040915, 33.808193, 49.401150>,  <29.896408, 34.131744, 49.586708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040915, 33.808193, 49.401150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017210, -0.503199, 0.863999,
		-0.932304, -0.304150, -0.195710,
		0.361267, -0.808878, -0.463900,
		30.149294, 33.565529, 49.261978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487230, 33.564739, 49.763252>,  <29.896408, 34.131744, 49.586708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487230, 33.564739, 49.763252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861183, 33.464836, 49.662361>,  <30.085554, 33.404892, 49.601826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861183, 33.464836, 49.662361>,  <29.487230, 33.564739, 49.763252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861183, 33.464836, 49.662361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122257, -0.440533, 0.889373,
		-0.333244, -0.862294, -0.381311,
		0.934881, -0.249760, -0.252226,
		30.141647, 33.389908, 49.586693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670284, 32.854229, 49.697865>,  <29.487230, 33.564739, 49.763252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670284, 32.854229, 49.697865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999355, 33.055965, 49.802818>,  <30.196798, 33.177006, 49.865791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999355, 33.055965, 49.802818>,  <29.670284, 32.854229, 49.697865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999355, 33.055965, 49.802818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131592, -0.280069, 0.950918,
		0.553071, -0.816825, -0.164039,
		0.822676, 0.504339, 0.262386,
		30.246159, 33.207268, 49.881535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968702, 32.389175, 50.048477>,  <29.670284, 32.854229, 49.697865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968702, 32.389175, 50.048477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102491, 32.747734, 50.164822>,  <30.182766, 32.962868, 50.234631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102491, 32.747734, 50.164822>,  <29.968702, 32.389175, 50.048477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102491, 32.747734, 50.164822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038189, -0.295494, 0.954581,
		0.941631, -0.330390, -0.064603,
		0.334474, 0.896396, 0.290863,
		30.202833, 33.016651, 50.252079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165628, 32.263035, 50.748684>,  <29.968702, 32.389175, 50.048477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165628, 32.263035, 50.748684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201223, 32.660961, 50.768353>,  <30.222580, 32.899719, 50.780155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201223, 32.660961, 50.768353>,  <30.165628, 32.263035, 50.748684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201223, 32.660961, 50.768353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141627, -0.061508, 0.988007,
		0.985912, -0.080956, -0.146367,
		0.088988, 0.994818, 0.049175,
		30.227921, 32.959408, 50.783104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627647, 32.402897, 51.215874>,  <30.165628, 32.263035, 50.748684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627647, 32.402897, 51.215874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388586, 32.723206, 51.231724>,  <30.245150, 32.915390, 51.241234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388586, 32.723206, 51.231724>,  <30.627647, 32.402897, 51.215874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388586, 32.723206, 51.231724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056316, -0.091232, 0.994236,
		0.799774, 0.591977, 0.099621,
		-0.597654, 0.800774, 0.039628,
		30.209290, 32.963436, 51.243610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086288, 33.079006, 51.262894>,  <30.627647, 32.402897, 51.215874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086288, 33.079006, 51.262894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364237, 32.791351, 51.262280>,  <31.531006, 32.618759, 51.261913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364237, 32.791351, 51.262280>,  <31.086288, 33.079006, 51.262894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364237, 32.791351, 51.262280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486637, -0.468648, -0.737261,
		0.529471, 0.513046, -0.675606,
		0.694871, -0.719133, -0.001531,
		31.572699, 32.575611, 51.261822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472044, 32.982433, 50.709385>,  <31.086288, 33.079006, 51.262894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472044, 32.982433, 50.709385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409914, 32.627422, 50.882896>,  <31.372637, 32.414417, 50.987003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409914, 32.627422, 50.882896>,  <31.472044, 32.982433, 50.709385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409914, 32.627422, 50.882896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582048, -0.272575, -0.766109,
		0.798182, -0.371477, -0.474247,
		-0.155324, -0.887529, 0.433782,
		31.363317, 32.361164, 51.013031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558605, 32.542542, 50.197384>,  <31.472044, 32.982433, 50.709385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558605, 32.542542, 50.197384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354799, 32.348362, 50.481564>,  <31.232515, 32.231853, 50.652069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354799, 32.348362, 50.481564>,  <31.558605, 32.542542, 50.197384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354799, 32.348362, 50.481564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565037, -0.433935, -0.701737,
		0.648943, -0.758975, -0.053198,
		-0.509516, -0.485446, 0.710448,
		31.201944, 32.202728, 50.694698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672192, 31.815376, 50.051674>,  <31.558605, 32.542542, 50.197384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672192, 31.815376, 50.051674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323458, 31.909254, 50.223640>,  <31.114218, 31.965580, 50.326820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323458, 31.909254, 50.223640>,  <31.672192, 31.815376, 50.051674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323458, 31.909254, 50.223640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489782, -0.409309, -0.769792,
		-0.004698, -0.881694, 0.471798,
		-0.871832, 0.234694, 0.429915,
		31.061909, 31.979662, 50.352615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268482, 31.291613, 50.297440>,  <31.672192, 31.815376, 50.051674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268482, 31.291613, 50.297440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045424, 31.588671, 50.149109>,  <30.911589, 31.766907, 50.060112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045424, 31.588671, 50.149109>,  <31.268482, 31.291613, 50.297440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045424, 31.588671, 50.149109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201877, -0.554654, -0.807221,
		-0.805158, -0.375281, 0.459222,
		-0.557644, 0.742647, -0.370823,
		30.878130, 31.811464, 50.037861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596594, 31.080608, 49.997456>,  <31.268482, 31.291613, 50.297440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596594, 31.080608, 49.997456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730330, 31.407560, 49.809792>,  <30.810572, 31.603731, 49.697193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730330, 31.407560, 49.809792>,  <30.596594, 31.080608, 49.997456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730330, 31.407560, 49.809792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069442, -0.475085, -0.877196,
		-0.939891, 0.325861, -0.102079,
		0.334340, 0.817379, -0.469156,
		30.830631, 31.652775, 49.669044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151499, 31.263111, 49.387482>,  <30.596594, 31.080608, 49.997456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151499, 31.263111, 49.387482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513821, 31.419189, 49.321434>,  <30.731215, 31.512836, 49.281807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513821, 31.419189, 49.321434>,  <30.151499, 31.263111, 49.387482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513821, 31.419189, 49.321434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029275, -0.446412, -0.894349,
		-0.422682, 0.805272, -0.415785,
		0.905805, 0.390197, -0.165116,
		30.785563, 31.536249, 49.271900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183434, 31.388302, 48.634876>,  <30.151499, 31.263111, 49.387482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183434, 31.388302, 48.634876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572264, 31.431015, 48.718460>,  <30.805563, 31.456642, 48.768608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572264, 31.431015, 48.718460>,  <30.183434, 31.388302, 48.634876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572264, 31.431015, 48.718460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229352, -0.244034, -0.942255,
		-0.049623, 0.963870, -0.261710,
		0.972078, 0.106782, 0.208956,
		30.863888, 31.463049, 48.781147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584375, 31.858284, 48.130093>,  <30.183434, 31.388302, 48.634876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584375, 31.858284, 48.130093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841131, 31.608461, 48.308037>,  <30.995186, 31.458567, 48.414803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841131, 31.608461, 48.308037>,  <30.584375, 31.858284, 48.130093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841131, 31.608461, 48.308037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383055, -0.241406, -0.891623,
		0.664263, 0.742732, 0.084283,
		0.641891, -0.624557, 0.444864,
		31.033699, 31.421095, 48.441498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129908, 32.017242, 47.768505>,  <30.584375, 31.858284, 48.130093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129908, 32.017242, 47.768505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220633, 31.653944, 47.909153>,  <31.275068, 31.435965, 47.993542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220633, 31.653944, 47.909153>,  <31.129908, 32.017242, 47.768505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220633, 31.653944, 47.909153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372666, -0.252624, -0.892917,
		0.899820, 0.333563, 0.281176,
		0.226812, -0.908249, 0.351624,
		31.288675, 31.381470, 48.014641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516809, 31.834343, 47.306877>,  <31.129908, 32.017242, 47.768505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516809, 31.834343, 47.306877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535906, 31.465485, 47.460430>,  <31.547363, 31.244169, 47.552563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535906, 31.465485, 47.460430>,  <31.516809, 31.834343, 47.306877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535906, 31.465485, 47.460430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399573, -0.334599, -0.853455,
		0.915457, 0.194132, 0.352491,
		0.047739, -0.922147, 0.383881,
		31.550228, 31.188841, 47.575596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148037, 31.572157, 47.199783>,  <31.516809, 31.834343, 47.306877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148037, 31.572157, 47.199783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925699, 31.246632, 47.267593>,  <31.792295, 31.051317, 47.308281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925699, 31.246632, 47.267593>,  <32.148037, 31.572157, 47.199783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925699, 31.246632, 47.267593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430480, -0.456259, -0.778791,
		0.711140, -0.359910, 0.603941,
		-0.555848, -0.813813, 0.169530,
		31.758945, 31.002487, 47.318451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525566, 30.953381, 47.165695>,  <32.148037, 31.572157, 47.199783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525566, 30.953381, 47.165695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156971, 30.811810, 47.101700>,  <31.935814, 30.726866, 47.063305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156971, 30.811810, 47.101700>,  <32.525566, 30.953381, 47.165695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156971, 30.811810, 47.101700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327940, -0.488247, -0.808746,
		0.208127, -0.797715, 0.565981,
		-0.921487, -0.353930, -0.159985,
		31.880526, 30.705631, 47.053703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608334, 30.116493, 46.910099>,  <32.525566, 30.953381, 47.165695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608334, 30.116493, 46.910099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263321, 30.268658, 46.776638>,  <32.056313, 30.359957, 46.696560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263321, 30.268658, 46.776638>,  <32.608334, 30.116493, 46.910099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263321, 30.268658, 46.776638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094432, -0.526791, -0.844733,
		-0.497107, -0.760119, 0.418453,
		-0.862535, 0.380407, -0.333652,
		32.004562, 30.382782, 46.676540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302673, 29.577536, 46.660564>,  <32.608334, 30.116493, 46.910099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302673, 29.577536, 46.660564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103977, 29.879417, 46.489136>,  <31.984760, 30.060547, 46.386280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103977, 29.879417, 46.489136>,  <32.302673, 29.577536, 46.660564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103977, 29.879417, 46.489136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044307, -0.471107, -0.880962,
		-0.866770, -0.456595, 0.200577,
		-0.496737, 0.754704, -0.428572,
		31.954956, 30.105829, 46.360565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762609, 29.191473, 46.284611>,  <32.302673, 29.577536, 46.660564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762609, 29.191473, 46.284611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797930, 29.557796, 46.127899>,  <31.819122, 29.777592, 46.033871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797930, 29.557796, 46.127899>,  <31.762609, 29.191473, 46.284611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797930, 29.557796, 46.127899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017399, -0.394677, -0.918655,
		-0.995942, 0.074303, -0.050785,
		0.088303, 0.915811, -0.391782,
		31.824421, 29.832541, 46.010365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377163, 29.239491, 45.639992>,  <31.762609, 29.191473, 46.284611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377163, 29.239491, 45.639992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619949, 29.554020, 45.593884>,  <31.765621, 29.742739, 45.566219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619949, 29.554020, 45.593884>,  <31.377163, 29.239491, 45.639992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619949, 29.554020, 45.593884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122251, -0.235693, -0.964108,
		-0.785269, 0.571089, -0.239187,
		0.606966, 0.786325, -0.115266,
		31.802038, 29.789917, 45.559303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283314, 29.416195, 44.952591>,  <31.377163, 29.239491, 45.639992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283314, 29.416195, 44.952591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609274, 29.619287, 45.064407>,  <31.804850, 29.741144, 45.131496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609274, 29.619287, 45.064407>,  <31.283314, 29.416195, 44.952591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609274, 29.619287, 45.064407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245196, 0.135032, -0.960023,
		-0.525183, 0.850867, -0.014457,
		0.814900, 0.507733, 0.279546,
		31.853745, 29.771606, 45.148270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268894, 30.137053, 44.590664>,  <31.283314, 29.416195, 44.952591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268894, 30.137053, 44.590664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651621, 30.081724, 44.692936>,  <31.881256, 30.048527, 44.754299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651621, 30.081724, 44.692936>,  <31.268894, 30.137053, 44.590664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651621, 30.081724, 44.692936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282421, 0.233979, -0.930318,
		0.068860, 0.962352, 0.262939,
		0.956816, -0.138322, 0.255676,
		31.938665, 30.040228, 44.769638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656530, 30.668486, 44.316505>,  <31.268894, 30.137053, 44.590664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656530, 30.668486, 44.316505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913473, 30.369108, 44.382481>,  <32.067638, 30.189482, 44.422066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913473, 30.369108, 44.382481>,  <31.656530, 30.668486, 44.316505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913473, 30.369108, 44.382481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385973, 0.129994, -0.913305,
		0.662118, 0.650331, 0.372383,
		0.642358, -0.748446, 0.164938,
		32.106182, 30.144575, 44.431961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225029, 30.953253, 44.039978>,  <31.656530, 30.668486, 44.316505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225029, 30.953253, 44.039978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296841, 30.559790, 44.045422>,  <32.339928, 30.323711, 44.048687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296841, 30.559790, 44.045422>,  <32.225029, 30.953253, 44.039978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296841, 30.559790, 44.045422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334294, 0.047988, -0.941246,
		0.925211, 0.173535, 0.337447,
		0.179533, -0.983658, 0.013613,
		32.350700, 30.264692, 44.049507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854084, 30.911488, 43.761341>,  <32.225029, 30.953253, 44.039978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854084, 30.911488, 43.761341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681763, 30.552666, 43.721954>,  <32.578369, 30.337372, 43.698322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681763, 30.552666, 43.721954>,  <32.854084, 30.911488, 43.761341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681763, 30.552666, 43.721954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106202, 0.057953, -0.992654,
		0.896173, -0.438100, 0.070303,
		-0.430807, -0.897056, -0.098463,
		32.552521, 30.283548, 43.692417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307907, 30.480766, 43.325386>,  <32.854084, 30.911488, 43.761341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307907, 30.480766, 43.325386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939915, 30.324060, 43.320488>,  <32.719120, 30.230036, 43.317547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939915, 30.324060, 43.320488>,  <33.307907, 30.480766, 43.325386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939915, 30.324060, 43.320488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018490, -0.012164, -0.999755,
		0.391521, -0.919985, 0.018434,
		-0.919984, -0.391766, -0.012248,
		32.663921, 30.206532, 43.316814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234730, 30.275179, 42.667976>,  <33.307907, 30.480766, 43.325386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234730, 30.275179, 42.667976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851105, 30.218025, 42.765781>,  <32.620930, 30.183733, 42.824463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851105, 30.218025, 42.765781>,  <33.234730, 30.275179, 42.667976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851105, 30.218025, 42.765781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255928, 0.067627, -0.964327,
		0.121253, -0.987426, -0.101426,
		-0.959061, -0.142885, 0.244510,
		32.563385, 30.175159, 42.839134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929951, 29.787827, 42.192650>,  <33.234730, 30.275179, 42.667976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929951, 29.787827, 42.192650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629719, 30.005945, 42.341930>,  <32.449581, 30.136816, 42.431499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629719, 30.005945, 42.341930>,  <32.929951, 29.787827, 42.192650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629719, 30.005945, 42.341930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291589, 0.233499, -0.927607,
		-0.592964, -0.805065, -0.016257,
		-0.750579, 0.545297, 0.373205,
		32.404545, 30.169535, 42.453892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347393, 29.652775, 41.799728>,  <32.929951, 29.787827, 42.192650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347393, 29.652775, 41.799728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244366, 30.003782, 41.961529>,  <32.182549, 30.214386, 42.058609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244366, 30.003782, 41.961529>,  <32.347393, 29.652775, 41.799728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244366, 30.003782, 41.961529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319786, 0.317626, -0.892665,
		-0.911810, -0.359275, 0.198808,
		-0.257566, 0.877516, 0.404506,
		32.167095, 30.267036, 42.082882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682522, 29.783491, 41.466003>,  <32.347393, 29.652775, 41.799728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682522, 29.783491, 41.466003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821327, 30.135696, 41.595173>,  <31.904610, 30.347019, 41.672676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821327, 30.135696, 41.595173>,  <31.682522, 29.783491, 41.466003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821327, 30.135696, 41.595173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347429, 0.440515, -0.827792,
		-0.871134, 0.175061, 0.458780,
		0.347014, 0.880511, 0.322927,
		31.925432, 30.399849, 41.692051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059298, 30.399485, 41.337082>,  <31.682522, 29.783491, 41.466003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059298, 30.399485, 41.337082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412315, 30.584717, 41.369762>,  <31.624126, 30.695856, 41.389370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412315, 30.584717, 41.369762>,  <31.059298, 30.399485, 41.337082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412315, 30.584717, 41.369762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108377, 0.369374, -0.922939,
		-0.457574, 0.805679, 0.376176,
		0.882542, 0.463082, 0.081699,
		31.677078, 30.723640, 41.394272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927824, 31.118601, 41.109051>,  <31.059298, 30.399485, 41.337082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927824, 31.118601, 41.109051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316910, 31.032722, 41.073883>,  <31.550362, 30.981195, 41.052784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316910, 31.032722, 41.073883>,  <30.927824, 31.118601, 41.109051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316910, 31.032722, 41.073883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016382, 0.314439, -0.949136,
		0.231419, 0.924681, 0.302342,
		0.972716, -0.214695, -0.087915,
		31.608725, 30.968313, 41.047508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281755, 31.696449, 40.906143>,  <30.927824, 31.118601, 41.109051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281755, 31.696449, 40.906143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518877, 31.399855, 40.780426>,  <31.661150, 31.221897, 40.704998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518877, 31.399855, 40.780426>,  <31.281755, 31.696449, 40.906143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518877, 31.399855, 40.780426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001143, 0.391027, -0.920378,
		0.805345, 0.545246, 0.232650,
		0.592805, -0.741488, -0.314289,
		31.696718, 31.177408, 40.686138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645197, 32.044777, 40.387306>,  <31.281755, 31.696449, 40.906143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645197, 32.044777, 40.387306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731621, 31.659218, 40.325062>,  <31.783474, 31.427881, 40.287716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731621, 31.659218, 40.325062>,  <31.645197, 32.044777, 40.387306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731621, 31.659218, 40.325062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162229, 0.192602, -0.967774,
		0.962809, 0.183850, 0.197986,
		0.216058, -0.963900, -0.155613,
		31.796438, 31.370049, 40.278378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348274, 31.935785, 39.987190>,  <31.645197, 32.044777, 40.387306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348274, 31.935785, 39.987190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141834, 31.595932, 39.943813>,  <32.017971, 31.392019, 39.917786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141834, 31.595932, 39.943813>,  <32.348274, 31.935785, 39.987190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141834, 31.595932, 39.943813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021925, 0.139674, -0.989955,
		0.856248, -0.508539, -0.090714,
		-0.516101, -0.849635, -0.108446,
		31.987003, 31.341042, 39.911278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682854, 31.451572, 39.495007>,  <32.348274, 31.935785, 39.987190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682854, 31.451572, 39.495007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295368, 31.354080, 39.476303>,  <32.062878, 31.295584, 39.465080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295368, 31.354080, 39.476303>,  <32.682854, 31.451572, 39.495007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295368, 31.354080, 39.476303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046376, 0.007298, -0.998897,
		0.243805, -0.969815, 0.004234,
		-0.968715, -0.243732, -0.046755,
		32.004753, 31.280960, 39.462276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675835, 31.179245, 38.889214>,  <32.682854, 31.451572, 39.495007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675835, 31.179245, 38.889214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280144, 31.210228, 38.938892>,  <32.042728, 31.228819, 38.968700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280144, 31.210228, 38.938892>,  <32.675835, 31.179245, 38.889214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280144, 31.210228, 38.938892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128848, -0.058209, -0.989954,
		-0.069455, -0.995295, 0.067562,
		-0.989229, 0.077462, 0.124199,
		31.983376, 31.233465, 38.976151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362770, 30.629295, 38.501976>,  <32.675835, 31.179245, 38.889214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362770, 30.629295, 38.501976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098469, 30.925837, 38.548973>,  <31.939888, 31.103760, 38.577171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098469, 30.925837, 38.548973>,  <32.362770, 30.629295, 38.501976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098469, 30.925837, 38.548973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084610, 0.081966, -0.993037,
		-0.745819, -0.666094, 0.008567,
		-0.660753, 0.741351, 0.117490,
		31.900242, 31.148241, 38.584221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962429, 30.594797, 37.965637>,  <32.362770, 30.629295, 38.501976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962429, 30.594797, 37.965637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874022, 30.967678, 38.080288>,  <31.820976, 31.191406, 38.149078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874022, 30.967678, 38.080288>,  <31.962429, 30.594797, 37.965637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874022, 30.967678, 38.080288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194871, 0.245754, -0.949542,
		-0.955602, -0.265722, 0.127342,
		-0.221019, 0.932200, 0.286624,
		31.807716, 31.247337, 38.166275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359400, 30.748533, 37.617962>,  <31.962429, 30.594797, 37.965637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359400, 30.748533, 37.617962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505219, 31.104702, 37.726955>,  <31.592710, 31.318403, 37.792351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505219, 31.104702, 37.726955>,  <31.359400, 30.748533, 37.617962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505219, 31.104702, 37.726955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165533, 0.349931, -0.922034,
		-0.916353, 0.291020, 0.274962,
		0.364548, 0.890424, 0.272487,
		31.614582, 31.371830, 37.808701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905096, 31.234039, 37.297848>,  <31.359400, 30.748533, 37.617962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905096, 31.234039, 37.297848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188885, 31.498367, 37.395798>,  <31.359158, 31.656963, 37.454567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188885, 31.498367, 37.395798>,  <30.905096, 31.234039, 37.297848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188885, 31.498367, 37.395798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059282, 0.402207, -0.913628,
		-0.702234, 0.633678, 0.324530,
		0.709474, 0.660819, 0.244878,
		31.401728, 31.696613, 37.469261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663923, 31.970764, 37.157391>,  <30.905096, 31.234039, 37.297848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663923, 31.970764, 37.157391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062246, 31.945547, 37.130867>,  <31.301239, 31.930416, 37.114952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062246, 31.945547, 37.130867>,  <30.663923, 31.970764, 37.157391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062246, 31.945547, 37.130867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035501, 0.401731, -0.915069,
		0.084327, 0.913585, 0.397808,
		0.995806, -0.063042, -0.066310,
		31.360989, 31.926634, 37.110973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869230, 32.437595, 36.665676>,  <30.663923, 31.970764, 37.157391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869230, 32.437595, 36.665676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201500, 32.214931, 36.661541>,  <31.400862, 32.081333, 36.659058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201500, 32.214931, 36.661541>,  <30.869230, 32.437595, 36.665676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201500, 32.214931, 36.661541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143931, 0.232649, -0.961852,
		0.537830, 0.797499, 0.273376,
		0.830676, -0.556660, -0.010341,
		31.450703, 32.047932, 36.658440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355078, 32.754326, 36.241676>,  <30.869230, 32.437595, 36.665676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355078, 32.754326, 36.241676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527475, 32.393551, 36.252697>,  <31.630915, 32.177086, 36.259308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527475, 32.393551, 36.252697>,  <31.355078, 32.754326, 36.241676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527475, 32.393551, 36.252697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263287, 0.096495, -0.959880,
		0.863090, 0.420956, 0.279056,
		0.430995, -0.901934, 0.027549,
		31.656775, 32.122971, 36.260963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946659, 32.929459, 35.874214>,  <31.355078, 32.754326, 36.241676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946659, 32.929459, 35.874214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911520, 32.531219, 35.861126>,  <31.890436, 32.292274, 35.853271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911520, 32.531219, 35.861126>,  <31.946659, 32.929459, 35.874214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911520, 32.531219, 35.861126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163635, 0.017980, -0.986357,
		0.982602, -0.092002, 0.161335,
		-0.087846, -0.995596, -0.032722,
		31.885166, 32.232540, 35.851311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451065, 32.708023, 35.478569>,  <31.946659, 32.929459, 35.874214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451065, 32.708023, 35.478569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182652, 32.412357, 35.455429>,  <32.021603, 32.234959, 35.441547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182652, 32.412357, 35.455429>,  <32.451065, 32.708023, 35.478569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182652, 32.412357, 35.455429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207879, -0.112676, -0.971643,
		0.711691, -0.664028, 0.229267,
		-0.671031, -0.739169, -0.057847,
		31.981342, 32.190605, 35.438076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711086, 32.274624, 34.919632>,  <32.451065, 32.708023, 35.478569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711086, 32.274624, 34.919632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320202, 32.204552, 34.967571>,  <32.085670, 32.162510, 34.996334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320202, 32.204552, 34.967571>,  <32.711086, 32.274624, 34.919632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320202, 32.204552, 34.967571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090799, -0.165348, -0.982047,
		0.191851, -0.970553, 0.145674,
		-0.977215, -0.175180, 0.119847,
		32.027039, 32.151997, 35.003525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612240, 31.653934, 34.515236>,  <32.711086, 32.274624, 34.919632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612240, 31.653934, 34.515236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264862, 31.842724, 34.575951>,  <32.056435, 31.955997, 34.612381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264862, 31.842724, 34.575951>,  <32.612240, 31.653934, 34.515236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264862, 31.842724, 34.575951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197798, -0.049100, -0.979012,
		-0.454614, -0.880245, 0.135996,
		-0.868448, 0.471973, 0.151789,
		32.004326, 31.984316, 34.621487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199997, 31.203339, 34.724869>,  <32.612240, 31.653934, 34.515236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199997, 31.203339, 34.724869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598549, 31.169806, 34.730446>,  <33.837681, 31.149687, 34.733791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598549, 31.169806, 34.730446>,  <33.199997, 31.203339, 34.724869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598549, 31.169806, 34.730446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055748, -0.520981, 0.851746,
		-0.064140, -0.849442, -0.523770,
		0.996382, -0.083830, 0.013939,
		33.897465, 31.144657, 34.734627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499249, 30.479689, 34.849667>,  <33.199997, 31.203339, 34.724869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499249, 30.479689, 34.849667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811954, 30.693684, 34.977806>,  <33.999580, 30.822081, 35.054691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811954, 30.693684, 34.977806>,  <33.499249, 30.479689, 34.849667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811954, 30.693684, 34.977806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043683, -0.559462, 0.827704,
		0.622037, -0.633079, -0.460740,
		0.781769, 0.534989, 0.320351,
		34.046486, 30.854181, 35.073910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884705, 29.990828, 35.200508>,  <33.499249, 30.479689, 34.849667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884705, 29.990828, 35.200508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044796, 30.328533, 35.343075>,  <34.140850, 30.531157, 35.428616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044796, 30.328533, 35.343075>,  <33.884705, 29.990828, 35.200508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044796, 30.328533, 35.343075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186656, -0.455870, 0.870254,
		0.897205, -0.281774, -0.340040,
		0.400229, 0.844266, 0.356414,
		34.164864, 30.581814, 35.450001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506840, 29.854540, 35.582794>,  <33.884705, 29.990828, 35.200508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506840, 29.854540, 35.582794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441475, 30.217741, 35.737106>,  <34.402256, 30.435661, 35.829693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441475, 30.217741, 35.737106>,  <34.506840, 29.854540, 35.582794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441475, 30.217741, 35.737106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216015, -0.348613, 0.912034,
		0.962617, 0.232375, -0.139173,
		-0.163416, 0.908004, 0.385777,
		34.392448, 30.490143, 35.852840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064503, 30.052828, 36.005535>,  <34.506840, 29.854540, 35.582794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064503, 30.052828, 36.005535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732754, 30.243700, 36.121773>,  <34.533707, 30.358223, 36.191517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732754, 30.243700, 36.121773>,  <35.064503, 30.052828, 36.005535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732754, 30.243700, 36.121773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272717, -0.108189, 0.955992,
		0.487619, 0.872121, -0.040406,
		-0.829369, 0.477179, 0.290597,
		34.483944, 30.386854, 36.208950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165577, 30.631781, 36.521942>,  <35.064503, 30.052828, 36.005535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165577, 30.631781, 36.521942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784271, 30.526176, 36.580704>,  <34.555489, 30.462814, 36.615959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784271, 30.526176, 36.580704>,  <35.165577, 30.631781, 36.521942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784271, 30.526176, 36.580704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205574, -0.210476, 0.955740,
		-0.221407, 0.941275, 0.254914,
		-0.953267, -0.264011, 0.146901,
		34.498291, 30.446974, 36.624775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034374, 30.871700, 37.112545>,  <35.165577, 30.631781, 36.521942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034374, 30.871700, 37.112545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680859, 30.684896, 37.101162>,  <34.468750, 30.572813, 37.094330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680859, 30.684896, 37.101162>,  <35.034374, 30.871700, 37.112545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680859, 30.684896, 37.101162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053745, -0.161761, 0.985365,
		-0.464780, 0.869330, 0.168063,
		-0.883794, -0.467010, -0.028461,
		34.415722, 30.544794, 37.092625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640980, 31.004089, 37.670502>,  <35.034374, 30.871700, 37.112545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640980, 31.004089, 37.670502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446949, 30.673117, 37.557323>,  <34.330532, 30.474533, 37.489414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446949, 30.673117, 37.557323>,  <34.640980, 31.004089, 37.670502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446949, 30.673117, 37.557323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060366, -0.354478, 0.933114,
		-0.872387, 0.435550, 0.221897,
		-0.485075, -0.827431, -0.282949,
		34.301426, 30.424887, 37.472439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107319, 30.971220, 38.103909>,  <34.640980, 31.004089, 37.670502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107319, 30.971220, 38.103909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207958, 30.609232, 37.966660>,  <34.268341, 30.392038, 37.884312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207958, 30.609232, 37.966660>,  <34.107319, 30.971220, 38.103909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207958, 30.609232, 37.966660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125619, -0.320990, 0.938715,
		-0.959646, -0.279277, 0.032923,
		0.251594, -0.904969, -0.343120,
		34.283436, 30.337742, 37.863724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721230, 30.517416, 38.582188>,  <34.107319, 30.971220, 38.103909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721230, 30.517416, 38.582188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005333, 30.292555, 38.412708>,  <34.175797, 30.157639, 38.311020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005333, 30.292555, 38.412708>,  <33.721230, 30.517416, 38.582188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005333, 30.292555, 38.412708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189279, -0.427213, 0.884117,
		-0.678016, -0.708148, -0.197029,
		0.710259, -0.562152, -0.423695,
		34.218410, 30.123909, 38.285599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734299, 29.999590, 38.993389>,  <33.721230, 30.517416, 38.582188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734299, 29.999590, 38.993389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081432, 29.964914, 38.797699>,  <34.289715, 29.944109, 38.680283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081432, 29.964914, 38.797699>,  <33.734299, 29.999590, 38.993389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081432, 29.964914, 38.797699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385659, -0.503275, 0.773293,
		-0.313253, -0.859767, -0.403327,
		0.867836, -0.086690, -0.489229,
		34.341782, 29.938908, 38.650928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914707, 29.339720, 39.015354>,  <33.734299, 29.999590, 38.993389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914707, 29.339720, 39.015354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249813, 29.549616, 38.954956>,  <34.450878, 29.675554, 38.918716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249813, 29.549616, 38.954956>,  <33.914707, 29.339720, 39.015354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249813, 29.549616, 38.954956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412280, -0.426573, 0.805022,
		0.358017, -0.736670, -0.573707,
		0.837764, 0.524740, -0.150994,
		34.501141, 29.707037, 38.909657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504711, 28.812149, 39.241993>,  <33.914707, 29.339720, 39.015354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504711, 28.812149, 39.241993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716801, 29.151127, 39.231377>,  <34.844055, 29.354513, 39.225006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716801, 29.151127, 39.231377>,  <34.504711, 28.812149, 39.241993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716801, 29.151127, 39.231377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330623, -0.177838, 0.926856,
		0.780739, -0.500213, -0.374478,
		0.530222, 0.847443, -0.026537,
		34.875866, 29.405359, 39.223415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217720, 28.636456, 39.369686>,  <34.504711, 28.812149, 39.241993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217720, 28.636456, 39.369686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121288, 29.005699, 39.489521>,  <35.063431, 29.227245, 39.561420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121288, 29.005699, 39.489521>,  <35.217720, 28.636456, 39.369686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121288, 29.005699, 39.489521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296732, -0.223797, 0.928367,
		0.924030, 0.312705, -0.219964,
		-0.241077, 0.923109, 0.299585,
		35.048965, 29.282633, 39.579395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526951, 28.749155, 39.970707>,  <35.217720, 28.636456, 39.369686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526951, 28.749155, 39.970707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286556, 29.068539, 39.985031>,  <35.142319, 29.260168, 39.993626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286556, 29.068539, 39.985031>,  <35.526951, 28.749155, 39.970707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286556, 29.068539, 39.985031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031001, -0.021489, 0.999288,
		0.798658, 0.601668, -0.011838,
		-0.600986, 0.798457, 0.035815,
		35.106262, 29.308075, 39.995777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821537, 29.290071, 40.390511>,  <35.526951, 28.749155, 39.970707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821537, 29.290071, 40.390511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425488, 29.346128, 40.391674>,  <35.187859, 29.379763, 40.392372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425488, 29.346128, 40.391674>,  <35.821537, 29.290071, 40.390511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425488, 29.346128, 40.391674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006743, 0.026873, 0.999616,
		0.140010, 0.989767, -0.027553,
		-0.990127, 0.140142, 0.002911,
		35.128448, 29.388170, 40.392548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884342, 29.601021, 40.966011>,  <35.821537, 29.290071, 40.390511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884342, 29.601021, 40.966011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493965, 29.545294, 40.898933>,  <35.259739, 29.511858, 40.858688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493965, 29.545294, 40.898933>,  <35.884342, 29.601021, 40.966011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493965, 29.545294, 40.898933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166175, -0.022549, 0.985838,
		-0.141125, 0.989991, -0.001144,
		-0.975946, -0.139316, -0.167694,
		35.201183, 29.503498, 40.848625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638699, 30.116486, 41.357746>,  <35.884342, 29.601021, 40.966011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638699, 30.116486, 41.357746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388416, 29.808573, 41.307266>,  <35.238247, 29.623825, 41.276978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388416, 29.808573, 41.307266>,  <35.638699, 30.116486, 41.357746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388416, 29.808573, 41.307266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113434, -0.070277, 0.991057,
		-0.771767, 0.634427, -0.043347,
		-0.625707, -0.769782, -0.126203,
		35.200703, 29.577639, 41.269405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109600, 30.193382, 41.776672>,  <35.638699, 30.116486, 41.357746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109600, 30.193382, 41.776672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075588, 29.800854, 41.707649>,  <35.055183, 29.565336, 41.666237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075588, 29.800854, 41.707649>,  <35.109600, 30.193382, 41.776672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075588, 29.800854, 41.707649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151777, -0.158408, 0.975638,
		-0.984751, 0.109145, -0.135473,
		-0.085026, -0.981322, -0.172559,
		35.050079, 29.506456, 41.655880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505814, 29.951302, 42.240257>,  <35.109600, 30.193382, 41.776672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505814, 29.951302, 42.240257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754471, 29.646065, 42.169552>,  <34.903667, 29.462923, 42.127129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754471, 29.646065, 42.169552>,  <34.505814, 29.951302, 42.240257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754471, 29.646065, 42.169552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055130, -0.182488, 0.981661,
		-0.781356, -0.619991, -0.071374,
		0.621646, -0.763092, -0.176768,
		34.940964, 29.417137, 42.116520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231163, 29.378866, 42.481617>,  <34.505814, 29.951302, 42.240257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231163, 29.378866, 42.481617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624870, 29.308310, 42.477551>,  <34.861095, 29.265976, 42.475113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624870, 29.308310, 42.477551>,  <34.231163, 29.378866, 42.481617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624870, 29.308310, 42.477551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031182, -0.230040, 0.972682,
		-0.173906, -0.957063, -0.231921,
		0.984268, -0.176387, -0.010162,
		34.920151, 29.255392, 42.474503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252277, 28.835135, 42.865387>,  <34.231163, 29.378866, 42.481617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252277, 28.835135, 42.865387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592728, 29.043447, 42.891819>,  <34.796997, 29.168434, 42.907677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592728, 29.043447, 42.891819>,  <34.252277, 28.835135, 42.865387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592728, 29.043447, 42.891819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074911, -0.004096, 0.997182,
		0.519584, -0.853681, 0.035526,
		0.851129, 0.520781, 0.066078,
		34.848068, 29.199682, 42.911644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906288, 28.417393, 43.223576>,  <34.252277, 28.835135, 42.865387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906288, 28.417393, 43.223576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933968, 28.815996, 43.242245>,  <34.950573, 29.055159, 43.253445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933968, 28.815996, 43.242245>,  <34.906288, 28.417393, 43.223576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933968, 28.815996, 43.242245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061690, -0.050971, 0.996793,
		0.995694, -0.066094, -0.065002,
		0.069195, 0.996511, 0.046674,
		34.954727, 29.114950, 43.256248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089497, 28.611942, 43.940868>,  <34.906288, 28.417393, 43.223576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089497, 28.611942, 43.940868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060863, 28.994123, 43.826336>,  <35.043682, 29.223433, 43.757614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060863, 28.994123, 43.826336>,  <35.089497, 28.611942, 43.940868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060863, 28.994123, 43.826336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108079, 0.277952, 0.954496,
		0.991562, 0.099273, 0.083367,
		-0.071584, 0.955452, -0.286336,
		35.039387, 29.280760, 43.740437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645557, 29.083748, 44.235935>,  <35.089497, 28.611942, 43.940868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645557, 29.083748, 44.235935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290680, 29.254942, 44.166985>,  <35.077755, 29.357658, 44.125614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290680, 29.254942, 44.166985>,  <35.645557, 29.083748, 44.235935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290680, 29.254942, 44.166985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081531, 0.222307, 0.971562,
		0.454136, 0.876018, -0.162335,
		-0.887194, 0.427986, -0.172380,
		35.024521, 29.383337, 44.115269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708282, 29.581095, 44.628731>,  <35.645557, 29.083748, 44.235935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708282, 29.581095, 44.628731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315887, 29.594597, 44.552277>,  <35.080452, 29.602699, 44.506405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315887, 29.594597, 44.552277>,  <35.708282, 29.581095, 44.628731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315887, 29.594597, 44.552277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162688, 0.394045, 0.904578,
		0.105851, 0.918471, -0.381059,
		-0.980983, 0.033756, -0.191134,
		35.021591, 29.604723, 44.494938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542225, 30.275217, 44.731491>,  <35.708282, 29.581095, 44.628731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542225, 30.275217, 44.731491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212788, 30.053465, 44.779404>,  <35.015125, 29.920414, 44.808151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212788, 30.053465, 44.779404>,  <35.542225, 30.275217, 44.731491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212788, 30.053465, 44.779404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075661, 0.316691, 0.945506,
		-0.562105, 0.769654, -0.302771,
		-0.823598, -0.554382, 0.119781,
		34.965710, 29.887150, 44.815338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033035, 30.722340, 45.003525>,  <35.542225, 30.275217, 44.731491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033035, 30.722340, 45.003525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928524, 30.348379, 45.099602>,  <34.865818, 30.124002, 45.157249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928524, 30.348379, 45.099602>,  <35.033035, 30.722340, 45.003525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928524, 30.348379, 45.099602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222625, 0.300493, 0.927439,
		-0.939240, 0.188848, -0.286645,
		-0.261280, -0.934901, 0.240193,
		34.850140, 30.067909, 45.171661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429222, 30.837378, 45.372074>,  <35.033035, 30.722340, 45.003525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429222, 30.837378, 45.372074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546799, 30.466177, 45.463646>,  <34.617344, 30.243456, 45.518589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546799, 30.466177, 45.463646>,  <34.429222, 30.837378, 45.372074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546799, 30.466177, 45.463646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105531, 0.206536, 0.972731,
		-0.949980, -0.310086, -0.037224,
		0.293942, -0.928003, 0.228928,
		34.634983, 30.187777, 45.532326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843136, 30.520437, 45.632908>,  <34.429222, 30.837378, 45.372074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843136, 30.520437, 45.632908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183136, 30.365849, 45.776093>,  <34.387138, 30.273096, 45.862003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183136, 30.365849, 45.776093>,  <33.843136, 30.520437, 45.632908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183136, 30.365849, 45.776093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298348, 0.206842, 0.931775,
		-0.434143, -0.898809, 0.060514,
		0.850004, -0.386469, 0.357957,
		34.438137, 30.249908, 45.883480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631779, 30.138790, 46.285347>,  <33.843136, 30.520437, 45.632908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631779, 30.138790, 46.285347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029739, 30.175188, 46.302731>,  <34.268517, 30.197027, 46.313160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029739, 30.175188, 46.302731>,  <33.631779, 30.138790, 46.285347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029739, 30.175188, 46.302731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071873, 0.337600, 0.938542,
		0.070732, -0.936881, 0.342419,
		0.994903, 0.090995, 0.043457,
		34.328209, 30.202486, 46.315769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916115, 29.990396, 46.978905>,  <33.631779, 30.138790, 46.285347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916115, 29.990396, 46.978905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230236, 30.189348, 46.831436>,  <34.418709, 30.308720, 46.742954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230236, 30.189348, 46.831436>,  <33.916115, 29.990396, 46.978905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230236, 30.189348, 46.831436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010047, 0.605642, 0.795674,
		0.619042, -0.621134, 0.480604,
		0.785294, 0.497384, -0.368677,
		34.465828, 30.338562, 46.720833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507473, 29.881210, 47.532936>,  <33.916115, 29.990396, 46.978905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507473, 29.881210, 47.532936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604641, 30.203779, 47.317280>,  <34.662941, 30.397320, 47.187885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604641, 30.203779, 47.317280>,  <34.507473, 29.881210, 47.532936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604641, 30.203779, 47.317280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151023, 0.517572, 0.842206,
		0.958218, -0.286011, 0.003940,
		0.242919, 0.806422, -0.539141,
		34.677517, 30.445705, 47.155537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087399, 30.155640, 47.839684>,  <34.507473, 29.881210, 47.532936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087399, 30.155640, 47.839684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926968, 30.473396, 47.657219>,  <34.830708, 30.664051, 47.547741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926968, 30.473396, 47.657219>,  <35.087399, 30.155640, 47.839684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926968, 30.473396, 47.657219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027785, 0.508285, 0.860740,
		0.915623, 0.332548, -0.225934,
		-0.401076, 0.794392, -0.456157,
		34.806644, 30.711714, 47.520370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330051, 30.714693, 48.211334>,  <35.087399, 30.155640, 47.839684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330051, 30.714693, 48.211334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056641, 30.910934, 47.995148>,  <34.892593, 31.028679, 47.865437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056641, 30.910934, 47.995148>,  <35.330051, 30.714693, 48.211334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056641, 30.910934, 47.995148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002982, 0.742308, 0.670052,
		0.729922, 0.456385, -0.508849,
		-0.683524, 0.490603, -0.540466,
		34.851582, 31.058115, 47.833008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618137, 31.476053, 48.178970>,  <35.330051, 30.714693, 48.211334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618137, 31.476053, 48.178970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224148, 31.492479, 48.111866>,  <34.987755, 31.502335, 48.071602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224148, 31.492479, 48.111866>,  <35.618137, 31.476053, 48.178970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224148, 31.492479, 48.111866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109273, 0.604047, 0.789421,
		0.133754, 0.795890, -0.590482,
		-0.984972, 0.041065, -0.167763,
		34.928658, 31.504799, 48.061539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425598, 32.139809, 48.313450>,  <35.618137, 31.476053, 48.178970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425598, 32.139809, 48.313450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077538, 31.944468, 48.339855>,  <34.868702, 31.827263, 48.355698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077538, 31.944468, 48.339855>,  <35.425598, 32.139809, 48.313450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077538, 31.944468, 48.339855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271721, 0.587227, 0.762451,
		-0.411109, 0.645507, -0.643669,
		-0.870148, -0.488349, 0.066017,
		34.816494, 31.797962, 48.359661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778172, 32.619789, 48.315529>,  <35.425598, 32.139809, 48.313450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778172, 32.619789, 48.315529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730282, 32.297455, 48.547489>,  <34.701550, 32.104053, 48.686665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730282, 32.297455, 48.547489>,  <34.778172, 32.619789, 48.315529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730282, 32.297455, 48.547489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137598, 0.591936, 0.794153,
		-0.983226, 0.015284, -0.181751,
		-0.119723, -0.805840, 0.579904,
		34.694366, 32.055702, 48.721458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144749, 32.959686, 48.438423>,  <34.778172, 32.619789, 48.315529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144749, 32.959686, 48.438423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400021, 33.220722, 48.601814>,  <34.553185, 33.377346, 48.699848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400021, 33.220722, 48.601814>,  <34.144749, 32.959686, 48.438423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400021, 33.220722, 48.601814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366405, 0.209175, -0.906638,
		-0.677108, 0.728265, -0.105622,
		0.638179, 0.652592, 0.408474,
		34.591473, 33.416500, 48.724358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108715, 33.595707, 48.054649>,  <34.144749, 32.959686, 48.438423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108715, 33.595707, 48.054649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467369, 33.618443, 48.230293>,  <34.682560, 33.632084, 48.335682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467369, 33.618443, 48.230293>,  <34.108715, 33.595707, 48.054649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467369, 33.618443, 48.230293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408904, 0.274126, -0.870432,
		-0.169847, 0.960013, 0.222548,
		0.896632, 0.056840, 0.439112,
		34.736359, 33.635494, 48.362026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390965, 34.139870, 47.718327>,  <34.108715, 33.595707, 48.054649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390965, 34.139870, 47.718327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684994, 33.932030, 47.892540>,  <34.861412, 33.807327, 47.997066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684994, 33.932030, 47.892540>,  <34.390965, 34.139870, 47.718327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684994, 33.932030, 47.892540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609085, 0.223917, -0.760840,
		0.297808, 0.824547, 0.481074,
		0.735069, -0.519599, 0.435535,
		34.905514, 33.776150, 48.023201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040646, 34.517120, 47.561188>,  <34.390965, 34.139870, 47.718327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040646, 34.517120, 47.561188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186749, 34.151520, 47.631832>,  <35.274410, 33.932159, 47.674217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186749, 34.151520, 47.631832>,  <35.040646, 34.517120, 47.561188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186749, 34.151520, 47.631832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690305, 0.138649, -0.710109,
		0.624554, 0.381285, 0.681582,
		0.365255, -0.914001, 0.176609,
		35.296326, 33.877319, 47.684814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802036, 34.637020, 47.534103>,  <35.040646, 34.517120, 47.561188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802036, 34.637020, 47.534103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683201, 34.259499, 47.476173>,  <35.611900, 34.032986, 47.441418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683201, 34.259499, 47.476173>,  <35.802036, 34.637020, 47.534103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683201, 34.259499, 47.476173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611676, -0.071652, -0.787856,
		0.733205, -0.322647, 0.598589,
		-0.297090, -0.943803, -0.144820,
		35.594074, 33.976357, 47.432728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367397, 34.233139, 47.196793>,  <35.802036, 34.637020, 47.534103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367397, 34.233139, 47.196793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054466, 33.992653, 47.131672>,  <35.866707, 33.848362, 47.092598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054466, 33.992653, 47.131672>,  <36.367397, 34.233139, 47.196793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054466, 33.992653, 47.131672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451594, -0.367473, -0.813036,
		0.428986, -0.709579, 0.558989,
		-0.782326, -0.601217, -0.162801,
		35.819767, 33.812286, 47.082832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674541, 33.558899, 46.986580>,  <36.367397, 34.233139, 47.196793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674541, 33.558899, 46.986580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296490, 33.528683, 46.859440>,  <36.069660, 33.510551, 46.783157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296490, 33.528683, 46.859440>,  <36.674541, 33.558899, 46.986580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296490, 33.528683, 46.859440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316527, -0.452647, -0.833619,
		-0.080902, -0.888484, 0.451720,
		-0.945127, -0.075540, -0.317849,
		36.012951, 33.506020, 46.764084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629009, 32.900314, 46.731361>,  <36.674541, 33.558899, 46.986580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629009, 32.900314, 46.731361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343235, 33.122654, 46.561367>,  <36.171772, 33.256058, 46.459370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343235, 33.122654, 46.561367>,  <36.629009, 32.900314, 46.731361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343235, 33.122654, 46.561367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296818, -0.309269, -0.903467,
		-0.633624, -0.771614, 0.055968,
		-0.714437, 0.555846, -0.424989,
		36.128902, 33.289406, 46.433868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298698, 32.422485, 46.385704>,  <36.629009, 32.900314, 46.731361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298698, 32.422485, 46.385704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173290, 32.760147, 46.211761>,  <36.098045, 32.962746, 46.107395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173290, 32.760147, 46.211761>,  <36.298698, 32.422485, 46.385704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173290, 32.760147, 46.211761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307185, -0.343162, -0.887624,
		-0.898522, -0.411870, -0.151725,
		-0.313520, 0.844158, -0.434859,
		36.079235, 33.013393, 46.081303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900677, 32.207745, 45.774334>,  <36.298698, 32.422485, 46.385704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900677, 32.207745, 45.774334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002541, 32.589817, 45.713970>,  <36.063660, 32.819061, 45.677750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002541, 32.589817, 45.713970>,  <35.900677, 32.207745, 45.774334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002541, 32.589817, 45.713970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020843, -0.161443, -0.986662,
		-0.966805, 0.248122, -0.061022,
		0.254664, 0.955181, -0.150913,
		36.078941, 32.876373, 45.668697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506062, 32.422112, 45.210529>,  <35.900677, 32.207745, 45.774334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506062, 32.422112, 45.210529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808208, 32.683212, 45.233612>,  <35.989498, 32.839874, 45.247459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808208, 32.683212, 45.233612>,  <35.506062, 32.422112, 45.210529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808208, 32.683212, 45.233612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173908, -0.114785, -0.978049,
		-0.631804, 0.748822, -0.200225,
		0.755368, 0.652756, 0.057704,
		36.034821, 32.879040, 45.250923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464859, 33.111824, 44.740170>,  <35.506062, 32.422112, 45.210529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464859, 33.111824, 44.740170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838692, 32.994087, 44.820087>,  <36.062992, 32.923447, 44.868038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838692, 32.994087, 44.820087>,  <35.464859, 33.111824, 44.740170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838692, 32.994087, 44.820087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123550, -0.258100, -0.958186,
		0.333601, 0.920189, -0.204850,
		0.934583, -0.294342, 0.199792,
		36.119068, 32.905785, 44.880024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715118, 33.292347, 44.154480>,  <35.464859, 33.111824, 44.740170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715118, 33.292347, 44.154480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015541, 33.071312, 44.299011>,  <36.195797, 32.938690, 44.385731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015541, 33.071312, 44.299011>,  <35.715118, 33.292347, 44.154480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015541, 33.071312, 44.299011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198327, -0.333175, -0.921770,
		0.629744, 0.763965, -0.140641,
		0.751058, -0.552586, 0.361330,
		36.240860, 32.905537, 44.407410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392601, 33.542358, 43.798317>,  <35.715118, 33.292347, 44.154480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392601, 33.542358, 43.798317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444332, 33.161938, 43.910583>,  <36.475372, 32.933685, 43.977943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444332, 33.161938, 43.910583>,  <36.392601, 33.542358, 43.798317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444332, 33.161938, 43.910583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334418, -0.224628, -0.915263,
		0.933509, 0.212228, 0.288999,
		0.129327, -0.951053, 0.280665,
		36.483131, 32.876621, 43.994781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922245, 33.390205, 43.422871>,  <36.392601, 33.542358, 43.798317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922245, 33.390205, 43.422871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763565, 33.043316, 43.543240>,  <36.668358, 32.835182, 43.615463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763565, 33.043316, 43.543240>,  <36.922245, 33.390205, 43.422871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763565, 33.043316, 43.543240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247735, -0.416804, -0.874586,
		0.883888, -0.272397, 0.380187,
		-0.396698, -0.867222, 0.300926,
		36.644554, 32.783150, 43.633518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411400, 32.982395, 43.363186>,  <36.922245, 33.390205, 43.422871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411400, 32.982395, 43.363186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079906, 32.758766, 43.353085>,  <36.881012, 32.624588, 43.347023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079906, 32.758766, 43.353085>,  <37.411400, 32.982395, 43.363186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079906, 32.758766, 43.353085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253089, -0.334151, -0.907904,
		0.499148, -0.758800, 0.418418,
		-0.828732, -0.559076, -0.025253,
		36.831287, 32.591045, 43.345509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609581, 32.461498, 42.920624>,  <37.411400, 32.982395, 43.363186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609581, 32.461498, 42.920624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217339, 32.383335, 42.914703>,  <36.981991, 32.336437, 42.911152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217339, 32.383335, 42.914703>,  <37.609581, 32.461498, 42.920624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217339, 32.383335, 42.914703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078810, -0.324053, -0.942750,
		0.179427, -0.925637, 0.333170,
		-0.980609, -0.195412, -0.014806,
		36.923157, 32.324711, 42.910263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484444, 31.856369, 42.470303>,  <37.609581, 32.461498, 42.920624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484444, 31.856369, 42.470303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111629, 32.000439, 42.486198>,  <36.887939, 32.086880, 42.495735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111629, 32.000439, 42.486198>,  <37.484444, 31.856369, 42.470303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111629, 32.000439, 42.486198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192789, -0.400017, -0.896001,
		-0.306821, -0.842769, 0.442269,
		-0.932037, 0.360176, 0.039743,
		36.832020, 32.108490, 42.498123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120743, 31.365145, 42.253605>,  <37.484444, 31.856369, 42.470303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120743, 31.365145, 42.253605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876083, 31.672745, 42.179283>,  <36.729286, 31.857306, 42.134689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876083, 31.672745, 42.179283>,  <37.120743, 31.365145, 42.253605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876083, 31.672745, 42.179283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304247, -0.445439, -0.842032,
		-0.730285, -0.458501, 0.506419,
		-0.611651, 0.769000, -0.185800,
		36.692589, 31.903444, 42.123543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594261, 31.231499, 41.885578>,  <37.120743, 31.365145, 42.253605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594261, 31.231499, 41.885578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546993, 31.617945, 41.793789>,  <36.518635, 31.849812, 41.738716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546993, 31.617945, 41.793789>,  <36.594261, 31.231499, 41.885578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546993, 31.617945, 41.793789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108590, -0.242278, -0.964111,
		-0.987039, -0.089006, 0.133539,
		-0.118165, 0.966115, -0.229473,
		36.511543, 31.907780, 41.724949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038757, 31.236485, 41.449459>,  <36.594261, 31.231499, 41.885578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038757, 31.236485, 41.449459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199360, 31.598070, 41.390614>,  <36.295719, 31.815022, 41.355309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199360, 31.598070, 41.390614>,  <36.038757, 31.236485, 41.449459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199360, 31.598070, 41.390614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072654, -0.128684, -0.989020,
		-0.912971, 0.407784, 0.014009,
		0.401504, 0.903964, -0.147112,
		36.319813, 31.869259, 41.346481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653008, 31.442200, 40.897102>,  <36.038757, 31.236485, 41.449459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653008, 31.442200, 40.897102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983162, 31.667995, 40.893147>,  <36.181255, 31.803473, 40.890774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983162, 31.667995, 40.893147>,  <35.653008, 31.442200, 40.897102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983162, 31.667995, 40.893147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042655, -0.079823, -0.995896,
		-0.562962, 0.821572, -0.089963,
		0.825381, 0.564489, -0.009893,
		36.230778, 31.837341, 40.890179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452152, 31.910000, 40.523594>,  <35.653008, 31.442200, 40.897102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452152, 31.910000, 40.523594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851322, 31.886936, 40.512146>,  <36.090824, 31.873098, 40.505276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851322, 31.886936, 40.512146>,  <35.452152, 31.910000, 40.523594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851322, 31.886936, 40.512146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032309, -0.064087, -0.997421,
		0.055676, 0.996277, -0.065817,
		0.997926, -0.057659, -0.028621,
		36.150700, 31.869638, 40.503559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605064, 32.277927, 39.848274>,  <35.452152, 31.910000, 40.523594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605064, 32.277927, 39.848274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955158, 32.101963, 39.928711>,  <36.165215, 31.996384, 39.976974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955158, 32.101963, 39.928711>,  <35.605064, 32.277927, 39.848274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955158, 32.101963, 39.928711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226597, 0.005610, -0.973972,
		0.427334, 0.898023, 0.104593,
		0.875237, -0.439912, 0.201092,
		36.217728, 31.969990, 39.989040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144325, 32.571674, 39.347168>,  <35.605064, 32.277927, 39.848274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144325, 32.571674, 39.347168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276245, 32.220104, 39.484993>,  <36.355396, 32.009163, 39.567688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276245, 32.220104, 39.484993>,  <36.144325, 32.571674, 39.347168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276245, 32.220104, 39.484993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357324, -0.221605, -0.907310,
		0.873813, 0.422352, 0.240975,
		0.329803, -0.878925, 0.344558,
		36.375187, 31.956427, 39.588360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832245, 32.549381, 39.192787>,  <36.144325, 32.571674, 39.347168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832245, 32.549381, 39.192787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696495, 32.174191, 39.221157>,  <36.615044, 31.949078, 39.238178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696495, 32.174191, 39.221157>,  <36.832245, 32.549381, 39.192787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696495, 32.174191, 39.221157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464491, -0.232670, -0.854466,
		0.817967, -0.257046, 0.514643,
		-0.339379, -0.937972, 0.070921,
		36.594681, 31.892799, 39.242432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375977, 32.108757, 39.183136>,  <36.832245, 32.549381, 39.192787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375977, 32.108757, 39.183136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058178, 31.905773, 39.049717>,  <36.867500, 31.783981, 38.969666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058178, 31.905773, 39.049717>,  <37.375977, 32.108757, 39.183136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058178, 31.905773, 39.049717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457337, -0.138648, -0.878419,
		0.399519, -0.850446, 0.342237,
		-0.794498, -0.507463, -0.333548,
		36.819828, 31.753534, 38.949654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663910, 31.442188, 39.002773>,  <37.375977, 32.108757, 39.183136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663910, 31.442188, 39.002773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327034, 31.543934, 38.812611>,  <37.124908, 31.604982, 38.698513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327034, 31.543934, 38.812611>,  <37.663910, 31.442188, 39.002773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327034, 31.543934, 38.812611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471442, -0.080445, -0.878221,
		-0.261634, -0.963756, -0.052169,
		-0.842194, 0.254367, -0.475402,
		37.074375, 31.620243, 38.669991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792629, 31.273403, 38.360519>,  <37.663910, 31.442188, 39.002773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792629, 31.273403, 38.360519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457020, 31.468643, 38.264362>,  <37.255653, 31.585787, 38.206669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457020, 31.468643, 38.264362>,  <37.792629, 31.273403, 38.360519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457020, 31.468643, 38.264362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363342, 0.173779, -0.915305,
		-0.404988, -0.855311, -0.323154,
		-0.839028, 0.488103, -0.240392,
		37.205311, 31.615074, 38.192245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714352, 31.007843, 37.652851>,  <37.792629, 31.273403, 38.360519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714352, 31.007843, 37.652851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489983, 31.333731, 37.711636>,  <37.355362, 31.529263, 37.746906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489983, 31.333731, 37.711636>,  <37.714352, 31.007843, 37.652851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489983, 31.333731, 37.711636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362545, 0.401331, -0.841127,
		-0.744261, -0.418530, -0.520489,
		-0.560925, 0.814719, 0.146959,
		37.321705, 31.578146, 37.755722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401138, 31.174229, 36.945030>,  <37.714352, 31.007843, 37.652851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401138, 31.174229, 36.945030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411263, 31.494473, 37.184490>,  <37.417339, 31.686619, 37.328167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411263, 31.494473, 37.184490>,  <37.401138, 31.174229, 36.945030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411263, 31.494473, 37.184490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361634, 0.550954, -0.752111,
		-0.931976, 0.235532, -0.275581,
		0.025314, 0.800609, 0.598652,
		37.418858, 31.734655, 37.364086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035725, 31.703022, 36.570221>,  <37.401138, 31.174229, 36.945030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035725, 31.703022, 36.570221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270573, 31.871405, 36.846794>,  <37.411484, 31.972435, 37.012737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270573, 31.871405, 36.846794>,  <37.035725, 31.703022, 36.570221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270573, 31.871405, 36.846794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308143, 0.673627, -0.671770,
		-0.748554, 0.607473, 0.265788,
		0.587124, 0.420956, 0.691435,
		37.446709, 31.997692, 37.054226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117229, 32.331650, 36.318897>,  <37.035725, 31.703022, 36.570221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117229, 32.331650, 36.318897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404636, 32.333729, 36.597092>,  <37.577080, 32.334976, 36.764008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404636, 32.333729, 36.597092>,  <37.117229, 32.331650, 36.318897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404636, 32.333729, 36.597092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547060, 0.613275, -0.569753,
		-0.429485, 0.789852, 0.437808,
		0.718518, 0.005193, 0.695490,
		37.620193, 32.335285, 36.805740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387379, 33.020866, 36.365372>,  <37.117229, 32.331650, 36.318897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387379, 33.020866, 36.365372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668079, 32.788361, 36.530136>,  <37.836502, 32.648857, 36.628994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668079, 32.788361, 36.530136>,  <37.387379, 33.020866, 36.365372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668079, 32.788361, 36.530136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712223, 0.558829, -0.424793,
		0.016727, 0.591475, 0.806150,
		0.701754, -0.581264, 0.411915,
		37.878605, 32.613983, 36.653709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835350, 33.479210, 36.678696>,  <37.387379, 33.020866, 36.365372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835350, 33.479210, 36.678696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032761, 33.146336, 36.577583>,  <38.151207, 32.946609, 36.516914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032761, 33.146336, 36.577583>,  <37.835350, 33.479210, 36.678696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032761, 33.146336, 36.577583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714017, 0.553625, -0.428578,
		0.496603, 0.031023, 0.867423,
		0.493523, -0.832188, -0.252782,
		38.180817, 32.896679, 36.501747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535488, 33.679199, 36.913074>,  <37.835350, 33.479210, 36.678696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535488, 33.679199, 36.913074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593449, 33.345619, 36.700085>,  <38.628223, 33.145470, 36.572292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593449, 33.345619, 36.700085>,  <38.535488, 33.679199, 36.913074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593449, 33.345619, 36.700085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913784, 0.319185, -0.251234,
		0.379475, -0.450163, 0.808302,
		0.144902, -0.833951, -0.532474,
		38.636921, 33.095432, 36.540344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270027, 33.449223, 37.136929>,  <38.535488, 33.679199, 36.913074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270027, 33.449223, 37.136929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164280, 33.302753, 36.780048>,  <39.100834, 33.214870, 36.565918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164280, 33.302753, 36.780048>,  <39.270027, 33.449223, 37.136929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164280, 33.302753, 36.780048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838536, 0.369725, -0.400201,
		0.476413, -0.853945, 0.209307,
		-0.264364, -0.366172, -0.892205,
		39.084972, 33.192902, 36.512386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796177, 33.016048, 36.884941>,  <39.270027, 33.449223, 37.136929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796177, 33.016048, 36.884941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602989, 33.081814, 36.540916>,  <39.487076, 33.121273, 36.334503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602989, 33.081814, 36.540916>,  <39.796177, 33.016048, 36.884941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602989, 33.081814, 36.540916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844807, 0.345827, -0.408294,
		0.230302, -0.923781, -0.305926,
		-0.482972, 0.164418, -0.860061,
		39.458099, 33.131138, 36.282898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192890, 32.813599, 36.336990>,  <39.796177, 33.016048, 36.884941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192890, 32.813599, 36.336990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942463, 33.034195, 36.116486>,  <39.792206, 33.166553, 35.984180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942463, 33.034195, 36.116486>,  <40.192890, 32.813599, 36.336990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942463, 33.034195, 36.116486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777020, 0.500535, -0.381713,
		0.065415, -0.667322, -0.741891,
		-0.626068, 0.551494, -0.551265,
		39.754642, 33.199642, 35.951107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281887, 32.717148, 35.565807>,  <40.192890, 32.813599, 36.336990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281887, 32.717148, 35.565807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129223, 33.080776, 35.632648>,  <40.037624, 33.298954, 35.672752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129223, 33.080776, 35.632648>,  <40.281887, 32.717148, 35.565807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129223, 33.080776, 35.632648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860525, 0.415462, -0.294767,
		-0.337388, 0.031291, -0.940846,
		-0.381662, 0.909072, 0.167098,
		40.014725, 33.353497, 35.682777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277298, 33.265808, 35.012341>,  <40.281887, 32.717148, 35.565807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277298, 33.265808, 35.012341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319218, 33.519012, 35.319149>,  <40.344368, 33.670933, 35.503235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319218, 33.519012, 35.319149>,  <40.277298, 33.265808, 35.012341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319218, 33.519012, 35.319149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772078, 0.434342, -0.463942,
		-0.626828, 0.640819, -0.443212,
		0.104797, 0.633007, 0.767020,
		40.350658, 33.708916, 35.549255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130520, 33.933552, 34.824158>,  <40.277298, 33.265808, 35.012341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130520, 33.933552, 34.824158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415543, 33.922081, 35.104572>,  <40.586555, 33.915199, 35.272820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415543, 33.922081, 35.104572>,  <40.130520, 33.933552, 34.824158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415543, 33.922081, 35.104572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601780, 0.538697, -0.589632,
		-0.360734, 0.842012, 0.401108,
		0.712553, -0.028679, 0.701032,
		40.629307, 33.913479, 35.314880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515541, 34.581482, 34.925877>,  <40.130520, 33.933552, 34.824158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515541, 34.581482, 34.925877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767677, 34.313141, 35.082142>,  <40.918961, 34.152134, 35.175900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767677, 34.313141, 35.082142>,  <40.515541, 34.581482, 34.925877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767677, 34.313141, 35.082142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762014, 0.438532, -0.476471,
		0.148324, 0.598032, 0.787628,
		0.630345, -0.670855, 0.390664,
		40.956779, 34.111885, 35.199341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149105, 34.943447, 35.005829>,  <40.515541, 34.581482, 34.925877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149105, 34.943447, 35.005829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281075, 34.567101, 35.036636>,  <41.360256, 34.341293, 35.055119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281075, 34.567101, 35.036636>,  <41.149105, 34.943447, 35.005829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281075, 34.567101, 35.036636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857009, 0.264307, -0.442354,
		0.395838, 0.211944, 0.893528,
		0.329920, -0.940862, 0.077015,
		41.380051, 34.284843, 35.059742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802765, 34.844799, 35.447147>,  <41.149105, 34.943447, 35.005829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802765, 34.844799, 35.447147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768143, 34.561874, 35.166515>,  <41.747372, 34.392120, 34.998135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768143, 34.561874, 35.166515>,  <41.802765, 34.844799, 35.447147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768143, 34.561874, 35.166515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947758, 0.158568, -0.276787,
		0.307023, -0.688888, 0.656635,
		-0.086553, -0.707311, -0.701584,
		41.742176, 34.349682, 34.956039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324646, 34.402634, 35.514805>,  <41.802765, 34.844799, 35.447147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324646, 34.402634, 35.514805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244396, 34.354538, 35.125900>,  <42.196247, 34.325680, 34.892559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244396, 34.354538, 35.125900>,  <42.324646, 34.402634, 35.514805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244396, 34.354538, 35.125900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971448, 0.103878, -0.213304,
		0.126644, -0.987295, 0.095966,
		-0.200626, -0.120239, -0.972261,
		42.184208, 34.318466, 34.834221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908192, 34.429646, 35.253536>,  <42.324646, 34.402634, 35.514805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908192, 34.429646, 35.253536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743168, 34.420467, 34.889278>,  <42.644154, 34.414959, 34.670723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743168, 34.420467, 34.889278>,  <42.908192, 34.429646, 35.253536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743168, 34.420467, 34.889278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909919, 0.036711, -0.413158,
		0.042913, -0.999062, 0.005738,
		-0.412560, -0.022951, -0.910641,
		42.619400, 34.413582, 34.616085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432175, 34.407169, 34.843250>,  <42.908192, 34.429646, 35.253536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432175, 34.407169, 34.843250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140110, 34.430260, 34.570915>,  <42.964870, 34.444115, 34.407516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140110, 34.430260, 34.570915>,  <43.432175, 34.407169, 34.843250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140110, 34.430260, 34.570915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682963, 0.031474, -0.729774,
		-0.020700, -0.997836, -0.062408,
		-0.730159, 0.057729, -0.680834,
		42.921062, 34.447578, 34.366665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788544, 35.048595, 35.076885>,  <43.432175, 34.407169, 34.843250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788544, 35.048595, 35.076885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110352, 35.059185, 35.314220>,  <44.303436, 35.065536, 35.456623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110352, 35.059185, 35.314220>,  <43.788544, 35.048595, 35.076885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110352, 35.059185, 35.314220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539908, -0.383685, 0.749190,
		0.247488, -0.923085, -0.294388,
		0.804518, 0.026473, 0.593338,
		44.351707, 35.067127, 35.492222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843102, 34.396049, 35.485817>,  <43.788544, 35.048595, 35.076885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843102, 34.396049, 35.485817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085228, 34.656773, 35.668568>,  <44.230503, 34.813206, 35.778217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085228, 34.656773, 35.668568>,  <43.843102, 34.396049, 35.485817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085228, 34.656773, 35.668568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501103, -0.133910, 0.854964,
		0.618456, -0.746465, 0.245567,
		0.605316, 0.651812, 0.456873,
		44.266823, 34.852318, 35.805630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021362, 34.067921, 36.099972>,  <43.843102, 34.396049, 35.485817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021362, 34.067921, 36.099972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133713, 34.442032, 36.186100>,  <44.201122, 34.666500, 36.237778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133713, 34.442032, 36.186100>,  <44.021362, 34.067921, 36.099972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133713, 34.442032, 36.186100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310880, -0.123591, 0.942379,
		0.908000, -0.331625, 0.256047,
		0.280872, 0.935280, 0.215317,
		44.217976, 34.722614, 36.250694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467068, 34.085083, 36.708641>,  <44.021362, 34.067921, 36.099972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467068, 34.085083, 36.708641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281868, 34.439163, 36.690514>,  <44.170750, 34.651611, 36.679638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281868, 34.439163, 36.690514>,  <44.467068, 34.085083, 36.708641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281868, 34.439163, 36.690514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393215, -0.159311, 0.905539,
		0.794366, 0.437080, 0.421835,
		-0.462996, 0.885201, -0.045315,
		44.142971, 34.704723, 36.676918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571766, 34.279057, 37.338863>,  <44.467068, 34.085083, 36.708641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571766, 34.279057, 37.338863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291435, 34.533550, 37.209843>,  <44.123238, 34.686245, 37.132431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291435, 34.533550, 37.209843>,  <44.571766, 34.279057, 37.338863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291435, 34.533550, 37.209843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346191, 0.091997, 0.933642,
		0.623691, 0.765990, 0.155784,
		-0.700829, 0.636235, -0.322556,
		44.081188, 34.724422, 37.113075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638233, 34.811630, 37.796951>,  <44.571766, 34.279057, 37.338863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638233, 34.811630, 37.796951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273346, 34.815235, 37.633110>,  <44.054413, 34.817398, 37.534805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273346, 34.815235, 37.633110>,  <44.638233, 34.811630, 37.796951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273346, 34.815235, 37.633110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405976, 0.114701, 0.906657,
		0.055155, 0.993359, -0.100973,
		-0.912218, 0.009015, -0.409607,
		43.999680, 34.817940, 37.510227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295765, 35.459621, 38.029476>,  <44.638233, 34.811630, 37.796951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295765, 35.459621, 38.029476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002499, 35.222996, 37.895298>,  <43.826538, 35.081020, 37.814793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002499, 35.222996, 37.895298>,  <44.295765, 35.459621, 38.029476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002499, 35.222996, 37.895298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589273, 0.306411, 0.747576,
		-0.339459, 0.745761, -0.573243,
		-0.733161, -0.591568, -0.335443,
		43.782551, 35.045525, 37.794666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672771, 35.864388, 37.975628>,  <44.295765, 35.459621, 38.029476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672771, 35.864388, 37.975628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555168, 35.483158, 38.004517>,  <43.484604, 35.254421, 38.021851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555168, 35.483158, 38.004517>,  <43.672771, 35.864388, 37.975628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555168, 35.483158, 38.004517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692042, 0.264389, 0.671696,
		-0.659268, 0.147506, -0.737298,
		-0.294013, -0.953069, 0.072223,
		43.466965, 35.197239, 38.026184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917145, 35.863064, 37.874268>,  <43.672771, 35.864388, 37.975628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917145, 35.863064, 37.874268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017246, 35.515633, 38.045357>,  <43.077305, 35.307175, 38.148010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017246, 35.515633, 38.045357>,  <42.917145, 35.863064, 37.874268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017246, 35.515633, 38.045357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662709, 0.168395, 0.729698,
		-0.705826, -0.466064, -0.533473,
		0.250252, -0.868578, 0.427723,
		43.092323, 35.255058, 38.173676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368816, 35.644104, 38.028927>,  <42.917145, 35.863064, 37.874268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368816, 35.644104, 38.028927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575710, 35.403336, 38.272289>,  <42.699844, 35.258873, 38.418308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575710, 35.403336, 38.272289>,  <42.368816, 35.644104, 38.028927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575710, 35.403336, 38.272289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692511, 0.123364, 0.710781,
		-0.502892, -0.788967, -0.353030,
		0.517232, -0.601923, 0.608407,
		42.730881, 35.222759, 38.454811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871803, 35.127941, 38.320084>,  <42.368816, 35.644104, 38.028927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871803, 35.127941, 38.320084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193039, 35.193684, 38.549183>,  <42.385780, 35.233128, 38.686642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193039, 35.193684, 38.549183>,  <41.871803, 35.127941, 38.320084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193039, 35.193684, 38.549183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593828, 0.300160, 0.746507,
		-0.049223, -0.939623, 0.338653,
		0.803085, 0.164357, 0.572749,
		42.433964, 35.242992, 38.721008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578690, 34.982555, 38.909554>,  <41.871803, 35.127941, 38.320084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578690, 34.982555, 38.909554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929527, 35.146061, 39.010448>,  <42.140030, 35.244164, 39.070988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929527, 35.146061, 39.010448>,  <41.578690, 34.982555, 38.909554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929527, 35.146061, 39.010448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415935, 0.383705, 0.824480,
		0.240230, -0.828060, 0.506563,
		0.877090, 0.408762, 0.252242,
		42.192654, 35.268688, 39.086121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646996, 34.832111, 39.575096>,  <41.578690, 34.982555, 38.909554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646996, 34.832111, 39.575096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875950, 35.152939, 39.506901>,  <42.013321, 35.345436, 39.465984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875950, 35.152939, 39.506901>,  <41.646996, 34.832111, 39.575096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875950, 35.152939, 39.506901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351732, 0.427976, 0.832539,
		0.740718, -0.416562, 0.527079,
		0.572381, 0.802067, -0.170491,
		42.047665, 35.393559, 39.455753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006584, 35.015457, 40.260696>,  <41.646996, 34.832111, 39.575096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006584, 35.015457, 40.260696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008808, 35.345432, 40.034622>,  <42.010143, 35.543419, 39.898975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008808, 35.345432, 40.034622>,  <42.006584, 35.015457, 40.260696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008808, 35.345432, 40.034622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263838, 0.546381, 0.794894,
		0.964551, 0.144698, 0.220690,
		0.005562, 0.824942, -0.565190,
		42.010475, 35.592915, 39.865067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322369, 35.561825, 40.707432>,  <42.006584, 35.015457, 40.260696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322369, 35.561825, 40.707432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110210, 35.748417, 40.424286>,  <41.982914, 35.860371, 40.254398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110210, 35.748417, 40.424286>,  <42.322369, 35.561825, 40.707432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110210, 35.748417, 40.424286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281101, 0.690980, 0.665979,
		0.799787, 0.552217, -0.235367,
		-0.530399, 0.466479, -0.707866,
		41.951092, 35.888359, 40.211926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479950, 36.262241, 40.830769>,  <42.322369, 35.561825, 40.707432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479950, 36.262241, 40.830769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138218, 36.225971, 40.626060>,  <41.933178, 36.204208, 40.503235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138218, 36.225971, 40.626060>,  <42.479950, 36.262241, 40.830769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138218, 36.225971, 40.626060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447518, 0.629065, 0.635613,
		0.264301, 0.772046, -0.578005,
		-0.854326, -0.090674, -0.511767,
		41.881920, 36.198769, 40.472530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150887, 36.904850, 40.951740>,  <42.479950, 36.262241, 40.830769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150887, 36.904850, 40.951740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844975, 36.687187, 40.813755>,  <41.661427, 36.556587, 40.730965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844975, 36.687187, 40.813755>,  <42.150887, 36.904850, 40.951740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844975, 36.687187, 40.813755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608527, 0.434171, 0.664222,
		-0.211669, 0.717904, -0.663182,
		-0.764782, -0.544159, -0.344964,
		41.615540, 36.523941, 40.710266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644554, 37.458485, 40.828411>,  <42.150887, 36.904850, 40.951740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644554, 37.458485, 40.828411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491863, 37.093094, 40.884754>,  <41.400249, 36.873859, 40.918560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491863, 37.093094, 40.884754>,  <41.644554, 37.458485, 40.828411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491863, 37.093094, 40.884754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585625, 0.356940, 0.727761,
		-0.715072, 0.195316, -0.671210,
		-0.381726, -0.913480, 0.140856,
		41.377346, 36.819050, 40.927010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870041, 37.564873, 40.954803>,  <41.644554, 37.458485, 40.828411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870041, 37.564873, 40.954803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970383, 37.207142, 41.102993>,  <41.030586, 36.992504, 41.191906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970383, 37.207142, 41.102993>,  <40.870041, 37.564873, 40.954803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970383, 37.207142, 41.102993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674546, 0.113000, 0.729533,
		-0.694305, -0.432906, -0.574920,
		0.250853, -0.894328, 0.370472,
		41.045639, 36.938843, 41.214134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254078, 37.143929, 41.108990>,  <40.870041, 37.564873, 40.954803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254078, 37.143929, 41.108990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554428, 37.045906, 41.354309>,  <40.734638, 36.987095, 41.501499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554428, 37.045906, 41.354309>,  <40.254078, 37.143929, 41.108990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554428, 37.045906, 41.354309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602666, 0.125607, 0.788046,
		-0.270147, -0.961339, -0.053369,
		0.750876, -0.245052, 0.613298,
		40.779690, 36.972389, 41.538300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085831, 36.599682, 41.581066>,  <40.254078, 37.143929, 41.108990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085831, 36.599682, 41.581066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352978, 36.842503, 41.753315>,  <40.513264, 36.988197, 41.856667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352978, 36.842503, 41.753315>,  <40.085831, 36.599682, 41.581066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352978, 36.842503, 41.753315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583066, 0.067134, 0.809646,
		0.462591, -0.791818, 0.398790,
		0.667865, 0.607056, 0.430627,
		40.553337, 37.024620, 41.882504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338074, 36.203732, 42.222420>,  <40.085831, 36.599682, 41.581066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338074, 36.203732, 42.222420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373680, 36.602013, 42.232677>,  <40.395042, 36.840981, 42.238834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373680, 36.602013, 42.232677>,  <40.338074, 36.203732, 42.222420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373680, 36.602013, 42.232677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478344, 0.020147, 0.877941,
		0.873649, -0.090416, 0.478081,
		0.089012, 0.995700, 0.025649,
		40.400383, 36.900723, 42.240372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441887, 36.299454, 42.916958>,  <40.338074, 36.203732, 42.222420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441887, 36.299454, 42.916958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350330, 36.665878, 42.785233>,  <40.295395, 36.885731, 42.706196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350330, 36.665878, 42.785233>,  <40.441887, 36.299454, 42.916958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350330, 36.665878, 42.785233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592770, 0.137177, 0.793604,
		0.772160, 0.376858, 0.511612,
		-0.228895, 0.916057, -0.329312,
		40.281662, 36.940697, 42.686440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975098, 35.782459, 42.557068>,  <40.441887, 36.299454, 42.916958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975098, 35.782459, 42.557068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347240, 35.837891, 42.692848>,  <41.570526, 35.871151, 42.774319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347240, 35.837891, 42.692848>,  <40.975098, 35.782459, 42.557068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347240, 35.837891, 42.692848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331527, 0.713369, 0.617409,
		-0.156595, -0.686950, 0.709632,
		0.930359, 0.138579, 0.339452,
		41.626347, 35.879463, 42.794685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140629, 35.661766, 43.253487>,  <40.975098, 35.782459, 42.557068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140629, 35.661766, 43.253487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365429, 35.965538, 43.122387>,  <41.500309, 36.147800, 43.043728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365429, 35.965538, 43.122387>,  <41.140629, 35.661766, 43.253487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365429, 35.965538, 43.122387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250326, 0.533824, 0.807693,
		0.788346, -0.371883, 0.490116,
		0.562003, 0.759431, -0.327746,
		41.534031, 36.193367, 43.024063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779289, 35.800308, 43.744518>,  <41.140629, 35.661766, 43.253487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779289, 35.800308, 43.744518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613914, 36.106312, 43.547001>,  <41.514690, 36.289913, 43.428490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613914, 36.106312, 43.547001>,  <41.779289, 35.800308, 43.744518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613914, 36.106312, 43.547001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139204, 0.482835, 0.864577,
		0.899828, 0.426188, -0.093131,
		-0.413438, 0.765006, -0.493795,
		41.489883, 36.335815, 43.398861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137600, 36.226994, 43.984291>,  <41.779289, 35.800308, 43.744518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137600, 36.226994, 43.984291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137074, 36.373566, 43.612114>,  <41.136757, 36.461510, 43.388805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137074, 36.373566, 43.612114>,  <41.137600, 36.226994, 43.984291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137074, 36.373566, 43.612114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260801, 0.898120, 0.354068,
		0.965392, 0.243126, 0.094385,
		-0.001314, 0.366430, -0.930445,
		41.136681, 36.483494, 43.332981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592373, 36.763920, 44.031914>,  <41.137600, 36.226994, 43.984291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592373, 36.763920, 44.031914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319229, 36.810982, 43.743507>,  <41.155342, 36.839218, 43.570465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319229, 36.810982, 43.743507>,  <41.592373, 36.763920, 44.031914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319229, 36.810982, 43.743507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398999, 0.766682, 0.502989,
		0.611966, 0.631155, -0.476593,
		-0.682859, 0.117652, -0.721014,
		41.114372, 36.846279, 43.527203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226475, 37.120865, 43.712692>,  <41.592373, 36.763920, 44.031914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226475, 37.120865, 43.712692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545803, 36.908455, 43.599056>,  <42.737400, 36.781010, 43.530876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545803, 36.908455, 43.599056>,  <42.226475, 37.120865, 43.712692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545803, 36.908455, 43.599056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100681, 0.582758, -0.806384,
		0.593763, 0.615147, 0.518690,
		0.798316, -0.531023, -0.284086,
		42.785297, 36.749149, 43.513832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766899, 37.534313, 43.556850>,  <42.226475, 37.120865, 43.712692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766899, 37.534313, 43.556850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835255, 37.204838, 43.340576>,  <42.876266, 37.007153, 43.210812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835255, 37.204838, 43.340576>,  <42.766899, 37.534313, 43.556850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835255, 37.204838, 43.340576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294854, 0.566362, -0.769607,
		0.940138, -0.027909, 0.339650,
		0.170886, -0.823684, -0.540687,
		42.886520, 36.957733, 43.178371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175121, 37.830906, 43.218163>,  <42.766899, 37.534313, 43.556850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175121, 37.830906, 43.218163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149647, 37.474426, 43.038517>,  <43.134361, 37.260536, 42.930729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149647, 37.474426, 43.038517>,  <43.175121, 37.830906, 43.218163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149647, 37.474426, 43.038517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590885, 0.328990, -0.736627,
		0.804237, -0.312290, 0.505645,
		-0.063689, -0.891202, -0.449114,
		43.130539, 37.207066, 42.903782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837341, 37.422050, 43.264519>,  <43.175121, 37.830906, 43.218163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837341, 37.422050, 43.264519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608868, 37.315697, 42.953892>,  <43.471783, 37.251884, 42.767517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608868, 37.315697, 42.953892>,  <43.837341, 37.422050, 43.264519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608868, 37.315697, 42.953892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806798, -0.007742, -0.590776,
		0.151064, -0.963975, 0.218936,
		-0.571188, -0.265882, -0.776563,
		43.437511, 37.235931, 42.720924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298172, 37.000290, 42.799721>,  <43.837341, 37.422050, 43.264519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298172, 37.000290, 42.799721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992741, 37.086536, 42.556263>,  <43.809483, 37.138287, 42.410187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992741, 37.086536, 42.556263>,  <44.298172, 37.000290, 42.799721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992741, 37.086536, 42.556263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616677, -0.035964, -0.786395,
		-0.191451, -0.975815, -0.105506,
		-0.763581, 0.215619, -0.608647,
		43.763668, 37.151222, 42.373669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181168, 36.457623, 42.252872>,  <44.298172, 37.000290, 42.799721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181168, 36.457623, 42.252872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046207, 36.802837, 42.102501>,  <43.965229, 37.009968, 42.012280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046207, 36.802837, 42.102501>,  <44.181168, 36.457623, 42.252872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046207, 36.802837, 42.102501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528230, -0.156969, -0.834466,
		-0.779187, -0.480126, -0.402922,
		-0.337403, 0.863041, -0.375925,
		43.944988, 37.061749, 41.989723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101421, 36.254498, 41.612343>,  <44.181168, 36.457623, 42.252872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101421, 36.254498, 41.612343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065155, 36.652596, 41.626572>,  <44.043396, 36.891453, 41.635109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065155, 36.652596, 41.626572>,  <44.101421, 36.254498, 41.612343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065155, 36.652596, 41.626572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690684, 0.088575, -0.717712,
		-0.717450, -0.040507, -0.695431,
		-0.090670, 0.995246, 0.035570,
		44.037952, 36.951168, 41.637241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991356, 36.418941, 40.951775>,  <44.101421, 36.254498, 41.612343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991356, 36.418941, 40.951775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115017, 36.764557, 41.110699>,  <44.189213, 36.971928, 41.206055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115017, 36.764557, 41.110699>,  <43.991356, 36.418941, 40.951775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115017, 36.764557, 41.110699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567686, 0.167515, -0.806022,
		-0.762991, 0.474736, -0.438715,
		0.309157, 0.864040, 0.397313,
		44.207764, 37.023769, 41.229893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972996, 36.820206, 40.352924>,  <43.991356, 36.418941, 40.951775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972996, 36.820206, 40.352924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238258, 36.976841, 40.608074>,  <44.397415, 37.070820, 40.761162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238258, 36.976841, 40.608074>,  <43.972996, 36.820206, 40.352924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238258, 36.976841, 40.608074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582533, 0.265087, -0.768365,
		-0.469971, 0.881130, -0.052316,
		0.663161, 0.391585, 0.637871,
		44.437206, 37.094318, 40.799435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137505, 37.523430, 40.065201>,  <43.972996, 36.820206, 40.352924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137505, 37.523430, 40.065201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431377, 37.420605, 40.316330>,  <44.607700, 37.358910, 40.467010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431377, 37.420605, 40.316330>,  <44.137505, 37.523430, 40.065201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431377, 37.420605, 40.316330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674742, 0.180710, -0.715588,
		0.070493, 0.949350, 0.306212,
		0.734679, -0.257059, 0.627828,
		44.651783, 37.343487, 40.504677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584351, 38.087921, 40.117413>,  <44.137505, 37.523430, 40.065201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584351, 38.087921, 40.117413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805977, 37.779533, 40.243023>,  <44.938953, 37.594501, 40.318390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805977, 37.779533, 40.243023>,  <44.584351, 38.087921, 40.117413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.805977, 37.779533, 40.243023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745218, 0.291234, -0.599861,
		0.371023, 0.566379, 0.735906,
		0.554069, -0.770972, 0.314021,
		44.972198, 37.548241, 40.337231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282585, 38.312450, 40.045006>,  <44.584351, 38.087921, 40.117413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282585, 38.312450, 40.045006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318130, 37.915348, 40.077354>,  <45.339458, 37.677086, 40.096764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318130, 37.915348, 40.077354>,  <45.282585, 38.312450, 40.045006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318130, 37.915348, 40.077354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718577, 0.007676, -0.695405,
		0.689746, 0.119905, 0.714054,
		0.088864, -0.992756, 0.080867,
		45.344791, 37.617523, 40.101616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976471, 38.152454, 39.998676>,  <45.282585, 38.312450, 40.045006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976471, 38.152454, 39.998676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816563, 37.804569, 39.882893>,  <45.720615, 37.595840, 39.813423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816563, 37.804569, 39.882893>,  <45.976471, 38.152454, 39.998676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816563, 37.804569, 39.882893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628638, -0.030326, -0.777106,
		0.667080, -0.492629, 0.558857,
		-0.399773, -0.869711, -0.289456,
		45.696632, 37.543655, 39.796055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570759, 37.706367, 39.767452>,  <45.976471, 38.152454, 39.998676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570759, 37.706367, 39.767452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253620, 37.509701, 39.623417>,  <46.063339, 37.391701, 39.536995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253620, 37.509701, 39.623417>,  <46.570759, 37.706367, 39.767452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253620, 37.509701, 39.623417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512402, -0.217946, -0.830629,
		0.329912, -0.843068, 0.424728,
		-0.792844, -0.491666, -0.360086,
		46.015766, 37.362202, 39.515392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.769527, 37.044506, 39.570011>,  <46.570759, 37.706367, 39.767452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.769527, 37.044506, 39.570011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431759, 37.076302, 39.358112>,  <46.229095, 37.095379, 39.230972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431759, 37.076302, 39.358112>,  <46.769527, 37.044506, 39.570011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.431759, 37.076302, 39.358112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480134, -0.326197, -0.814290,
		-0.237525, -0.941954, 0.237285,
		-0.844425, 0.079485, -0.529744,
		46.178432, 37.100147, 39.199188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680233, 36.453701, 39.134232>,  <46.769527, 37.044506, 39.570011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680233, 36.453701, 39.134232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.479324, 36.742188, 38.943413>,  <46.358780, 36.915279, 38.828922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.479324, 36.742188, 38.943413>,  <46.680233, 36.453701, 39.134232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479324, 36.742188, 38.943413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537870, -0.171394, -0.825421,
		-0.677068, -0.671175, -0.301833,
		-0.502270, 0.721213, -0.477050,
		46.328644, 36.958553, 38.800297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.630993, 36.185635, 38.464046>,  <46.680233, 36.453701, 39.134232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.630993, 36.185635, 38.464046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507999, 36.558216, 38.386230>,  <46.434204, 36.781765, 38.339542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507999, 36.558216, 38.386230>,  <46.630993, 36.185635, 38.464046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.507999, 36.558216, 38.386230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223543, -0.128015, -0.966251,
		-0.924924, -0.340590, -0.168859,
		-0.307479, 0.931456, -0.194541,
		46.415756, 36.837654, 38.327869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222725, 36.008965, 37.948711>,  <46.630993, 36.185635, 38.464046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222725, 36.008965, 37.948711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.315212, 36.397976, 37.937912>,  <46.370705, 36.631382, 37.931435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.315212, 36.397976, 37.937912>,  <46.222725, 36.008965, 37.948711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.315212, 36.397976, 37.937912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135774, -0.059733, -0.988938,
		-0.963381, 0.224996, -0.145855,
		0.231219, 0.972527, -0.026997,
		46.384579, 36.689735, 37.929813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824100, 36.246983, 37.438961>,  <46.222725, 36.008965, 37.948711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824100, 36.246983, 37.438961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.116119, 36.518013, 37.474567>,  <46.291328, 36.680634, 37.495934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.116119, 36.518013, 37.474567>,  <45.824100, 36.246983, 37.438961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.116119, 36.518013, 37.474567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142519, -0.023555, -0.989512,
		-0.668375, 0.735074, -0.113764,
		0.730044, 0.677578, 0.089019,
		46.335133, 36.721287, 37.501274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.724583, 36.644428, 36.891197>,  <45.824100, 36.246983, 37.438961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.724583, 36.644428, 36.891197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092171, 36.757000, 37.001675>,  <46.312725, 36.824543, 37.067963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092171, 36.757000, 37.001675>,  <45.724583, 36.644428, 36.891197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092171, 36.757000, 37.001675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210895, 0.241051, -0.947321,
		-0.333184, 0.928811, 0.162167,
		0.918974, 0.281432, 0.276196,
		46.367863, 36.841431, 37.084534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866581, 37.325359, 36.583603>,  <45.724583, 36.644428, 36.891197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866581, 37.325359, 36.583603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194149, 37.105732, 36.650402>,  <46.390690, 36.973957, 36.690483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194149, 37.105732, 36.650402>,  <45.866581, 37.325359, 36.583603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194149, 37.105732, 36.650402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174175, -0.039477, -0.983923,
		0.546833, 0.834845, 0.063305,
		0.818924, -0.549067, 0.166996,
		46.439827, 36.941013, 36.700500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176559, 37.415413, 36.011421>,  <45.866581, 37.325359, 36.583603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176559, 37.415413, 36.011421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357449, 37.094257, 36.166782>,  <46.465984, 36.901562, 36.259998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357449, 37.094257, 36.166782>,  <46.176559, 37.415413, 36.011421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357449, 37.094257, 36.166782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093713, -0.390288, -0.915911,
		0.886966, 0.450597, -0.101257,
		0.452227, -0.802893, 0.388399,
		46.493118, 36.853390, 36.283302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.896820, 37.444244, 35.747963>,  <46.176559, 37.415413, 36.011421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.896820, 37.444244, 35.747963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750168, 37.084480, 35.843155>,  <46.662178, 36.868622, 35.900272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750168, 37.084480, 35.843155>,  <46.896820, 37.444244, 35.747963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.750168, 37.084480, 35.843155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270419, -0.347770, -0.897736,
		0.890200, -0.264780, 0.370722,
		-0.366629, -0.899415, 0.237984,
		46.640179, 36.814655, 35.914551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.398392, 36.976276, 35.638565>,  <46.896820, 37.444244, 35.747963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.398392, 36.976276, 35.638565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068081, 36.750706, 35.641861>,  <46.869892, 36.615364, 35.643837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068081, 36.750706, 35.641861>,  <47.398392, 36.976276, 35.638565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.068081, 36.750706, 35.641861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313760, -0.471485, -0.824170,
		0.468657, -0.678001, 0.566282,
		-0.825782, -0.563930, 0.008236,
		46.820347, 36.581528, 35.644333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.512100, 36.272381, 35.713371>,  <47.398392, 36.976276, 35.638565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.512100, 36.272381, 35.713371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212276, 36.410995, 35.487782>,  <47.032383, 36.494164, 35.352428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212276, 36.410995, 35.487782>,  <47.512100, 36.272381, 35.713371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.212276, 36.410995, 35.487782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482788, -0.296682, -0.823951,
		-0.452855, -0.889882, 0.055075,
		-0.749559, 0.346541, -0.563978,
		46.987408, 36.514957, 35.318588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.167606, 35.737278, 35.325550>,  <47.512100, 36.272381, 35.713371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.167606, 35.737278, 35.325550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177383, 36.101551, 35.160599>,  <47.183250, 36.320114, 35.061626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177383, 36.101551, 35.160599>,  <47.167606, 35.737278, 35.325550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.177383, 36.101551, 35.160599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519690, -0.363959, -0.772953,
		-0.854005, -0.195417, -0.482169,
		0.024441, 0.910685, -0.412379,
		47.184715, 36.374756, 35.036884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.701458, 35.247684, 35.531513>,  <47.167606, 35.737278, 35.325550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.701458, 35.247684, 35.531513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.768444, 34.913067, 35.322845>,  <47.808636, 34.712296, 35.197643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.768444, 34.913067, 35.322845>,  <47.701458, 35.247684, 35.531513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.768444, 34.913067, 35.322845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867293, -0.126604, 0.481430,
		-0.468786, -0.533065, 0.704331,
		0.167462, -0.836548, -0.521673,
		47.818684, 34.662102, 35.166344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.690128, 35.751572, 43.253578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.319210, 35.857243, 43.147499>,  <33.096661, 35.920647, 43.083851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.319210, 35.857243, 43.147499>,  <33.690128, 35.751572, 43.253578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319210, 35.857243, 43.147499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127975, -0.442042, -0.887819,
		-0.351767, -0.857211, 0.376097,
		-0.927299, 0.264175, -0.265197,
		33.041019, 35.936497, 43.067940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493481, 35.196152, 42.835678>,  <33.690128, 35.751572, 43.253578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493481, 35.196152, 42.835678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.257343, 35.506672, 42.747276>,  <33.115662, 35.692986, 42.694237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.257343, 35.506672, 42.747276>,  <33.493481, 35.196152, 42.835678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257343, 35.506672, 42.747276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093963, -0.205843, -0.974063,
		-0.801661, -0.595802, 0.048575,
		-0.590348, 0.776304, -0.221000,
		33.080238, 35.739563, 42.680977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931644, 34.923416, 42.338818>,  <33.493481, 35.196152, 42.835678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931644, 34.923416, 42.338818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.939098, 35.320644, 42.292393>,  <32.943569, 35.558979, 42.264538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.939098, 35.320644, 42.292393>,  <32.931644, 34.923416, 42.338818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939098, 35.320644, 42.292393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056005, -0.116940, -0.991559,
		-0.998257, 0.011977, -0.057796,
		0.018635, 0.993067, -0.116065,
		32.944687, 35.618565, 42.257572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403091, 35.089622, 41.756683>,  <32.931644, 34.923416, 42.338818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403091, 35.089622, 41.756683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.616165, 35.427380, 41.779453>,  <32.744011, 35.630035, 41.793114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.616165, 35.427380, 41.779453>,  <32.403091, 35.089622, 41.756683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616165, 35.427380, 41.779453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119845, -0.008676, -0.992755,
		-0.837785, 0.535648, -0.105819,
		0.532685, 0.844397, 0.056926,
		32.775970, 35.680698, 41.796532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178921, 35.556843, 41.202106>,  <32.403091, 35.089622, 41.756683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178921, 35.556843, 41.202106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.556469, 35.630264, 41.311958>,  <32.782997, 35.674316, 41.377869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.556469, 35.630264, 41.311958>,  <32.178921, 35.556843, 41.202106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556469, 35.630264, 41.311958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297258, -0.109399, -0.948509,
		-0.144057, 0.976903, -0.157820,
		0.943867, 0.183552, 0.274633,
		32.839630, 35.685329, 41.394348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400169, 35.996746, 40.638840>,  <32.178921, 35.556843, 41.202106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400169, 35.996746, 40.638840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.748474, 35.900784, 40.810520>,  <32.957458, 35.843208, 40.913528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.748474, 35.900784, 40.810520>,  <32.400169, 35.996746, 40.638840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748474, 35.900784, 40.810520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415900, -0.106270, -0.903180,
		0.262288, 0.964962, 0.007240,
		0.870765, -0.239905, 0.429201,
		33.009705, 35.828812, 40.939281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968136, 36.520458, 40.394650>,  <32.400169, 35.996746, 40.638840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968136, 36.520458, 40.394650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.160805, 36.188843, 40.508274>,  <33.276405, 35.989872, 40.576450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.160805, 36.188843, 40.508274>,  <32.968136, 36.520458, 40.394650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160805, 36.188843, 40.508274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381972, -0.093123, -0.919470,
		0.788728, 0.551385, 0.271814,
		0.481670, -0.829037, 0.284063,
		33.305305, 35.940132, 40.593494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564240, 36.587032, 39.935963>,  <32.968136, 36.520458, 40.394650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564240, 36.587032, 39.935963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.551449, 36.219025, 40.092194>,  <33.543774, 35.998222, 40.185932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.551449, 36.219025, 40.092194>,  <33.564240, 36.587032, 39.935963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551449, 36.219025, 40.092194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279134, -0.383447, -0.880370,
		0.959720, 0.080876, 0.269067,
		-0.031972, -0.920015, 0.390577,
		33.541859, 35.943020, 40.209366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224483, 36.285767, 39.761982>,  <33.564240, 36.587032, 39.935963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224483, 36.285767, 39.761982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983795, 35.973583, 39.829876>,  <33.839382, 35.786274, 39.870613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983795, 35.973583, 39.829876>,  <34.224483, 36.285767, 39.761982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983795, 35.973583, 39.829876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310098, -0.424121, -0.850859,
		0.736050, -0.459348, 0.497223,
		-0.601723, -0.780462, 0.169732,
		33.803280, 35.739445, 39.880795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620396, 35.621464, 39.678684>,  <34.224483, 36.285767, 39.761982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620396, 35.621464, 39.678684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.245663, 35.488605, 39.634811>,  <34.020824, 35.408890, 39.608486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.245663, 35.488605, 39.634811>,  <34.620396, 35.621464, 39.678684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245663, 35.488605, 39.634811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289374, -0.559772, -0.776478,
		0.196508, -0.759166, 0.620525,
		-0.936828, -0.332148, -0.109683,
		33.964615, 35.388962, 39.601906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731113, 34.957508, 39.759140>,  <34.620396, 35.621464, 39.678684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731113, 34.957508, 39.759140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.415901, 35.016708, 39.520107>,  <34.226772, 35.052231, 39.376690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.415901, 35.016708, 39.520107>,  <34.731113, 34.957508, 39.759140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415901, 35.016708, 39.520107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488744, -0.439832, -0.753443,
		-0.374348, -0.885800, 0.274265,
		-0.788031, 0.148004, -0.597580,
		34.179493, 35.061111, 39.340832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744122, 34.368450, 39.340942>,  <34.731113, 34.957508, 39.759140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744122, 34.368450, 39.340942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.547565, 34.651604, 39.137993>,  <34.429630, 34.821495, 39.016224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.547565, 34.651604, 39.137993>,  <34.744122, 34.368450, 39.340942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547565, 34.651604, 39.137993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477675, -0.268071, -0.836639,
		-0.728257, -0.653480, -0.206411,
		-0.491394, 0.707886, -0.507376,
		34.400146, 34.863968, 38.985779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517090, 34.043282, 38.733292>,  <34.744122, 34.368450, 39.340942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517090, 34.043282, 38.733292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.502251, 34.428635, 38.627068>,  <34.493347, 34.659847, 38.563332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.502251, 34.428635, 38.627068>,  <34.517090, 34.043282, 38.733292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502251, 34.428635, 38.627068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668661, -0.173560, -0.723027,
		-0.742641, -0.204393, -0.637736,
		-0.037096, 0.963380, -0.265562,
		34.491123, 34.717648, 38.547398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480465, 33.993622, 38.077766>,  <34.517090, 34.043282, 38.733292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480465, 33.993622, 38.077766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.571819, 34.381321, 38.114437>,  <34.626633, 34.613941, 38.136440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.571819, 34.381321, 38.114437>,  <34.480465, 33.993622, 38.077766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571819, 34.381321, 38.114437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644634, -0.079988, -0.760295,
		-0.729579, 0.232738, -0.643077,
		0.228388, 0.969245, 0.091673,
		34.640335, 34.672096, 38.141937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507267, 34.186596, 37.431274>,  <34.480465, 33.993622, 38.077766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507267, 34.186596, 37.431274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.693951, 34.478729, 37.630791>,  <34.805962, 34.654011, 37.750500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.693951, 34.478729, 37.630791>,  <34.507267, 34.186596, 37.431274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693951, 34.478729, 37.630791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684578, 0.058747, -0.726568,
		-0.559942, 0.680556, -0.472556,
		0.466709, 0.730338, 0.498788,
		34.833961, 34.697830, 37.780426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722916, 34.661034, 36.831814>,  <34.507267, 34.186596, 37.431274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722916, 34.661034, 36.831814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.948013, 34.686729, 37.161469>,  <35.083073, 34.702145, 37.359261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.948013, 34.686729, 37.161469>,  <34.722916, 34.661034, 36.831814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948013, 34.686729, 37.161469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823081, -0.135887, -0.551428,
		0.076566, 0.988640, -0.129341,
		0.562740, 0.064238, 0.824135,
		35.116837, 34.706001, 37.408710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339405, 34.957436, 36.593769>,  <34.722916, 34.661034, 36.831814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339405, 34.957436, 36.593769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.463055, 34.822399, 36.949402>,  <35.537247, 34.741379, 37.162781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.463055, 34.822399, 36.949402>,  <35.339405, 34.957436, 36.593769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463055, 34.822399, 36.949402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920775, -0.127652, -0.368616,
		0.237935, 0.932597, 0.271385,
		0.309127, -0.337592, 0.889085,
		35.555794, 34.721123, 37.216125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913944, 35.291634, 36.709270>,  <35.339405, 34.957436, 36.593769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913944, 35.291634, 36.709270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.966026, 35.012833, 36.991329>,  <35.997276, 34.845551, 37.160564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.966026, 35.012833, 36.991329>,  <35.913944, 35.291634, 36.709270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966026, 35.012833, 36.991329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909282, -0.199600, -0.365193,
		0.395288, 0.688729, 0.607782,
		0.130205, -0.697002, 0.705149,
		36.005089, 34.803734, 37.202873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589577, 35.455299, 37.081856>,  <35.913944, 35.291634, 36.709270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589577, 35.455299, 37.081856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516590, 35.065331, 37.132832>,  <36.472797, 34.831348, 37.163418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516590, 35.065331, 37.132832>,  <36.589577, 35.455299, 37.081856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516590, 35.065331, 37.132832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908432, -0.216746, -0.357452,
		0.376110, 0.050551, 0.925195,
		-0.182463, -0.974918, 0.127443,
		36.461853, 34.772854, 37.171062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071960, 35.233135, 37.533264>,  <36.589577, 35.455299, 37.081856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071960, 35.233135, 37.533264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952698, 34.883797, 37.379189>,  <36.881142, 34.674194, 37.286743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952698, 34.883797, 37.379189>,  <37.071960, 35.233135, 37.533264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952698, 34.883797, 37.379189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954413, -0.278731, -0.106798,
		-0.014092, -0.399470, 0.916638,
		-0.298158, -0.873346, -0.385187,
		36.863251, 34.621792, 37.263634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624786, 34.783657, 37.747589>,  <37.071960, 35.233135, 37.533264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624786, 34.783657, 37.747589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438313, 34.597340, 37.446735>,  <37.326427, 34.485550, 37.266224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438313, 34.597340, 37.446735>,  <37.624786, 34.783657, 37.747589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438313, 34.597340, 37.446735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868636, -0.402207, -0.289310,
		-0.167757, -0.788206, 0.592106,
		-0.466185, -0.465791, -0.752137,
		37.298458, 34.457603, 37.221096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298389, 34.878471, 37.484631>,  <37.624786, 34.783657, 37.747589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298389, 34.878471, 37.484631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.657196, 34.785946, 37.333977>,  <38.872482, 34.730431, 37.243584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.657196, 34.785946, 37.333977>,  <38.298389, 34.878471, 37.484631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657196, 34.785946, 37.333977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368224, -0.080248, 0.926268,
		-0.244479, -0.969565, 0.013190,
		0.897018, -0.231310, -0.376636,
		38.926300, 34.716553, 37.220985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533501, 34.194687, 37.631077>,  <38.298389, 34.878471, 37.484631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533501, 34.194687, 37.631077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861866, 34.422131, 37.609966>,  <39.058884, 34.558598, 37.597301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861866, 34.422131, 37.609966>,  <38.533501, 34.194687, 37.631077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861866, 34.422131, 37.609966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183387, -0.174978, 0.967343,
		0.540809, -0.803780, -0.247918,
		0.820911, 0.568612, -0.052773,
		39.108139, 34.592712, 37.594135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942261, 33.834675, 38.135262>,  <38.533501, 34.194687, 37.631077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942261, 33.834675, 38.135262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.131603, 34.183945, 38.088791>,  <39.245209, 34.393509, 38.060909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.131603, 34.183945, 38.088791>,  <38.942261, 33.834675, 38.135262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131603, 34.183945, 38.088791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355645, -0.068787, 0.932086,
		0.805885, -0.482526, -0.343101,
		0.473357, 0.873176, -0.116174,
		39.273609, 34.445896, 38.053940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453991, 33.696648, 38.480453>,  <38.942261, 33.834675, 38.135262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453991, 33.696648, 38.480453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.510620, 34.092003, 38.458397>,  <39.544598, 34.329216, 38.445164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.510620, 34.092003, 38.458397>,  <39.453991, 33.696648, 38.480453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510620, 34.092003, 38.458397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379422, -0.002732, 0.925220,
		0.914328, -0.151907, -0.375404,
		0.141574, 0.988391, -0.055139,
		39.553093, 34.388519, 38.441856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160061, 33.889370, 38.826187>,  <39.453991, 33.696648, 38.480453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160061, 33.889370, 38.826187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913109, 34.203487, 38.844757>,  <39.764938, 34.391956, 38.855900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913109, 34.203487, 38.844757>,  <40.160061, 33.889370, 38.826187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913109, 34.203487, 38.844757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304909, 0.184473, 0.934345,
		0.725169, 0.591004, -0.353333,
		-0.617382, 0.785292, 0.046429,
		39.727894, 34.439075, 38.858685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428040, 34.362122, 39.355724>,  <40.160061, 33.889370, 38.826187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428040, 34.362122, 39.355724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.050182, 34.490932, 39.330593>,  <39.823467, 34.568218, 39.315514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.050182, 34.490932, 39.330593>,  <40.428040, 34.362122, 39.355724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050182, 34.490932, 39.330593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031269, 0.278997, 0.959783,
		0.326603, 0.904689, -0.273622,
		-0.944644, 0.322024, -0.062833,
		39.766788, 34.587540, 39.311745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365398, 34.914814, 39.922009>,  <40.428040, 34.362122, 39.355724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365398, 34.914814, 39.922009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.984718, 34.834621, 39.828995>,  <39.756310, 34.786507, 39.773186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.984718, 34.834621, 39.828995>,  <40.365398, 34.914814, 39.922009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984718, 34.834621, 39.828995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286211, 0.305211, 0.908256,
		-0.111119, 0.930942, -0.347850,
		-0.951702, -0.200483, -0.232531,
		39.699207, 34.774475, 39.759235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968536, 35.415440, 40.182953>,  <40.365398, 34.914814, 39.922009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968536, 35.415440, 40.182953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.700150, 35.120060, 40.156132>,  <39.539120, 34.942833, 40.140038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.700150, 35.120060, 40.156132>,  <39.968536, 35.415440, 40.182953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700150, 35.120060, 40.156132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366508, 0.251672, 0.895731,
		-0.644578, 0.625579, -0.439511,
		-0.670963, -0.738453, -0.067057,
		39.498859, 34.898525, 40.136013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349884, 35.790497, 40.365368>,  <39.968536, 35.415440, 40.182953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349884, 35.790497, 40.365368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266590, 35.403683, 40.423988>,  <39.216614, 35.171593, 40.459160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266590, 35.403683, 40.423988>,  <39.349884, 35.790497, 40.365368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266590, 35.403683, 40.423988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516707, 0.235984, 0.822998,
		-0.830453, 0.095655, -0.548815,
		-0.208235, -0.967038, 0.146548,
		39.204121, 35.113571, 40.467953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582184, 35.724937, 40.529915>,  <39.349884, 35.790497, 40.365368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582184, 35.724937, 40.529915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.707722, 35.362144, 40.642262>,  <38.783043, 35.144470, 40.709671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.707722, 35.362144, 40.642262>,  <38.582184, 35.724937, 40.529915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707722, 35.362144, 40.642262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651392, 0.009542, 0.758682,
		-0.690791, -0.421060, -0.587806,
		0.313842, -0.906982, 0.280867,
		38.801876, 35.090050, 40.726521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108734, 35.295826, 40.598484>,  <38.582184, 35.724937, 40.529915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108734, 35.295826, 40.598484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.374977, 35.106781, 40.829517>,  <38.534721, 34.993355, 40.968140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.374977, 35.106781, 40.829517>,  <38.108734, 35.295826, 40.598484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374977, 35.106781, 40.829517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632883, 0.052700, 0.772452,
		-0.395508, -0.879694, -0.264029,
		0.665608, -0.472610, 0.577587,
		38.574661, 34.964996, 41.002792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740688, 34.706833, 41.028545>,  <38.108734, 35.295826, 40.598484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740688, 34.706833, 41.028545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079254, 34.780537, 41.228397>,  <38.282394, 34.824760, 41.348309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079254, 34.780537, 41.228397>,  <37.740688, 34.706833, 41.028545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079254, 34.780537, 41.228397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523870, 0.119619, 0.843357,
		0.095624, -0.975573, 0.197771,
		0.846414, 0.184252, 0.499635,
		38.333179, 34.835815, 41.378288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835056, 34.206207, 41.663715>,  <37.740688, 34.706833, 41.028545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835056, 34.206207, 41.663715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039307, 34.543251, 41.732140>,  <38.161858, 34.745480, 41.773193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039307, 34.543251, 41.732140>,  <37.835056, 34.206207, 41.663715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039307, 34.543251, 41.732140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569852, 0.182686, 0.801183,
		0.643836, -0.506588, 0.573449,
		0.510630, 0.842612, 0.171061,
		38.192497, 34.796036, 41.783459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078396, 34.221249, 42.359879>,  <37.835056, 34.206207, 41.663715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078396, 34.221249, 42.359879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047230, 34.607220, 42.259609>,  <38.028530, 34.838802, 42.199448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047230, 34.607220, 42.259609>,  <38.078396, 34.221249, 42.359879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047230, 34.607220, 42.259609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345213, 0.209770, 0.914781,
		0.935284, 0.157811, 0.316763,
		-0.077915, 0.964931, -0.250673,
		38.023853, 34.896698, 42.184406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442192, 34.486534, 42.956448>,  <38.078396, 34.221249, 42.359879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442192, 34.486534, 42.956448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238274, 34.748821, 42.733688>,  <38.115921, 34.906193, 42.600033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238274, 34.748821, 42.733688>,  <38.442192, 34.486534, 42.956448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238274, 34.748821, 42.733688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662465, 0.113777, 0.740402,
		0.548860, 0.746381, 0.376389,
		-0.509798, 0.655721, -0.556899,
		38.085335, 34.945538, 42.566620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091774, 34.949982, 43.439186>,  <38.442192, 34.486534, 42.956448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091774, 34.949982, 43.439186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.895634, 35.041920, 43.102917>,  <37.777950, 35.097084, 42.901154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.895634, 35.041920, 43.102917>,  <38.091774, 34.949982, 43.439186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895634, 35.041920, 43.102917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794496, 0.278606, 0.539587,
		0.358239, 0.932496, 0.045999,
		-0.490347, 0.229847, -0.840672,
		37.748531, 35.110874, 42.850716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842113, 35.662865, 43.490257>,  <38.091774, 34.949982, 43.439186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842113, 35.662865, 43.490257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.609650, 35.472961, 43.225876>,  <37.470173, 35.359020, 43.067245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.609650, 35.472961, 43.225876>,  <37.842113, 35.662865, 43.490257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609650, 35.472961, 43.225876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813790, 0.338795, 0.472190,
		-0.000247, 0.812296, -0.583246,
		-0.581159, -0.474756, -0.660954,
		37.435303, 35.330536, 43.027588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336548, 36.117233, 43.385406>,  <37.842113, 35.662865, 43.490257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336548, 36.117233, 43.385406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.168434, 35.781513, 43.247452>,  <37.067566, 35.580082, 43.164680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.168434, 35.781513, 43.247452>,  <37.336548, 36.117233, 43.385406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168434, 35.781513, 43.247452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835302, 0.209388, 0.508358,
		-0.354449, 0.501735, -0.789068,
		-0.420282, -0.839297, -0.344883,
		37.042351, 35.529724, 43.143986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691090, 36.317863, 43.177639>,  <37.336548, 36.117233, 43.385406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691090, 36.317863, 43.177639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690708, 35.919422, 43.212917>,  <36.690479, 35.680359, 43.234085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690708, 35.919422, 43.212917>,  <36.691090, 36.317863, 43.177639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690708, 35.919422, 43.212917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840599, 0.048571, 0.539475,
		-0.541656, -0.073621, -0.837370,
		-0.000955, -0.996103, 0.088194,
		36.690422, 35.620590, 43.239376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.097446, 36.180279, 42.780151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.133495, 35.837479, 42.983101>,  <36.155125, 35.631798, 43.104870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.133495, 35.837479, 42.983101>,  <36.097446, 36.180279, 42.780151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133495, 35.837479, 42.983101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876325, 0.173824, 0.449265,
		-0.473214, -0.485112, -0.735347,
		0.090123, -0.857002, 0.507372,
		36.160534, 35.580379, 43.135311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486225, 35.802330, 42.704437>,  <36.097446, 36.180279, 42.780151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486225, 35.802330, 42.704437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670372, 35.701694, 43.044971>,  <35.780861, 35.641315, 43.249290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670372, 35.701694, 43.044971>,  <35.486225, 35.802330, 42.704437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670372, 35.701694, 43.044971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844322, 0.172119, 0.507440,
		-0.274195, -0.952407, -0.133181,
		0.460366, -0.251585, 0.851333,
		35.808483, 35.626221, 43.300373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052414, 35.245132, 43.061436>,  <35.486225, 35.802330, 42.704437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052414, 35.245132, 43.061436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.290230, 35.397015, 43.344940>,  <35.432919, 35.488144, 43.515041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.290230, 35.397015, 43.344940>,  <35.052414, 35.245132, 43.061436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290230, 35.397015, 43.344940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797096, 0.162533, 0.581568,
		0.105624, -0.910720, 0.399290,
		0.594544, 0.379700, 0.708764,
		35.468594, 35.510925, 43.557568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720627, 34.948776, 43.611221>,  <35.052414, 35.245132, 43.061436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720627, 34.948776, 43.611221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.958649, 35.234715, 43.758137>,  <35.101463, 35.406277, 43.846287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.958649, 35.234715, 43.758137>,  <34.720627, 34.948776, 43.611221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958649, 35.234715, 43.758137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594348, 0.083793, 0.799831,
		0.540977, -0.694245, 0.474728,
		0.595058, 0.714844, 0.367293,
		35.137165, 35.449169, 43.868324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000576, 34.859467, 44.358589>,  <34.720627, 34.948776, 43.611221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000576, 34.859467, 44.358589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021416, 35.256962, 44.319057>,  <35.033920, 35.495461, 44.295338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021416, 35.256962, 44.319057>,  <35.000576, 34.859467, 44.358589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021416, 35.256962, 44.319057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550940, 0.111140, 0.827111,
		0.832917, 0.011353, 0.553282,
		0.052101, 0.993740, -0.098826,
		35.037045, 35.555084, 44.289410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153728, 35.130482, 44.994534>,  <35.000576, 34.859467, 44.358589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153728, 35.130482, 44.994534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983616, 35.431816, 44.793888>,  <34.881546, 35.612617, 44.673500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983616, 35.431816, 44.793888>,  <35.153728, 35.130482, 44.994534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983616, 35.431816, 44.793888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376240, 0.356923, 0.855015,
		0.823151, 0.552352, 0.131641,
		-0.425283, 0.753335, -0.501618,
		34.856030, 35.657818, 44.643402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333267, 35.750237, 45.419876>,  <35.153728, 35.130482, 44.994534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333267, 35.750237, 45.419876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028042, 35.842926, 45.178532>,  <34.844906, 35.898540, 45.033726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028042, 35.842926, 45.178532>,  <35.333267, 35.750237, 45.419876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028042, 35.842926, 45.178532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458241, 0.464366, 0.757879,
		0.455796, 0.854792, -0.248155,
		-0.763063, 0.231723, -0.603357,
		34.799122, 35.912441, 44.997524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268620, 36.447487, 45.496353>,  <35.333267, 35.750237, 45.419876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268620, 36.447487, 45.496353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.914719, 36.300945, 45.381111>,  <34.702377, 36.213020, 45.311966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.914719, 36.300945, 45.381111>,  <35.268620, 36.447487, 45.496353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914719, 36.300945, 45.381111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425091, 0.380859, 0.821124,
		-0.191090, 0.848961, -0.492697,
		-0.884750, -0.366350, -0.288107,
		34.649292, 36.191040, 45.294678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881638, 37.012878, 45.611923>,  <35.268620, 36.447487, 45.496353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881638, 37.012878, 45.611923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.642715, 36.692856, 45.589523>,  <34.499363, 36.500843, 45.576084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.642715, 36.692856, 45.589523>,  <34.881638, 37.012878, 45.611923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642715, 36.692856, 45.589523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477091, 0.298329, 0.826670,
		-0.644675, 0.520493, -0.559893,
		-0.597308, -0.800054, -0.055997,
		34.463524, 36.452839, 45.572723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280987, 37.246731, 45.881447>,  <34.881638, 37.012878, 45.611923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280987, 37.246731, 45.881447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.161602, 36.864964, 45.882614>,  <34.089973, 36.635902, 45.883316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.161602, 36.864964, 45.882614>,  <34.280987, 37.246731, 45.881447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161602, 36.864964, 45.882614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386182, 0.123564, 0.914109,
		-0.872803, 0.271696, -0.405458,
		-0.298460, -0.954418, 0.002923,
		34.072063, 36.578640, 45.883492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700966, 37.340801, 46.309925>,  <34.280987, 37.246731, 45.881447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700966, 37.340801, 46.309925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.808598, 36.955555, 46.309345>,  <33.873177, 36.724407, 46.308998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.808598, 36.955555, 46.309345>,  <33.700966, 37.340801, 46.309925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808598, 36.955555, 46.309345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283344, -0.080599, 0.955625,
		-0.920496, -0.256726, -0.294581,
		0.269077, -0.963117, -0.001449,
		33.889320, 36.666618, 46.308910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197235, 36.972008, 46.694996>,  <33.700966, 37.340801, 46.309925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197235, 36.972008, 46.694996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.528587, 36.748055, 46.702229>,  <33.727398, 36.613682, 46.706570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.528587, 36.748055, 46.702229>,  <33.197235, 36.972008, 46.694996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528587, 36.748055, 46.702229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137770, -0.172340, 0.975355,
		-0.542966, -0.810452, -0.219897,
		0.828376, -0.559880, 0.018082,
		33.777100, 36.580090, 46.707653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006783, 36.432236, 47.109661>,  <33.197235, 36.972008, 46.694996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006783, 36.432236, 47.109661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.405453, 36.458378, 47.129150>,  <33.644653, 36.474064, 47.140842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.405453, 36.458378, 47.129150>,  <33.006783, 36.432236, 47.109661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405453, 36.458378, 47.129150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026542, -0.304913, 0.952010,
		0.077079, -0.950135, -0.302163,
		0.996672, 0.065360, 0.048721,
		33.704453, 36.477985, 47.143768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155285, 35.848221, 47.593956>,  <33.006783, 36.432236, 47.109661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155285, 35.848221, 47.593956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482975, 36.077091, 47.578587>,  <33.679588, 36.214413, 47.569366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482975, 36.077091, 47.578587>,  <33.155285, 35.848221, 47.593956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482975, 36.077091, 47.578587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230211, -0.266763, 0.935864,
		0.525232, -0.775531, -0.350262,
		0.819228, 0.572180, -0.038424,
		33.728745, 36.248745, 47.567059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674023, 35.474682, 47.762966>,  <33.155285, 35.848221, 47.593956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674023, 35.474682, 47.762966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.804806, 35.844097, 47.843132>,  <33.883278, 36.065746, 47.891232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.804806, 35.844097, 47.843132>,  <33.674023, 35.474682, 47.762966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804806, 35.844097, 47.843132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241671, -0.286728, 0.927029,
		0.913615, -0.254668, -0.316942,
		0.326960, 0.923543, 0.200413,
		33.902893, 36.121159, 47.903255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420856, 35.411243, 48.033920>,  <33.674023, 35.474682, 47.762966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420856, 35.411243, 48.033920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250690, 35.746574, 48.170288>,  <34.148590, 35.947773, 48.252110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250690, 35.746574, 48.170288>,  <34.420856, 35.411243, 48.033920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250690, 35.746574, 48.170288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463541, -0.121695, 0.877679,
		0.777271, 0.531411, -0.336828,
		-0.425418, 0.838327, 0.340921,
		34.123066, 35.998074, 48.272564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928486, 35.658394, 48.530979>,  <34.420856, 35.411243, 48.033920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928486, 35.658394, 48.530979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622391, 35.902115, 48.614079>,  <34.438732, 36.048347, 48.663937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622391, 35.902115, 48.614079>,  <34.928486, 35.658394, 48.530979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622391, 35.902115, 48.614079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253149, -0.011888, 0.967354,
		0.591884, 0.792847, -0.145148,
		-0.765238, 0.609305, 0.207744,
		34.392818, 36.084908, 48.676403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227859, 36.237854, 48.947205>,  <34.928486, 35.658394, 48.530979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227859, 36.237854, 48.947205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.838161, 36.208382, 49.032452>,  <34.604343, 36.190697, 49.083599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.838161, 36.208382, 49.032452>,  <35.227859, 36.237854, 48.947205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838161, 36.208382, 49.032452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214176, -0.006667, 0.976772,
		-0.070550, 0.997259, 0.022277,
		-0.974244, -0.073682, 0.213118,
		34.545887, 36.186275, 49.096386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156925, 36.614349, 49.593891>,  <35.227859, 36.237854, 48.947205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156925, 36.614349, 49.593891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811646, 36.415836, 49.556828>,  <34.604477, 36.296730, 49.534588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811646, 36.415836, 49.556828>,  <35.156925, 36.614349, 49.593891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811646, 36.415836, 49.556828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006618, -0.172403, 0.985004,
		-0.504817, 0.850870, 0.145534,
		-0.863201, -0.496284, -0.092663,
		34.552685, 36.266953, 49.529030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697399, 36.882450, 50.084763>,  <35.156925, 36.614349, 49.593891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697399, 36.882450, 50.084763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.567978, 36.510349, 50.015541>,  <34.490326, 36.287090, 49.974007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.567978, 36.510349, 50.015541>,  <34.697399, 36.882450, 50.084763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567978, 36.510349, 50.015541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027296, -0.173641, 0.984431,
		-0.945815, 0.323242, 0.030791,
		-0.323556, -0.930249, -0.173055,
		34.470913, 36.231274, 49.963623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187141, 36.831142, 50.552044>,  <34.697399, 36.882450, 50.084763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187141, 36.831142, 50.552044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.287750, 36.458088, 50.448563>,  <34.348114, 36.234257, 50.386475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.287750, 36.458088, 50.448563>,  <34.187141, 36.831142, 50.552044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287750, 36.458088, 50.448563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035375, -0.258264, 0.965426,
		-0.967205, -0.251976, -0.031967,
		0.251520, -0.932635, -0.258708,
		34.363205, 36.178299, 50.370949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786674, 36.435570, 51.003796>,  <34.187141, 36.831142, 50.552044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786674, 36.435570, 51.003796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.052677, 36.180172, 50.848831>,  <34.212280, 36.026932, 50.755852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.052677, 36.180172, 50.848831>,  <33.786674, 36.435570, 51.003796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052677, 36.180172, 50.848831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078254, -0.456311, 0.886373,
		-0.742726, -0.619761, -0.253485,
		0.665008, -0.638495, -0.387413,
		34.252178, 35.988625, 50.732609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635628, 35.871273, 51.296257>,  <33.786674, 36.435570, 51.003796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635628, 35.871273, 51.296257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.002697, 35.801647, 51.153381>,  <34.222939, 35.759872, 51.067657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.002697, 35.801647, 51.153381>,  <33.635628, 35.871273, 51.296257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002697, 35.801647, 51.153381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279585, -0.355877, 0.891730,
		-0.282331, -0.918179, -0.277913,
		0.917671, -0.174063, -0.357185,
		34.278000, 35.749428, 51.046227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062019, 35.751961, 50.818832>,  <33.635628, 35.871273, 51.296257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062019, 35.751961, 50.818832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.672436, 35.721416, 50.904221>,  <32.438686, 35.703091, 50.955452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.672436, 35.721416, 50.904221>,  <33.062019, 35.751961, 50.818832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672436, 35.721416, 50.904221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194360, -0.203563, -0.959576,
		0.116726, -0.976080, 0.183422,
		-0.973961, -0.076358, 0.213472,
		32.380249, 35.698509, 50.968262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777210, 35.381012, 50.266808>,  <33.062019, 35.751961, 50.818832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777210, 35.381012, 50.266808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436771, 35.498966, 50.440556>,  <32.232510, 35.569740, 50.544804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436771, 35.498966, 50.440556>,  <32.777210, 35.381012, 50.266808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436771, 35.498966, 50.440556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471526, -0.065528, -0.879414,
		-0.230865, -0.953282, 0.194818,
		-0.851096, 0.294888, 0.434369,
		32.181442, 35.587433, 50.570866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326496, 34.947906, 49.994720>,  <32.777210, 35.381012, 50.266808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326496, 34.947906, 49.994720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.095238, 35.252571, 50.111759>,  <31.956482, 35.435371, 50.181980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.095238, 35.252571, 50.111759>,  <32.326496, 34.947906, 49.994720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095238, 35.252571, 50.111759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527578, -0.075414, -0.846152,
		-0.622420, -0.643566, 0.445439,
		-0.578147, 0.761666, 0.292592,
		31.921793, 35.481071, 50.199535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613197, 34.792328, 49.782154>,  <32.326496, 34.947906, 49.994720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613197, 34.792328, 49.782154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.614891, 35.190010, 49.825115>,  <31.615908, 35.428619, 49.850891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.614891, 35.190010, 49.825115>,  <31.613197, 34.792328, 49.782154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614891, 35.190010, 49.825115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414040, 0.099506, -0.904804,
		-0.910249, -0.040636, 0.412063,
		0.004235, 0.994207, 0.107400,
		31.616161, 35.488274, 49.857334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918728, 34.937077, 49.579113>,  <31.613197, 34.792328, 49.782154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918728, 34.937077, 49.579113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.127346, 35.276733, 49.545780>,  <31.252518, 35.480526, 49.525780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.127346, 35.276733, 49.545780>,  <30.918728, 34.937077, 49.579113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127346, 35.276733, 49.545780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320448, 0.104426, -0.941492,
		-0.790760, 0.517737, 0.326570,
		0.521548, 0.849143, -0.083332,
		31.283810, 35.531475, 49.520779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430147, 35.400009, 49.341995>,  <30.918728, 34.937077, 49.579113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430147, 35.400009, 49.341995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.784948, 35.557915, 49.246174>,  <30.997829, 35.652657, 49.188679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.784948, 35.557915, 49.246174>,  <30.430147, 35.400009, 49.341995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784948, 35.557915, 49.246174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305562, 0.112831, -0.945464,
		-0.346206, 0.911828, 0.220706,
		0.887003, 0.394764, -0.239557,
		31.051048, 35.676346, 49.174305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357630, 35.993721, 48.872162>,  <30.430147, 35.400009, 49.341995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357630, 35.993721, 48.872162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.747192, 35.924191, 48.813805>,  <30.980930, 35.882473, 48.778790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.747192, 35.924191, 48.813805>,  <30.357630, 35.993721, 48.872162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747192, 35.924191, 48.813805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089801, 0.295221, -0.951199,
		0.208418, 0.939483, 0.271909,
		0.973908, -0.173830, -0.145896,
		31.039366, 35.872040, 48.770035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635805, 36.553471, 48.543659>,  <30.357630, 35.993721, 48.872162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635805, 36.553471, 48.543659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.900166, 36.261719, 48.472984>,  <31.058781, 36.086670, 48.430580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.900166, 36.261719, 48.472984>,  <30.635805, 36.553471, 48.543659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900166, 36.261719, 48.472984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124987, 0.339125, -0.932402,
		0.739993, 0.594140, 0.315290,
		0.660900, -0.729378, -0.176690,
		31.098436, 36.042904, 48.419979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209785, 36.911415, 48.158344>,  <30.635805, 36.553471, 48.543659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209785, 36.911415, 48.158344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254635, 36.518826, 48.096199>,  <31.281544, 36.283272, 48.058914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254635, 36.518826, 48.096199>,  <31.209785, 36.911415, 48.158344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254635, 36.518826, 48.096199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204909, 0.175822, -0.962860,
		0.972338, 0.076122, 0.220826,
		0.112121, -0.981474, -0.155360,
		31.288271, 36.224384, 48.049591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881868, 36.850079, 47.786724>,  <31.209785, 36.911415, 48.158344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881868, 36.850079, 47.786724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683098, 36.511806, 47.708858>,  <31.563835, 36.308846, 47.662140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683098, 36.511806, 47.708858>,  <31.881868, 36.850079, 47.786724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683098, 36.511806, 47.708858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218882, 0.094922, -0.971123,
		0.839734, -0.525187, 0.137934,
		-0.496928, -0.845676, -0.194663,
		31.534019, 36.258102, 47.650459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343357, 36.443596, 47.385864>,  <31.881868, 36.850079, 47.786724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343357, 36.443596, 47.385864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.972614, 36.305340, 47.327267>,  <31.750168, 36.222385, 47.292107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.972614, 36.305340, 47.327267>,  <32.343357, 36.443596, 47.385864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972614, 36.305340, 47.327267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167508, -0.031553, -0.985366,
		0.335961, -0.937836, 0.087143,
		-0.926861, -0.345642, -0.146494,
		31.694555, 36.201649, 47.283318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455112, 35.858738, 47.004272>,  <32.343357, 36.443596, 47.385864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455112, 35.858738, 47.004272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.077679, 35.967709, 46.928974>,  <31.851219, 36.033092, 46.883793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.077679, 35.967709, 46.928974>,  <32.455112, 35.858738, 47.004272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077679, 35.967709, 46.928974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197223, 0.005681, -0.980342,
		-0.266002, -0.962160, -0.059090,
		-0.943581, 0.272427, -0.188249,
		31.794603, 36.049435, 46.872498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306820, 35.388195, 46.473289>,  <32.455112, 35.858738, 47.004272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306820, 35.388195, 46.473289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.039490, 35.683594, 46.437607>,  <31.879091, 35.860832, 46.416195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.039490, 35.683594, 46.437607>,  <32.306820, 35.388195, 46.473289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039490, 35.683594, 46.437607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067415, -0.059302, -0.995961,
		-0.740805, -0.671643, -0.010153,
		-0.668329, 0.738498, -0.089210,
		31.838991, 35.905144, 46.410843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034908, 35.271160, 45.838806>,  <32.306820, 35.388195, 46.473289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034908, 35.271160, 45.838806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.907856, 35.645054, 45.902546>,  <31.831625, 35.869389, 45.940788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.907856, 35.645054, 45.902546>,  <32.034908, 35.271160, 45.838806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907856, 35.645054, 45.902546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069609, 0.190580, -0.979201,
		-0.945658, -0.299928, -0.125599,
		-0.317626, 0.934731, 0.159346,
		31.812569, 35.925472, 45.950348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384800, 35.382370, 45.402275>,  <32.034908, 35.271160, 45.838806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384800, 35.382370, 45.402275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.594643, 35.708553, 45.500107>,  <31.720549, 35.904263, 45.558807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.594643, 35.708553, 45.500107>,  <31.384800, 35.382370, 45.402275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594643, 35.708553, 45.500107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200643, 0.160768, -0.966383,
		-0.827365, 0.556043, -0.079276,
		0.524605, 0.815457, 0.244579,
		31.752024, 35.953190, 45.573483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162432, 35.966438, 44.967712>,  <31.384800, 35.382370, 45.402275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162432, 35.966438, 44.967712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.534666, 36.045048, 45.091251>,  <31.758007, 36.092213, 45.165375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.534666, 36.045048, 45.091251>,  <31.162432, 35.966438, 44.967712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534666, 36.045048, 45.091251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286367, 0.134734, -0.948599,
		-0.228034, 0.971198, 0.069104,
		0.930588, 0.196524, 0.308843,
		31.813843, 36.104004, 45.183903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259560, 36.436462, 44.517609>,  <31.162432, 35.966438, 44.967712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259560, 36.436462, 44.517609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.617558, 36.344257, 44.670368>,  <31.832357, 36.288937, 44.762024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.617558, 36.344257, 44.670368>,  <31.259560, 36.436462, 44.517609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617558, 36.344257, 44.670368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407737, 0.075515, -0.909971,
		0.180919, 0.970135, 0.161574,
		0.894997, -0.230511, 0.381898,
		31.886057, 36.275105, 44.784939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674932, 36.947338, 44.208710>,  <31.259560, 36.436462, 44.517609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674932, 36.947338, 44.208710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920044, 36.646339, 44.305252>,  <32.067112, 36.465740, 44.363178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920044, 36.646339, 44.305252>,  <31.674932, 36.947338, 44.208710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920044, 36.646339, 44.305252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541054, 0.176893, -0.822174,
		0.575990, 0.634395, 0.515538,
		0.612778, -0.752497, 0.241353,
		32.103878, 36.420589, 44.377659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184734, 37.214733, 43.930031>,  <31.674932, 36.947338, 44.208710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184734, 37.214733, 43.930031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.279030, 36.834526, 44.010975>,  <32.335606, 36.606403, 44.059540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.279030, 36.834526, 44.010975>,  <32.184734, 37.214733, 43.930031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279030, 36.834526, 44.010975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462944, -0.073248, -0.883356,
		0.854466, 0.301919, 0.422768,
		0.235735, -0.950516, 0.202360,
		32.349751, 36.549370, 44.071682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909103, 37.163853, 43.635975>,  <32.184734, 37.214733, 43.930031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909103, 37.163853, 43.635975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.775963, 36.794270, 43.711357>,  <32.696079, 36.572521, 43.756588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.775963, 36.794270, 43.711357>,  <32.909103, 37.163853, 43.635975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775963, 36.794270, 43.711357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441491, -0.329288, -0.834659,
		0.833244, -0.194615, 0.517522,
		-0.332851, -0.923956, 0.188456,
		32.676109, 36.517082, 43.767895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442394, 36.754013, 43.600010>,  <32.909103, 37.163853, 43.635975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442394, 36.754013, 43.600010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.140003, 36.501156, 43.532021>,  <32.958569, 36.349442, 43.491226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.140003, 36.501156, 43.532021>,  <33.442394, 36.754013, 43.600010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140003, 36.501156, 43.532021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419995, -0.269240, -0.866668,
		0.502092, -0.726573, 0.469036,
		-0.755981, -0.632141, -0.169974,
		32.913208, 36.311512, 43.481030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.544834, 36.147564, 42.226631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224354, 36.275326, 42.024220>,  <41.032066, 36.351982, 41.902775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224354, 36.275326, 42.024220>,  <41.544834, 36.147564, 42.226631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224354, 36.275326, 42.024220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432403, -0.275537, -0.858549,
		-0.413656, -0.906674, 0.082647,
		-0.801197, 0.319408, -0.506026,
		40.983994, 36.371147, 41.872410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223385, 35.701878, 41.632675>,  <41.544834, 36.147564, 42.226631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223385, 35.701878, 41.632675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.162476, 36.079746, 41.516460>,  <41.125931, 36.306469, 41.446732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.162476, 36.079746, 41.516460>,  <41.223385, 35.701878, 41.632675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162476, 36.079746, 41.516460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251391, -0.247274, -0.935766,
		-0.955832, -0.215531, -0.199828,
		-0.152274, 0.944670, -0.290535,
		41.116795, 36.363148, 41.429298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790428, 35.678349, 41.068665>,  <41.223385, 35.701878, 41.632675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790428, 35.678349, 41.068665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.960251, 36.037563, 41.022579>,  <41.062145, 36.253094, 40.994930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.960251, 36.037563, 41.022579>,  <40.790428, 35.678349, 41.068665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960251, 36.037563, 41.022579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284424, -0.253092, -0.924688,
		-0.859566, 0.359814, -0.362877,
		0.424557, 0.898041, -0.115210,
		41.087616, 36.306976, 40.988018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552692, 35.957462, 40.343403>,  <40.790428, 35.678349, 41.068665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552692, 35.957462, 40.343403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.898338, 36.132885, 40.442173>,  <41.105728, 36.238136, 40.501434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.898338, 36.132885, 40.442173>,  <40.552692, 35.957462, 40.343403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898338, 36.132885, 40.442173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422191, -0.364569, -0.829967,
		-0.273962, 0.821439, -0.500183,
		0.864118, 0.438552, 0.246926,
		41.157574, 36.264450, 40.516251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780319, 36.191135, 39.721630>,  <40.552692, 35.957462, 40.343403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780319, 36.191135, 39.721630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.114574, 36.208084, 39.940689>,  <41.315128, 36.218254, 40.072124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.114574, 36.208084, 39.940689>,  <40.780319, 36.191135, 39.721630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114574, 36.208084, 39.940689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536685, -0.275311, -0.797605,
		0.116974, 0.960421, -0.252802,
		0.835635, 0.042376, 0.547647,
		41.365265, 36.220798, 40.104984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253178, 36.487438, 39.267834>,  <40.780319, 36.191135, 39.721630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253178, 36.487438, 39.267834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.473564, 36.321930, 39.557724>,  <41.605797, 36.222626, 39.731659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.473564, 36.321930, 39.557724>,  <41.253178, 36.487438, 39.267834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473564, 36.321930, 39.557724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527017, -0.500831, -0.686601,
		0.647064, 0.760236, -0.057873,
		0.550964, -0.413774, 0.724728,
		41.638855, 36.197796, 39.775143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011787, 36.692532, 39.226433>,  <41.253178, 36.487438, 39.267834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011787, 36.692532, 39.226433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010929, 36.344692, 39.423939>,  <42.010414, 36.135990, 39.542442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010929, 36.344692, 39.423939>,  <42.011787, 36.692532, 39.226433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010929, 36.344692, 39.423939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674282, -0.365886, -0.641460,
		0.738471, 0.331559, 0.587137,
		-0.002143, -0.869595, 0.493761,
		42.010284, 36.083813, 39.572067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615517, 36.492321, 39.182255>,  <42.011787, 36.692532, 39.226433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615517, 36.492321, 39.182255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.437168, 36.145065, 39.269466>,  <42.330158, 35.936714, 39.321793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.437168, 36.145065, 39.269466>,  <42.615517, 36.492321, 39.182255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437168, 36.145065, 39.269466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504853, -0.445047, -0.739633,
		0.739138, -0.219706, 0.636714,
		-0.445870, -0.868138, 0.218031,
		42.303406, 35.884624, 39.334877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199310, 36.041512, 39.378048>,  <42.615517, 36.492321, 39.182255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199310, 36.041512, 39.378048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.893547, 35.801453, 39.283821>,  <42.710087, 35.657417, 39.227283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.893547, 35.801453, 39.283821>,  <43.199310, 36.041512, 39.378048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893547, 35.801453, 39.283821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613670, -0.565245, -0.551279,
		0.197695, -0.565967, 0.800374,
		-0.764413, -0.600150, -0.235570,
		42.664223, 35.621407, 39.213150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499119, 35.397167, 39.446419>,  <43.199310, 36.041512, 39.378048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499119, 35.397167, 39.446419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174465, 35.345406, 39.218559>,  <42.979671, 35.314346, 39.081844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174465, 35.345406, 39.218559>,  <43.499119, 35.397167, 39.446419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174465, 35.345406, 39.218559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491244, -0.678886, -0.545705,
		-0.316108, -0.722751, 0.614579,
		-0.811637, -0.129406, -0.569648,
		42.930973, 35.306583, 39.047665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539520, 34.596508, 39.255882>,  <43.499119, 35.397167, 39.446419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539520, 34.596508, 39.255882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295681, 34.787426, 39.002716>,  <43.149376, 34.901978, 38.850819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295681, 34.787426, 39.002716>,  <43.539520, 34.596508, 39.255882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295681, 34.787426, 39.002716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433996, -0.467178, -0.770320,
		-0.663353, -0.744267, 0.077647,
		-0.609599, 0.477295, -0.632913,
		43.112801, 34.930614, 38.812843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208500, 34.134731, 38.846004>,  <43.539520, 34.596508, 39.255882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208500, 34.134731, 38.846004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.204483, 34.479202, 38.642723>,  <43.202072, 34.685886, 38.520756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.204483, 34.479202, 38.642723>,  <43.208500, 34.134731, 38.846004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204483, 34.479202, 38.642723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287469, -0.484286, -0.826335,
		-0.957737, -0.154390, -0.242699,
		-0.010042, 0.861180, -0.508201,
		43.201469, 34.737556, 38.490261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200459, 33.953156, 38.105488>,  <43.208500, 34.134731, 38.846004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200459, 33.953156, 38.105488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282669, 34.344616, 38.105637>,  <43.331997, 34.579491, 38.105724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282669, 34.344616, 38.105637>,  <43.200459, 33.953156, 38.105488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282669, 34.344616, 38.105637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435449, -0.091112, -0.895591,
		-0.876437, 0.184230, -0.444879,
		0.205528, 0.978651, 0.000369,
		43.344326, 34.638210, 38.105747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814903, 34.243046, 37.449810>,  <43.200459, 33.953156, 38.105488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814903, 34.243046, 37.449810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112579, 34.492729, 37.544926>,  <43.291183, 34.642540, 37.601994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112579, 34.492729, 37.544926>,  <42.814903, 34.243046, 37.449810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112579, 34.492729, 37.544926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281625, 0.029596, -0.959068,
		-0.605695, 0.780698, -0.153768,
		0.744191, 0.624207, 0.237790,
		43.335838, 34.679993, 37.616264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808414, 34.832809, 36.938942>,  <42.814903, 34.243046, 37.449810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808414, 34.832809, 36.938942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166142, 34.805119, 37.115761>,  <43.380779, 34.788506, 37.221851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166142, 34.805119, 37.115761>,  <42.808414, 34.832809, 36.938942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166142, 34.805119, 37.115761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447154, 0.173040, -0.877559,
		-0.015740, 0.982479, 0.185708,
		0.894318, -0.069227, 0.442043,
		43.434437, 34.784351, 37.248375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105167, 35.423286, 36.659622>,  <42.808414, 34.832809, 36.938942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105167, 35.423286, 36.659622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393990, 35.189507, 36.807705>,  <43.567284, 35.049236, 36.896553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393990, 35.189507, 36.807705>,  <43.105167, 35.423286, 36.659622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393990, 35.189507, 36.807705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619503, 0.307987, -0.722052,
		0.307987, 0.750704, 0.584454,
		0.722052, -0.584454, 0.370207,
		43.610607, 35.014172, 36.918766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628563, 35.909447, 36.666821>,  <43.105167, 35.423286, 36.659622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628563, 35.909447, 36.666821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.795860, 35.546150, 36.672077>,  <43.896240, 35.328171, 36.675232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.795860, 35.546150, 36.672077>,  <43.628563, 35.909447, 36.666821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795860, 35.546150, 36.672077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635490, 0.282246, -0.718672,
		0.649018, 0.308929, 0.695225,
		0.418243, -0.908240, 0.013139,
		43.921333, 35.273678, 36.676018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292084, 36.009808, 36.550838>,  <43.628563, 35.909447, 36.666821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292084, 36.009808, 36.550838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.301762, 35.616325, 36.479576>,  <44.307568, 35.380238, 36.436817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.301762, 35.616325, 36.479576>,  <44.292084, 36.009808, 36.550838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301762, 35.616325, 36.479576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663978, 0.149038, -0.732749,
		0.747361, -0.100563, 0.656764,
		0.024195, -0.983705, -0.178157,
		44.309021, 35.321213, 36.426128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959404, 35.731068, 36.479275>,  <44.292084, 36.009808, 36.550838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959404, 35.731068, 36.479275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760632, 35.449421, 36.276386>,  <44.641369, 35.280434, 36.154652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760632, 35.449421, 36.276386>,  <44.959404, 35.731068, 36.479275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760632, 35.449421, 36.276386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685912, 0.039346, -0.726620,
		0.531585, -0.708989, 0.463413,
		-0.496932, -0.704121, -0.507220,
		44.611553, 35.238186, 36.124222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393894, 35.150188, 36.268124>,  <44.959404, 35.731068, 36.479275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393894, 35.150188, 36.268124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.085632, 35.150158, 36.013222>,  <44.900673, 35.150139, 35.860283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.085632, 35.150158, 36.013222>,  <45.393894, 35.150188, 36.268124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085632, 35.150158, 36.013222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636046, -0.061541, -0.769193,
		-0.039156, -0.998105, 0.047477,
		-0.770657, -0.000079, -0.637250,
		44.854435, 35.150135, 35.822048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884937, 35.690659, 36.029701>,  <45.393894, 35.150188, 36.268124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884937, 35.690659, 36.029701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.139801, 35.967030, 35.893082>,  <46.292717, 36.132851, 35.811108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.139801, 35.967030, 35.893082>,  <45.884937, 35.690659, 36.029701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139801, 35.967030, 35.893082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345772, 0.139808, 0.927845,
		0.688821, -0.709280, -0.149822,
		0.637155, 0.690923, -0.341552,
		46.330948, 36.174305, 35.790615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.507580, 35.518848, 36.360889>,  <45.884937, 35.690659, 36.029701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.507580, 35.518848, 36.360889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.506390, 35.895844, 36.227203>,  <46.505676, 36.122040, 36.146992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.506390, 35.895844, 36.227203>,  <46.507580, 35.518848, 36.360889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.506390, 35.895844, 36.227203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189266, 0.328711, 0.925272,
		0.981921, -0.060500, -0.179361,
		-0.002979, 0.942491, -0.334219,
		46.505497, 36.178589, 36.126938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.068974, 35.797821, 36.756847>,  <46.507580, 35.518848, 36.360889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.068974, 35.797821, 36.756847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.894402, 36.123779, 36.604282>,  <46.789658, 36.319355, 36.512745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.894402, 36.123779, 36.604282>,  <47.068974, 35.797821, 36.756847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.894402, 36.123779, 36.604282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107103, 0.467950, 0.877241,
		0.893341, 0.342005, -0.291505,
		-0.436431, 0.814896, -0.381409,
		46.763474, 36.368248, 36.489861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.544010, 36.416344, 36.931713>,  <47.068974, 35.797821, 36.756847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.544010, 36.416344, 36.931713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.178940, 36.567650, 36.869816>,  <46.959900, 36.658432, 36.832680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.178940, 36.567650, 36.869816>,  <47.544010, 36.416344, 36.931713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.178940, 36.567650, 36.869816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045784, 0.470867, 0.881015,
		0.406120, 0.796994, -0.447066,
		-0.912672, 0.378266, -0.154739,
		46.905140, 36.681129, 36.823395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.657345, 36.923187, 37.306839>,  <47.544010, 36.416344, 36.931713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.657345, 36.923187, 37.306839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.262211, 36.913490, 37.245403>,  <47.025131, 36.907673, 37.208542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.262211, 36.913490, 37.245403>,  <47.657345, 36.923187, 37.306839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.262211, 36.913490, 37.245403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155450, 0.176787, 0.971896,
		0.003593, 0.983951, -0.178405,
		-0.987837, -0.024241, -0.153590,
		46.965858, 36.906219, 37.199326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351051, 37.561909, 37.591747>,  <47.657345, 36.923187, 37.306839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351051, 37.561909, 37.591747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.056168, 37.291992, 37.578064>,  <46.879238, 37.130043, 37.569855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.056168, 37.291992, 37.578064>,  <47.351051, 37.561909, 37.591747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.056168, 37.291992, 37.578064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378387, 0.370385, 0.848315,
		-0.559768, 0.638332, -0.528386,
		-0.737213, -0.674794, -0.034207,
		46.835003, 37.089554, 37.567802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.874069, 37.930943, 37.872505>,  <47.351051, 37.561909, 37.591747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.874069, 37.930943, 37.872505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.706173, 37.567993, 37.881432>,  <46.605434, 37.350224, 37.886787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.706173, 37.567993, 37.881432>,  <46.874069, 37.930943, 37.872505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.706173, 37.567993, 37.881432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528146, 0.264159, 0.807021,
		-0.738160, 0.326954, -0.590102,
		-0.419740, -0.907370, 0.022312,
		46.580250, 37.295780, 37.888126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.168549, 38.081268, 38.067577>,  <46.874069, 37.930943, 37.872505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.168549, 38.081268, 38.067577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.233990, 37.697594, 38.159840>,  <46.273254, 37.467388, 38.215195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.233990, 37.697594, 38.159840>,  <46.168549, 38.081268, 38.067577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233990, 37.697594, 38.159840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551227, 0.105022, 0.827719,
		-0.818159, -0.262556, -0.511547,
		0.163599, -0.959184, 0.230653,
		46.283070, 37.409840, 38.229034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499805, 37.876774, 38.319851>,  <46.168549, 38.081268, 38.067577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499805, 37.876774, 38.319851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.767532, 37.605080, 38.440285>,  <45.928169, 37.442062, 38.512547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.767532, 37.605080, 38.440285>,  <45.499805, 37.876774, 38.319851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.767532, 37.605080, 38.440285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498400, -0.109925, 0.859950,
		-0.551013, -0.725639, -0.412107,
		0.669314, -0.679238, 0.301088,
		45.968327, 37.401310, 38.530613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095505, 37.236488, 38.477425>,  <45.499805, 37.876774, 38.319851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095505, 37.236488, 38.477425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.432381, 37.260254, 38.691780>,  <45.634506, 37.274513, 38.820393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.432381, 37.260254, 38.691780>,  <45.095505, 37.236488, 38.477425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432381, 37.260254, 38.691780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537311, 0.009895, 0.843326,
		0.044812, -0.998184, 0.040263,
		0.842193, 0.059425, 0.535891,
		45.685040, 37.278080, 38.852547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886242, 36.858982, 39.115356>,  <45.095505, 37.236488, 38.477425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886242, 36.858982, 39.115356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.234970, 37.018265, 39.229458>,  <45.444206, 37.113834, 39.297916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.234970, 37.018265, 39.229458>,  <44.886242, 36.858982, 39.115356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.234970, 37.018265, 39.229458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339851, 0.072355, 0.937692,
		0.352755, -0.914438, 0.198411,
		0.871817, 0.398206, 0.285249,
		45.496513, 37.137726, 39.315033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113346, 36.422573, 39.602409>,  <44.886242, 36.858982, 39.115356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113346, 36.422573, 39.602409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.297234, 36.768806, 39.681839>,  <45.407566, 36.976547, 39.729496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.297234, 36.768806, 39.681839>,  <45.113346, 36.422573, 39.602409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297234, 36.768806, 39.681839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221281, -0.104904, 0.969551,
		0.860056, -0.489658, 0.143311,
		0.459714, 0.865581, 0.198575,
		45.435146, 37.028481, 39.741413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425407, 36.295120, 40.195549>,  <45.113346, 36.422573, 39.602409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425407, 36.295120, 40.195549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.386543, 36.692089, 40.165478>,  <45.363224, 36.930271, 40.147434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.386543, 36.692089, 40.165478>,  <45.425407, 36.295120, 40.195549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386543, 36.692089, 40.165478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225700, 0.051599, 0.972829,
		0.969340, 0.111486, 0.218977,
		-0.097158, 0.992426, -0.075179,
		45.357395, 36.989819, 40.142925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.724308, 36.583199, 40.790600>,  <45.425407, 36.295120, 40.195549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.724308, 36.583199, 40.790600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.490845, 36.876431, 40.650925>,  <45.350765, 37.052372, 40.567120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.490845, 36.876431, 40.650925>,  <45.724308, 36.583199, 40.790600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490845, 36.876431, 40.650925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390075, 0.124025, 0.912392,
		0.712166, 0.668736, 0.213568,
		-0.583662, 0.733082, -0.349184,
		45.315746, 37.096355, 40.546169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.606178, 37.087128, 41.332310>,  <45.724308, 36.583199, 40.790600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.606178, 37.087128, 41.332310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.310043, 37.187477, 41.082840>,  <45.132362, 37.247684, 40.933159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.310043, 37.187477, 41.082840>,  <45.606178, 37.087128, 41.332310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310043, 37.187477, 41.082840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585928, 0.213972, 0.781604,
		0.329530, 0.944076, -0.011419,
		-0.740337, 0.250871, -0.623671,
		45.087944, 37.262737, 40.895741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247826, 37.776680, 41.506996>,  <45.606178, 37.087128, 41.332310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247826, 37.776680, 41.506996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.979687, 37.560917, 41.303165>,  <44.818802, 37.431458, 41.180866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.979687, 37.560917, 41.303165>,  <45.247826, 37.776680, 41.506996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979687, 37.560917, 41.303165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674562, 0.156841, 0.721365,
		-0.309188, 0.827308, -0.469003,
		-0.670350, -0.539409, -0.509577,
		44.778584, 37.399094, 41.150291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.650406, 38.127048, 41.678535>,  <45.247826, 37.776680, 41.506996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.650406, 38.127048, 41.678535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.528656, 37.769993, 41.545544>,  <44.455605, 37.555759, 41.465748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.528656, 37.769993, 41.545544>,  <44.650406, 38.127048, 41.678535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528656, 37.769993, 41.545544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756270, 0.014244, 0.654104,
		-0.579146, 0.450539, -0.679415,
		-0.304377, -0.892643, -0.332480,
		44.437344, 37.502201, 41.445801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911766, 38.280445, 41.614582>,  <44.650406, 38.127048, 41.678535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911766, 38.280445, 41.614582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.966805, 37.884407, 41.625725>,  <43.999828, 37.646786, 41.632412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.966805, 37.884407, 41.625725>,  <43.911766, 38.280445, 41.614582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966805, 37.884407, 41.625725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816569, -0.097470, 0.568960,
		-0.560610, -0.101036, -0.821893,
		0.137595, -0.990096, 0.027860,
		44.008083, 37.587379, 41.634083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257084, 38.041248, 41.610954>,  <43.911766, 38.280445, 41.614582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257084, 38.041248, 41.610954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.462650, 37.713684, 41.713146>,  <43.585991, 37.517143, 41.774460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.462650, 37.713684, 41.713146>,  <43.257084, 38.041248, 41.610954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462650, 37.713684, 41.713146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746589, -0.280298, 0.603356,
		-0.422487, -0.500810, -0.755442,
		0.513916, -0.818915, 0.255477,
		43.616825, 37.468010, 41.789791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748470, 37.484219, 41.614262>,  <43.257084, 38.041248, 41.610954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748470, 37.484219, 41.614262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.051884, 37.364315, 41.845699>,  <43.233932, 37.292374, 41.984562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.051884, 37.364315, 41.845699>,  <42.748470, 37.484219, 41.614262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051884, 37.364315, 41.845699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651618, -0.343063, 0.676537,
		-0.004304, -0.890198, -0.455554,
		0.758535, -0.299758, 0.578592,
		43.279446, 37.274387, 42.019276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759373, 36.718735, 41.716808>,  <42.748470, 37.484219, 41.614262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759373, 36.718735, 41.716808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970558, 36.871643, 42.020157>,  <43.097271, 36.963387, 42.202164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970558, 36.871643, 42.020157>,  <42.759373, 36.718735, 41.716808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970558, 36.871643, 42.020157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490423, -0.591798, 0.639734,
		0.693352, -0.709679, -0.124976,
		0.527967, 0.382269, 0.758367,
		43.128948, 36.986324, 42.247665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923622, 36.132809, 42.039654>,  <42.759373, 36.718735, 41.716808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923622, 36.132809, 42.039654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.000443, 36.433372, 42.292160>,  <43.046535, 36.613712, 42.443665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.000443, 36.433372, 42.292160>,  <42.923622, 36.132809, 42.039654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000443, 36.433372, 42.292160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345649, -0.550233, 0.760112,
		0.918501, -0.364174, 0.154054,
		0.192047, 0.751412, 0.631266,
		43.058056, 36.658794, 42.481541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.065170, 35.724907, 42.059059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803703, 35.433800, 41.976040>,  <38.646824, 35.259136, 41.926228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803703, 35.433800, 41.976040>,  <39.065170, 35.724907, 42.059059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803703, 35.433800, 41.976040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596411, -0.326572, -0.733242,
		0.465851, -0.603079, 0.647518,
		-0.653664, -0.727768, -0.207549,
		38.607605, 35.215469, 41.913776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457039, 35.153069, 41.948124>,  <39.065170, 35.724907, 42.059059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457039, 35.153069, 41.948124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106907, 35.054321, 41.781818>,  <38.896828, 34.995075, 41.682034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106907, 35.054321, 41.781818>,  <39.457039, 35.153069, 41.948124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106907, 35.054321, 41.781818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478275, -0.315594, -0.819544,
		0.071104, -0.916219, 0.394318,
		-0.875327, -0.246865, -0.415764,
		38.844307, 34.980263, 41.657089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567066, 34.385181, 41.648968>,  <39.457039, 35.153069, 41.948124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567066, 34.385181, 41.648968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260239, 34.557831, 41.459103>,  <39.076141, 34.661419, 41.345184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260239, 34.557831, 41.459103>,  <39.567066, 34.385181, 41.648968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260239, 34.557831, 41.459103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380299, -0.289946, -0.878239,
		-0.516696, -0.854184, 0.058263,
		-0.767071, 0.431625, -0.474660,
		39.030117, 34.687317, 41.316704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368935, 33.956707, 41.079849>,  <39.567066, 34.385181, 41.648968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368935, 33.956707, 41.079849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173191, 34.293671, 40.989632>,  <39.055744, 34.495850, 40.935501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173191, 34.293671, 40.989632>,  <39.368935, 33.956707, 41.079849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173191, 34.293671, 40.989632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081584, -0.213275, -0.973580,
		-0.868259, -0.494829, 0.035641,
		-0.489357, 0.842412, -0.225548,
		39.026382, 34.546394, 40.921967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978256, 33.790333, 40.512836>,  <39.368935, 33.956707, 41.079849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978256, 33.790333, 40.512836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039280, 34.185490, 40.501598>,  <39.075893, 34.422585, 40.494854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039280, 34.185490, 40.501598>,  <38.978256, 33.790333, 40.512836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039280, 34.185490, 40.501598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124646, -0.047437, -0.991067,
		-0.980402, 0.147698, -0.130374,
		0.152563, 0.987894, -0.028098,
		39.085049, 34.481857, 40.493168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458347, 34.100883, 40.051476>,  <38.978256, 33.790333, 40.512836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458347, 34.100883, 40.051476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769588, 34.351185, 40.073315>,  <38.956333, 34.501366, 40.086418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769588, 34.351185, 40.073315>,  <38.458347, 34.100883, 40.051476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769588, 34.351185, 40.073315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141197, -0.089552, -0.985923,
		-0.612059, 0.774860, -0.158036,
		0.778105, 0.625757, 0.054597,
		39.003021, 34.538914, 40.089695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462482, 34.413094, 39.418163>,  <38.458347, 34.100883, 40.051476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462482, 34.413094, 39.418163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827831, 34.533367, 39.527954>,  <39.047039, 34.605534, 39.593830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827831, 34.533367, 39.527954>,  <38.462482, 34.413094, 39.418163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827831, 34.533367, 39.527954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255487, 0.101588, -0.961460,
		-0.316984, 0.948297, 0.015966,
		0.913372, 0.300688, 0.274479,
		39.101841, 34.623573, 39.610298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527714, 34.991749, 39.080273>,  <38.462482, 34.413094, 39.418163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527714, 34.991749, 39.080273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915489, 34.905788, 39.127605>,  <39.148155, 34.854214, 39.156006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915489, 34.905788, 39.127605>,  <38.527714, 34.991749, 39.080273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915489, 34.905788, 39.127605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126336, 0.023874, -0.991700,
		0.210290, 0.976344, 0.050294,
		0.969442, -0.214898, 0.118327,
		39.206322, 34.841320, 39.163105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913944, 35.454967, 38.764465>,  <38.527714, 34.991749, 39.080273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913944, 35.454967, 38.764465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157558, 35.138447, 38.786037>,  <39.303726, 34.948532, 38.798981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157558, 35.138447, 38.786037>,  <38.913944, 35.454967, 38.764465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157558, 35.138447, 38.786037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118362, 0.023444, -0.992694,
		0.784258, 0.610973, 0.107939,
		0.609039, -0.791304, 0.053930,
		39.340271, 34.901054, 38.802216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494781, 35.611519, 38.491928>,  <38.913944, 35.454967, 38.764465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494781, 35.611519, 38.491928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495659, 35.214657, 38.441925>,  <39.496185, 34.976540, 38.411922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495659, 35.214657, 38.441925>,  <39.494781, 35.611519, 38.491928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495659, 35.214657, 38.441925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093971, 0.124663, -0.987739,
		0.995572, -0.009577, 0.093508,
		0.002197, -0.992153, -0.125011,
		39.496319, 34.917011, 38.404423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857437, 35.599369, 37.852592>,  <39.494781, 35.611519, 38.491928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857437, 35.599369, 37.852592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719040, 35.229237, 37.914627>,  <39.636002, 35.007156, 37.951847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719040, 35.229237, 37.914627>,  <39.857437, 35.599369, 37.852592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719040, 35.229237, 37.914627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088983, -0.132192, -0.987222,
		0.934009, -0.355368, -0.036602,
		-0.345989, -0.925332, 0.155090,
		39.615242, 34.951637, 37.961155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233776, 35.119900, 37.471569>,  <39.857437, 35.599369, 37.852592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233776, 35.119900, 37.471569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858585, 34.990410, 37.521217>,  <39.633472, 34.912716, 37.551006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858585, 34.990410, 37.521217>,  <40.233776, 35.119900, 37.471569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858585, 34.990410, 37.521217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131538, 0.001052, -0.991311,
		0.320785, -0.946150, -0.043569,
		-0.937974, -0.323728, 0.124117,
		39.577194, 34.893291, 37.558453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196747, 34.816792, 36.903923>,  <40.233776, 35.119900, 37.471569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196747, 34.816792, 36.903923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819973, 34.869152, 37.027618>,  <39.593910, 34.900570, 37.101837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819973, 34.869152, 37.027618>,  <40.196747, 34.816792, 36.903923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819973, 34.869152, 37.027618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303286, 0.063711, -0.950767,
		-0.144159, -0.989346, -0.020310,
		-0.941932, 0.130902, 0.309240,
		39.537392, 34.908421, 37.120392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962643, 34.525684, 36.247200>,  <40.196747, 34.816792, 36.903923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962643, 34.525684, 36.247200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029442, 34.264473, 35.951725>,  <40.069519, 34.107746, 35.774441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029442, 34.264473, 35.951725>,  <39.962643, 34.525684, 36.247200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029442, 34.264473, 35.951725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862063, -0.460309, 0.212045,
		-0.478499, 0.601390, -0.639820,
		0.166993, -0.653028, -0.738693,
		40.079540, 34.068565, 35.730118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343204, 34.442829, 35.923862>,  <39.962643, 34.525684, 36.247200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343204, 34.442829, 35.923862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574215, 34.124695, 35.850216>,  <39.712822, 33.933815, 35.806026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574215, 34.124695, 35.850216>,  <39.343204, 34.442829, 35.923862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574215, 34.124695, 35.850216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786771, -0.602429, 0.134432,
		-0.217838, 0.067223, -0.973667,
		0.577528, -0.795337, -0.184121,
		39.747475, 33.886093, 35.794979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929134, 33.991856, 35.425499>,  <39.343204, 34.442829, 35.923862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929134, 33.991856, 35.425499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181599, 33.732632, 35.595982>,  <39.333076, 33.577095, 35.698273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181599, 33.732632, 35.595982>,  <38.929134, 33.991856, 35.425499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181599, 33.732632, 35.595982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772162, -0.577048, 0.266048,
		0.073526, -0.497019, -0.864619,
		0.631158, -0.648065, 0.426207,
		39.370945, 33.538212, 35.723843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666992, 33.360710, 35.190155>,  <38.929134, 33.991856, 35.425499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666992, 33.360710, 35.190155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897823, 33.325485, 35.514927>,  <39.036320, 33.304348, 35.709789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897823, 33.325485, 35.514927>,  <38.666992, 33.360710, 35.190155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897823, 33.325485, 35.514927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714413, -0.536154, 0.449614,
		0.395724, -0.839514, -0.372316,
		0.577076, -0.088064, 0.811929,
		39.070946, 33.299065, 35.758507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647198, 32.676918, 35.363926>,  <38.666992, 33.360710, 35.190155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647198, 32.676918, 35.363926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778465, 32.841057, 35.704262>,  <38.857227, 32.939541, 35.908463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778465, 32.841057, 35.704262>,  <38.647198, 32.676918, 35.363926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778465, 32.841057, 35.704262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500378, -0.688453, 0.525028,
		0.801204, -0.598037, -0.020600,
		0.328168, 0.410346, 0.850836,
		38.876915, 32.964161, 35.959511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897568, 32.082428, 35.793140>,  <38.647198, 32.676918, 35.363926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897568, 32.082428, 35.793140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829964, 32.384613, 36.046349>,  <38.789402, 32.565922, 36.198273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829964, 32.384613, 36.046349>,  <38.897568, 32.082428, 35.793140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829964, 32.384613, 36.046349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599342, -0.588646, 0.542480,
		0.782447, -0.287711, 0.552266,
		-0.169012, 0.755459, 0.633022,
		38.779259, 32.611252, 36.236256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927872, 31.814516, 36.398186>,  <38.897568, 32.082428, 35.793140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927872, 31.814516, 36.398186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721210, 32.152782, 36.451725>,  <38.597214, 32.355743, 36.483849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721210, 32.152782, 36.451725>,  <38.927872, 31.814516, 36.398186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721210, 32.152782, 36.451725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615469, -0.475503, 0.628565,
		0.595204, 0.242370, 0.766152,
		-0.516653, 0.845667, 0.133850,
		38.566216, 32.406483, 36.491879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786812, 31.860107, 37.149406>,  <38.927872, 31.814516, 36.398186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786812, 31.860107, 37.149406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515720, 32.108086, 36.991241>,  <38.353065, 32.256874, 36.896343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515720, 32.108086, 36.991241>,  <38.786812, 31.860107, 37.149406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515720, 32.108086, 36.991241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648397, -0.250247, 0.718998,
		0.346789, 0.743670, 0.571570,
		-0.677731, 0.619945, -0.395411,
		38.312401, 32.294067, 36.872620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623051, 32.381470, 37.630970>,  <38.786812, 31.860107, 37.149406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623051, 32.381470, 37.630970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312752, 32.362350, 37.379280>,  <38.126572, 32.350880, 37.228264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312752, 32.362350, 37.379280>,  <38.623051, 32.381470, 37.630970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312752, 32.362350, 37.379280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594137, -0.280661, 0.753810,
		-0.212629, 0.958616, 0.189325,
		-0.775751, -0.047797, -0.629226,
		38.080025, 32.348011, 37.190514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063297, 32.695084, 37.976738>,  <38.623051, 32.381470, 37.630970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063297, 32.695084, 37.976738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881645, 32.470264, 37.700222>,  <37.772655, 32.335373, 37.534313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881645, 32.470264, 37.700222>,  <38.063297, 32.695084, 37.976738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881645, 32.470264, 37.700222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689224, -0.270056, 0.672339,
		-0.564571, 0.781777, -0.264735,
		-0.454126, -0.562045, -0.691285,
		37.745407, 32.301651, 37.492836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358345, 32.857304, 38.008018>,  <38.063297, 32.695084, 37.976738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358345, 32.857304, 38.008018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372089, 32.507854, 37.813862>,  <37.380337, 32.298183, 37.697369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372089, 32.507854, 37.813862>,  <37.358345, 32.857304, 38.008018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372089, 32.507854, 37.813862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612660, -0.402127, 0.680398,
		-0.789600, 0.274001, -0.549050,
		0.034358, -0.873623, -0.485389,
		37.382397, 32.245766, 37.668243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744408, 32.752949, 37.947117>,  <37.358345, 32.857304, 38.008018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744408, 32.752949, 37.947117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901260, 32.387772, 37.901924>,  <36.995373, 32.168667, 37.874809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901260, 32.387772, 37.901924>,  <36.744408, 32.752949, 37.947117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901260, 32.387772, 37.901924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683281, -0.371291, 0.628706,
		-0.615921, -0.169340, -0.769393,
		0.392134, -0.912944, -0.112980,
		37.018902, 32.113888, 37.868031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163612, 32.325104, 37.979118>,  <36.744408, 32.752949, 37.947117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163612, 32.325104, 37.979118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479172, 32.087765, 38.043079>,  <36.668507, 31.945360, 38.081455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479172, 32.087765, 38.043079>,  <36.163612, 32.325104, 37.979118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479172, 32.087765, 38.043079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521326, -0.508446, 0.685348,
		-0.325349, -0.624034, -0.710443,
		0.788903, -0.593349, 0.159903,
		36.715843, 31.909760, 38.091049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908730, 31.604811, 38.053982>,  <36.163612, 32.325104, 37.979118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908730, 31.604811, 38.053982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260120, 31.634823, 38.242725>,  <36.470955, 31.652830, 38.355972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260120, 31.634823, 38.242725>,  <35.908730, 31.604811, 38.053982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260120, 31.634823, 38.242725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415946, -0.365838, 0.832557,
		0.235091, -0.927649, -0.290171,
		0.878477, 0.075031, 0.471857,
		36.523663, 31.657331, 38.384281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846237, 31.071199, 38.482418>,  <35.908730, 31.604811, 38.053982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846237, 31.071199, 38.482418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163261, 31.269306, 38.624714>,  <36.353477, 31.388170, 38.710091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163261, 31.269306, 38.624714>,  <35.846237, 31.071199, 38.482418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163261, 31.269306, 38.624714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440226, 0.061033, 0.895810,
		0.421956, -0.866593, 0.266403,
		0.792562, 0.495270, 0.355743,
		36.401031, 31.417887, 38.731438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588188, 30.376461, 38.609154>,  <35.846237, 31.071199, 38.482418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588188, 30.376461, 38.609154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273918, 30.150208, 38.709373>,  <35.085358, 30.014456, 38.769505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273918, 30.150208, 38.709373>,  <35.588188, 30.376461, 38.609154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273918, 30.150208, 38.709373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417312, 0.185586, -0.889612,
		0.456697, -0.803502, -0.381856,
		-0.785671, -0.565635, 0.250554,
		35.038216, 29.980516, 38.784538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469345, 29.911654, 38.065079>,  <35.588188, 30.376461, 38.609154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469345, 29.911654, 38.065079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119511, 29.950369, 38.255123>,  <34.909611, 29.973598, 38.369148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119511, 29.950369, 38.255123>,  <35.469345, 29.911654, 38.065079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119511, 29.950369, 38.255123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458267, 0.155112, -0.875175,
		-0.158404, -0.983144, -0.091303,
		-0.874585, 0.096791, 0.475113,
		34.857136, 29.979406, 38.397655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081024, 29.409988, 37.722385>,  <35.469345, 29.911654, 38.065079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081024, 29.409988, 37.722385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840122, 29.675213, 37.900211>,  <34.695580, 29.834347, 38.006908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840122, 29.675213, 37.900211>,  <35.081024, 29.409988, 37.722385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840122, 29.675213, 37.900211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532077, 0.081750, -0.842740,
		-0.595132, -0.744088, 0.303565,
		-0.602256, 0.663061, 0.444564,
		34.659447, 29.874130, 38.033581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513546, 29.176228, 37.375015>,  <35.081024, 29.409988, 37.722385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513546, 29.176228, 37.375015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407253, 29.527895, 37.533230>,  <34.343475, 29.738895, 37.628159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407253, 29.527895, 37.533230>,  <34.513546, 29.176228, 37.375015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407253, 29.527895, 37.533230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533167, 0.207801, -0.820093,
		-0.803193, -0.428811, 0.413524,
		-0.265734, 0.879170, 0.395532,
		34.327534, 29.791645, 37.651890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792839, 29.286522, 37.079170>,  <34.513546, 29.176228, 37.375015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792839, 29.286522, 37.079170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940170, 29.635368, 37.208012>,  <34.028568, 29.844677, 37.285316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940170, 29.635368, 37.208012>,  <33.792839, 29.286522, 37.079170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940170, 29.635368, 37.208012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416004, 0.464441, -0.781815,
		-0.831431, 0.153967, 0.533870,
		0.368325, 0.872117, 0.322100,
		34.050667, 29.897003, 37.304642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224796, 29.847105, 36.959610>,  <33.792839, 29.286522, 37.079170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224796, 29.847105, 36.959610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585236, 30.019728, 36.976479>,  <33.801498, 30.123302, 36.986599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585236, 30.019728, 36.976479>,  <33.224796, 29.847105, 36.959610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585236, 30.019728, 36.976479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218294, 0.535522, -0.815821,
		-0.374658, 0.725929, 0.576765,
		0.901099, 0.431559, 0.042171,
		33.855564, 30.149195, 36.989128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253551, 30.583721, 36.909767>,  <33.224796, 29.847105, 36.959610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253551, 30.583721, 36.909767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624664, 30.494360, 36.790230>,  <33.847332, 30.440742, 36.718510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624664, 30.494360, 36.790230>,  <33.253551, 30.583721, 36.909767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624664, 30.494360, 36.790230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124504, 0.569656, -0.812398,
		0.351728, 0.790938, 0.500704,
		0.927785, -0.223404, -0.298839,
		33.903000, 30.427340, 36.700577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381870, 31.139273, 36.461601>,  <33.253551, 30.583721, 36.909767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381870, 31.139273, 36.461601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698132, 30.904593, 36.391571>,  <33.887890, 30.763784, 36.349552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698132, 30.904593, 36.391571>,  <33.381870, 31.139273, 36.461601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698132, 30.904593, 36.391571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064956, 0.364711, -0.928852,
		0.608809, 0.723028, 0.326470,
		0.790653, -0.586700, -0.175074,
		33.935329, 30.728582, 36.339050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972263, 31.543348, 36.325722>,  <33.381870, 31.139273, 36.461601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972263, 31.543348, 36.325722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072933, 31.191402, 36.164474>,  <34.133335, 30.980236, 36.067726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072933, 31.191402, 36.164474>,  <33.972263, 31.543348, 36.325722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072933, 31.191402, 36.164474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129787, 0.443444, -0.886855,
		0.959071, 0.170876, 0.225797,
		0.251671, -0.879863, -0.403117,
		34.148434, 30.927444, 36.043541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578072, 31.736576, 35.866833>,  <33.972263, 31.543348, 36.325722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578072, 31.736576, 35.866833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439884, 31.377218, 35.758362>,  <34.356972, 31.161604, 35.693279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439884, 31.377218, 35.758362>,  <34.578072, 31.736576, 35.866833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439884, 31.377218, 35.758362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116674, 0.245609, -0.962322,
		0.931150, -0.364089, 0.019970,
		-0.345466, -0.898396, -0.271179,
		34.336243, 31.107698, 35.677010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079723, 31.514963, 35.411095>,  <34.578072, 31.736576, 35.866833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079723, 31.514963, 35.411095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750725, 31.309008, 35.314445>,  <34.553326, 31.185434, 35.256454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750725, 31.309008, 35.314445>,  <35.079723, 31.514963, 35.411095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750725, 31.309008, 35.314445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164121, 0.191889, -0.967596,
		0.544572, -0.835503, -0.073324,
		-0.822500, -0.514891, -0.241621,
		34.503975, 31.154541, 35.241959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221821, 31.098160, 34.838886>,  <35.079723, 31.514963, 35.411095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221821, 31.098160, 34.838886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841198, 31.219406, 34.859543>,  <34.612823, 31.292154, 34.871937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841198, 31.219406, 34.859543>,  <35.221821, 31.098160, 34.838886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841198, 31.219406, 34.859543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017789, 0.221922, -0.974902,
		-0.306969, -0.926753, -0.216562,
		-0.951553, 0.303117, 0.051637,
		34.555733, 31.310341, 34.875034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.139420, 28.855169, 42.042599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785107, 28.930424, 42.212299>,  <35.572517, 28.975576, 42.314121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785107, 28.930424, 42.212299>,  <36.139420, 28.855169, 42.042599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785107, 28.930424, 42.212299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420906, 0.059434, -0.905155,
		-0.195508, -0.980343, 0.026542,
		-0.885785, 0.188137, 0.424252,
		35.519371, 28.986864, 42.339577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682945, 28.364372, 41.807980>,  <36.139420, 28.855169, 42.042599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682945, 28.364372, 41.807980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.465919, 28.685429, 41.907089>,  <35.335705, 28.878061, 41.966557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.465919, 28.685429, 41.907089>,  <35.682945, 28.364372, 41.807980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465919, 28.685429, 41.907089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307631, 0.084615, -0.947736,
		-0.781656, -0.590432, 0.201007,
		-0.542565, 0.802639, 0.247775,
		35.303150, 28.926220, 41.981422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057442, 28.277718, 41.340958>,  <35.682945, 28.364372, 41.807980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057442, 28.277718, 41.340958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035107, 28.660122, 41.456146>,  <35.021706, 28.889565, 41.525261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035107, 28.660122, 41.456146>,  <35.057442, 28.277718, 41.340958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035107, 28.660122, 41.456146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206133, 0.271168, -0.940201,
		-0.976929, -0.111862, 0.181923,
		-0.055841, 0.956010, 0.287971,
		35.018353, 28.946924, 41.542538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339195, 28.637722, 41.119953>,  <35.057442, 28.277718, 41.340958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339195, 28.637722, 41.119953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.637806, 28.900295, 41.163383>,  <34.816975, 29.057840, 41.189442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.637806, 28.900295, 41.163383>,  <34.339195, 28.637722, 41.119953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637806, 28.900295, 41.163383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126418, 0.300151, -0.945478,
		-0.653233, 0.692101, 0.307056,
		0.746529, 0.656435, 0.108574,
		34.861763, 29.097225, 41.195957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999176, 29.082144, 40.531921>,  <34.339195, 28.637722, 41.119953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999176, 29.082144, 40.531921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356136, 29.224556, 40.642818>,  <34.570312, 29.310003, 40.709358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356136, 29.224556, 40.642818>,  <33.999176, 29.082144, 40.531921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356136, 29.224556, 40.642818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103516, 0.436494, -0.893732,
		-0.439211, 0.826266, 0.352673,
		0.892400, 0.356030, 0.277245,
		34.623856, 29.331366, 40.725990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944218, 29.855597, 40.512691>,  <33.999176, 29.082144, 40.531921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944218, 29.855597, 40.512691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.302235, 29.682333, 40.470230>,  <34.517044, 29.578375, 40.444752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.302235, 29.682333, 40.470230>,  <33.944218, 29.855597, 40.512691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302235, 29.682333, 40.470230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089662, 0.407939, -0.908596,
		0.436871, 0.803716, 0.403961,
		0.895044, -0.433159, -0.106154,
		34.570747, 29.552385, 40.438385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331039, 30.342628, 40.093002>,  <33.944218, 29.855597, 40.512691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331039, 30.342628, 40.093002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.571945, 30.024300, 40.067867>,  <34.716488, 29.833303, 40.052788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.571945, 30.024300, 40.067867>,  <34.331039, 30.342628, 40.093002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571945, 30.024300, 40.067867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290371, 0.291706, -0.911369,
		0.743615, 0.530638, 0.406767,
		0.602263, -0.795821, -0.062835,
		34.752625, 29.785553, 40.049015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903461, 30.583599, 39.847424>,  <34.331039, 30.342628, 40.093002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903461, 30.583599, 39.847424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949081, 30.196051, 39.759525>,  <34.976452, 29.963522, 39.706787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949081, 30.196051, 39.759525>,  <34.903461, 30.583599, 39.847424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949081, 30.196051, 39.759525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190319, 0.238395, -0.952337,
		0.975075, 0.066790, 0.211582,
		0.114046, -0.968869, -0.219741,
		34.983295, 29.905390, 39.693604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519165, 30.460264, 39.431728>,  <34.903461, 30.583599, 39.847424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519165, 30.460264, 39.431728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.317810, 30.124449, 39.349972>,  <35.196999, 29.922960, 39.300919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.317810, 30.124449, 39.349972>,  <35.519165, 30.460264, 39.431728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317810, 30.124449, 39.349972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074227, 0.193658, -0.978257,
		0.860868, -0.507612, -0.035168,
		-0.503386, -0.839539, -0.204393,
		35.166794, 29.872587, 39.288654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243195, 30.643270, 39.456913>,  <35.519165, 30.460264, 39.431728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243195, 30.643270, 39.456913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.390892, 31.011311, 39.404644>,  <36.479511, 31.232134, 39.373283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.390892, 31.011311, 39.404644>,  <36.243195, 30.643270, 39.456913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390892, 31.011311, 39.404644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026169, 0.150848, 0.988211,
		0.928964, -0.361472, 0.079778,
		0.369245, 0.920099, -0.130673,
		36.501667, 31.287340, 39.365440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756390, 30.716530, 39.925705>,  <36.243195, 30.643270, 39.456913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756390, 30.716530, 39.925705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671726, 31.097055, 39.836082>,  <36.620930, 31.325371, 39.782310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671726, 31.097055, 39.836082>,  <36.756390, 30.716530, 39.925705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671726, 31.097055, 39.836082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117995, 0.252444, 0.960390,
		0.970195, 0.176835, -0.165682,
		-0.211656, 0.951316, -0.224054,
		36.608231, 31.382450, 39.768867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156593, 31.134933, 40.273376>,  <36.756390, 30.716530, 39.925705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156593, 31.134933, 40.273376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856754, 31.387848, 40.195076>,  <36.676849, 31.539597, 40.148098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856754, 31.387848, 40.195076>,  <37.156593, 31.134933, 40.273376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856754, 31.387848, 40.195076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136539, 0.437095, 0.888991,
		0.647658, 0.639659, -0.413977,
		-0.749598, 0.632286, -0.195749,
		36.631874, 31.577534, 40.136353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437675, 31.790712, 40.349361>,  <37.156593, 31.134933, 40.273376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437675, 31.790712, 40.349361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.042961, 31.823683, 40.405151>,  <36.806133, 31.843464, 40.438625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.042961, 31.823683, 40.405151>,  <37.437675, 31.790712, 40.349361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042961, 31.823683, 40.405151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161916, 0.472035, 0.866583,
		0.005589, 0.877718, -0.479145,
		-0.986789, 0.082424, 0.139479,
		36.746925, 31.848410, 40.446995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436413, 32.376858, 40.804386>,  <37.437675, 31.790712, 40.349361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436413, 32.376858, 40.804386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061829, 32.241314, 40.840645>,  <36.837078, 32.159988, 40.862400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061829, 32.241314, 40.840645>,  <37.436413, 32.376858, 40.804386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061829, 32.241314, 40.840645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062683, 0.415929, 0.907234,
		-0.345126, 0.843907, -0.410742,
		-0.936461, -0.338857, 0.090649,
		36.780891, 32.139656, 40.867840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984901, 32.900261, 41.179741>,  <37.436413, 32.376858, 40.804386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984901, 32.900261, 41.179741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765297, 32.569099, 41.225628>,  <36.633533, 32.370403, 41.253162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765297, 32.569099, 41.225628>,  <36.984901, 32.900261, 41.179741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765297, 32.569099, 41.225628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153928, 0.235060, 0.959715,
		-0.821519, 0.509234, -0.256488,
		-0.549010, -0.827905, 0.114721,
		36.600594, 32.320728, 41.260044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286667, 33.130737, 41.360256>,  <36.984901, 32.900261, 41.179741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286667, 33.130737, 41.360256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337513, 32.756676, 41.492516>,  <36.368019, 32.532238, 41.571873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337513, 32.756676, 41.492516>,  <36.286667, 33.130737, 41.360256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337513, 32.756676, 41.492516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161662, 0.309366, 0.937101,
		-0.978626, -0.172569, -0.111855,
		0.127111, -0.935153, 0.330652,
		36.375645, 32.476131, 41.591713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884365, 32.988270, 41.810780>,  <36.286667, 33.130737, 41.360256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884365, 32.988270, 41.810780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.123825, 32.690483, 41.929024>,  <36.267502, 32.511810, 41.999969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.123825, 32.690483, 41.929024>,  <35.884365, 32.988270, 41.810780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123825, 32.690483, 41.929024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087326, 0.306196, 0.947955,
		-0.796234, -0.593311, 0.118294,
		0.598653, -0.744464, 0.295615,
		36.303421, 32.467144, 42.017708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710655, 32.709927, 42.513206>,  <35.884365, 32.988270, 41.810780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710655, 32.709927, 42.513206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045914, 32.491905, 42.521408>,  <36.247070, 32.361092, 42.526329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045914, 32.491905, 42.521408>,  <35.710655, 32.709927, 42.513206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045914, 32.491905, 42.521408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052050, -0.042513, 0.997739,
		-0.542949, -0.837323, -0.064003,
		0.838151, -0.545053, 0.020500,
		36.297359, 32.328388, 42.527557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650501, 31.981396, 42.859409>,  <35.710655, 32.709927, 42.513206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650501, 31.981396, 42.859409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025417, 32.119755, 42.876572>,  <36.250366, 32.202770, 42.886868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025417, 32.119755, 42.876572>,  <35.650501, 31.981396, 42.859409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025417, 32.119755, 42.876572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037555, -0.022158, 0.999049,
		0.346519, -0.938011, -0.007778,
		0.937291, 0.345897, 0.042905,
		36.306606, 32.223522, 42.889442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758480, 32.030441, 43.576614>,  <35.650501, 31.981396, 42.859409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758480, 32.030441, 43.576614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117409, 32.170479, 43.469105>,  <36.332767, 32.254501, 43.404598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117409, 32.170479, 43.469105>,  <35.758480, 32.030441, 43.576614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117409, 32.170479, 43.469105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202407, 0.214746, 0.955466,
		0.392226, -0.911765, 0.121835,
		0.897324, 0.350098, -0.268776,
		36.386604, 32.275509, 43.388474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261585, 31.597166, 43.979153>,  <35.758480, 32.030441, 43.576614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261585, 31.597166, 43.979153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.356548, 31.974337, 43.885750>,  <36.413525, 32.200638, 43.829708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.356548, 31.974337, 43.885750>,  <36.261585, 31.597166, 43.979153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356548, 31.974337, 43.885750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146007, 0.203011, 0.968230,
		0.960375, -0.263958, -0.089478,
		0.237407, 0.942928, -0.233506,
		36.427769, 32.257214, 43.815697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665859, 31.726971, 44.477917>,  <36.261585, 31.597166, 43.979153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665859, 31.726971, 44.477917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.641937, 32.100197, 44.336037>,  <36.627583, 32.324131, 44.250908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.641937, 32.100197, 44.336037>,  <36.665859, 31.726971, 44.477917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641937, 32.100197, 44.336037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022079, 0.354010, 0.934981,
		0.997966, 0.063746, -0.000570,
		-0.059803, 0.933067, -0.354697,
		36.623997, 32.380116, 44.229626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149002, 32.048767, 44.833706>,  <36.665859, 31.726971, 44.477917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149002, 32.048767, 44.833706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.899826, 32.338959, 44.716660>,  <36.750320, 32.513073, 44.646431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.899826, 32.338959, 44.716660>,  <37.149002, 32.048767, 44.833706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899826, 32.338959, 44.716660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014073, 0.363610, 0.931445,
		0.782143, 0.584353, -0.216298,
		-0.622940, 0.725479, -0.292619,
		36.712944, 32.556602, 44.628876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.392500, 34.103378, 43.487465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.786852, 34.070862, 43.546024>,  <30.023462, 34.051353, 43.581161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.786852, 34.070862, 43.546024>,  <29.392500, 34.103378, 43.487465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786852, 34.070862, 43.546024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148008, 0.014106, -0.988886,
		0.078319, 0.996591, 0.025938,
		0.985880, -0.081288, 0.146399,
		30.082617, 34.046474, 43.589943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659513, 34.611202, 43.042080>,  <29.392500, 34.103378, 43.487465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659513, 34.611202, 43.042080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.980827, 34.377880, 43.090229>,  <30.173616, 34.237888, 43.119118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.980827, 34.377880, 43.090229>,  <29.659513, 34.611202, 43.042080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980827, 34.377880, 43.090229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158185, 0.014094, -0.987309,
		0.574203, 0.812133, 0.103591,
		0.803286, -0.583303, 0.120374,
		30.221813, 34.202888, 43.126343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228363, 34.862152, 42.635307>,  <29.659513, 34.611202, 43.042080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228363, 34.862152, 42.635307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.335371, 34.483829, 42.708931>,  <30.399576, 34.256836, 42.753105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.335371, 34.483829, 42.708931>,  <30.228363, 34.862152, 42.635307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335371, 34.483829, 42.708931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455929, -0.044030, -0.888926,
		0.848858, 0.321726, 0.419443,
		0.267522, -0.945809, 0.184059,
		30.415628, 34.200089, 42.764149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963598, 34.867943, 42.478493>,  <30.228363, 34.862152, 42.635307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963598, 34.867943, 42.478493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.837784, 34.488358, 42.469215>,  <30.762295, 34.260605, 42.463650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.837784, 34.488358, 42.469215>,  <30.963598, 34.867943, 42.478493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837784, 34.488358, 42.469215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518495, -0.151285, -0.841592,
		0.795129, -0.276739, 0.539616,
		-0.314537, -0.948962, -0.023197,
		30.743423, 34.203671, 42.462257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529903, 34.512436, 42.301884>,  <30.963598, 34.867943, 42.478493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529903, 34.512436, 42.301884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227358, 34.263569, 42.221062>,  <31.045830, 34.114250, 42.172569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227358, 34.263569, 42.221062>,  <31.529903, 34.512436, 42.301884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227358, 34.263569, 42.221062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430322, -0.240597, -0.870021,
		0.492685, -0.744999, 0.449710,
		-0.756363, -0.622166, -0.202051,
		31.000448, 34.076920, 42.160446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898283, 33.926147, 41.980003>,  <31.529903, 34.512436, 42.301884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898283, 33.926147, 41.980003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.510021, 33.912376, 41.884804>,  <31.277063, 33.904114, 41.827682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.510021, 33.912376, 41.884804>,  <31.898283, 33.926147, 41.980003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510021, 33.912376, 41.884804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238922, -0.250446, -0.938186,
		-0.027302, -0.967518, 0.251324,
		-0.970655, -0.034433, -0.237998,
		31.218824, 33.902046, 41.813404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043591, 33.338760, 41.484062>,  <31.898283, 33.926147, 41.980003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043591, 33.338760, 41.484062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.682903, 33.501350, 41.425167>,  <31.466492, 33.598907, 41.389832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.682903, 33.501350, 41.425167>,  <32.043591, 33.338760, 41.484062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682903, 33.501350, 41.425167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186543, 0.058592, -0.980698,
		-0.390007, -0.911779, -0.128660,
		-0.901718, 0.406480, -0.147235,
		31.412388, 33.623295, 41.380997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574787, 33.003445, 40.903427>,  <32.043591, 33.338760, 41.484062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574787, 33.003445, 40.903427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422232, 33.372696, 40.922932>,  <31.330698, 33.594246, 40.934635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422232, 33.372696, 40.922932>,  <31.574787, 33.003445, 40.903427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422232, 33.372696, 40.922932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147107, 0.112684, -0.982681,
		-0.912636, -0.367608, -0.178775,
		-0.381386, 0.923129, 0.048762,
		31.307816, 33.649635, 40.937561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025755, 33.033569, 40.408127>,  <31.574787, 33.003445, 40.903427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025755, 33.033569, 40.408127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.136917, 33.415215, 40.452721>,  <31.203615, 33.644203, 40.479477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.136917, 33.415215, 40.452721>,  <31.025755, 33.033569, 40.408127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136917, 33.415215, 40.452721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017613, 0.121103, -0.992484,
		-0.960446, 0.273855, 0.050460,
		0.277908, 0.954116, 0.111489,
		31.220289, 33.701450, 40.486168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605320, 33.441261, 39.839668>,  <31.025755, 33.033569, 40.408127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605320, 33.441261, 39.839668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.883512, 33.696049, 39.972683>,  <31.050428, 33.848919, 40.052494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.883512, 33.696049, 39.972683>,  <30.605320, 33.441261, 39.839668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883512, 33.696049, 39.972683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201726, 0.271101, -0.941175,
		-0.689647, 0.721652, 0.060053,
		0.695481, 0.636964, 0.332540,
		31.092157, 33.887138, 40.072445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385090, 34.094566, 39.567055>,  <30.605320, 33.441261, 39.839668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385090, 34.094566, 39.567055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.777275, 34.121216, 39.641087>,  <31.012587, 34.137207, 39.685505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.777275, 34.121216, 39.641087>,  <30.385090, 34.094566, 39.567055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777275, 34.121216, 39.641087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154312, 0.322983, -0.933740,
		-0.121989, 0.944057, 0.306391,
		0.980462, 0.066626, 0.185080,
		31.071413, 34.141205, 39.696609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643091, 34.764416, 39.356438>,  <30.385090, 34.094566, 39.567055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643091, 34.764416, 39.356438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.986582, 34.559860, 39.343395>,  <31.192677, 34.437126, 39.335567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.986582, 34.559860, 39.343395>,  <30.643091, 34.764416, 39.356438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986582, 34.559860, 39.343395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253551, 0.479338, -0.840207,
		0.445305, 0.713241, 0.541285,
		0.858729, -0.511392, -0.032609,
		31.244200, 34.406441, 39.333614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385029, 35.268543, 39.191597>,  <30.643091, 34.764416, 39.356438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385029, 35.268543, 39.191597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.468462, 34.886810, 39.106041>,  <31.518522, 34.657772, 39.054707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.468462, 34.886810, 39.106041>,  <31.385029, 35.268543, 39.191597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468462, 34.886810, 39.106041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490834, 0.291311, -0.821109,
		0.845917, 0.066283, 0.529179,
		0.208581, -0.954329, -0.213892,
		31.531036, 34.600510, 39.041874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097656, 35.191547, 39.256783>,  <31.385029, 35.268543, 39.191597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097656, 35.191547, 39.256783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.963415, 34.906868, 39.009926>,  <31.882872, 34.736061, 38.861813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.963415, 34.906868, 39.009926>,  <32.097656, 35.191547, 39.256783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963415, 34.906868, 39.009926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594473, 0.348194, -0.724819,
		0.730736, -0.610122, 0.306230,
		-0.335600, -0.711697, -0.617139,
		31.862736, 34.693359, 38.824783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833397, 34.969372, 39.233158>,  <32.097656, 35.191547, 39.256783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833397, 34.969372, 39.233158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.191147, 35.125546, 39.320484>,  <33.405796, 35.219250, 39.372879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.191147, 35.125546, 39.320484>,  <32.833397, 34.969372, 39.233158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191147, 35.125546, 39.320484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351379, 0.311167, 0.883011,
		0.276817, -0.866454, 0.415487,
		0.894374, 0.390425, 0.218318,
		33.459457, 35.242676, 39.385979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050568, 34.699348, 39.993687>,  <32.833397, 34.969372, 39.233158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050568, 34.699348, 39.993687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.305939, 35.007133, 39.986370>,  <33.459160, 35.191807, 39.981979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.305939, 35.007133, 39.986370>,  <33.050568, 34.699348, 39.993687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305939, 35.007133, 39.986370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313471, 0.281644, 0.906869,
		0.702957, -0.573235, 0.421015,
		0.638426, 0.769467, -0.018291,
		33.497467, 35.237972, 39.980885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535267, 34.635117, 40.600193>,  <33.050568, 34.699348, 39.993687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535267, 34.635117, 40.600193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525436, 35.018906, 40.487900>,  <33.519539, 35.249180, 40.420525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525436, 35.018906, 40.487900>,  <33.535267, 34.635117, 40.600193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525436, 35.018906, 40.487900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125818, 0.275620, 0.952997,
		0.991749, 0.058740, 0.113946,
		-0.024573, 0.959470, -0.280736,
		33.518066, 35.306747, 40.403679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031292, 34.909145, 40.987411>,  <33.535267, 34.635117, 40.600193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031292, 34.909145, 40.987411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796993, 35.215424, 40.881119>,  <33.656414, 35.399189, 40.817341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796993, 35.215424, 40.881119>,  <34.031292, 34.909145, 40.987411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796993, 35.215424, 40.881119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162618, 0.210174, 0.964045,
		0.794014, 0.607898, 0.001408,
		-0.585745, 0.765694, -0.265736,
		33.621269, 35.445133, 40.801399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053352, 35.373528, 41.604443>,  <34.031292, 34.909145, 40.987411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053352, 35.373528, 41.604443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745811, 35.501556, 41.383018>,  <33.561287, 35.578373, 41.250164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745811, 35.501556, 41.383018>,  <34.053352, 35.373528, 41.604443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745811, 35.501556, 41.383018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423030, 0.394568, 0.815697,
		0.479498, 0.861319, -0.167962,
		-0.768848, 0.320072, -0.553559,
		33.515156, 35.597580, 41.216949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970856, 36.104816, 41.765343>,  <34.053352, 35.373528, 41.604443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970856, 36.104816, 41.765343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.613998, 35.980122, 41.634560>,  <33.399883, 35.905304, 41.556091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.613998, 35.980122, 41.634560>,  <33.970856, 36.104816, 41.765343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613998, 35.980122, 41.634560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428821, 0.356718, 0.829979,
		-0.142102, 0.880666, -0.451922,
		-0.892143, -0.311736, -0.326958,
		33.346355, 35.886600, 41.536472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556816, 36.696709, 41.867054>,  <33.970856, 36.104816, 41.765343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556816, 36.696709, 41.867054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.314987, 36.378414, 41.852688>,  <33.169888, 36.187435, 41.844070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.314987, 36.378414, 41.852688>,  <33.556816, 36.696709, 41.867054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314987, 36.378414, 41.852688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360584, 0.233200, 0.903104,
		-0.710260, 0.558943, -0.427917,
		-0.604574, -0.795739, -0.035913,
		33.133614, 36.139694, 41.841915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938400, 36.955715, 42.076466>,  <33.556816, 36.696709, 41.867054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938400, 36.955715, 42.076466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.941761, 36.559162, 42.128746>,  <32.943779, 36.321228, 42.160114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.941761, 36.559162, 42.128746>,  <32.938400, 36.955715, 42.076466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941761, 36.559162, 42.128746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381786, 0.117620, 0.916736,
		-0.924212, -0.057604, -0.377509,
		0.008405, -0.991387, 0.130698,
		32.944283, 36.261745, 42.167957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295116, 36.712532, 42.267361>,  <32.938400, 36.955715, 42.076466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295116, 36.712532, 42.267361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.524448, 36.413280, 42.400990>,  <32.662048, 36.233730, 42.481167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.524448, 36.413280, 42.400990>,  <32.295116, 36.712532, 42.267361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524448, 36.413280, 42.400990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412229, 0.088979, 0.906725,
		-0.708071, -0.657562, -0.257386,
		0.573325, -0.748128, 0.334070,
		32.696445, 36.188843, 42.501209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861099, 36.362846, 42.720387>,  <32.295116, 36.712532, 42.267361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861099, 36.362846, 42.720387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.216579, 36.209858, 42.821526>,  <32.429867, 36.118065, 42.882210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.216579, 36.209858, 42.821526>,  <31.861099, 36.362846, 42.720387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216579, 36.209858, 42.821526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199405, 0.174159, 0.964316,
		-0.412855, -0.907407, 0.078509,
		0.888701, -0.382467, 0.252844,
		32.483189, 36.095119, 42.897377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832479, 35.732231, 43.146908>,  <31.861099, 36.362846, 42.720387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832479, 35.732231, 43.146908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.172920, 35.912598, 43.254459>,  <32.377186, 36.020817, 43.318993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.172920, 35.912598, 43.254459>,  <31.832479, 35.732231, 43.146908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172920, 35.912598, 43.254459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326962, 0.054550, 0.943462,
		0.410753, -0.890898, 0.193860,
		0.851104, 0.450915, 0.268883,
		32.428253, 36.047871, 43.335125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174835, 35.363529, 43.682365>,  <31.832479, 35.732231, 43.146908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174835, 35.363529, 43.682365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.294056, 35.743790, 43.716816>,  <32.365589, 35.971947, 43.737488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.294056, 35.743790, 43.716816>,  <32.174835, 35.363529, 43.682365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294056, 35.743790, 43.716816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161139, -0.038823, 0.986168,
		0.940849, -0.307812, 0.141617,
		0.298056, 0.950655, 0.086127,
		32.383472, 36.028988, 43.742653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611568, 35.301250, 44.220860>,  <32.174835, 35.363529, 43.682365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611568, 35.301250, 44.220860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.531334, 35.691593, 44.186314>,  <32.483192, 35.925800, 44.165585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.531334, 35.691593, 44.186314>,  <32.611568, 35.301250, 44.220860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531334, 35.691593, 44.186314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017213, 0.084635, 0.996264,
		0.979524, 0.201327, -0.000179,
		-0.200590, 0.975861, -0.086367,
		32.471157, 35.984352, 44.160404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883118, 35.474461, 44.843792>,  <32.611568, 35.301250, 44.220860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883118, 35.474461, 44.843792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.680210, 35.789421, 44.703690>,  <32.558464, 35.978397, 44.619629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.680210, 35.789421, 44.703690>,  <32.883118, 35.474461, 44.843792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680210, 35.789421, 44.703690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219451, 0.275005, 0.936063,
		0.833378, 0.551699, 0.033295,
		-0.507268, 0.787401, -0.350254,
		32.528030, 36.025642, 44.598614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530239, 35.846737, 44.702599>,  <32.883118, 35.474461, 44.843792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530239, 35.846737, 44.702599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870777, 35.963493, 44.876961>,  <34.075100, 36.033546, 44.981579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870777, 35.963493, 44.876961>,  <33.530239, 35.846737, 44.702599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870777, 35.963493, 44.876961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474022, -0.072001, -0.877564,
		-0.224767, 0.953737, -0.199660,
		0.851342, 0.291891, 0.435909,
		34.126179, 36.051060, 45.007732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818085, 36.241547, 44.242027>,  <33.530239, 35.846737, 44.702599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818085, 36.241547, 44.242027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136192, 36.161316, 44.470875>,  <34.327057, 36.113178, 44.608185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136192, 36.161316, 44.470875>,  <33.818085, 36.241547, 44.242027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136192, 36.161316, 44.470875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549886, -0.158761, -0.820012,
		0.255303, 0.966729, -0.015965,
		0.795264, -0.200573, 0.572123,
		34.374771, 36.101143, 44.642513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428658, 36.650887, 43.919510>,  <33.818085, 36.241547, 44.242027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428658, 36.650887, 43.919510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.573124, 36.359383, 44.152222>,  <34.659805, 36.184479, 44.291847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.573124, 36.359383, 44.152222>,  <34.428658, 36.650887, 43.919510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573124, 36.359383, 44.152222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730370, -0.166810, -0.662370,
		0.579755, 0.664142, 0.472016,
		0.361171, -0.728759, 0.581779,
		34.681477, 36.140755, 44.326756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140305, 36.777321, 43.992859>,  <34.428658, 36.650887, 43.919510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140305, 36.777321, 43.992859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.116234, 36.392822, 44.100475>,  <35.101791, 36.162121, 44.165043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.116234, 36.392822, 44.100475>,  <35.140305, 36.777321, 43.992859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116234, 36.392822, 44.100475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865381, -0.184567, -0.465888,
		0.497489, 0.204784, 0.842952,
		-0.060175, -0.961248, 0.269036,
		35.098183, 36.104446, 44.181187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786648, 36.494503, 44.269314>,  <35.140305, 36.777321, 43.992859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786648, 36.494503, 44.269314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595661, 36.160156, 44.160976>,  <35.481071, 35.959549, 44.095974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595661, 36.160156, 44.160976>,  <35.786648, 36.494503, 44.269314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595661, 36.160156, 44.160976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836829, -0.338628, -0.430172,
		0.267852, -0.432041, 0.861160,
		-0.477465, -0.835866, -0.270842,
		35.452423, 35.909397, 44.079723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265636, 35.998234, 44.447083>,  <35.786648, 36.494503, 44.269314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265636, 35.998234, 44.447083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.004597, 35.865715, 44.174507>,  <35.847973, 35.786205, 44.010963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.004597, 35.865715, 44.174507>,  <36.265636, 35.998234, 44.447083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004597, 35.865715, 44.174507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750957, -0.402547, -0.523468,
		-0.100888, -0.853345, 0.511491,
		-0.652598, -0.331296, -0.681438,
		35.808819, 35.766327, 43.970078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315670, 35.246418, 44.468639>,  <36.265636, 35.998234, 44.447083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315670, 35.246418, 44.468639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.199253, 35.365784, 44.105049>,  <36.129402, 35.437405, 43.886894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.199253, 35.365784, 44.105049>,  <36.315670, 35.246418, 44.468639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199253, 35.365784, 44.105049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756666, -0.509610, -0.409578,
		-0.585450, -0.806997, -0.077486,
		-0.291040, 0.298418, -0.908978,
		36.111942, 35.455311, 43.832355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468479, 34.643379, 44.064259>,  <36.315670, 35.246418, 44.468639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468479, 34.643379, 44.064259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.379898, 34.918140, 43.787380>,  <36.326752, 35.082996, 43.621254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.379898, 34.918140, 43.787380>,  <36.468479, 34.643379, 44.064259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379898, 34.918140, 43.787380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773744, -0.308258, -0.553442,
		-0.593533, -0.658139, -0.463220,
		-0.221450, 0.686899, -0.692192,
		36.313461, 35.124210, 43.579723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573021, 34.284752, 43.395248>,  <36.468479, 34.643379, 44.064259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573021, 34.284752, 43.395248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.598808, 34.680851, 43.345856>,  <36.614281, 34.918510, 43.316219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.598808, 34.680851, 43.345856>,  <36.573021, 34.284752, 43.395248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598808, 34.680851, 43.345856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826278, -0.122356, -0.549813,
		-0.559561, -0.066588, -0.826110,
		0.064468, 0.990250, -0.123486,
		36.618149, 34.977924, 43.308811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547997, 34.480858, 42.660774>,  <36.573021, 34.284752, 43.395248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547997, 34.480858, 42.660774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.690514, 34.818272, 42.821522>,  <36.776024, 35.020721, 42.917969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.690514, 34.818272, 42.821522>,  <36.547997, 34.480858, 42.660774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690514, 34.818272, 42.821522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741180, 0.006738, -0.671272,
		-0.568950, 0.537030, -0.622811,
		0.356297, 0.843536, 0.401870,
		36.797401, 35.071331, 42.942081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527775, 34.916531, 42.161964>,  <36.547997, 34.480858, 42.660774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527775, 34.916531, 42.161964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823551, 35.004917, 42.416336>,  <37.001019, 35.057949, 42.568958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823551, 35.004917, 42.416336>,  <36.527775, 34.916531, 42.161964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823551, 35.004917, 42.416336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646513, 0.030364, -0.762299,
		-0.187751, 0.974809, -0.120404,
		0.739439, 0.220965, 0.635927,
		37.045383, 35.071205, 42.607113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029522, 35.360195, 41.769936>,  <36.527775, 34.916531, 42.161964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029522, 35.360195, 41.769936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.240864, 35.277657, 42.099361>,  <37.367668, 35.228134, 42.297016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.240864, 35.277657, 42.099361>,  <37.029522, 35.360195, 41.769936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240864, 35.277657, 42.099361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846542, 0.202138, -0.492450,
		-0.064861, 0.957373, 0.281478,
		0.528356, -0.206342, 0.823567,
		37.399372, 35.215755, 42.346432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593605, 35.891094, 41.842285>,  <37.029522, 35.360195, 41.769936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593605, 35.891094, 41.842285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.743252, 35.591888, 42.061562>,  <37.833038, 35.412365, 42.193127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.743252, 35.591888, 42.061562>,  <37.593605, 35.891094, 41.842285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743252, 35.591888, 42.061562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887008, 0.116096, -0.446921,
		0.270659, 0.653452, 0.706926,
		0.374113, -0.748012, 0.548195,
		37.855484, 35.367485, 42.226021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235619, 36.169750, 42.076977>,  <37.593605, 35.891094, 41.842285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235619, 36.169750, 42.076977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.236629, 35.769753, 42.077309>,  <38.237236, 35.529755, 42.077507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.236629, 35.769753, 42.077309>,  <38.235619, 36.169750, 42.076977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236629, 35.769753, 42.077309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845022, 0.001692, -0.534729,
		0.534726, 0.002056, 0.845023,
		0.002529, -0.999996, 0.000833,
		38.237389, 35.469753, 42.077560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.013680, 35.144070, 26.339628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.888306, 35.436733, 26.097494>,  <24.813082, 35.612331, 25.952213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.888306, 35.436733, 26.097494>,  <25.013680, 35.144070, 26.339628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.888306, 35.436733, 26.097494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939695, -0.330852, 0.086664,
		-0.136866, 0.595992, 0.791240,
		-0.313434, 0.731663, -0.605333,
		24.794275, 35.656231, 25.915894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819031, 34.592388, 26.741388>,  <25.013680, 35.144070, 26.339628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819031, 34.592388, 26.741388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.052649, 34.311924, 26.577793>,  <25.192820, 34.143646, 26.479637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.052649, 34.311924, 26.577793>,  <24.819031, 34.592388, 26.741388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.052649, 34.311924, 26.577793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145882, -0.404980, 0.902613,
		-0.798506, -0.586828, -0.134239,
		0.584043, -0.701159, -0.408987,
		25.227861, 34.101578, 26.455097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.612816, 34.053314, 27.019932>,  <24.819031, 34.592388, 26.741388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.612816, 34.053314, 27.019932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.968512, 33.927219, 26.887342>,  <25.181929, 33.851562, 26.807789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.968512, 33.927219, 26.887342>,  <24.612816, 34.053314, 27.019932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.968512, 33.927219, 26.887342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211439, -0.359318, 0.908947,
		-0.405646, -0.878357, -0.252865,
		0.889239, -0.315245, -0.331475,
		25.235283, 33.832645, 26.787901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.562292, 33.335350, 27.221573>,  <24.612816, 34.053314, 27.019932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.562292, 33.335350, 27.221573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.944828, 33.446049, 27.183992>,  <25.174349, 33.512466, 27.161444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.944828, 33.446049, 27.183992>,  <24.562292, 33.335350, 27.221573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944828, 33.446049, 27.183992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229472, -0.511948, 0.827799,
		0.180995, -0.813215, -0.553102,
		0.956339, 0.276748, -0.093950,
		25.231730, 33.529072, 27.155807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872541, 32.742733, 27.477465>,  <24.562292, 33.335350, 27.221573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872541, 32.742733, 27.477465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.151411, 33.029469, 27.473671>,  <25.318733, 33.201511, 27.471395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.151411, 33.029469, 27.473671>,  <24.872541, 32.742733, 27.477465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151411, 33.029469, 27.473671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380268, -0.358557, 0.852545,
		0.607737, -0.597979, -0.522568,
		0.697174, 0.716839, -0.009484,
		25.360563, 33.244518, 27.470825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462101, 32.440327, 27.770880>,  <24.872541, 32.742733, 27.477465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462101, 32.440327, 27.770880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.488646, 32.837711, 27.808023>,  <25.504572, 33.076141, 27.830309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.488646, 32.837711, 27.808023>,  <25.462101, 32.440327, 27.770880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488646, 32.837711, 27.808023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287641, -0.108159, 0.951611,
		0.955436, -0.036443, -0.292939,
		0.066363, 0.993465, 0.092857,
		25.508554, 33.135750, 27.835880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142296, 32.460907, 28.008953>,  <25.462101, 32.440327, 27.770880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142296, 32.460907, 28.008953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.986567, 32.822506, 28.079636>,  <25.893129, 33.039463, 28.122046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.986567, 32.822506, 28.079636>,  <26.142296, 32.460907, 28.008953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986567, 32.822506, 28.079636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426142, 0.006697, 0.904631,
		0.816598, 0.427493, -0.387837,
		-0.389321, 0.903994, 0.176704,
		25.869770, 33.093704, 28.132647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664974, 32.843018, 28.384926>,  <26.142296, 32.460907, 28.008953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664974, 32.843018, 28.384926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.325521, 33.035431, 28.472960>,  <26.121851, 33.150879, 28.525780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.325521, 33.035431, 28.472960>,  <26.664974, 32.843018, 28.384926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325521, 33.035431, 28.472960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336795, 0.170495, 0.926013,
		0.407917, 0.859966, -0.306695,
		-0.848630, 0.481030, 0.220085,
		26.070932, 33.179741, 28.538984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867485, 33.321327, 28.792110>,  <26.664974, 32.843018, 28.384926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867485, 33.321327, 28.792110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.472042, 33.322132, 28.852316>,  <26.234777, 33.322617, 28.888439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.472042, 33.322132, 28.852316>,  <26.867485, 33.321327, 28.792110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472042, 33.322132, 28.852316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142003, 0.344210, 0.928092,
		-0.049941, 0.938891, -0.340573,
		-0.988606, 0.002013, 0.150515,
		26.175461, 33.322735, 28.897470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612650, 34.008625, 29.036499>,  <26.867485, 33.321327, 28.792110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612650, 34.008625, 29.036499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.359085, 33.724995, 29.160027>,  <26.206945, 33.554817, 29.234142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.359085, 33.724995, 29.160027>,  <26.612650, 34.008625, 29.036499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359085, 33.724995, 29.160027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110847, 0.311876, 0.943635,
		-0.765420, 0.632414, -0.119104,
		-0.633913, -0.709074, 0.308817,
		26.168911, 33.512272, 29.252672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171926, 34.343750, 29.392334>,  <26.612650, 34.008625, 29.036499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171926, 34.343750, 29.392334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.128353, 33.964066, 29.510405>,  <26.102209, 33.736256, 29.581247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.128353, 33.964066, 29.510405>,  <26.171926, 34.343750, 29.392334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128353, 33.964066, 29.510405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012088, 0.298186, 0.954431,
		-0.993976, 0.100401, -0.043956,
		-0.108933, -0.949213, 0.295176,
		26.095673, 33.679302, 29.598957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637184, 34.350960, 29.988068>,  <26.171926, 34.343750, 29.392334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637184, 34.350960, 29.988068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.806829, 33.992287, 30.038799>,  <25.908617, 33.777084, 30.069239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.806829, 33.992287, 30.038799>,  <25.637184, 34.350960, 29.988068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806829, 33.992287, 30.038799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169851, 0.216323, 0.961434,
		-0.889538, -0.386215, 0.244048,
		0.424113, -0.896684, 0.126829,
		25.934063, 33.723282, 30.076847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351851, 34.172062, 30.682531>,  <25.637184, 34.350960, 29.988068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.351851, 34.172062, 30.682531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.667797, 33.937561, 30.610510>,  <25.857365, 33.796860, 30.567297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.667797, 33.937561, 30.610510>,  <25.351851, 34.172062, 30.682531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667797, 33.937561, 30.610510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336202, 0.168386, 0.926614,
		-0.512912, -0.792436, 0.330102,
		0.789867, -0.586253, -0.180052,
		25.904757, 33.761684, 30.556494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455278, 33.690174, 31.301998>,  <25.351851, 34.172062, 30.682531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455278, 33.690174, 31.301998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.810762, 33.695129, 31.118677>,  <26.024054, 33.698101, 31.008684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.810762, 33.695129, 31.118677>,  <25.455278, 33.690174, 31.301998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810762, 33.695129, 31.118677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457185, 0.050818, 0.887919,
		0.034280, -0.998631, 0.039503,
		0.888711, 0.012378, -0.458301,
		26.077375, 33.698845, 30.981186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790808, 33.119495, 31.564594>,  <25.455278, 33.690174, 31.301998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790808, 33.119495, 31.564594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.052107, 33.380955, 31.411751>,  <26.208887, 33.537830, 31.320044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.052107, 33.380955, 31.411751>,  <25.790808, 33.119495, 31.564594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052107, 33.380955, 31.411751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502429, 0.003316, 0.864612,
		0.566421, -0.756789, -0.326247,
		0.653248, 0.653650, -0.382111,
		26.248081, 33.577049, 31.297117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511604, 32.948799, 31.872063>,  <25.790808, 33.119495, 31.564594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511604, 32.948799, 31.872063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.551401, 33.315491, 31.717293>,  <26.575279, 33.535507, 31.624430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.551401, 33.315491, 31.717293>,  <26.511604, 32.948799, 31.872063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551401, 33.315491, 31.717293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478468, 0.296874, 0.826399,
		0.872451, -0.267351, -0.409088,
		0.099490, 0.916728, -0.386927,
		26.581247, 33.590508, 31.601215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267994, 33.148823, 31.997330>,  <26.511604, 32.948799, 31.872063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267994, 33.148823, 31.997330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.069971, 33.484520, 31.907364>,  <26.951157, 33.685940, 31.853384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.069971, 33.484520, 31.907364>,  <27.267994, 33.148823, 31.997330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069971, 33.484520, 31.907364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423839, 0.459235, 0.780682,
		0.758472, 0.291154, -0.583052,
		-0.495057, 0.839245, -0.224915,
		26.921453, 33.736294, 31.839890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738310, 33.694668, 31.984993>,  <27.267994, 33.148823, 31.997330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738310, 33.694668, 31.984993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.382023, 33.871952, 32.025368>,  <27.168251, 33.978321, 32.049591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.382023, 33.871952, 32.025368>,  <27.738310, 33.694668, 31.984993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382023, 33.871952, 32.025368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349477, 0.525727, 0.775549,
		0.290664, 0.726071, -0.623166,
		-0.890719, 0.443207, 0.100935,
		27.114807, 34.004913, 32.055649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990456, 34.326038, 31.977489>,  <27.738310, 33.694668, 31.984993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990456, 34.326038, 31.977489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.621971, 34.340515, 32.132439>,  <27.400881, 34.349201, 32.225407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.621971, 34.340515, 32.132439>,  <27.990456, 34.326038, 31.977489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621971, 34.340515, 32.132439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260559, 0.796797, 0.545182,
		-0.288926, 0.603162, -0.743450,
		-0.921212, 0.036195, 0.387375,
		27.345608, 34.351376, 32.248650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642607, 35.112122, 32.040970>,  <27.990456, 34.326038, 31.977489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642607, 35.112122, 32.040970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.495951, 34.860046, 32.314739>,  <27.407957, 34.708801, 32.479000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.495951, 34.860046, 32.314739>,  <27.642607, 35.112122, 32.040970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495951, 34.860046, 32.314739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302849, 0.614745, 0.728265,
		-0.879691, 0.474289, -0.034538,
		-0.366640, -0.630189, 0.684424,
		27.385958, 34.670990, 32.520065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440214, 34.938793, 31.994396>,  <27.642607, 35.112122, 32.040970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440214, 34.938793, 31.994396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.742105, 34.678307, 31.962633>,  <28.923241, 34.522015, 31.943575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.742105, 34.678307, 31.962633>,  <28.440214, 34.938793, 31.994396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742105, 34.678307, 31.962633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190772, -0.102044, -0.976316,
		0.627690, 0.752000, -0.201249,
		0.754726, -0.651216, -0.079408,
		28.968523, 34.482941, 31.938810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030090, 35.162872, 31.500547>,  <28.440214, 34.938793, 31.994396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030090, 35.162872, 31.500547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.986122, 34.765789, 31.520330>,  <28.959742, 34.527538, 31.532200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.986122, 34.765789, 31.520330>,  <29.030090, 35.162872, 31.500547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986122, 34.765789, 31.520330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115554, -0.036660, -0.992625,
		0.987200, -0.114827, -0.110682,
		-0.109922, -0.992709, 0.049460,
		28.953146, 34.467976, 31.535168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274822, 35.053848, 30.939253>,  <29.030090, 35.162872, 31.500547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274822, 35.053848, 30.939253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.109425, 34.705845, 31.046661>,  <29.010185, 34.497044, 31.111107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.109425, 34.705845, 31.046661>,  <29.274822, 35.053848, 30.939253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109425, 34.705845, 31.046661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159700, -0.221044, -0.962099,
		0.896391, -0.440707, -0.047540,
		-0.413495, -0.870010, 0.268523,
		28.985376, 34.444843, 31.127218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699991, 34.537506, 30.640860>,  <29.274822, 35.053848, 30.939253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699991, 34.537506, 30.640860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345278, 34.370243, 30.719612>,  <29.132450, 34.269886, 30.766865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345278, 34.370243, 30.719612>,  <29.699991, 34.537506, 30.640860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345278, 34.370243, 30.719612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014442, -0.400706, -0.916093,
		0.461960, -0.815219, 0.349300,
		-0.886783, -0.418154, 0.196883,
		29.079243, 34.244797, 30.778677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801086, 33.896633, 30.438046>,  <29.699991, 34.537506, 30.640860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801086, 33.896633, 30.438046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404701, 33.945110, 30.415066>,  <29.166870, 33.974197, 30.401278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404701, 33.945110, 30.415066>,  <29.801086, 33.896633, 30.438046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404701, 33.945110, 30.415066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009098, -0.366629, -0.930323,
		-0.133808, -0.922440, 0.362214,
		-0.990966, 0.121190, -0.057450,
		29.107412, 33.981468, 30.397831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541107, 33.351208, 30.011518>,  <29.801086, 33.896633, 30.438046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541107, 33.351208, 30.011518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252872, 33.628471, 30.018230>,  <29.079931, 33.794830, 30.022257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252872, 33.628471, 30.018230>,  <29.541107, 33.351208, 30.011518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252872, 33.628471, 30.018230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180050, -0.163695, -0.969941,
		-0.669578, -0.701949, 0.242761,
		-0.720588, 0.693160, 0.016780,
		29.036695, 33.836418, 30.023264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960752, 33.073559, 29.694048>,  <29.541107, 33.351208, 30.011518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960752, 33.073559, 29.694048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.914049, 33.467972, 29.646528>,  <28.886026, 33.704620, 29.618017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.914049, 33.467972, 29.646528>,  <28.960752, 33.073559, 29.694048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914049, 33.467972, 29.646528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177689, -0.138427, -0.974302,
		-0.977136, -0.092650, 0.191369,
		-0.116760, 0.986029, -0.118799,
		28.879021, 33.763783, 29.610889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367901, 33.067730, 29.197298>,  <28.960752, 33.073559, 29.694048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367901, 33.067730, 29.197298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.516712, 33.438908, 29.206310>,  <28.605999, 33.661613, 29.211718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.516712, 33.438908, 29.206310>,  <28.367901, 33.067730, 29.197298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516712, 33.438908, 29.206310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228316, 0.115008, -0.966770,
		-0.899704, 0.354520, 0.254651,
		0.372027, 0.927949, 0.022530,
		28.628321, 33.717293, 29.213070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777588, 33.634804, 29.165279>,  <28.367901, 33.067730, 29.197298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777588, 33.634804, 29.165279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.118498, 33.805923, 29.044868>,  <28.323044, 33.908596, 28.972622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.118498, 33.805923, 29.044868>,  <27.777588, 33.634804, 29.165279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118498, 33.805923, 29.044868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318246, -0.032663, -0.947445,
		-0.415145, 0.903285, 0.108306,
		0.852276, 0.427795, -0.301027,
		28.374180, 33.934261, 28.954561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544109, 34.053947, 28.688971>,  <27.777588, 33.634804, 29.165279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544109, 34.053947, 28.688971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.931299, 34.015678, 28.596132>,  <28.163614, 33.992718, 28.540430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.931299, 34.015678, 28.596132>,  <27.544109, 34.053947, 28.688971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931299, 34.015678, 28.596132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245373, -0.165239, -0.955242,
		0.053036, 0.981602, -0.183422,
		0.967977, -0.095669, -0.232095,
		28.221693, 33.986977, 28.526505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718668, 34.538548, 28.167862>,  <27.544109, 34.053947, 28.688971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718668, 34.538548, 28.167862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.988966, 34.247051, 28.123491>,  <28.151144, 34.072155, 28.096869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.988966, 34.247051, 28.123491>,  <27.718668, 34.538548, 28.167862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988966, 34.247051, 28.123491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205509, -0.041731, -0.977765,
		0.707909, 0.683516, -0.177962,
		0.675745, -0.728742, -0.110927,
		28.191689, 34.028427, 28.090214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197851, 34.773239, 27.539179>,  <27.718668, 34.538548, 28.167862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197851, 34.773239, 27.539179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.237072, 34.379265, 27.596142>,  <28.260605, 34.142879, 27.630320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.237072, 34.379265, 27.596142>,  <28.197851, 34.773239, 27.539179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237072, 34.379265, 27.596142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087796, -0.133979, -0.987087,
		0.991301, 0.109290, 0.073336,
		0.098053, -0.984939, 0.142408,
		28.266487, 34.083782, 27.638865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663439, 34.657509, 27.140676>,  <28.197851, 34.773239, 27.539179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663439, 34.657509, 27.140676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.512136, 34.292931, 27.205410>,  <28.421354, 34.074184, 27.244249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.512136, 34.292931, 27.205410>,  <28.663439, 34.657509, 27.140676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512136, 34.292931, 27.205410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130426, -0.120607, -0.984095,
		0.916467, -0.393348, -0.073255,
		-0.378256, -0.911445, 0.161835,
		28.398659, 34.019497, 27.253960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043177, 34.348103, 26.742270>,  <28.663439, 34.657509, 27.140676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043177, 34.348103, 26.742270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.726004, 34.112953, 26.806347>,  <28.535700, 33.971863, 26.844793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.726004, 34.112953, 26.806347>,  <29.043177, 34.348103, 26.742270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726004, 34.112953, 26.806347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084569, -0.154179, -0.984417,
		0.603411, -0.794125, 0.072538,
		-0.792934, -0.587873, 0.160192,
		28.488123, 33.936592, 26.854404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203772, 33.687668, 26.372114>,  <29.043177, 34.348103, 26.742270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203772, 33.687668, 26.372114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.804895, 33.701126, 26.398895>,  <28.565571, 33.709202, 26.414963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.804895, 33.701126, 26.398895>,  <29.203772, 33.687668, 26.372114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804895, 33.701126, 26.398895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071929, -0.179525, -0.981120,
		-0.020992, -0.983178, 0.181441,
		-0.997189, 0.033647, 0.066951,
		28.505739, 33.711220, 26.418980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018780, 33.102322, 25.969467>,  <29.203772, 33.687668, 26.372114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018780, 33.102322, 25.969467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668764, 33.289158, 26.020275>,  <28.458754, 33.401260, 26.050760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668764, 33.289158, 26.020275>,  <29.018780, 33.102322, 25.969467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668764, 33.289158, 26.020275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260714, -0.233697, -0.936704,
		-0.407839, -0.852769, 0.326271,
		-0.875040, 0.467088, 0.127018,
		28.406252, 33.429283, 26.058380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452698, 32.564938, 25.947590>,  <29.018780, 33.102322, 25.969467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452698, 32.564938, 25.947590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.327271, 32.934467, 25.859758>,  <28.252014, 33.156185, 25.807058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.327271, 32.934467, 25.859758>,  <28.452698, 32.564938, 25.947590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327271, 32.934467, 25.859758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371830, -0.332235, -0.866811,
		-0.873738, -0.190158, 0.447685,
		-0.313568, 0.923829, -0.219580,
		28.233200, 33.211617, 25.793884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822264, 32.495316, 25.738623>,  <28.452698, 32.564938, 25.947590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822264, 32.495316, 25.738623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924593, 32.859837, 25.609575>,  <27.985991, 33.078548, 25.532146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924593, 32.859837, 25.609575>,  <27.822264, 32.495316, 25.738623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924593, 32.859837, 25.609575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367355, -0.217048, -0.904401,
		-0.894206, 0.349884, 0.279245,
		0.255825, 0.911302, -0.322617,
		28.001341, 33.133228, 25.512791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212803, 32.797810, 25.426596>,  <27.822264, 32.495316, 25.738623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212803, 32.797810, 25.426596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.512177, 33.012268, 25.270447>,  <27.691801, 33.140945, 25.176758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.512177, 33.012268, 25.270447>,  <27.212803, 32.797810, 25.426596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512177, 33.012268, 25.270447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314850, -0.230816, -0.920648,
		-0.583710, 0.811953, -0.003944,
		0.748433, 0.536150, -0.390373,
		27.736706, 33.173115, 25.153336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895891, 32.968746, 24.938494>,  <27.212803, 32.797810, 25.426596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895891, 32.968746, 24.938494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.279867, 33.029869, 24.844542>,  <27.510252, 33.066544, 24.788170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.279867, 33.029869, 24.844542>,  <26.895891, 32.968746, 24.938494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279867, 33.029869, 24.844542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168883, -0.353361, -0.920117,
		-0.223601, 0.922922, -0.313397,
		0.959938, 0.152811, -0.234878,
		27.567848, 33.075714, 24.774078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892143, 33.213356, 24.206295>,  <26.895891, 32.968746, 24.938494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892143, 33.213356, 24.206295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259552, 33.084133, 24.297466>,  <27.479998, 33.006599, 24.352169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259552, 33.084133, 24.297466>,  <26.892143, 33.213356, 24.206295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259552, 33.084133, 24.297466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105352, -0.355653, -0.928661,
		0.381077, 0.877008, -0.292639,
		0.918521, -0.323061, 0.227926,
		27.535109, 32.987213, 24.365845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289013, 33.414707, 23.632259>,  <26.892143, 33.213356, 24.206295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289013, 33.414707, 23.632259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488218, 33.127205, 23.826323>,  <27.607742, 32.954704, 23.942760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488218, 33.127205, 23.826323>,  <27.289013, 33.414707, 23.632259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488218, 33.127205, 23.826323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078650, -0.519730, -0.850703,
		0.863595, 0.461820, -0.202303,
		0.498014, -0.718751, 0.485158,
		27.637623, 32.911579, 23.971870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.327969, 32.751801, 45.158855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.941383, 32.796860, 45.066540>,  <36.709431, 32.823895, 45.011150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.941383, 32.796860, 45.066540>,  <37.327969, 32.751801, 45.158855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941383, 32.796860, 45.066540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127207, 0.570689, 0.811254,
		0.223092, 0.813403, -0.537220,
		-0.966462, 0.112647, -0.230787,
		36.651443, 32.830654, 44.997303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192818, 33.510509, 45.297409>,  <37.327969, 32.751801, 45.158855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192818, 33.510509, 45.297409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.840748, 33.320705, 45.292694>,  <36.629505, 33.206825, 45.289864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.840748, 33.320705, 45.292694>,  <37.192818, 33.510509, 45.297409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840748, 33.320705, 45.292694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307751, 0.551590, 0.775266,
		-0.361367, 0.685996, -0.631524,
		-0.880172, -0.474509, -0.011790,
		36.576694, 33.178352, 45.289158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579964, 34.076511, 45.515137>,  <37.192818, 33.510509, 45.297409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579964, 34.076511, 45.515137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.406025, 33.717045, 45.538120>,  <36.301662, 33.501366, 45.551910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.406025, 33.717045, 45.538120>,  <36.579964, 34.076511, 45.515137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406025, 33.717045, 45.538120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535377, 0.309310, 0.785939,
		-0.724072, 0.311001, -0.615629,
		-0.434848, -0.898669, 0.057460,
		36.275570, 33.447445, 45.555359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767788, 34.121761, 45.588482>,  <36.579964, 34.076511, 45.515137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767788, 34.121761, 45.588482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841618, 33.752613, 45.723686>,  <35.885914, 33.531124, 45.804810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841618, 33.752613, 45.723686>,  <35.767788, 34.121761, 45.588482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841618, 33.752613, 45.723686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462680, 0.221833, 0.858322,
		-0.867099, -0.314809, -0.386049,
		0.184569, -0.922868, 0.338007,
		35.896988, 33.475754, 45.825089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084213, 33.790325, 45.855141>,  <35.767788, 34.121761, 45.588482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084213, 33.790325, 45.855141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407883, 33.641903, 46.037376>,  <35.602085, 33.552849, 46.146717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407883, 33.641903, 46.037376>,  <35.084213, 33.790325, 45.855141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407883, 33.641903, 46.037376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426522, 0.162369, 0.889784,
		-0.404133, -0.914305, -0.026880,
		0.809169, -0.371056, 0.455590,
		35.650635, 33.530586, 46.174053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797775, 33.327572, 46.376930>,  <35.084213, 33.790325, 45.855141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797775, 33.327572, 46.376930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.177376, 33.384380, 46.489525>,  <35.405136, 33.418465, 46.557083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.177376, 33.384380, 46.489525>,  <34.797775, 33.327572, 46.376930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177376, 33.384380, 46.489525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304096, 0.176551, 0.936139,
		0.083251, -0.973992, 0.210733,
		0.948997, 0.142017, 0.281489,
		35.462074, 33.426987, 46.573971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906174, 32.957199, 46.946220>,  <34.797775, 33.327572, 46.376930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906174, 32.957199, 46.946220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212234, 33.211010, 46.989887>,  <35.395870, 33.363297, 47.016087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212234, 33.211010, 46.989887>,  <34.906174, 32.957199, 46.946220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212234, 33.211010, 46.989887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228574, 0.109196, 0.967383,
		0.601908, -0.765150, 0.228588,
		0.765154, 0.634525, 0.109167,
		35.441780, 33.401367, 47.022636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344063, 32.721455, 47.476776>,  <34.906174, 32.957199, 46.946220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344063, 32.721455, 47.476776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398598, 33.117233, 47.457150>,  <35.431320, 33.354702, 47.445374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398598, 33.117233, 47.457150>,  <35.344063, 32.721455, 47.476776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398598, 33.117233, 47.457150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096115, 0.062510, 0.993405,
		0.985989, -0.130720, 0.103623,
		0.136336, 0.989447, -0.049070,
		35.439499, 33.414066, 47.442429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925148, 32.751827, 47.944622>,  <35.344063, 32.721455, 47.476776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925148, 32.751827, 47.944622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.700253, 33.076729, 47.882492>,  <35.565315, 33.271671, 47.845215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.700253, 33.076729, 47.882492>,  <35.925148, 32.751827, 47.944622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700253, 33.076729, 47.882492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253706, 0.009345, 0.967236,
		0.787093, 0.583228, 0.200820,
		-0.562243, 0.812254, -0.155324,
		35.531578, 33.320404, 47.835896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839226, 33.125858, 48.583237>,  <35.925148, 32.751827, 47.944622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839226, 33.125858, 48.583237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540932, 33.312599, 48.393112>,  <35.361954, 33.424644, 48.279037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540932, 33.312599, 48.393112>,  <35.839226, 33.125858, 48.583237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540932, 33.312599, 48.393112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381873, 0.285078, 0.879149,
		0.545936, 0.837124, -0.034314,
		-0.745739, 0.466855, -0.475310,
		35.317211, 33.452656, 48.250519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885601, 33.741989, 48.820553>,  <35.839226, 33.125858, 48.583237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885601, 33.741989, 48.820553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511902, 33.666691, 48.699398>,  <35.287682, 33.621513, 48.626705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511902, 33.666691, 48.699398>,  <35.885601, 33.741989, 48.820553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511902, 33.666691, 48.699398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350611, 0.329630, 0.876593,
		-0.065176, 0.925153, -0.373958,
		-0.934250, -0.188247, -0.302885,
		35.231628, 33.610218, 48.608532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550827, 34.097450, 49.284878>,  <35.885601, 33.741989, 48.820553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550827, 34.097450, 49.284878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250183, 33.903625, 49.105865>,  <35.069798, 33.787331, 48.998459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250183, 33.903625, 49.105865>,  <35.550827, 34.097450, 49.284878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250183, 33.903625, 49.105865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524771, 0.028227, 0.850775,
		-0.399618, 0.874304, -0.275498,
		-0.751612, -0.484558, -0.447529,
		35.024700, 33.758259, 48.971607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571957, 34.865658, 49.176289>,  <35.550827, 34.097450, 49.284878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571957, 34.865658, 49.176289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736126, 35.213547, 49.066647>,  <35.834629, 35.422279, 49.000862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736126, 35.213547, 49.066647>,  <35.571957, 34.865658, 49.176289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736126, 35.213547, 49.066647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377407, 0.435643, 0.817178,
		0.830128, -0.231944, 0.507039,
		0.410427, 0.869723, -0.274102,
		35.859253, 35.474464, 48.984417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733860, 35.234173, 49.837574>,  <35.571957, 34.865658, 49.176289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733860, 35.234173, 49.837574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707382, 35.496239, 49.536541>,  <35.691494, 35.653477, 49.355919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707382, 35.496239, 49.536541>,  <35.733860, 35.234173, 49.837574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707382, 35.496239, 49.536541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337960, 0.694937, 0.634701,
		0.938830, 0.296358, 0.175417,
		-0.066195, 0.655160, -0.752584,
		35.687523, 35.692787, 49.310764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235020, 35.157272, 50.360554>,  <35.733860, 35.234173, 49.837574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235020, 35.157272, 50.360554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938126, 35.401783, 50.470413>,  <34.759991, 35.548489, 50.536327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938126, 35.401783, 50.470413>,  <35.235020, 35.157272, 50.360554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938126, 35.401783, 50.470413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211186, 0.175592, -0.961545,
		-0.635995, -0.771692, -0.001237,
		-0.742234, 0.611276, 0.274646,
		34.715454, 35.585167, 50.552807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605373, 34.921421, 49.986660>,  <35.235020, 35.157272, 50.360554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605373, 34.921421, 49.986660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524246, 35.294704, 50.105305>,  <34.475571, 35.518677, 50.176491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524246, 35.294704, 50.105305>,  <34.605373, 34.921421, 49.986660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524246, 35.294704, 50.105305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436502, 0.184987, -0.880480,
		-0.876545, -0.308049, 0.369831,
		-0.202817, 0.933212, 0.296614,
		34.463402, 35.574669, 50.194290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015701, 35.047977, 49.615643>,  <34.605373, 34.921421, 49.986660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015701, 35.047977, 49.615643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135937, 35.412502, 49.728176>,  <34.208076, 35.631218, 49.795696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135937, 35.412502, 49.728176>,  <34.015701, 35.047977, 49.615643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135937, 35.412502, 49.728176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426843, 0.392329, -0.814790,
		-0.852907, 0.124831, 0.506919,
		0.300590, 0.911315, 0.281337,
		34.226112, 35.685898, 49.812576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527672, 35.496651, 49.431423>,  <34.015701, 35.047977, 49.615643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527672, 35.496651, 49.431423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831615, 35.754414, 49.465721>,  <34.013981, 35.909073, 49.486298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831615, 35.754414, 49.465721>,  <33.527672, 35.496651, 49.431423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831615, 35.754414, 49.465721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161897, 0.315321, -0.935073,
		-0.629603, 0.696645, 0.343928,
		0.759861, 0.644406, 0.085742,
		34.059574, 35.947735, 49.491444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236000, 36.155602, 49.268036>,  <33.527672, 35.496651, 49.431423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236000, 36.155602, 49.268036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.633263, 36.169266, 49.223362>,  <33.871620, 36.177464, 49.196556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.633263, 36.169266, 49.223362>,  <33.236000, 36.155602, 49.268036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633263, 36.169266, 49.223362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115134, 0.447056, -0.887065,
		0.019631, 0.893853, 0.447929,
		0.993156, 0.034158, -0.111689,
		33.931210, 36.179512, 49.189854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396229, 36.848061, 48.939690>,  <33.236000, 36.155602, 49.268036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396229, 36.848061, 48.939690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694923, 36.595898, 48.854858>,  <33.874138, 36.444599, 48.803959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694923, 36.595898, 48.854858>,  <33.396229, 36.848061, 48.939690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694923, 36.595898, 48.854858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009387, 0.308828, -0.951072,
		0.665059, 0.712187, 0.224694,
		0.746732, -0.630409, -0.212074,
		33.918941, 36.406776, 48.791237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977097, 37.239399, 48.584656>,  <33.396229, 36.848061, 48.939690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977097, 37.239399, 48.584656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003197, 36.853645, 48.482128>,  <34.018856, 36.622192, 48.420612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003197, 36.853645, 48.482128>,  <33.977097, 37.239399, 48.584656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003197, 36.853645, 48.482128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019408, 0.255595, -0.966589,
		0.997680, 0.068048, -0.002038,
		0.065254, -0.964386, -0.256323,
		34.022774, 36.564331, 48.405231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464634, 37.311020, 48.047890>,  <33.977097, 37.239399, 48.584656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464634, 37.311020, 48.047890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281487, 36.956253, 48.023449>,  <34.171597, 36.743393, 48.008785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281487, 36.956253, 48.023449>,  <34.464634, 37.311020, 48.047890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281487, 36.956253, 48.023449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054815, 0.040437, -0.997677,
		0.887327, -0.460157, 0.030101,
		-0.457871, -0.886916, -0.061104,
		34.144127, 36.690178, 48.005119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768417, 36.980465, 47.520386>,  <34.464634, 37.311020, 48.047890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768417, 36.980465, 47.520386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447994, 36.741734, 47.538677>,  <34.255741, 36.598495, 47.549652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447994, 36.741734, 47.538677>,  <34.768417, 36.980465, 47.520386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447994, 36.741734, 47.538677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120355, -0.235432, -0.964410,
		0.586358, -0.767048, 0.260427,
		-0.801061, -0.596833, 0.045729,
		34.207676, 36.562683, 47.552395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930336, 36.283779, 46.994186>,  <34.768417, 36.980465, 47.520386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930336, 36.283779, 46.994186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541645, 36.340195, 47.069927>,  <34.308430, 36.374043, 47.115372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541645, 36.340195, 47.069927>,  <34.930336, 36.283779, 46.994186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541645, 36.340195, 47.069927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230654, -0.395688, -0.888948,
		-0.050451, -0.907490, 0.417032,
		-0.971727, 0.141039, 0.189354,
		34.250126, 36.382507, 47.126732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513401, 35.662243, 47.021969>,  <34.930336, 36.283779, 46.994186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513401, 35.662243, 47.021969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310936, 35.982479, 46.893684>,  <34.189457, 36.174622, 46.816715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310936, 35.982479, 46.893684>,  <34.513401, 35.662243, 47.021969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310936, 35.982479, 46.893684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017258, -0.381195, -0.924334,
		-0.862267, -0.462325, 0.206762,
		-0.506160, 0.800591, -0.320713,
		34.159088, 36.222656, 46.797470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302700, 35.425549, 46.382645>,  <34.513401, 35.662243, 47.021969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302700, 35.425549, 46.382645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.160370, 35.797768, 46.348095>,  <34.074970, 36.021099, 46.327366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.160370, 35.797768, 46.348095>,  <34.302700, 35.425549, 46.382645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160370, 35.797768, 46.348095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011974, -0.087872, -0.996060,
		-0.934475, -0.355459, 0.020125,
		-0.355827, 0.930552, -0.086371,
		34.053623, 36.076935, 46.322186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668434, 35.368271, 45.998573>,  <34.302700, 35.425549, 46.382645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668434, 35.368271, 45.998573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814800, 35.738567, 45.960396>,  <33.902618, 35.960747, 45.937489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814800, 35.738567, 45.960396>,  <33.668434, 35.368271, 45.998573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814800, 35.738567, 45.960396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017892, -0.095543, -0.995265,
		-0.930478, 0.365887, -0.018397,
		0.365912, 0.925742, -0.095447,
		33.924572, 36.016289, 45.931763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607258, 35.512646, 45.323288>,  <33.668434, 35.368271, 45.998573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607258, 35.512646, 45.323288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839687, 35.829121, 45.399590>,  <33.979145, 36.019005, 45.445370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839687, 35.829121, 45.399590>,  <33.607258, 35.512646, 45.323288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839687, 35.829121, 45.399590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204171, 0.085177, -0.975223,
		-0.787828, 0.605619, -0.112042,
		0.581070, 0.791183, 0.190755,
		34.014008, 36.066475, 45.456818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071186, 36.017578, 45.262222>,  <33.607258, 35.512646, 45.323288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071186, 36.017578, 45.262222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712296, 36.099255, 45.105614>,  <32.496960, 36.148258, 45.011650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712296, 36.099255, 45.105614>,  <33.071186, 36.017578, 45.262222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712296, 36.099255, 45.105614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389330, 0.052530, 0.919599,
		0.208337, 0.977521, 0.032366,
		-0.897228, 0.204188, -0.391522,
		32.443127, 36.160511, 44.988155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872173, 36.647038, 45.587120>,  <33.071186, 36.017578, 45.262222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872173, 36.647038, 45.587120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527889, 36.488960, 45.458748>,  <32.321320, 36.394115, 45.381725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527889, 36.488960, 45.458748>,  <32.872173, 36.647038, 45.587120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527889, 36.488960, 45.458748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316354, -0.078719, 0.945369,
		-0.398863, 0.915221, -0.057265,
		-0.860714, -0.395189, -0.320932,
		32.269676, 36.370403, 45.362469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363823, 37.094780, 45.872913>,  <32.872173, 36.647038, 45.587120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363823, 37.094780, 45.872913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188873, 36.743832, 45.793991>,  <32.083904, 36.533264, 45.746635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188873, 36.743832, 45.793991>,  <32.363823, 37.094780, 45.872913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188873, 36.743832, 45.793991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416412, 0.003123, 0.909170,
		-0.797061, 0.479808, -0.366713,
		-0.437373, -0.877368, -0.197309,
		32.057663, 36.480621, 45.734798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600843, 37.197651, 46.063225>,  <32.363823, 37.094780, 45.872913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600843, 37.197651, 46.063225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.654659, 36.801811, 46.042824>,  <31.686949, 36.564308, 46.030582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.654659, 36.801811, 46.042824>,  <31.600843, 37.197651, 46.063225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654659, 36.801811, 46.042824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341145, -0.094583, 0.935240,
		-0.930333, -0.108427, -0.350320,
		0.134539, -0.989595, -0.051004,
		31.695021, 36.504932, 46.027523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959764, 36.902435, 46.371849>,  <31.600843, 37.197651, 46.063225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959764, 36.902435, 46.371849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.200937, 36.583347, 46.367542>,  <31.345642, 36.391895, 46.364960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.200937, 36.583347, 46.367542>,  <30.959764, 36.902435, 46.371849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200937, 36.583347, 46.367542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387537, -0.304653, 0.870059,
		-0.697342, -0.520415, -0.492831,
		0.602933, -0.797719, -0.010767,
		31.381817, 36.344032, 46.364311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538092, 36.334656, 46.564342>,  <30.959764, 36.902435, 46.371849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538092, 36.334656, 46.564342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918049, 36.250019, 46.656368>,  <31.146023, 36.199238, 46.711586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918049, 36.250019, 46.656368>,  <30.538092, 36.334656, 46.564342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918049, 36.250019, 46.656368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306109, -0.480797, 0.821664,
		-0.063240, -0.850919, -0.521476,
		0.949894, -0.211591, 0.230068,
		31.203016, 36.186543, 46.725388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555595, 35.671669, 46.897781>,  <30.538092, 36.334656, 46.564342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555595, 35.671669, 46.897781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.895464, 35.840263, 47.024532>,  <31.099384, 35.941418, 47.100582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.895464, 35.840263, 47.024532>,  <30.555595, 35.671669, 46.897781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895464, 35.840263, 47.024532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203932, -0.291519, 0.934574,
		0.486282, -0.858702, -0.161742,
		0.849671, 0.421482, 0.316877,
		31.150366, 35.966709, 47.119595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582273, 35.005173, 46.512310>,  <30.555595, 35.671669, 46.897781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582273, 35.005173, 46.512310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.463186, 34.623363, 46.518700>,  <30.391733, 34.394279, 46.522533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.463186, 34.623363, 46.518700>,  <30.582273, 35.005173, 46.512310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463186, 34.623363, 46.518700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013022, -0.012670, -0.999835,
		0.954564, -0.297879, -0.008657,
		-0.297720, -0.954519, 0.015973,
		30.373871, 34.337009, 46.523491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034485, 34.546593, 46.166706>,  <30.582273, 35.005173, 46.512310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034485, 34.546593, 46.166706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.664682, 34.397430, 46.135128>,  <30.442801, 34.307934, 46.116180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.664682, 34.397430, 46.135128>,  <31.034485, 34.546593, 46.166706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664682, 34.397430, 46.135128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076167, 0.022194, -0.996848,
		0.373485, -0.927603, 0.007885,
		-0.924504, -0.372908, -0.078942,
		30.387331, 34.285557, 46.111446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186678, 33.918472, 45.732380>,  <31.034485, 34.546593, 46.166706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186678, 33.918472, 45.732380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793434, 33.985119, 45.702095>,  <30.557487, 34.025105, 45.683926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793434, 33.985119, 45.702095>,  <31.186678, 33.918472, 45.732380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793434, 33.985119, 45.702095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034172, -0.239311, -0.970341,
		-0.179789, -0.956541, 0.229576,
		-0.983111, 0.166611, -0.075713,
		30.498501, 34.035103, 45.679382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912306, 33.348015, 45.373207>,  <31.186678, 33.918472, 45.732380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912306, 33.348015, 45.373207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.620449, 33.618916, 45.335346>,  <30.445335, 33.781456, 45.312630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.620449, 33.618916, 45.335346>,  <30.912306, 33.348015, 45.373207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620449, 33.618916, 45.335346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016650, -0.155972, -0.987621,
		-0.683629, -0.719032, 0.125080,
		-0.729640, 0.677249, -0.094655,
		30.401558, 33.822090, 45.306950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424959, 33.036251, 44.960918>,  <30.912306, 33.348015, 45.373207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424959, 33.036251, 44.960918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.353409, 33.427265, 44.916317>,  <30.310478, 33.661873, 44.889557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.353409, 33.427265, 44.916317>,  <30.424959, 33.036251, 44.960918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353409, 33.427265, 44.916317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136977, -0.136973, -0.981058,
		-0.974290, -0.160212, 0.158401,
		-0.178874, 0.977533, -0.111506,
		30.299746, 33.720524, 44.882866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883862, 33.085548, 44.481419>,  <30.424959, 33.036251, 44.960918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883862, 33.085548, 44.481419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.053993, 33.447060, 44.462315>,  <30.156073, 33.663967, 44.450851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.053993, 33.447060, 44.462315>,  <29.883862, 33.085548, 44.481419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053993, 33.447060, 44.462315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237085, 0.060336, -0.969613,
		-0.873433, 0.423729, 0.239935,
		0.425330, 0.903777, -0.047760,
		30.181593, 33.718193, 44.447987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440340, 33.465206, 44.078075>,  <29.883862, 33.085548, 44.481419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440340, 33.465206, 44.078075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.801722, 33.635952, 44.062275>,  <30.018551, 33.738400, 44.052795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.801722, 33.635952, 44.062275>,  <29.440340, 33.465206, 44.078075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801722, 33.635952, 44.062275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051557, 0.016716, -0.998530,
		-0.425574, 0.904163, 0.037110,
		0.903454, 0.426861, -0.039502,
		30.072758, 33.764011, 44.050423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.051899, 31.087019, 49.054375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.182720, 31.429165, 48.893684>,  <34.261215, 31.634453, 48.797268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.182720, 31.429165, 48.893684>,  <34.051899, 31.087019, 49.054375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182720, 31.429165, 48.893684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142735, -0.375518, -0.915758,
		-0.934164, 0.356844, -0.000724,
		0.327055, 0.855365, -0.401730,
		34.280838, 31.685774, 48.773167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656151, 31.239605, 48.538074>,  <34.051899, 31.087019, 49.054375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656151, 31.239605, 48.538074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.001400, 31.427338, 48.463509>,  <34.208549, 31.539978, 48.418770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.001400, 31.427338, 48.463509>,  <33.656151, 31.239605, 48.538074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001400, 31.427338, 48.463509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019114, -0.338518, -0.940766,
		-0.504638, 0.815557, -0.283210,
		0.863119, 0.469333, -0.186418,
		34.260334, 31.568138, 48.407585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648041, 31.547251, 47.873138>,  <33.656151, 31.239605, 48.538074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648041, 31.547251, 47.873138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.041153, 31.530027, 47.945015>,  <34.277020, 31.519693, 47.988140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.041153, 31.530027, 47.945015>,  <33.648041, 31.547251, 47.873138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041153, 31.530027, 47.945015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162063, -0.266300, -0.950168,
		0.088765, 0.962928, -0.254736,
		0.982780, -0.043058, 0.179693,
		34.335987, 31.517111, 47.998924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903954, 31.697952, 47.177658>,  <33.648041, 31.547251, 47.873138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903954, 31.697952, 47.177658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.191727, 31.514746, 47.386520>,  <34.364391, 31.404821, 47.511837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.191727, 31.514746, 47.386520>,  <33.903954, 31.697952, 47.177658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191727, 31.514746, 47.386520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289040, -0.486157, -0.824686,
		0.631567, 0.744227, -0.217371,
		0.719430, -0.458016, 0.522152,
		34.407555, 31.377340, 47.543167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432789, 31.733887, 46.809536>,  <33.903954, 31.697952, 47.177658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432789, 31.733887, 46.809536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.527935, 31.406494, 47.018726>,  <34.585022, 31.210058, 47.144241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.527935, 31.406494, 47.018726>,  <34.432789, 31.733887, 46.809536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527935, 31.406494, 47.018726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233588, -0.474427, -0.848738,
		0.942793, 0.324044, 0.078340,
		0.237862, -0.818483, 0.522979,
		34.599293, 31.160950, 47.175621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950665, 31.486813, 46.457043>,  <34.432789, 31.733887, 46.809536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950665, 31.486813, 46.457043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.824863, 31.176764, 46.676231>,  <34.749382, 30.990734, 46.807743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.824863, 31.176764, 46.676231>,  <34.950665, 31.486813, 46.457043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824863, 31.176764, 46.676231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149577, -0.610518, -0.777750,
		0.937397, -0.162643, 0.307952,
		-0.314506, -0.775123, 0.547970,
		34.730511, 30.944227, 46.840622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493439, 30.931784, 46.305920>,  <34.950665, 31.486813, 46.457043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493439, 30.931784, 46.305920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.182114, 30.729982, 46.455425>,  <34.995319, 30.608902, 46.545128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.182114, 30.729982, 46.455425>,  <35.493439, 30.931784, 46.305920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182114, 30.729982, 46.455425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043156, -0.636869, -0.769763,
		0.626389, -0.582988, 0.517457,
		-0.778315, -0.504503, 0.373768,
		34.948620, 30.578632, 46.567554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611408, 30.217266, 46.420292>,  <35.493439, 30.931784, 46.305920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611408, 30.217266, 46.420292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.211800, 30.213593, 46.403027>,  <34.972034, 30.211388, 46.392666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.211800, 30.213593, 46.403027>,  <35.611408, 30.217266, 46.420292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211800, 30.213593, 46.403027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041010, -0.554509, -0.831167,
		-0.016301, -0.832127, 0.554345,
		-0.999026, -0.009185, -0.043164,
		34.912090, 30.210836, 46.390076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400253, 29.501938, 46.334515>,  <35.611408, 30.217266, 46.420292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400253, 29.501938, 46.334515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.120113, 29.757881, 46.207962>,  <34.952030, 29.911448, 46.132030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.120113, 29.757881, 46.207962>,  <35.400253, 29.501938, 46.334515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120113, 29.757881, 46.207962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038202, -0.476193, -0.878510,
		-0.712777, -0.603178, 0.357945,
		-0.700350, 0.639857, -0.316377,
		34.910007, 29.949839, 46.113049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082848, 29.004557, 45.819263>,  <35.400253, 29.501938, 46.334515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082848, 29.004557, 45.819263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.932693, 29.367319, 45.742737>,  <34.842602, 29.584976, 45.696819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.932693, 29.367319, 45.742737>,  <35.082848, 29.004557, 45.819263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932693, 29.367319, 45.742737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247115, -0.296873, -0.922388,
		-0.893318, -0.298976, 0.335553,
		-0.375389, 0.906906, -0.191321,
		34.820076, 29.639391, 45.685341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377659, 28.894489, 45.464531>,  <35.082848, 29.004557, 45.819263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377659, 28.894489, 45.464531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534103, 29.250488, 45.370777>,  <34.627972, 29.464088, 45.314526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534103, 29.250488, 45.370777>,  <34.377659, 28.894489, 45.464531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534103, 29.250488, 45.370777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270487, -0.132269, -0.953594,
		-0.879699, 0.436359, 0.189001,
		0.391110, 0.889998, -0.234386,
		34.651436, 29.517488, 45.300461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833313, 29.287001, 45.041428>,  <34.377659, 28.894489, 45.464531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833313, 29.287001, 45.041428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.188683, 29.450228, 44.957344>,  <34.401905, 29.548164, 44.906895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.188683, 29.450228, 44.957344>,  <33.833313, 29.287001, 45.041428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188683, 29.450228, 44.957344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235236, 0.011493, -0.971870,
		-0.394171, 0.912880, 0.106202,
		0.888422, 0.408066, -0.210212,
		34.455208, 29.572647, 44.894279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187748, 29.768223, 45.183399>,  <33.833313, 29.287001, 45.041428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187748, 29.768223, 45.183399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811958, 29.824726, 45.058540>,  <32.586483, 29.858629, 44.983624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811958, 29.824726, 45.058540>,  <33.187748, 29.768223, 45.183399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811958, 29.824726, 45.058540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278737, 0.214672, 0.936067,
		0.199238, 0.966417, -0.162305,
		-0.939473, 0.141260, -0.312148,
		32.530117, 29.867104, 44.964897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031178, 30.329973, 45.351616>,  <33.187748, 29.768223, 45.183399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031178, 30.329973, 45.351616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.689049, 30.127119, 45.309204>,  <32.483772, 30.005405, 45.283756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.689049, 30.127119, 45.309204>,  <33.031178, 30.329973, 45.351616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689049, 30.127119, 45.309204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260405, 0.243877, 0.934191,
		-0.447905, 0.826642, -0.340654,
		-0.855319, -0.507136, -0.106028,
		32.432453, 29.974977, 45.277397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587994, 30.803612, 45.466713>,  <33.031178, 30.329973, 45.351616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587994, 30.803612, 45.466713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.328995, 30.499815, 45.491772>,  <32.173595, 30.317537, 45.506805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.328995, 30.499815, 45.491772>,  <32.587994, 30.803612, 45.466713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328995, 30.499815, 45.491772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362381, 0.379168, 0.851418,
		-0.670396, 0.528588, -0.520734,
		-0.647495, -0.759491, 0.062642,
		32.134747, 30.271967, 45.510563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906349, 31.102434, 45.511826>,  <32.587994, 30.803612, 45.466713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906349, 31.102434, 45.511826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.877792, 30.733013, 45.662533>,  <31.860659, 30.511360, 45.752956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.877792, 30.733013, 45.662533>,  <31.906349, 31.102434, 45.511826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877792, 30.733013, 45.662533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441695, 0.367951, 0.818241,
		-0.894320, -0.108001, -0.434197,
		-0.071392, -0.923552, 0.376769,
		31.856375, 30.455948, 45.775562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266405, 31.097044, 45.906494>,  <31.906349, 31.102434, 45.511826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266405, 31.097044, 45.906494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.464355, 30.785772, 46.061172>,  <31.583126, 30.599009, 46.153980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.464355, 30.785772, 46.061172>,  <31.266405, 31.097044, 45.906494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464355, 30.785772, 46.061172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323371, 0.248128, 0.913162,
		-0.806554, -0.576947, -0.128849,
		0.494875, -0.778180, 0.386696,
		31.612818, 30.552319, 46.177181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848902, 30.861870, 46.407406>,  <31.266405, 31.097044, 45.906494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848902, 30.861870, 46.407406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.207117, 30.699814, 46.481022>,  <31.422047, 30.602579, 46.525192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.207117, 30.699814, 46.481022>,  <30.848902, 30.861870, 46.407406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207117, 30.699814, 46.481022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188350, 0.029582, 0.981656,
		-0.403155, -0.913775, -0.049817,
		0.895539, -0.405142, 0.184036,
		31.475779, 30.578272, 46.536232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648468, 30.328171, 46.896896>,  <30.848902, 30.861870, 46.407406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648468, 30.328171, 46.896896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.037054, 30.418512, 46.925873>,  <31.270205, 30.472717, 46.943260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.037054, 30.418512, 46.925873>,  <30.648468, 30.328171, 46.896896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037054, 30.418512, 46.925873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096968, 0.099437, 0.990308,
		0.216464, -0.969072, 0.118501,
		0.971463, 0.225857, 0.072444,
		31.328493, 30.486269, 46.947605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895451, 29.996466, 47.567871>,  <30.648468, 30.328171, 46.896896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895451, 29.996466, 47.567871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.163610, 30.286005, 47.502628>,  <31.324507, 30.459728, 47.463482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.163610, 30.286005, 47.502628>,  <30.895451, 29.996466, 47.567871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163610, 30.286005, 47.502628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062567, 0.274183, 0.959640,
		0.739357, -0.633138, 0.229102,
		0.670401, 0.723851, -0.163105,
		31.364731, 30.503160, 47.453697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381598, 29.992750, 48.139851>,  <30.895451, 29.996466, 47.567871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381598, 29.992750, 48.139851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.442453, 30.348417, 47.967232>,  <31.478966, 30.561817, 47.863659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.442453, 30.348417, 47.967232>,  <31.381598, 29.992750, 48.139851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442453, 30.348417, 47.967232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257633, 0.457215, 0.851223,
		0.954190, -0.018322, 0.298638,
		0.152138, 0.889168, -0.431550,
		31.488094, 30.615168, 47.837769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935436, 30.386259, 48.451279>,  <31.381598, 29.992750, 48.139851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935436, 30.386259, 48.451279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.707838, 30.685064, 48.313751>,  <31.571280, 30.864347, 48.231236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.707838, 30.685064, 48.313751>,  <31.935436, 30.386259, 48.451279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707838, 30.685064, 48.313751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163514, 0.306978, 0.937565,
		0.805919, 0.589692, -0.052522,
		-0.568997, 0.747013, -0.343822,
		31.537138, 30.909168, 48.210606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083393, 30.897408, 48.928604>,  <31.935436, 30.386259, 48.451279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083393, 30.897408, 48.928604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.769579, 31.060133, 48.741409>,  <31.581291, 31.157768, 48.629093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.769579, 31.060133, 48.741409>,  <32.083393, 30.897408, 48.928604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769579, 31.060133, 48.741409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223355, 0.518656, 0.825293,
		0.578465, 0.751996, -0.316038,
		-0.784532, 0.406814, -0.467987,
		31.534220, 31.182177, 48.601013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178085, 31.519815, 49.220341>,  <32.083393, 30.897408, 48.928604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178085, 31.519815, 49.220341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.809021, 31.523340, 49.066139>,  <31.587582, 31.525455, 48.973618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.809021, 31.523340, 49.066139>,  <32.178085, 31.519815, 49.220341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809021, 31.523340, 49.066139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325693, 0.517417, 0.791330,
		0.206442, 0.855688, -0.474531,
		-0.922662, 0.008813, -0.385508,
		31.532223, 31.525984, 48.950485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846043, 32.206413, 49.083210>,  <32.178085, 31.519815, 49.220341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846043, 32.206413, 49.083210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.543293, 31.957764, 49.163925>,  <31.361643, 31.808573, 49.212353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.543293, 31.957764, 49.163925>,  <31.846043, 32.206413, 49.083210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543293, 31.957764, 49.163925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297554, 0.602648, 0.740457,
		-0.581894, 0.500393, -0.641098,
		-0.756876, -0.621629, 0.201783,
		31.316231, 31.771275, 49.224461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424147, 32.706734, 49.198467>,  <31.846043, 32.206413, 49.083210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424147, 32.706734, 49.198467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.276985, 32.374084, 49.364861>,  <31.188688, 32.174496, 49.464695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.276985, 32.374084, 49.364861>,  <31.424147, 32.706734, 49.198467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276985, 32.374084, 49.364861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278657, 0.525405, 0.803928,
		-0.887128, 0.179852, -0.425038,
		-0.367905, -0.831627, 0.415984,
		31.166615, 32.124596, 49.489655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789289, 32.568111, 48.746365>,  <31.424147, 32.706734, 49.198467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789289, 32.568111, 48.746365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.554544, 32.842129, 48.919022>,  <30.413698, 33.006538, 49.022614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.554544, 32.842129, 48.919022>,  <30.789289, 32.568111, 48.746365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554544, 32.842129, 48.919022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390365, 0.227666, -0.892067,
		-0.709372, -0.692016, 0.133808,
		-0.586861, 0.685042, 0.431639,
		30.378487, 33.047642, 49.048512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063469, 32.469398, 48.578182>,  <30.789289, 32.568111, 48.746365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063469, 32.469398, 48.578182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.105276, 32.855907, 48.672333>,  <30.130362, 33.087811, 48.728825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.105276, 32.855907, 48.672333>,  <30.063469, 32.469398, 48.578182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105276, 32.855907, 48.672333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356170, 0.257342, -0.898286,
		-0.928557, 0.010055, 0.371053,
		0.104520, 0.966268, 0.235375,
		30.136633, 33.145786, 48.742947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562067, 32.754700, 48.242027>,  <30.063469, 32.469398, 48.578182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562067, 32.754700, 48.242027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.838781, 33.039425, 48.290619>,  <30.004810, 33.210258, 48.319775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.838781, 33.039425, 48.290619>,  <29.562067, 32.754700, 48.242027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838781, 33.039425, 48.290619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018530, 0.150680, -0.988409,
		-0.721865, 0.686018, 0.091049,
		0.691786, 0.711811, 0.121482,
		30.046318, 33.252968, 48.327065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221693, 33.389042, 47.978745>,  <29.562067, 32.754700, 48.242027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221693, 33.389042, 47.978745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.617970, 33.437160, 48.004223>,  <29.855736, 33.466030, 48.019512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.617970, 33.437160, 48.004223>,  <29.221693, 33.389042, 47.978745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617970, 33.437160, 48.004223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021763, 0.321951, -0.946506,
		-0.134370, 0.939082, 0.316337,
		0.990692, 0.120298, 0.063698,
		29.915176, 33.473251, 48.023331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386673, 34.096844, 47.929237>,  <29.221693, 33.389042, 47.978745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386673, 34.096844, 47.929237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.732464, 33.923840, 47.826775>,  <29.939938, 33.820038, 47.765297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.732464, 33.923840, 47.826775>,  <29.386673, 34.096844, 47.929237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732464, 33.923840, 47.826775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100400, 0.647890, -0.755088,
		0.492546, 0.627037, 0.603509,
		0.864476, -0.432508, -0.256161,
		29.991806, 33.794086, 47.749928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591837, 34.571110, 47.559414>,  <29.386673, 34.096844, 47.929237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591837, 34.571110, 47.559414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.830149, 34.267872, 47.453331>,  <29.973137, 34.085930, 47.389679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.830149, 34.267872, 47.453331>,  <29.591837, 34.571110, 47.559414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830149, 34.267872, 47.453331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057936, 0.369919, -0.927256,
		0.801055, 0.537076, 0.264312,
		0.595781, -0.758096, -0.265209,
		30.008883, 34.040443, 47.373768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100969, 34.940849, 47.207806>,  <29.591837, 34.571110, 47.559414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100969, 34.940849, 47.207806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.105389, 34.555286, 47.101406>,  <30.108040, 34.323948, 47.037567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.105389, 34.555286, 47.101406>,  <30.100969, 34.940849, 47.207806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105389, 34.555286, 47.101406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119791, 0.265379, -0.956674,
		0.992738, -0.021293, 0.118401,
		0.011050, -0.963909, -0.266002,
		30.108704, 34.266113, 47.021606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793638, 35.207497, 47.472034>,  <30.100969, 34.940849, 47.207806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793638, 35.207497, 47.472034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.024895, 35.527061, 47.538353>,  <31.163649, 35.718800, 47.578144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.024895, 35.527061, 47.538353>,  <30.793638, 35.207497, 47.472034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024895, 35.527061, 47.538353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091207, -0.265197, 0.959871,
		0.810824, -0.539819, -0.226188,
		0.578140, 0.798916, 0.165792,
		31.198338, 35.766735, 47.588089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470613, 34.951748, 47.853535>,  <30.793638, 35.207497, 47.472034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470613, 34.951748, 47.853535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.411343, 35.343231, 47.910358>,  <31.375780, 35.578121, 47.944454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.411343, 35.343231, 47.910358>,  <31.470613, 34.951748, 47.853535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411343, 35.343231, 47.910358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333521, -0.085779, 0.938832,
		0.931025, 0.186494, -0.313708,
		-0.148177, 0.978704, 0.142062,
		31.366890, 35.636841, 47.952976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946466, 35.110779, 48.365643>,  <31.470613, 34.951748, 47.853535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946466, 35.110779, 48.365643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.699669, 35.425465, 48.373615>,  <31.551590, 35.614277, 48.378399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.699669, 35.425465, 48.373615>,  <31.946466, 35.110779, 48.365643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699669, 35.425465, 48.373615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190322, 0.124588, 0.973784,
		0.763607, 0.604613, -0.226599,
		-0.616995, 0.786715, 0.019935,
		31.514570, 35.661480, 48.379597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275906, 35.685234, 48.619450>,  <31.946466, 35.110779, 48.365643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275906, 35.685234, 48.619450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.882992, 35.739075, 48.671593>,  <31.647243, 35.771381, 48.702881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.882992, 35.739075, 48.671593>,  <32.275906, 35.685234, 48.619450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882992, 35.739075, 48.671593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165497, 0.296939, 0.940445,
		0.087880, 0.945361, -0.313957,
		-0.982287, 0.134606, 0.130360,
		31.588306, 35.779457, 48.710701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133797, 36.387623, 48.906200>,  <32.275906, 35.685234, 48.619450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133797, 36.387623, 48.906200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.810366, 36.170746, 48.997616>,  <31.616306, 36.040619, 49.052464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.810366, 36.170746, 48.997616>,  <32.133797, 36.387623, 48.906200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810366, 36.170746, 48.997616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070260, 0.296660, 0.952395,
		-0.584175, 0.786146, -0.201779,
		-0.808581, -0.542188, 0.228536,
		31.567791, 36.008091, 49.066177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812450, 36.729477, 49.418083>,  <32.133797, 36.387623, 48.906200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812450, 36.729477, 49.418083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.668325, 36.357719, 49.450104>,  <31.581850, 36.134666, 49.469318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.668325, 36.357719, 49.450104>,  <31.812450, 36.729477, 49.418083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668325, 36.357719, 49.450104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084609, 0.052906, 0.995009,
		-0.928987, 0.365288, 0.059572,
		-0.360313, -0.929390, 0.080056,
		31.560232, 36.078903, 49.474121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342583, 36.776802, 49.987534>,  <31.812450, 36.729477, 49.418083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342583, 36.776802, 49.987534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.420177, 36.386509, 49.946918>,  <31.466734, 36.152332, 49.922550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.420177, 36.386509, 49.946918>,  <31.342583, 36.776802, 49.987534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420177, 36.386509, 49.946918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004089, -0.104306, 0.994537,
		-0.980996, -0.192510, -0.024223,
		0.193985, -0.975736, -0.101536,
		31.478373, 36.093788, 49.916458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074900, 36.429314, 50.673656>,  <31.342583, 36.776802, 49.987534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074900, 36.429314, 50.673656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.321390, 36.152351, 50.523540>,  <31.469284, 35.986176, 50.433472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.321390, 36.152351, 50.523540>,  <31.074900, 36.429314, 50.673656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321390, 36.152351, 50.523540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397425, -0.138012, 0.907197,
		-0.679940, -0.708189, 0.190131,
		0.616227, -0.692402, -0.375292,
		31.506258, 35.944630, 50.410954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082991, 35.940147, 51.140778>,  <31.074900, 36.429314, 50.673656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082991, 35.940147, 51.140778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.430603, 35.868114, 50.956448>,  <31.639170, 35.824894, 50.845852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.430603, 35.868114, 50.956448>,  <31.082991, 35.940147, 51.140778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430603, 35.868114, 50.956448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443670, -0.128549, 0.886922,
		-0.218958, -0.975215, -0.031816,
		0.869030, -0.180083, -0.460821,
		31.691313, 35.814091, 50.818203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.035248, 34.615097, 36.276684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285336, 34.379543, 36.481548>,  <37.435387, 34.238209, 36.604469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285336, 34.379543, 36.481548>,  <37.035248, 34.615097, 36.276684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285336, 34.379543, 36.481548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753917, -0.286064, 0.591419,
		-0.201769, -0.755895, -0.622826,
		0.625219, -0.588889, 0.512164,
		37.472900, 34.202877, 36.635197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675686, 33.916336, 36.223072>,  <37.035248, 34.615097, 36.276684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675686, 33.916336, 36.223072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862499, 34.071907, 36.540718>,  <36.974586, 34.165249, 36.731304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862499, 34.071907, 36.540718>,  <36.675686, 33.916336, 36.223072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862499, 34.071907, 36.540718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858211, -0.016917, 0.513018,
		0.212959, -0.921114, 0.325879,
		0.467035, 0.388925, 0.794113,
		37.002609, 34.188583, 36.778954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364559, 33.534496, 36.730042>,  <36.675686, 33.916336, 36.223072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364559, 33.534496, 36.730042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526867, 33.864109, 36.888191>,  <36.624252, 34.061878, 36.983082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526867, 33.864109, 36.888191>,  <36.364559, 33.534496, 36.730042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526867, 33.864109, 36.888191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770620, 0.075868, 0.632763,
		0.491424, -0.561435, 0.665803,
		0.405768, 0.824036, 0.395370,
		36.648598, 34.111320, 37.006802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272228, 33.510170, 37.421261>,  <36.364559, 33.534496, 36.730042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272228, 33.510170, 37.421261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325157, 33.900013, 37.349003>,  <36.356915, 34.133919, 37.305649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325157, 33.900013, 37.349003>,  <36.272228, 33.510170, 37.421261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325157, 33.900013, 37.349003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685512, 0.221613, 0.693513,
		0.715935, 0.032064, 0.697430,
		0.132323, 0.974607, -0.180641,
		36.364853, 34.192394, 37.294811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108002, 33.756775, 38.024944>,  <36.272228, 33.510170, 37.421261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108002, 33.756775, 38.024944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082245, 34.071735, 37.779716>,  <36.066792, 34.260712, 37.632580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082245, 34.071735, 37.779716>,  <36.108002, 33.756775, 38.024944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082245, 34.071735, 37.779716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825108, 0.303532, 0.476513,
		0.561293, 0.536530, 0.630147,
		-0.064393, 0.787403, -0.613066,
		36.062927, 34.307957, 37.595798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926281, 34.331776, 38.395184>,  <36.108002, 33.756775, 38.024944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926281, 34.331776, 38.395184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832825, 34.437435, 38.020882>,  <35.776749, 34.500832, 37.796299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832825, 34.437435, 38.020882>,  <35.926281, 34.331776, 38.395184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832825, 34.437435, 38.020882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833372, 0.441381, 0.332676,
		0.500901, 0.857559, 0.117010,
		-0.233643, 0.264150, -0.935754,
		35.762733, 34.516682, 37.740154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889965, 34.991322, 38.468143>,  <35.926281, 34.331776, 38.395184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889965, 34.991322, 38.468143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656681, 34.903503, 38.155308>,  <35.516708, 34.850815, 37.967606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656681, 34.903503, 38.155308>,  <35.889965, 34.991322, 38.468143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656681, 34.903503, 38.155308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800942, 0.315989, 0.508570,
		0.135480, 0.923013, -0.360128,
		-0.583213, -0.219541, -0.782090,
		35.481716, 34.837643, 37.920681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566341, 35.616421, 38.394962>,  <35.889965, 34.991322, 38.468143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566341, 35.616421, 38.394962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341080, 35.328167, 38.233200>,  <35.205921, 35.155216, 38.136143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341080, 35.328167, 38.233200>,  <35.566341, 35.616421, 38.394962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341080, 35.328167, 38.233200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779625, 0.301103, 0.549109,
		-0.273938, 0.624520, -0.731391,
		-0.563154, -0.720633, -0.404408,
		35.172134, 35.111977, 38.111877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973316, 35.910843, 38.441017>,  <35.566341, 35.616421, 38.394962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973316, 35.910843, 38.441017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844879, 35.551361, 38.321529>,  <34.767815, 35.335674, 38.249836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844879, 35.551361, 38.321529>,  <34.973316, 35.910843, 38.441017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844879, 35.551361, 38.321529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810542, 0.097648, 0.577483,
		-0.489816, 0.427551, -0.759790,
		-0.321096, -0.898702, -0.298719,
		34.748550, 35.281750, 38.231915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343494, 35.973526, 38.145603>,  <34.973316, 35.910843, 38.441017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343494, 35.973526, 38.145603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385399, 35.600853, 38.284737>,  <34.410542, 35.377251, 38.368217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385399, 35.600853, 38.284737>,  <34.343494, 35.973526, 38.145603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385399, 35.600853, 38.284737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690819, 0.183427, 0.699373,
		-0.715398, -0.313560, -0.624409,
		0.104762, -0.931684, 0.347837,
		34.416828, 35.321346, 38.389088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638252, 35.660698, 38.271675>,  <34.343494, 35.973526, 38.145603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638252, 35.660698, 38.271675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860607, 35.435787, 38.516571>,  <33.994022, 35.300842, 38.663509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860607, 35.435787, 38.516571>,  <33.638252, 35.660698, 38.271675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860607, 35.435787, 38.516571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706940, 0.067674, 0.704028,
		-0.437290, -0.824177, -0.359875,
		0.555890, -0.562274, 0.612237,
		34.027374, 35.267105, 38.700241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118019, 35.316910, 38.640701>,  <33.638252, 35.660698, 38.271675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118019, 35.316910, 38.640701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451588, 35.237904, 38.846828>,  <33.651730, 35.190498, 38.970505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451588, 35.237904, 38.846828>,  <33.118019, 35.316910, 38.640701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451588, 35.237904, 38.846828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504323, 0.106455, 0.856928,
		-0.224114, -0.974503, -0.010836,
		0.833925, -0.197514, 0.515323,
		33.701767, 35.178650, 39.001427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070553, 34.483498, 38.402817>,  <33.118019, 35.316910, 38.640701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070553, 34.483498, 38.402817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674404, 34.473167, 38.348408>,  <32.436714, 34.466969, 38.315762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674404, 34.473167, 38.348408>,  <33.070553, 34.483498, 38.402817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674404, 34.473167, 38.348408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123266, 0.282930, -0.951187,
		0.063051, -0.958793, -0.277021,
		-0.990368, -0.025826, -0.136026,
		32.377293, 34.465420, 38.307602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889324, 33.965668, 37.850159>,  <33.070553, 34.483498, 38.402817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889324, 33.965668, 37.850159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568390, 34.204338, 37.856346>,  <32.375828, 34.347538, 37.860058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568390, 34.204338, 37.856346>,  <32.889324, 33.965668, 37.850159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568390, 34.204338, 37.856346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053418, -0.045974, -0.997513,
		-0.594477, -0.801167, 0.068759,
		-0.802336, 0.596672, 0.015466,
		32.327690, 34.383339, 37.860985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407486, 33.635418, 37.335766>,  <32.889324, 33.965668, 37.850159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407486, 33.635418, 37.335766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278713, 34.010914, 37.384956>,  <32.201450, 34.236214, 37.414471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278713, 34.010914, 37.384956>,  <32.407486, 33.635418, 37.335766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278713, 34.010914, 37.384956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014701, 0.134832, -0.990759,
		-0.946649, -0.317148, -0.057207,
		-0.321931, 0.938742, 0.122977,
		32.182133, 34.292538, 37.421848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917458, 33.690575, 36.848640>,  <32.407486, 33.635418, 37.335766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917458, 33.690575, 36.848640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984802, 34.075714, 36.933098>,  <32.025208, 34.306797, 36.983772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984802, 34.075714, 36.933098>,  <31.917458, 33.690575, 36.848640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984802, 34.075714, 36.933098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242190, 0.248037, -0.937988,
		-0.955509, 0.106785, 0.274952,
		0.168361, 0.962847, 0.211140,
		32.035309, 34.364567, 36.996441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329784, 33.940472, 36.606075>,  <31.917458, 33.690575, 36.848640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329784, 33.940472, 36.606075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594210, 34.240559, 36.611244>,  <31.752865, 34.420612, 36.614346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594210, 34.240559, 36.611244>,  <31.329784, 33.940472, 36.606075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594210, 34.240559, 36.611244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229960, 0.218966, -0.948247,
		-0.714222, 0.623879, 0.317271,
		0.661063, 0.750219, 0.012923,
		31.792528, 34.465626, 36.615120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978083, 34.582378, 36.360592>,  <31.329784, 33.940472, 36.606075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978083, 34.582378, 36.360592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371105, 34.610023, 36.291534>,  <31.606918, 34.626610, 36.250099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371105, 34.610023, 36.291534>,  <30.978083, 34.582378, 36.360592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371105, 34.610023, 36.291534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180066, 0.121636, -0.976105,
		-0.046462, 0.990166, 0.131959,
		0.982557, 0.069113, -0.172644,
		31.665873, 34.630756, 36.239742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088762, 35.152622, 36.020733>,  <30.978083, 34.582378, 36.360592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088762, 35.152622, 36.020733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399872, 34.917030, 35.932938>,  <31.586536, 34.775677, 35.880260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399872, 34.917030, 35.932938>,  <31.088762, 35.152622, 36.020733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399872, 34.917030, 35.932938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136612, 0.182454, -0.973677,
		0.613521, 0.787284, 0.061446,
		0.777772, -0.588977, -0.219491,
		31.633204, 34.740337, 35.867088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283245, 35.330112, 35.348255>,  <31.088762, 35.152622, 36.020733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283245, 35.330112, 35.348255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501022, 34.996300, 35.382053>,  <31.631689, 34.796013, 35.402332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501022, 34.996300, 35.382053>,  <31.283245, 35.330112, 35.348255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501022, 34.996300, 35.382053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060695, -0.139670, -0.988336,
		0.836598, 0.532966, -0.126695,
		0.544445, -0.834530, 0.084499,
		31.664356, 34.745941, 35.407402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800922, 35.242256, 34.654507>,  <31.283245, 35.330112, 35.348255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800922, 35.242256, 34.654507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788593, 34.868618, 34.796783>,  <31.781195, 34.644436, 34.882149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788593, 34.868618, 34.796783>,  <31.800922, 35.242256, 34.654507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788593, 34.868618, 34.796783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032080, -0.356601, -0.933706,
		0.999010, -0.017371, 0.040958,
		-0.030825, -0.934095, 0.355691,
		31.779346, 34.588390, 34.903492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415600, 34.917446, 34.399315>,  <31.800922, 35.242256, 34.654507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415600, 34.917446, 34.399315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131786, 34.645321, 34.472786>,  <31.961500, 34.482044, 34.516869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131786, 34.645321, 34.472786>,  <32.415600, 34.917446, 34.399315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131786, 34.645321, 34.472786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058432, -0.316564, -0.946770,
		0.702249, -0.661028, 0.264364,
		-0.709529, -0.680315, 0.183682,
		31.918928, 34.441227, 34.527889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508221, 34.363148, 33.921173>,  <32.415600, 34.917446, 34.399315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508221, 34.363148, 33.921173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145699, 34.258160, 34.053665>,  <31.928185, 34.195168, 34.133160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145699, 34.258160, 34.053665>,  <32.508221, 34.363148, 33.921173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145699, 34.258160, 34.053665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155454, -0.521776, -0.838799,
		0.392988, -0.811702, 0.432088,
		-0.906308, -0.262468, 0.331234,
		31.873806, 34.179420, 34.153034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388908, 33.653831, 33.633350>,  <32.508221, 34.363148, 33.921173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388908, 33.653831, 33.633350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025841, 33.795315, 33.723705>,  <31.808001, 33.880207, 33.777920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025841, 33.795315, 33.723705>,  <32.388908, 33.653831, 33.633350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025841, 33.795315, 33.723705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376611, -0.448951, -0.810313,
		-0.185202, -0.820569, 0.540710,
		-0.907670, 0.353709, 0.225889,
		31.753540, 33.901428, 33.791473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853624, 33.097977, 33.443710>,  <32.388908, 33.653831, 33.633350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853624, 33.097977, 33.443710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664303, 33.450150, 33.432293>,  <31.550711, 33.661453, 33.425442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664303, 33.450150, 33.432293>,  <31.853624, 33.097977, 33.443710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664303, 33.450150, 33.432293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445721, -0.267303, -0.854331,
		-0.759813, -0.391638, 0.518945,
		-0.473304, 0.880437, -0.028540,
		31.522312, 33.714279, 33.423733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217064, 32.952423, 33.400471>,  <31.853624, 33.097977, 33.443710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217064, 32.952423, 33.400471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231262, 33.332432, 33.276405>,  <31.239780, 33.560436, 33.201965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231262, 33.332432, 33.276405>,  <31.217064, 32.952423, 33.400471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231262, 33.332432, 33.276405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405788, -0.269921, -0.873200,
		-0.913278, 0.156855, 0.375926,
		0.035495, 0.950020, -0.310163,
		31.241911, 33.617439, 33.183357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973085, 32.979485, 34.020950>,  <31.217064, 32.952423, 33.400471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973085, 32.979485, 34.020950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742964, 32.765709, 33.773273>,  <30.604891, 32.637444, 33.624668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742964, 32.765709, 33.773273>,  <30.973085, 32.979485, 34.020950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742964, 32.765709, 33.773273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345388, -0.527486, 0.776186,
		-0.741438, 0.660407, 0.118878,
		-0.575306, -0.534435, -0.619195,
		30.570372, 32.605377, 33.587517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397249, 32.556057, 34.212570>,  <30.973085, 32.979485, 34.020950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397249, 32.556057, 34.212570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543337, 32.195576, 34.119228>,  <30.630989, 31.979288, 34.063225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543337, 32.195576, 34.119228>,  <30.397249, 32.556057, 34.212570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543337, 32.195576, 34.119228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815755, 0.430588, -0.386183,
		0.448507, -0.049315, 0.892418,
		0.365220, -0.901200, -0.233351,
		30.652903, 31.925215, 34.049225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797277, 32.452194, 34.822353>,  <30.397249, 32.556057, 34.212570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797277, 32.452194, 34.822353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140558, 32.270592, 34.726543>,  <31.346527, 32.161633, 34.669060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140558, 32.270592, 34.726543>,  <30.797277, 32.452194, 34.822353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140558, 32.270592, 34.726543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083473, -0.336977, 0.937805,
		-0.506482, -0.824819, -0.251296,
		0.858201, -0.454005, -0.239523,
		31.398018, 32.134392, 34.654686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826246, 31.835592, 35.141937>,  <30.797277, 32.452194, 34.822353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826246, 31.835592, 35.141937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215277, 31.911245, 35.087788>,  <31.448694, 31.956636, 35.055298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215277, 31.911245, 35.087788>,  <30.826246, 31.835592, 35.141937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215277, 31.911245, 35.087788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196217, -0.354676, 0.914168,
		0.124883, -0.915661, -0.382059,
		0.972575, 0.189131, -0.135375,
		31.507050, 31.967985, 35.047176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054819, 31.294254, 35.353695>,  <30.826246, 31.835592, 35.141937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054819, 31.294254, 35.353695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377529, 31.528944, 35.381603>,  <31.571156, 31.669758, 35.398350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377529, 31.528944, 35.381603>,  <31.054819, 31.294254, 35.353695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377529, 31.528944, 35.381603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141038, -0.305905, 0.941557,
		0.573780, -0.749783, -0.329547,
		0.806774, 0.586726, 0.069775,
		31.619562, 31.704962, 35.402534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657991, 30.952995, 35.695057>,  <31.054819, 31.294254, 35.353695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657991, 30.952995, 35.695057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719162, 31.345013, 35.745857>,  <31.755863, 31.580223, 35.776337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719162, 31.345013, 35.745857>,  <31.657991, 30.952995, 35.695057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719162, 31.345013, 35.745857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021346, -0.131755, 0.991052,
		0.988007, -0.148845, -0.041069,
		0.152924, 0.980044, 0.126997,
		31.765039, 31.639027, 35.783955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038563, 30.904280, 36.243198>,  <31.657991, 30.952995, 35.695057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038563, 30.904280, 36.243198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932947, 31.290051, 36.238033>,  <31.869577, 31.521513, 36.234936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932947, 31.290051, 36.238033>,  <32.038563, 30.904280, 36.243198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932947, 31.290051, 36.238033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117744, -0.018947, 0.992863,
		0.957298, 0.263674, 0.118558,
		-0.264039, 0.964426, -0.012909,
		31.853735, 31.579378, 36.234161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523403, 31.329412, 36.717262>,  <32.038563, 30.904280, 36.243198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523403, 31.329412, 36.717262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193115, 31.554222, 36.698025>,  <31.994942, 31.689108, 36.686481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193115, 31.554222, 36.698025>,  <32.523403, 31.329412, 36.717262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193115, 31.554222, 36.698025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028222, 0.126311, 0.991589,
		0.563374, 0.817418, -0.120159,
		-0.825720, 0.562026, -0.048092,
		31.945398, 31.722830, 36.683598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697548, 31.940975, 37.085506>,  <32.523403, 31.329412, 36.717262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697548, 31.940975, 37.085506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299339, 31.905369, 37.098259>,  <32.060413, 31.884005, 37.105911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299339, 31.905369, 37.098259>,  <32.697548, 31.940975, 37.085506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299339, 31.905369, 37.098259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026405, 0.062005, 0.997727,
		-0.090788, 0.994099, -0.059377,
		-0.995520, -0.089014, 0.031879,
		32.000683, 31.878664, 37.107822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529686, 32.260410, 37.672943>,  <32.697548, 31.940975, 37.085506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529686, 32.260410, 37.672943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191357, 32.053116, 37.622334>,  <31.988358, 31.928740, 37.591969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191357, 32.053116, 37.622334>,  <32.529686, 32.260410, 37.672943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191357, 32.053116, 37.622334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081144, -0.109427, 0.990677,
		-0.527249, 0.848209, 0.050505,
		-0.845828, -0.518235, -0.126522,
		31.937609, 31.897646, 37.584377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047672, 32.556843, 38.066391>,  <32.529686, 32.260410, 37.672943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047672, 32.556843, 38.066391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919531, 32.184628, 37.995434>,  <31.842646, 31.961298, 37.952858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919531, 32.184628, 37.995434>,  <32.047672, 32.556843, 38.066391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919531, 32.184628, 37.995434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138101, -0.139388, 0.980561,
		-0.937178, 0.338624, -0.083855,
		-0.320353, -0.930540, -0.177396,
		31.823425, 31.905466, 37.942215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397999, 32.461235, 38.398468>,  <32.047672, 32.556843, 38.066391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397999, 32.461235, 38.398468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555702, 32.096329, 38.354050>,  <31.650324, 31.877384, 38.327400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555702, 32.096329, 38.354050>,  <31.397999, 32.461235, 38.398468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555702, 32.096329, 38.354050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283254, -0.235578, 0.929661,
		-0.874258, -0.335074, -0.351281,
		0.394259, -0.912265, -0.111045,
		31.673981, 31.822649, 38.320736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972830, 32.052853, 38.807652>,  <31.397999, 32.461235, 38.398468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972830, 32.052853, 38.807652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240120, 31.763083, 38.739914>,  <31.400494, 31.589220, 38.699272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240120, 31.763083, 38.739914>,  <30.972830, 32.052853, 38.807652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240120, 31.763083, 38.739914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044976, -0.266546, 0.962772,
		-0.742597, -0.635734, -0.210696,
		0.668227, -0.724427, -0.169344,
		31.440588, 31.545753, 38.689110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740843, 31.449615, 39.098492>,  <30.972830, 32.052853, 38.807652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740843, 31.449615, 39.098492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131184, 31.368650, 39.065655>,  <31.365389, 31.320072, 39.045952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131184, 31.368650, 39.065655>,  <30.740843, 31.449615, 39.098492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131184, 31.368650, 39.065655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021222, -0.461913, 0.886671,
		-0.217390, -0.863520, -0.455055,
		0.975854, -0.202410, -0.082089,
		31.423941, 31.307926, 39.041027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840372, 30.800562, 39.444714>,  <30.740843, 31.449615, 39.098492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840372, 30.800562, 39.444714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209812, 30.953903, 39.445583>,  <31.431477, 31.045908, 39.446106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209812, 30.953903, 39.445583>,  <30.840372, 30.800562, 39.444714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209812, 30.953903, 39.445583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134032, -0.328226, 0.935042,
		0.359168, -0.863311, -0.354531,
		0.923599, 0.383355, 0.002177,
		31.486893, 31.068909, 39.446236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306622, 30.228647, 39.789131>,  <30.840372, 30.800562, 39.444714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306622, 30.228647, 39.789131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536728, 30.555384, 39.806297>,  <31.674791, 30.751425, 39.816597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536728, 30.555384, 39.806297>,  <31.306622, 30.228647, 39.789131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536728, 30.555384, 39.806297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197308, -0.189493, 0.961854,
		0.793814, -0.544852, -0.270178,
		0.575264, 0.816841, 0.042919,
		31.709307, 30.800436, 39.819172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941071, 30.077457, 40.042671>,  <31.306622, 30.228647, 39.789131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941071, 30.077457, 40.042671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875196, 30.462397, 40.129169>,  <31.835672, 30.693361, 40.181068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875196, 30.462397, 40.129169>,  <31.941071, 30.077457, 40.042671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875196, 30.462397, 40.129169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308830, -0.157907, 0.937918,
		0.936751, 0.221247, -0.271197,
		-0.164687, 0.962349, 0.216247,
		31.825790, 30.751101, 40.194042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574242, 30.388550, 40.303226>,  <31.941071, 30.077457, 40.042671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574242, 30.388550, 40.303226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292915, 30.630058, 40.453323>,  <32.124119, 30.774963, 40.543381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292915, 30.630058, 40.453323>,  <32.574242, 30.388550, 40.303226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292915, 30.630058, 40.453323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386306, -0.118497, 0.914728,
		0.596752, 0.788300, -0.149900,
		-0.703317, 0.603773, 0.375238,
		32.081921, 30.811190, 40.565895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866440, 30.776602, 40.937847>,  <32.574242, 30.388550, 40.303226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866440, 30.776602, 40.937847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480358, 30.872234, 40.980236>,  <32.248711, 30.929613, 41.005669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480358, 30.872234, 40.980236>,  <32.866440, 30.776602, 40.937847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480358, 30.872234, 40.980236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053895, -0.214666, 0.975199,
		0.255898, 0.946974, 0.194310,
		-0.965200, 0.239079, 0.105970,
		32.190800, 30.943958, 41.012028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825130, 31.349007, 41.459106>,  <32.866440, 30.776602, 40.937847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825130, 31.349007, 41.459106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474102, 31.158594, 41.436245>,  <32.263485, 31.044346, 41.422527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474102, 31.158594, 41.436245>,  <32.825130, 31.349007, 41.459106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474102, 31.158594, 41.436245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059978, -0.227277, 0.971981,
		-0.475686, 0.849551, 0.228003,
		-0.877568, -0.476033, -0.057158,
		32.210831, 31.015783, 41.419098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358196, 31.605860, 42.042946>,  <32.825130, 31.349007, 41.459106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358196, 31.605860, 42.042946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237843, 31.241625, 41.929600>,  <32.165630, 31.023083, 41.861591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237843, 31.241625, 41.929600>,  <32.358196, 31.605860, 42.042946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237843, 31.241625, 41.929600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052342, -0.312455, 0.948489,
		-0.952222, 0.270557, 0.141676,
		-0.300888, -0.910588, -0.283365,
		32.147575, 30.968449, 41.844589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834455, 31.384420, 42.557293>,  <32.358196, 31.605860, 42.042946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834455, 31.384420, 42.557293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976566, 31.037039, 42.418980>,  <32.061832, 30.828609, 42.335991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976566, 31.037039, 42.418980>,  <31.834455, 31.384420, 42.557293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976566, 31.037039, 42.418980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010914, -0.373743, 0.927468,
		-0.934698, -0.325734, -0.142261,
		0.355277, -0.868455, -0.345782,
		32.083149, 30.776503, 42.315247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350340, 30.806728, 42.978817>,  <31.834455, 31.384420, 42.557293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350340, 30.806728, 42.978817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667183, 30.614656, 42.828091>,  <31.857288, 30.499414, 42.737656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667183, 30.614656, 42.828091>,  <31.350340, 30.806728, 42.978817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667183, 30.614656, 42.828091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257436, -0.296934, 0.919542,
		-0.553435, -0.825384, -0.111588,
		0.792109, -0.480179, -0.376817,
		31.904816, 30.470602, 42.715046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322657, 30.167627, 43.229237>,  <31.350340, 30.806728, 42.978817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322657, 30.167627, 43.229237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700644, 30.165695, 43.098381>,  <31.927435, 30.164536, 43.019867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700644, 30.165695, 43.098381>,  <31.322657, 30.167627, 43.229237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700644, 30.165695, 43.098381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299840, -0.387292, 0.871838,
		-0.130908, -0.921945, -0.364529,
		0.944965, -0.004830, -0.327136,
		31.984133, 30.164246, 43.000240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568975, 29.416813, 43.200497>,  <31.322657, 30.167627, 43.229237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568975, 29.416813, 43.200497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876530, 29.666759, 43.254684>,  <32.061062, 29.816729, 43.287197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876530, 29.666759, 43.254684>,  <31.568975, 29.416813, 43.200497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876530, 29.666759, 43.254684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098808, -0.325452, 0.940382,
		0.631703, -0.709662, -0.311978,
		0.768887, 0.624868, 0.135469,
		32.107197, 29.854219, 43.295326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101658, 29.050634, 43.552151>,  <31.568975, 29.416813, 43.200497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101658, 29.050634, 43.552151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243793, 29.421061, 43.602951>,  <32.329075, 29.643316, 43.633430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243793, 29.421061, 43.602951>,  <32.101658, 29.050634, 43.552151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243793, 29.421061, 43.602951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203616, -0.209296, 0.956418,
		0.912289, -0.313996, -0.262934,
		0.355343, 0.926068, 0.127004,
		32.350395, 29.698881, 43.641052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579163, 28.990717, 44.198559>,  <32.101658, 29.050634, 43.552151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579163, 28.990717, 44.198559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511692, 29.382616, 44.155399>,  <32.471210, 29.617756, 44.129505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511692, 29.382616, 44.155399>,  <32.579163, 28.990717, 44.198559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511692, 29.382616, 44.155399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018865, 0.112651, 0.993455,
		0.985491, 0.165536, -0.037484,
		-0.168675, 0.979749, -0.107894,
		32.461090, 29.676540, 44.123032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059959, 29.283974, 44.651386>,  <32.579163, 28.990717, 44.198559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059959, 29.283974, 44.651386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752644, 29.529486, 44.578716>,  <32.568256, 29.676794, 44.535114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752644, 29.529486, 44.578716>,  <33.059959, 29.283974, 44.651386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752644, 29.529486, 44.578716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034185, 0.244074, 0.969154,
		0.639192, 0.750799, -0.166537,
		-0.768287, 0.613782, -0.181676,
		32.522156, 29.713621, 44.524212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763012, 29.569618, 44.324680>,  <33.059959, 29.283974, 44.651386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763012, 29.569618, 44.324680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159645, 29.597452, 44.368370>,  <34.397625, 29.614153, 44.394585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159645, 29.597452, 44.368370>,  <33.763012, 29.569618, 44.324680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159645, 29.597452, 44.368370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117380, -0.126553, -0.984990,
		-0.054718, 0.989516, -0.133655,
		0.991578, 0.069585, 0.109225,
		34.457119, 29.618328, 44.401138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933342, 29.975443, 43.810581>,  <33.763012, 29.569618, 44.324680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933342, 29.975443, 43.810581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268700, 29.787302, 43.920750>,  <34.469913, 29.674417, 43.986851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268700, 29.787302, 43.920750>,  <33.933342, 29.975443, 43.810581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268700, 29.787302, 43.920750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258672, -0.101435, -0.960625,
		0.479768, 0.876631, 0.036623,
		0.838398, -0.470350, 0.275425,
		34.520218, 29.646196, 44.003376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461403, 30.362343, 43.499996>,  <33.933342, 29.975443, 43.810581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461403, 30.362343, 43.499996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609474, 29.995424, 43.558689>,  <34.698318, 29.775272, 43.593906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609474, 29.995424, 43.558689>,  <34.461403, 30.362343, 43.499996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609474, 29.995424, 43.558689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210777, -0.070898, -0.974960,
		0.904731, 0.391841, 0.167100,
		0.370182, -0.917297, 0.146735,
		34.720528, 29.720236, 43.602711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058163, 30.376421, 43.146862>,  <34.461403, 30.362343, 43.499996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058163, 30.376421, 43.146862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024860, 29.979908, 43.187717>,  <35.004879, 29.742001, 43.212231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024860, 29.979908, 43.187717>,  <35.058163, 30.376421, 43.146862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024860, 29.979908, 43.187717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488875, -0.129938, -0.862622,
		0.868372, -0.021885, 0.495430,
		-0.083253, -0.991280, 0.102136,
		34.999886, 29.682524, 43.218357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717182, 30.095169, 43.147060>,  <35.058163, 30.376421, 43.146862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717182, 30.095169, 43.147060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428738, 29.846125, 43.025497>,  <35.255672, 29.696699, 42.952560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428738, 29.846125, 43.025497>,  <35.717182, 30.095169, 43.147060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428738, 29.846125, 43.025497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530111, -0.213409, -0.820633,
		0.446077, -0.752871, 0.483943,
		-0.721109, -0.622609, -0.303908,
		35.212406, 29.659342, 42.934326>
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
