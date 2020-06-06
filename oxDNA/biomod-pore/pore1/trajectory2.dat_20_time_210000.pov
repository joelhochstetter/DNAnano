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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<50.224117, 41.770123, 45.508381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.165054, 42.044907, 45.792995>,  <50.129616, 42.209778, 45.963764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.165054, 42.044907, 45.792995>,  <50.224117, 41.770123, 45.508381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.165054, 42.044907, 45.792995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653554, -0.607743, 0.451127,
		0.742337, -0.398414, 0.538705,
		-0.147659, 0.686961, 0.711535,
		50.120758, 42.250996, 46.006454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.195919, 41.409718, 46.130157>,  <50.224117, 41.770123, 45.508381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.195919, 41.409718, 46.130157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.016266, 41.752075, 46.232716>,  <49.908474, 41.957489, 46.294250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.016266, 41.752075, 46.232716>,  <50.195919, 41.409718, 46.130157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.016266, 41.752075, 46.232716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693999, -0.514920, 0.503214,
		0.562716, 0.048073, 0.825251,
		-0.449129, 0.855890, 0.256391,
		49.881527, 42.008842, 46.309631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.031837, 41.245487, 46.734280>,  <50.195919, 41.409718, 46.130157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.031837, 41.245487, 46.734280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.805557, 41.570351, 46.677177>,  <49.669788, 41.765270, 46.642918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.805557, 41.570351, 46.677177>,  <50.031837, 41.245487, 46.734280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.805557, 41.570351, 46.677177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723417, -0.405702, 0.558635,
		0.395785, 0.419292, 0.817036,
		-0.565705, 0.812157, -0.142752,
		49.635845, 41.813999, 46.634350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.796490, 41.477020, 47.424988>,  <50.031837, 41.245487, 46.734280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.796490, 41.477020, 47.424988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.558945, 41.618057, 47.135712>,  <49.416420, 41.702679, 46.962147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.558945, 41.618057, 47.135712>,  <49.796490, 41.477020, 47.424988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.558945, 41.618057, 47.135712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787242, -0.440183, 0.431843,
		-0.166070, 0.825781, 0.538986,
		-0.593861, 0.352596, -0.723191,
		49.380787, 41.723835, 46.918755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.172970, 41.672276, 47.734978>,  <49.796490, 41.477020, 47.424988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.172970, 41.672276, 47.734978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.093513, 41.613441, 47.347389>,  <49.045841, 41.578140, 47.114838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.093513, 41.613441, 47.347389>,  <49.172970, 41.672276, 47.734978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.093513, 41.613441, 47.347389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872616, -0.423560, 0.243183,
		-0.446186, 0.893847, -0.044212,
		-0.198642, -0.147085, -0.968972,
		49.033920, 41.569317, 47.056698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.449787, 41.989624, 47.488632>,  <49.172970, 41.672276, 47.734978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.449787, 41.989624, 47.488632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.561111, 41.696785, 47.239929>,  <48.627907, 41.521084, 47.090706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.561111, 41.696785, 47.239929>,  <48.449787, 41.989624, 47.488632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.561111, 41.696785, 47.239929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889853, -0.440186, 0.119992,
		-0.361534, 0.519877, -0.773965,
		0.278307, -0.732095, -0.621756,
		48.644604, 41.477158, 47.053402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.759678, 41.830719, 47.110954>,  <48.449787, 41.989624, 47.488632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.759678, 41.830719, 47.110954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.984123, 41.511620, 47.022629>,  <48.118790, 41.320160, 46.969635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.984123, 41.511620, 47.022629>,  <47.759678, 41.830719, 47.110954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.984123, 41.511620, 47.022629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790575, -0.595534, 0.142587,
		-0.245251, 0.094564, -0.964837,
		0.561109, -0.797745, -0.220815,
		48.152454, 41.272297, 46.956383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.394657, 41.460133, 46.550343>,  <47.759678, 41.830719, 47.110954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.394657, 41.460133, 46.550343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624390, 41.184448, 46.727036>,  <47.762230, 41.019035, 46.833050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624390, 41.184448, 46.727036>,  <47.394657, 41.460133, 46.550343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.624390, 41.184448, 46.727036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804327, -0.575500, 0.147845,
		0.152319, -0.440208, -0.884882,
		0.574332, -0.689215, 0.441731,
		47.796688, 40.977684, 46.859554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.036839, 40.795200, 46.343399>,  <47.394657, 41.460133, 46.550343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.036839, 40.795200, 46.343399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276817, 40.700562, 46.649101>,  <47.420807, 40.643780, 46.832523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276817, 40.700562, 46.649101>,  <47.036839, 40.795200, 46.343399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.276817, 40.700562, 46.649101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730189, -0.552302, 0.402227,
		0.326933, -0.799365, -0.504114,
		0.599949, -0.236597, 0.764253,
		47.456802, 40.629581, 46.878376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.924480, 40.108704, 46.541710>,  <47.036839, 40.795200, 46.343399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.924480, 40.108704, 46.541710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.092155, 40.244438, 46.878548>,  <47.192760, 40.325878, 47.080650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.092155, 40.244438, 46.878548>,  <46.924480, 40.108704, 46.541710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.092155, 40.244438, 46.878548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656956, -0.526824, 0.539320,
		0.626650, -0.779298, 0.002093,
		0.419188, 0.339340, 0.842098,
		47.217911, 40.346241, 47.131176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.834457, 39.611210, 46.933468>,  <46.924480, 40.108704, 46.541710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.834457, 39.611210, 46.933468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.902016, 39.905319, 47.196022>,  <46.942551, 40.081787, 47.353554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.902016, 39.905319, 47.196022>,  <46.834457, 39.611210, 46.933468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.902016, 39.905319, 47.196022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613340, -0.442900, 0.653952,
		0.771549, -0.513036, 0.376172,
		0.168894, 0.735278, 0.656385,
		46.952682, 40.125904, 47.392937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.803570, 39.297165, 47.588715>,  <46.834457, 39.611210, 46.933468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.803570, 39.297165, 47.588715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778862, 39.675369, 47.716583>,  <46.764038, 39.902294, 47.793304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778862, 39.675369, 47.716583>,  <46.803570, 39.297165, 47.588715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.778862, 39.675369, 47.716583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457438, -0.311482, 0.832904,
		0.887094, -0.094785, 0.451752,
		-0.061766, 0.945513, 0.319672,
		46.760334, 39.959023, 47.812485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.933632, 39.233891, 48.272331>,  <46.803570, 39.297165, 47.588715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.933632, 39.233891, 48.272331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756668, 39.592194, 48.254948>,  <46.650490, 39.807175, 48.244518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756668, 39.592194, 48.254948>,  <46.933632, 39.233891, 48.272331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756668, 39.592194, 48.254948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441319, -0.175266, 0.880068,
		0.780709, 0.408535, 0.472855,
		-0.442414, 0.895757, -0.043462,
		46.623943, 39.860920, 48.241909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.022339, 39.541203, 48.924255>,  <46.933632, 39.233891, 48.272331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.022339, 39.541203, 48.924255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702194, 39.713478, 48.757435>,  <46.510109, 39.816841, 48.657345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702194, 39.713478, 48.757435>,  <47.022339, 39.541203, 48.924255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.702194, 39.713478, 48.757435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553089, -0.262030, 0.790843,
		0.231326, 0.863626, 0.447928,
		-0.800363, 0.430687, -0.417048,
		46.462086, 39.842686, 48.632320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.707775, 40.009472, 49.439022>,  <47.022339, 39.541203, 48.924255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.707775, 40.009472, 49.439022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408455, 39.958725, 49.178574>,  <46.228863, 39.928276, 49.022305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408455, 39.958725, 49.178574>,  <46.707775, 40.009472, 49.439022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408455, 39.958725, 49.178574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636084, -0.141345, 0.758564,
		-0.188271, 0.981797, 0.025068,
		-0.748299, -0.126870, -0.651117,
		46.183964, 39.920662, 48.983238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237835, 40.412926, 49.679478>,  <46.707775, 40.009472, 49.439022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237835, 40.412926, 49.679478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.068069, 40.132248, 49.450565>,  <45.966209, 39.963840, 49.313217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.068069, 40.132248, 49.450565>,  <46.237835, 40.412926, 49.679478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068069, 40.132248, 49.450565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746926, -0.085954, 0.659328,
		-0.511834, 0.707278, -0.487631,
		-0.424414, -0.701691, -0.572278,
		45.940746, 39.921741, 49.278881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574852, 40.485596, 49.916786>,  <46.237835, 40.412926, 49.679478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574852, 40.485596, 49.916786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.528923, 40.141579, 49.717934>,  <45.501366, 39.935169, 49.598621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.528923, 40.141579, 49.717934>,  <45.574852, 40.485596, 49.916786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.528923, 40.141579, 49.717934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584381, -0.346213, 0.733917,
		-0.803315, 0.374785, -0.462841,
		-0.114820, -0.860042, -0.497135,
		45.494476, 39.883568, 49.568794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920528, 40.414513, 49.911602>,  <45.574852, 40.485596, 49.916786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920528, 40.414513, 49.911602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096043, 40.058342, 49.863270>,  <45.201351, 39.844639, 49.834270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096043, 40.058342, 49.863270>,  <44.920528, 40.414513, 49.911602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096043, 40.058342, 49.863270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571616, -0.380343, 0.727045,
		-0.693341, -0.249946, -0.675873,
		0.438786, -0.890430, -0.120835,
		45.227680, 39.791214, 49.827019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384945, 39.932693, 49.827030>,  <44.920528, 40.414513, 49.911602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384945, 39.932693, 49.827030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691696, 39.702415, 49.940495>,  <44.875748, 39.564247, 50.008572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691696, 39.702415, 49.940495>,  <44.384945, 39.932693, 49.827030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691696, 39.702415, 49.940495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535984, -0.331393, 0.776466,
		-0.353009, -0.747494, -0.562705,
		0.766881, -0.575700, 0.283660,
		44.921761, 39.529705, 50.025593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064457, 39.260567, 49.925457>,  <44.384945, 39.932693, 49.827030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064457, 39.260567, 49.925457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419220, 39.254471, 50.110134>,  <44.632076, 39.250813, 50.220940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419220, 39.254471, 50.110134>,  <44.064457, 39.260567, 49.925457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419220, 39.254471, 50.110134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419238, -0.446272, 0.790621,
		0.193993, -0.894768, -0.402191,
		0.886908, -0.015239, 0.461694,
		44.685291, 39.249901, 50.248642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069744, 38.603519, 50.192429>,  <44.064457, 39.260567, 49.925457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069744, 38.603519, 50.192429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333275, 38.811691, 50.409721>,  <44.491394, 38.936592, 50.540096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333275, 38.811691, 50.409721>,  <44.069744, 38.603519, 50.192429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333275, 38.811691, 50.409721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301000, -0.479425, 0.824349,
		0.689454, -0.706616, -0.159209,
		0.658827, 0.520428, 0.543233,
		44.530922, 38.967819, 50.572693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330807, 38.129433, 50.596451>,  <44.069744, 38.603519, 50.192429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330807, 38.129433, 50.596451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403236, 38.481827, 50.771301>,  <44.446693, 38.693264, 50.876213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403236, 38.481827, 50.771301>,  <44.330807, 38.129433, 50.596451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403236, 38.481827, 50.771301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468341, -0.313599, 0.826022,
		0.864794, -0.354298, 0.355815,
		0.181075, 0.880982, 0.437131,
		44.457558, 38.746120, 50.902439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422188, 37.901375, 51.253586>,  <44.330807, 38.129433, 50.596451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422188, 37.901375, 51.253586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331779, 38.290268, 51.277813>,  <44.277534, 38.523605, 51.292351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331779, 38.290268, 51.277813>,  <44.422188, 37.901375, 51.253586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331779, 38.290268, 51.277813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410137, -0.151380, 0.899373,
		0.883573, 0.178435, 0.432966,
		-0.226022, 0.972237, 0.060573,
		44.263973, 38.581940, 51.295986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554558, 38.010944, 51.888065>,  <44.422188, 37.901375, 51.253586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554558, 38.010944, 51.888065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329681, 38.330582, 51.802845>,  <44.194756, 38.522362, 51.751713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329681, 38.330582, 51.802845>,  <44.554558, 38.010944, 51.888065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329681, 38.330582, 51.802845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348460, 0.004751, 0.937312,
		0.750009, 0.601192, 0.275780,
		-0.562194, 0.799091, -0.213054,
		44.161022, 38.570309, 51.738930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523621, 38.431847, 52.469040>,  <44.554558, 38.010944, 51.888065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523621, 38.431847, 52.469040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204018, 38.533409, 52.251007>,  <44.012257, 38.594349, 52.120190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204018, 38.533409, 52.251007>,  <44.523621, 38.431847, 52.469040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204018, 38.533409, 52.251007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577650, -0.072303, 0.813076,
		0.167036, 0.964522, 0.204441,
		-0.799012, 0.253908, -0.545079,
		43.964314, 38.609581, 52.087482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103161, 38.847813, 52.934769>,  <44.523621, 38.431847, 52.469040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103161, 38.847813, 52.934769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848400, 38.745056, 52.644016>,  <43.695541, 38.683403, 52.469563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848400, 38.745056, 52.644016>,  <44.103161, 38.847813, 52.934769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848400, 38.745056, 52.644016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740759, -0.057324, 0.669321,
		-0.213612, 0.964738, -0.153786,
		-0.636904, -0.256893, -0.726883,
		43.657330, 38.667988, 52.425953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635487, 39.278469, 53.069950>,  <44.103161, 38.847813, 52.934769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635487, 39.278469, 53.069950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494942, 38.971512, 52.855415>,  <43.410614, 38.787338, 52.726696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494942, 38.971512, 52.855415>,  <43.635487, 39.278469, 53.069950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494942, 38.971512, 52.855415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685081, -0.179719, 0.705950,
		-0.638129, 0.615478, -0.462578,
		-0.351362, -0.767391, -0.536336,
		43.389534, 38.741295, 52.694515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979931, 39.375004, 53.019321>,  <43.635487, 39.278469, 53.069950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979931, 39.375004, 53.019321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033897, 38.981705, 52.970295>,  <43.066277, 38.745724, 52.940880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033897, 38.981705, 52.970295>,  <42.979931, 39.375004, 53.019321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033897, 38.981705, 52.970295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619022, -0.180223, 0.764416,
		-0.773699, -0.027263, -0.632967,
		0.134916, -0.983248, -0.122562,
		43.074371, 38.686729, 52.933525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273418, 39.167435, 53.060764>,  <42.979931, 39.375004, 53.019321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273418, 39.167435, 53.060764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528931, 38.871017, 53.143532>,  <42.682236, 38.693165, 53.193192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528931, 38.871017, 53.143532>,  <42.273418, 39.167435, 53.060764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528931, 38.871017, 53.143532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470312, -0.163243, 0.867271,
		-0.608909, -0.651309, -0.452798,
		0.638777, -0.741046, 0.206918,
		42.720566, 38.648705, 53.205608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874557, 38.739922, 53.429127>,  <42.273418, 39.167435, 53.060764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874557, 38.739922, 53.429127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229267, 38.581482, 53.524399>,  <42.442093, 38.486416, 53.581562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229267, 38.581482, 53.524399>,  <41.874557, 38.739922, 53.429127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229267, 38.581482, 53.524399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367606, -0.292060, 0.882931,
		-0.280158, -0.870524, -0.404599,
		0.886779, -0.396093, 0.238187,
		42.495300, 38.462650, 53.595856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670334, 38.158051, 53.605560>,  <41.874557, 38.739922, 53.429127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670334, 38.158051, 53.605560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034615, 38.193138, 53.767014>,  <42.253185, 38.214191, 53.863888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034615, 38.193138, 53.767014>,  <41.670334, 38.158051, 53.605560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034615, 38.193138, 53.767014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315772, -0.482100, 0.817232,
		0.266279, -0.871714, -0.411352,
		0.910704, 0.087718, 0.403636,
		42.307827, 38.219452, 53.888103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789623, 37.512794, 53.958847>,  <41.670334, 38.158051, 53.605560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789623, 37.512794, 53.958847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042534, 37.789009, 54.099354>,  <42.194279, 37.954739, 54.183659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042534, 37.789009, 54.099354>,  <41.789623, 37.512794, 53.958847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042534, 37.789009, 54.099354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365047, -0.134377, 0.921240,
		0.683352, -0.710706, 0.167115,
		0.632275, 0.690536, 0.351267,
		42.232216, 37.996170, 54.204735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193680, 37.200218, 54.453823>,  <41.789623, 37.512794, 53.958847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193680, 37.200218, 54.453823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223846, 37.591515, 54.531143>,  <42.241947, 37.826290, 54.577534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223846, 37.591515, 54.531143>,  <42.193680, 37.200218, 54.453823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223846, 37.591515, 54.531143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378938, -0.151193, 0.912988,
		0.922344, -0.142100, 0.359289,
		0.075414, 0.978237, 0.193299,
		42.246471, 37.884987, 54.589134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608917, 37.247311, 55.141178>,  <42.193680, 37.200218, 54.453823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608917, 37.247311, 55.141178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422653, 37.598419, 55.096123>,  <42.310894, 37.809082, 55.069088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422653, 37.598419, 55.096123>,  <42.608917, 37.247311, 55.141178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422653, 37.598419, 55.096123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304870, -0.039623, 0.951569,
		0.830794, 0.477445, 0.286055,
		-0.465656, 0.877768, -0.112640,
		42.282955, 37.861748, 55.062332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564850, 37.542599, 55.759888>,  <42.608917, 37.247311, 55.141178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564850, 37.542599, 55.759888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322197, 37.814156, 55.594433>,  <42.176605, 37.977089, 55.495159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322197, 37.814156, 55.594433>,  <42.564850, 37.542599, 55.759888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322197, 37.814156, 55.594433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368857, 0.220547, 0.902941,
		0.704229, 0.700328, 0.116623,
		-0.606635, 0.678895, -0.413637,
		42.140205, 38.017826, 55.470341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602356, 38.248692, 56.198959>,  <42.564850, 37.542599, 55.759888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602356, 38.248692, 56.198959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249565, 38.218224, 56.012920>,  <42.037891, 38.199944, 55.901299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249565, 38.218224, 56.012920>,  <42.602356, 38.248692, 56.198959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249565, 38.218224, 56.012920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467920, 0.023718, 0.883453,
		-0.056258, 0.996813, -0.056559,
		-0.881979, -0.076166, -0.465094,
		41.984970, 38.195374, 55.873394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257214, 38.650188, 56.509155>,  <42.602356, 38.248692, 56.198959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257214, 38.650188, 56.509155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982937, 38.414413, 56.338329>,  <41.818371, 38.272949, 56.235832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982937, 38.414413, 56.338329>,  <42.257214, 38.650188, 56.509155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982937, 38.414413, 56.338329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551304, 0.037467, 0.833462,
		-0.475275, 0.806943, -0.350652,
		-0.685694, -0.589440, -0.427064,
		41.777229, 38.237583, 56.210209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645290, 38.881664, 56.842911>,  <42.257214, 38.650188, 56.509155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645290, 38.881664, 56.842911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583019, 38.516907, 56.691010>,  <41.545658, 38.298054, 56.599869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583019, 38.516907, 56.691010>,  <41.645290, 38.881664, 56.842911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583019, 38.516907, 56.691010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685667, -0.176989, 0.706071,
		-0.711074, 0.370304, -0.597703,
		-0.155674, -0.911894, -0.379757,
		41.536316, 38.243340, 56.577084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875538, 38.776768, 56.731426>,  <41.645290, 38.881664, 56.842911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875538, 38.776768, 56.731426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052704, 38.420547, 56.772888>,  <41.159004, 38.206814, 56.797764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052704, 38.420547, 56.772888>,  <40.875538, 38.776768, 56.731426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052704, 38.420547, 56.772888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625075, -0.223842, 0.747781,
		-0.642736, -0.395994, -0.655804,
		0.442913, -0.890552, 0.103655,
		41.185577, 38.153381, 56.803986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356792, 38.306271, 56.887928>,  <40.875538, 38.776768, 56.731426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356792, 38.306271, 56.887928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670799, 38.074806, 56.976383>,  <40.859203, 37.935928, 57.029457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670799, 38.074806, 56.976383>,  <40.356792, 38.306271, 56.887928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670799, 38.074806, 56.976383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519894, -0.421303, 0.743111,
		-0.336840, -0.698325, -0.631571,
		0.785015, -0.578659, 0.221143,
		40.906303, 37.901207, 57.042725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142365, 37.554405, 56.869522>,  <40.356792, 38.306271, 56.887928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142365, 37.554405, 56.869522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453842, 37.620972, 57.111496>,  <40.640728, 37.660912, 57.256680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453842, 37.620972, 57.111496>,  <40.142365, 37.554405, 56.869522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453842, 37.620972, 57.111496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449399, -0.524876, 0.722873,
		0.437816, -0.834751, -0.333928,
		0.778690, 0.166418, 0.604936,
		40.687450, 37.670898, 57.292976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176136, 36.915054, 57.185074>,  <40.142365, 37.554405, 56.869522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176136, 36.915054, 57.185074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408104, 37.155045, 57.405518>,  <40.547287, 37.299038, 57.537785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408104, 37.155045, 57.405518>,  <40.176136, 36.915054, 57.185074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408104, 37.155045, 57.405518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460908, -0.316175, 0.829215,
		0.671753, -0.734892, 0.093176,
		0.579923, 0.599973, 0.551109,
		40.582081, 37.335037, 57.570850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441227, 36.515461, 57.717640>,  <40.176136, 36.915054, 57.185074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441227, 36.515461, 57.717640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426208, 36.902855, 57.816124>,  <40.417198, 37.135292, 57.875214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426208, 36.902855, 57.816124>,  <40.441227, 36.515461, 57.717640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426208, 36.902855, 57.816124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224676, -0.248259, 0.942278,
		0.973710, -0.019940, 0.226917,
		-0.037545, 0.968489, 0.246212,
		40.414944, 37.193401, 57.889988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913086, 36.717560, 58.226032>,  <40.441227, 36.515461, 57.717640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913086, 36.717560, 58.226032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620289, 36.987762, 58.261539>,  <40.444611, 37.149883, 58.282845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620289, 36.987762, 58.261539>,  <40.913086, 36.717560, 58.226032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620289, 36.987762, 58.261539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027314, -0.159283, 0.986855,
		0.680765, 0.719946, 0.135044,
		-0.731993, 0.675505, 0.088769,
		40.400692, 37.190414, 58.288170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124683, 37.144661, 58.731735>,  <40.913086, 36.717560, 58.226032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124683, 37.144661, 58.731735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724899, 37.144142, 58.718559>,  <40.485031, 37.143833, 58.710651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724899, 37.144142, 58.718559>,  <41.124683, 37.144661, 58.731735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724899, 37.144142, 58.718559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032302, -0.161675, 0.986315,
		-0.006603, 0.986843, 0.161545,
		-0.999456, -0.001294, -0.032944,
		40.425064, 37.143753, 58.708675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855751, 37.502686, 59.405937>,  <41.124683, 37.144661, 58.731735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855751, 37.502686, 59.405937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507118, 37.313370, 59.354797>,  <40.297939, 37.199780, 59.324116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507118, 37.313370, 59.354797>,  <40.855751, 37.502686, 59.405937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507118, 37.313370, 59.354797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179784, 0.065957, 0.981492,
		-0.456094, 0.878436, -0.142576,
		-0.871583, -0.473285, -0.127846,
		40.245644, 37.171383, 59.316444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298431, 37.771439, 59.728352>,  <40.855751, 37.502686, 59.405937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298431, 37.771439, 59.728352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218285, 37.380241, 59.705086>,  <40.170197, 37.145523, 59.691128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218285, 37.380241, 59.705086>,  <40.298431, 37.771439, 59.728352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218285, 37.380241, 59.705086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296811, 0.004019, 0.954928,
		-0.933679, 0.208599, -0.291085,
		-0.200367, -0.977993, -0.058163,
		40.158173, 37.086845, 59.687637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979671, 38.143181, 59.847645>,  <40.298431, 37.771439, 59.728352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979671, 38.143181, 59.847645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825066, 38.499687, 59.752777>,  <40.732304, 38.713593, 59.695858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825066, 38.499687, 59.752777>,  <40.979671, 38.143181, 59.847645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825066, 38.499687, 59.752777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872949, 0.270557, -0.405904,
		-0.297603, -0.363921, -0.882606,
		-0.386513, 0.891269, -0.237166,
		40.709110, 38.767067, 59.681625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077969, 38.341969, 59.087559>,  <40.979671, 38.143181, 59.847645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077969, 38.341969, 59.087559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063339, 38.683632, 59.295052>,  <41.054562, 38.888630, 59.419548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063339, 38.683632, 59.295052>,  <41.077969, 38.341969, 59.087559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063339, 38.683632, 59.295052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880177, 0.273344, -0.388036,
		-0.473235, 0.442379, -0.761807,
		-0.036577, 0.854157, 0.518728,
		41.052368, 38.939880, 59.450668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194492, 38.982239, 58.701145>,  <41.077969, 38.341969, 59.087559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194492, 38.982239, 58.701145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326492, 39.024055, 59.076416>,  <41.405693, 39.049145, 59.301579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326492, 39.024055, 59.076416>,  <41.194492, 38.982239, 58.701145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326492, 39.024055, 59.076416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926360, 0.155272, -0.343145,
		-0.181545, 0.982325, -0.045602,
		0.329999, 0.104540, 0.938175,
		41.425491, 39.055416, 59.357868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469246, 39.642490, 58.973076>,  <41.194492, 38.982239, 58.701145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469246, 39.642490, 58.973076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645775, 39.331787, 59.152802>,  <41.751690, 39.145367, 59.260635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645775, 39.331787, 59.152802>,  <41.469246, 39.642490, 58.973076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645775, 39.331787, 59.152802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892621, 0.328666, -0.308555,
		0.091998, 0.537239, 0.838398,
		0.441321, -0.776758, 0.449314,
		41.778172, 39.098759, 59.287598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007458, 39.955536, 59.346394>,  <41.469246, 39.642490, 58.973076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007458, 39.955536, 59.346394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085350, 39.580414, 59.231434>,  <42.132084, 39.355339, 59.162457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085350, 39.580414, 59.231434>,  <42.007458, 39.955536, 59.346394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085350, 39.580414, 59.231434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824705, 0.315160, -0.469613,
		0.530984, -0.145575, 0.834784,
		0.194727, -0.937807, -0.287401,
		42.143768, 39.299072, 59.145214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771244, 39.920368, 59.239220>,  <42.007458, 39.955536, 59.346394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771244, 39.920368, 59.239220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631248, 39.596092, 59.051483>,  <42.547253, 39.401527, 58.938839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631248, 39.596092, 59.051483>,  <42.771244, 39.920368, 59.239220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631248, 39.596092, 59.051483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780994, 0.024136, -0.624073,
		0.517260, -0.584973, 0.624699,
		-0.349987, -0.810694, -0.469345,
		42.526253, 39.352882, 58.910679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312813, 39.425201, 59.130081>,  <42.771244, 39.920368, 59.239220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312813, 39.425201, 59.130081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051781, 39.307724, 58.850685>,  <42.895161, 39.237236, 58.683048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051781, 39.307724, 58.850685>,  <43.312813, 39.425201, 59.130081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051781, 39.307724, 58.850685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729057, 0.007773, -0.684409,
		0.206436, -0.955868, 0.209047,
		-0.652580, -0.293694, -0.698486,
		42.856007, 39.219616, 58.641140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645943, 38.933319, 58.722935>,  <43.312813, 39.425201, 59.130081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645943, 38.933319, 58.722935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353043, 39.070099, 58.487350>,  <43.177303, 39.152168, 58.346001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353043, 39.070099, 58.487350>,  <43.645943, 38.933319, 58.722935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353043, 39.070099, 58.487350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660979, 0.148510, -0.735562,
		-0.164059, -0.927909, -0.334768,
		-0.732251, 0.341950, -0.588964,
		43.133366, 39.172684, 58.310661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821365, 38.801701, 58.058346>,  <43.645943, 38.933319, 58.722935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821365, 38.801701, 58.058346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538239, 39.060707, 57.945412>,  <43.368362, 39.216110, 57.877651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538239, 39.060707, 57.945412>,  <43.821365, 38.801701, 58.058346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538239, 39.060707, 57.945412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587588, 0.317859, -0.744114,
		-0.392086, -0.692594, -0.605461,
		-0.707820, 0.647518, -0.282332,
		43.325893, 39.254963, 57.860710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715591, 38.672073, 57.332077>,  <43.821365, 38.801701, 58.058346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715591, 38.672073, 57.332077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595253, 39.047943, 57.397202>,  <43.523048, 39.273464, 57.436275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595253, 39.047943, 57.397202>,  <43.715591, 38.672073, 57.332077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595253, 39.047943, 57.397202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451960, 0.290815, -0.843302,
		-0.839774, -0.180124, -0.512186,
		-0.300851, 0.939671, 0.162810,
		43.504997, 39.329845, 57.446045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571598, 38.898121, 56.547646>,  <43.715591, 38.672073, 57.332077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571598, 38.898121, 56.547646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638168, 39.210396, 56.788589>,  <43.678108, 39.397762, 56.933155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638168, 39.210396, 56.788589>,  <43.571598, 38.898121, 56.547646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638168, 39.210396, 56.788589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543461, 0.437099, -0.716655,
		-0.822772, 0.446624, -0.351529,
		0.166422, 0.780686, 0.602356,
		43.688095, 39.444603, 56.969296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348343, 39.414307, 56.099598>,  <43.571598, 38.898121, 56.547646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348343, 39.414307, 56.099598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559708, 39.599045, 56.384548>,  <43.686527, 39.709888, 56.555519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559708, 39.599045, 56.384548>,  <43.348343, 39.414307, 56.099598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559708, 39.599045, 56.384548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332192, 0.659717, -0.674108,
		-0.781300, 0.592853, 0.195181,
		0.528411, 0.461843, 0.712378,
		43.718231, 39.737598, 56.598263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234085, 40.223293, 56.067593>,  <43.348343, 39.414307, 56.099598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234085, 40.223293, 56.067593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579781, 40.163986, 56.259884>,  <43.787197, 40.128403, 56.375259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579781, 40.163986, 56.259884>,  <43.234085, 40.223293, 56.067593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579781, 40.163986, 56.259884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472180, 0.568784, -0.673448,
		-0.173582, 0.809013, 0.561575,
		0.864243, -0.148266, 0.480730,
		43.839054, 40.119507, 56.404102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508888, 40.903934, 56.235527>,  <43.234085, 40.223293, 56.067593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508888, 40.903934, 56.235527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822666, 40.655869, 56.233040>,  <44.010933, 40.507030, 56.231548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822666, 40.655869, 56.233040>,  <43.508888, 40.903934, 56.235527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822666, 40.655869, 56.233040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458064, 0.586109, -0.668321,
		0.418114, 0.521414, 0.743847,
		0.784447, -0.620164, -0.006220,
		44.057999, 40.469818, 56.231174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084316, 41.345551, 56.268578>,  <43.508888, 40.903934, 56.235527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084316, 41.345551, 56.268578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252228, 40.994629, 56.175529>,  <44.352974, 40.784077, 56.119701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252228, 40.994629, 56.175529>,  <44.084316, 41.345551, 56.268578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252228, 40.994629, 56.175529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619937, 0.464345, -0.632504,
		0.662919, 0.121302, 0.738799,
		0.419781, -0.877308, -0.232623,
		44.378162, 40.731438, 56.105743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898693, 41.444599, 56.253056>,  <44.084316, 41.345551, 56.268578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898693, 41.444599, 56.253056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778465, 41.130531, 56.036472>,  <44.706329, 40.942093, 55.906525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778465, 41.130531, 56.036472>,  <44.898693, 41.444599, 56.253056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778465, 41.130531, 56.036472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576375, 0.302782, -0.759022,
		0.759900, -0.540220, 0.361543,
		-0.300571, -0.785166, -0.541454,
		44.688293, 40.894981, 55.874035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531925, 41.186367, 56.019604>,  <44.898693, 41.444599, 56.253056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531925, 41.186367, 56.019604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254025, 41.047272, 55.767765>,  <45.087284, 40.963814, 55.616661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254025, 41.047272, 55.767765>,  <45.531925, 41.186367, 56.019604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254025, 41.047272, 55.767765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625286, 0.140565, -0.767632,
		0.355432, -0.926996, 0.119776,
		-0.694755, -0.347735, -0.629599,
		45.045597, 40.942951, 55.578884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867302, 40.700848, 55.650528>,  <45.531925, 41.186367, 56.019604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867302, 40.700848, 55.650528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543800, 40.789963, 55.432800>,  <45.349701, 40.843433, 55.302166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543800, 40.789963, 55.432800>,  <45.867302, 40.700848, 55.650528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543800, 40.789963, 55.432800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568832, 0.061075, -0.820183,
		-0.149486, -0.972951, -0.176125,
		-0.808755, 0.222791, -0.544316,
		45.301174, 40.856800, 55.269505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.880257, 40.310608, 55.034115>,  <45.867302, 40.700848, 55.650528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.880257, 40.310608, 55.034115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618874, 40.599274, 54.942730>,  <45.462044, 40.772472, 54.887901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618874, 40.599274, 54.942730>,  <45.880257, 40.310608, 55.034115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618874, 40.599274, 54.942730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464208, 0.143648, -0.874000,
		-0.597917, -0.677175, -0.428870,
		-0.653458, 0.721664, -0.228460,
		45.422836, 40.815773, 54.874191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.639923, 40.076321, 54.346352>,  <45.880257, 40.310608, 55.034115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.639923, 40.076321, 54.346352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560204, 40.464943, 54.397526>,  <45.512371, 40.698116, 54.428230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560204, 40.464943, 54.397526>,  <45.639923, 40.076321, 54.346352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560204, 40.464943, 54.397526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406396, 0.200747, -0.891372,
		-0.891697, -0.125654, -0.434843,
		-0.199297, 0.971551, 0.127940,
		45.500416, 40.756409, 54.435909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346008, 40.289715, 53.724075>,  <45.639923, 40.076321, 54.346352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346008, 40.289715, 53.724075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.509521, 40.610382, 53.898537>,  <45.607628, 40.802784, 54.003212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.509521, 40.610382, 53.898537>,  <45.346008, 40.289715, 53.724075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.509521, 40.610382, 53.898537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437086, 0.247561, -0.864679,
		-0.801159, 0.544098, -0.249200,
		0.408778, 0.801667, 0.436153,
		45.632156, 40.850883, 54.029381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188412, 40.866817, 53.362045>,  <45.346008, 40.289715, 53.724075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188412, 40.866817, 53.362045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483170, 41.008064, 53.592625>,  <45.660023, 41.092812, 53.730972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483170, 41.008064, 53.592625>,  <45.188412, 40.866817, 53.362045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483170, 41.008064, 53.592625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478035, 0.330739, -0.813692,
		-0.477983, 0.875168, 0.074918,
		0.736896, 0.353117, 0.576448,
		45.704239, 41.113998, 53.765560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312954, 41.599033, 53.167881>,  <45.188412, 40.866817, 53.362045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312954, 41.599033, 53.167881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644836, 41.438698, 53.323273>,  <45.843967, 41.342499, 53.416508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644836, 41.438698, 53.323273>,  <45.312954, 41.599033, 53.167881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644836, 41.438698, 53.323273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485848, 0.175898, -0.856161,
		0.274847, 0.899106, 0.340689,
		0.829705, -0.400836, 0.388484,
		45.893749, 41.318447, 53.439819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903889, 42.089264, 53.175449>,  <45.312954, 41.599033, 53.167881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903889, 42.089264, 53.175449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.122665, 41.759529, 53.233868>,  <46.253933, 41.561687, 53.268917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.122665, 41.759529, 53.233868>,  <45.903889, 42.089264, 53.175449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.122665, 41.759529, 53.233868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570846, 0.239626, -0.785311,
		0.612363, 0.512886, 0.601630,
		0.546942, -0.824334, 0.146041,
		46.286747, 41.512230, 53.277679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.588882, 42.307434, 53.099609>,  <45.903889, 42.089264, 53.175449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.588882, 42.307434, 53.099609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.619377, 41.909782, 53.068913>,  <46.637676, 41.671192, 53.050495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.619377, 41.909782, 53.068913>,  <46.588882, 42.307434, 53.099609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.619377, 41.909782, 53.068913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704979, 0.108169, -0.700931,
		0.705118, -0.000661, 0.709089,
		0.076238, -0.994132, -0.076738,
		46.642250, 41.611542, 53.045891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.314846, 42.066372, 53.325191>,  <46.588882, 42.307434, 53.099609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.314846, 42.066372, 53.325191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179070, 41.776489, 53.085331>,  <47.097603, 41.602558, 52.941414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179070, 41.776489, 53.085331>,  <47.314846, 42.066372, 53.325191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.179070, 41.776489, 53.085331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837844, 0.056817, -0.542945,
		0.427545, -0.686712, 0.587905,
		-0.339444, -0.724706, -0.599649,
		47.077236, 41.559078, 52.905437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.891708, 41.677315, 53.152935>,  <47.314846, 42.066372, 53.325191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.891708, 41.677315, 53.152935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625381, 41.547501, 52.884201>,  <47.465584, 41.469612, 52.722961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625381, 41.547501, 52.884201>,  <47.891708, 41.677315, 53.152935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.625381, 41.547501, 52.884201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738135, -0.155177, -0.656564,
		0.108823, -0.933059, 0.342870,
		-0.665818, -0.324534, -0.671836,
		47.425636, 41.450142, 52.682652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.278942, 41.159084, 52.846897>,  <47.891708, 41.677315, 53.152935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.278942, 41.159084, 52.846897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.986359, 41.268547, 52.597073>,  <47.810806, 41.334225, 52.447178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.986359, 41.268547, 52.597073>,  <48.278942, 41.159084, 52.846897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.986359, 41.268547, 52.597073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642900, -0.028479, -0.765421,
		-0.227249, -0.961406, -0.155102,
		-0.731463, 0.273656, -0.624559,
		47.766918, 41.350643, 52.409706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.267937, 40.637833, 52.211803>,  <48.278942, 41.159084, 52.846897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.267937, 40.637833, 52.211803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.103226, 40.987129, 52.107582>,  <48.004398, 41.196709, 52.045048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.103226, 40.987129, 52.107582>,  <48.267937, 40.637833, 52.211803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.103226, 40.987129, 52.107582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539478, 0.003162, -0.841994,
		-0.734441, -0.487277, -0.472396,
		-0.411778, 0.873242, -0.260553,
		47.979691, 41.249104, 52.029415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.239525, 40.494289, 51.519524>,  <48.267937, 40.637833, 52.211803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.239525, 40.494289, 51.519524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.207001, 40.887352, 51.586182>,  <48.187485, 41.123192, 51.626175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.207001, 40.887352, 51.586182>,  <48.239525, 40.494289, 51.519524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.207001, 40.887352, 51.586182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590904, 0.182173, -0.785904,
		-0.802634, 0.034568, -0.595470,
		-0.081311, 0.982659, 0.166644,
		48.182606, 41.182148, 51.636173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.034157, 40.793461, 50.856392>,  <48.239525, 40.494289, 51.519524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.034157, 40.793461, 50.856392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.146729, 41.098381, 51.089527>,  <48.214272, 41.281334, 51.229408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.146729, 41.098381, 51.089527>,  <48.034157, 40.793461, 50.856392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.146729, 41.098381, 51.089527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689208, 0.262041, -0.675520,
		-0.667673, 0.591810, -0.451634,
		0.281433, 0.762296, 0.582838,
		48.231159, 41.327068, 51.264378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.930023, 41.359188, 50.561848>,  <48.034157, 40.793461, 50.856392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.930023, 41.359188, 50.561848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.236427, 41.447655, 50.803280>,  <48.420269, 41.500736, 50.948139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.236427, 41.447655, 50.803280>,  <47.930023, 41.359188, 50.561848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.236427, 41.447655, 50.803280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532314, 0.308140, -0.788474,
		-0.360375, 0.925275, 0.118306,
		0.766010, 0.221170, 0.603583,
		48.466228, 41.514008, 50.984356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.287781, 41.896332, 50.122341>,  <47.930023, 41.359188, 50.561848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.287781, 41.896332, 50.122341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.535599, 41.803955, 50.422428>,  <48.684288, 41.748528, 50.602482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.535599, 41.803955, 50.422428>,  <48.287781, 41.896332, 50.122341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.535599, 41.803955, 50.422428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779746, 0.291071, -0.554323,
		-0.090349, 0.928409, 0.360409,
		0.619543, -0.230945, 0.750221,
		48.721462, 41.734673, 50.647495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.739704, 42.437183, 50.189831>,  <48.287781, 41.896332, 50.122341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.739704, 42.437183, 50.189831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.921913, 42.123169, 50.357742>,  <49.031239, 41.934761, 50.458488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.921913, 42.123169, 50.357742>,  <48.739704, 42.437183, 50.189831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.921913, 42.123169, 50.357742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759861, 0.097207, -0.642777,
		0.463798, 0.611774, 0.640799,
		0.455524, -0.785037, 0.419779,
		49.058571, 41.887657, 50.483677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.500862, 42.602951, 50.348137>,  <48.739704, 42.437183, 50.189831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.500862, 42.602951, 50.348137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.478111, 42.204498, 50.321350>,  <49.464458, 41.965427, 50.305279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.478111, 42.204498, 50.321350>,  <49.500862, 42.602951, 50.348137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.478111, 42.204498, 50.321350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803251, -0.005829, -0.595613,
		0.592919, -0.087667, 0.800476,
		-0.056882, -0.996133, -0.066962,
		49.461048, 41.905659, 50.301262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.179554, 42.262749, 50.513756>,  <49.500862, 42.602951, 50.348137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.179554, 42.262749, 50.513756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.993294, 41.998970, 50.277687>,  <49.881538, 41.840702, 50.136047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.993294, 41.998970, 50.277687>,  <50.179554, 42.262749, 50.513756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.993294, 41.998970, 50.277687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848304, -0.142639, -0.509936,
		0.252096, -0.738092, 0.625833,
		-0.465648, -0.659450, -0.590168,
		49.853600, 41.801136, 50.100636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.547104, 41.654346, 50.498211>,  <50.179554, 42.262749, 50.513756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.547104, 41.654346, 50.498211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.328949, 41.630165, 50.163811>,  <50.198055, 41.615658, 49.963169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.328949, 41.630165, 50.163811>,  <50.547104, 41.654346, 50.498211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.328949, 41.630165, 50.163811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834954, -0.126694, -0.535538,
		-0.073542, -0.990098, 0.119572,
		-0.545384, -0.060452, -0.836004,
		50.165333, 41.612030, 49.913010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.070679, 41.436615, 50.076172>,  <50.547104, 41.654346, 50.498211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.070679, 41.436615, 50.076172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.768456, 41.561218, 49.845657>,  <50.587124, 41.635979, 49.707348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.768456, 41.561218, 49.845657>,  <51.070679, 41.436615, 50.076172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.768456, 41.561218, 49.845657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647461, 0.221269, -0.729270,
		-0.099659, -0.924123, -0.368870,
		-0.755554, 0.311506, -0.576282,
		50.541790, 41.654671, 49.672771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.310860, 41.282169, 49.413437>,  <51.070679, 41.436615, 50.076172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.310860, 41.282169, 49.413437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.014763, 41.536728, 49.326679>,  <50.837105, 41.689461, 49.274624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.014763, 41.536728, 49.326679>,  <51.310860, 41.282169, 49.413437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.014763, 41.536728, 49.326679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541005, 0.372262, -0.754145,
		-0.399192, -0.675591, -0.619857,
		-0.740243, 0.636394, -0.216894,
		50.792690, 41.727646, 49.261612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.216923, 41.375675, 48.665451>,  <51.310860, 41.282169, 49.413437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.216923, 41.375675, 48.665451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.050850, 41.721909, 48.777443>,  <50.951206, 41.929649, 48.844639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.050850, 41.721909, 48.777443>,  <51.216923, 41.375675, 48.665451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.050850, 41.721909, 48.777443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542789, 0.482666, -0.687324,
		-0.730073, -0.133394, -0.670223,
		-0.415179, 0.865586, 0.279977,
		50.926296, 41.981583, 48.861435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.125336, 41.776787, 48.063450>,  <51.216923, 41.375675, 48.665451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.125336, 41.776787, 48.063450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.060547, 42.061058, 48.337296>,  <51.021675, 42.231621, 48.501602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.060547, 42.061058, 48.337296>,  <51.125336, 41.776787, 48.063450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.060547, 42.061058, 48.337296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234556, 0.701619, -0.672840,
		-0.958515, 0.051602, -0.280334,
		-0.161968, 0.710681, 0.684616,
		51.011955, 42.274261, 48.542679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.660828, 42.146610, 47.735168>,  <51.125336, 41.776787, 48.063450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.660828, 42.146610, 47.735168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.853775, 42.371429, 48.003922>,  <50.969543, 42.506321, 48.165173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.853775, 42.371429, 48.003922>,  <50.660828, 42.146610, 47.735168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.853775, 42.371429, 48.003922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190085, 0.681578, -0.706625,
		-0.855095, 0.468569, 0.221936,
		0.482369, 0.562045, 0.671883,
		50.998486, 42.540043, 48.205486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.350319, 42.864601, 47.677528>,  <50.660828, 42.146610, 47.735168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.350319, 42.864601, 47.677528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.695465, 42.940544, 47.864899>,  <50.902554, 42.986111, 47.977322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.695465, 42.940544, 47.864899>,  <50.350319, 42.864601, 47.677528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.695465, 42.940544, 47.864899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083526, 0.860462, -0.502622,
		-0.498487, 0.472820, 0.726603,
		0.862864, 0.189861, 0.468421,
		50.954323, 42.997501, 48.005424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.351246, 43.570560, 47.826878>,  <50.350319, 42.864601, 47.677528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.351246, 43.570560, 47.826878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.736916, 43.464714, 47.834297>,  <50.968319, 43.401207, 47.838749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.736916, 43.464714, 47.834297>,  <50.351246, 43.570560, 47.826878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.736916, 43.464714, 47.834297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220501, 0.760636, -0.610584,
		0.147465, 0.592799, 0.791734,
		0.964175, -0.264618, 0.018546,
		51.026169, 43.385330, 47.839859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.803852, 44.263054, 47.896004>,  <50.351246, 43.570560, 47.826878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.803852, 44.263054, 47.896004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.053947, 43.982010, 47.760109>,  <51.204006, 43.813385, 47.678574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.053947, 43.982010, 47.760109>,  <50.803852, 44.263054, 47.896004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.053947, 43.982010, 47.760109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373577, 0.651646, -0.660150,
		0.685214, 0.285833, 0.669912,
		0.625238, -0.702607, -0.339736,
		51.241520, 43.771229, 47.658188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.399517, 44.672241, 47.517338>,  <50.803852, 44.263054, 47.896004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.399517, 44.672241, 47.517338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.295853, 45.057472, 47.488163>,  <51.233654, 45.288609, 47.470657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.295853, 45.057472, 47.488163>,  <51.399517, 44.672241, 47.517338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.295853, 45.057472, 47.488163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830895, -0.183821, 0.525188,
		0.492389, 0.196713, 0.847854,
		-0.259165, 0.963075, -0.072937,
		51.218102, 45.346394, 47.466282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.251755, 45.054642, 48.251060>,  <51.399517, 44.672241, 47.517338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.251755, 45.054642, 48.251060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.046577, 45.260193, 47.976013>,  <50.923473, 45.383526, 47.810986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.046577, 45.260193, 47.976013>,  <51.251755, 45.054642, 48.251060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.046577, 45.260193, 47.976013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823420, -0.068129, 0.563328,
		0.242637, 0.855151, 0.458087,
		-0.512940, 0.513882, -0.687618,
		50.892696, 45.414356, 47.769730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.820251, 45.635803, 48.677597>,  <51.251755, 45.054642, 48.251060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.820251, 45.635803, 48.677597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.643951, 45.581245, 48.322716>,  <50.538170, 45.548512, 48.109787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.643951, 45.581245, 48.322716>,  <50.820251, 45.635803, 48.677597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.643951, 45.581245, 48.322716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889732, -0.064432, 0.451913,
		-0.118802, 0.988558, -0.092954,
		-0.440753, -0.136392, -0.887206,
		50.511726, 45.540329, 48.056553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.263145, 46.129814, 48.715790>,  <50.820251, 45.635803, 48.677597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.263145, 46.129814, 48.715790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.172653, 45.894203, 48.405472>,  <50.118359, 45.752838, 48.219280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.172653, 45.894203, 48.405472>,  <50.263145, 46.129814, 48.715790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.172653, 45.894203, 48.405472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973308, 0.105134, 0.204006,
		-0.038603, 0.801244, -0.597091,
		-0.226233, -0.589029, -0.775799,
		50.104782, 45.717495, 48.172733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.648289, 46.408520, 48.417618>,  <50.263145, 46.129814, 48.715790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.648289, 46.408520, 48.417618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.681206, 46.022240, 48.319099>,  <49.700954, 45.790474, 48.259991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.681206, 46.022240, 48.319099>,  <49.648289, 46.408520, 48.417618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.681206, 46.022240, 48.319099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923797, -0.166640, 0.344718,
		-0.373935, 0.199157, -0.905820,
		0.082293, -0.965696, -0.246293,
		49.705894, 45.732533, 48.245213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.993454, 46.311649, 48.234375>,  <49.648289, 46.408520, 48.417618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.993454, 46.311649, 48.234375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.123688, 45.934235, 48.258812>,  <49.201828, 45.707787, 48.273476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.123688, 45.934235, 48.258812>,  <48.993454, 46.311649, 48.234375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.123688, 45.934235, 48.258812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780520, -0.231745, 0.580588,
		-0.533648, -0.236715, -0.811903,
		0.325588, -0.943536, 0.061091,
		49.221363, 45.651173, 48.277138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.365459, 45.906902, 48.236717>,  <48.993454, 46.311649, 48.234375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.365459, 45.906902, 48.236717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.638321, 45.657440, 48.389412>,  <48.802036, 45.507763, 48.481030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.638321, 45.657440, 48.389412>,  <48.365459, 45.906902, 48.236717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.638321, 45.657440, 48.389412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670525, -0.325283, 0.666774,
		-0.291666, -0.710804, -0.640070,
		0.682149, -0.623658, 0.381737,
		48.842964, 45.470345, 48.503933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.074558, 45.276081, 48.190544>,  <48.365459, 45.906902, 48.236717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.074558, 45.276081, 48.190544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.347755, 45.278214, 48.482704>,  <48.511673, 45.279491, 48.658001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.347755, 45.278214, 48.482704>,  <48.074558, 45.276081, 48.190544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.347755, 45.278214, 48.482704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705549, -0.253911, 0.661611,
		0.188985, -0.967213, -0.169659,
		0.682998, 0.005332, 0.730402,
		48.552654, 45.279812, 48.701824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.949116, 44.728317, 48.736240>,  <48.074558, 45.276081, 48.190544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.949116, 44.728317, 48.736240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.176506, 44.991371, 48.933968>,  <48.312943, 45.149204, 49.052605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.176506, 44.991371, 48.933968>,  <47.949116, 44.728317, 48.736240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.176506, 44.991371, 48.933968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544445, -0.149731, 0.825324,
		0.616775, -0.738309, 0.272926,
		0.568479, 0.657632, 0.494319,
		48.347050, 45.188660, 49.082264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.236298, 44.324238, 49.228958>,  <47.949116, 44.728317, 48.736240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.236298, 44.324238, 49.228958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.259453, 44.704468, 49.350983>,  <48.273346, 44.932606, 49.424198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.259453, 44.704468, 49.350983>,  <48.236298, 44.324238, 49.228958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.259453, 44.704468, 49.350983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168071, -0.291930, 0.941557,
		0.984074, -0.105772, 0.142866,
		0.057883, 0.950573, 0.305058,
		48.276817, 44.989639, 49.442501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.580315, 44.277126, 49.876041>,  <48.236298, 44.324238, 49.228958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.580315, 44.277126, 49.876041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.434776, 44.649696, 49.879211>,  <48.347454, 44.873238, 49.881115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.434776, 44.649696, 49.879211>,  <48.580315, 44.277126, 49.876041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.434776, 44.649696, 49.879211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026462, 0.001832, 0.999648,
		0.931084, 0.363927, -0.025314,
		-0.363845, 0.931426, 0.007924,
		48.325623, 44.929123, 49.881588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.976532, 44.604374, 50.370544>,  <48.580315, 44.277126, 49.876041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.976532, 44.604374, 50.370544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.629807, 44.797523, 50.320805>,  <48.421772, 44.913414, 50.290958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.629807, 44.797523, 50.320805>,  <48.976532, 44.604374, 50.370544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.629807, 44.797523, 50.320805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120080, 0.039897, 0.991962,
		0.483957, 0.874779, 0.023401,
		-0.866814, 0.482878, -0.124352,
		48.369762, 44.942387, 50.283501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.818306, 44.785015, 51.055286>,  <48.976532, 44.604374, 50.370544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.818306, 44.785015, 51.055286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.478638, 44.918449, 50.891514>,  <48.274837, 44.998508, 50.793251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.478638, 44.918449, 50.891514>,  <48.818306, 44.785015, 51.055286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.478638, 44.918449, 50.891514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433218, 0.003404, 0.901282,
		0.302050, 0.942713, 0.141625,
		-0.849169, 0.333587, -0.409429,
		48.223888, 45.018524, 50.768684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.579369, 45.330032, 51.469143>,  <48.818306, 44.785015, 51.055286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.579369, 45.330032, 51.469143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.265198, 45.161613, 51.287670>,  <48.076694, 45.060562, 51.178787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.265198, 45.161613, 51.287670>,  <48.579369, 45.330032, 51.469143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.265198, 45.161613, 51.287670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456655, -0.100612, 0.883937,
		-0.417823, 0.901443, -0.113249,
		-0.785424, -0.421045, -0.453686,
		48.029572, 45.035301, 51.151566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.026733, 45.660175, 51.904320>,  <48.579369, 45.330032, 51.469143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.026733, 45.660175, 51.904320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.867813, 45.343895, 51.718010>,  <47.772461, 45.154129, 51.606224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.867813, 45.343895, 51.718010>,  <48.026733, 45.660175, 51.904320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.867813, 45.343895, 51.718010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562122, -0.191502, 0.804578,
		-0.725376, 0.581483, -0.368385,
		-0.397302, -0.790699, -0.465775,
		47.748623, 45.106686, 51.578278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.341408, 45.729725, 51.933308>,  <48.026733, 45.660175, 51.904320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.341408, 45.729725, 51.933308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.412827, 45.338104, 51.894169>,  <47.455677, 45.103130, 51.870686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.412827, 45.338104, 51.894169>,  <47.341408, 45.729725, 51.933308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.412827, 45.338104, 51.894169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736737, -0.198946, 0.646250,
		-0.652180, -0.043297, -0.756826,
		0.178549, -0.979053, -0.097850,
		47.466393, 45.044388, 51.864815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.643211, 45.453999, 51.754940>,  <47.341408, 45.729725, 51.933308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.643211, 45.453999, 51.754940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865387, 45.148155, 51.885696>,  <46.998692, 44.964649, 51.964149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865387, 45.148155, 51.885696>,  <46.643211, 45.453999, 51.754940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865387, 45.148155, 51.885696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686626, -0.199957, 0.698972,
		-0.469077, -0.612689, -0.636065,
		0.555439, -0.764610, 0.326893,
		47.032021, 44.918774, 51.983765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.184689, 44.920181, 51.859112>,  <46.643211, 45.453999, 51.754940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.184689, 44.920181, 51.859112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477310, 44.759842, 52.079708>,  <46.652885, 44.663639, 52.212067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477310, 44.759842, 52.079708>,  <46.184689, 44.920181, 51.859112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.477310, 44.759842, 52.079708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679061, -0.356224, 0.641858,
		-0.060834, -0.844052, -0.532799,
		0.731557, -0.400849, 0.551492,
		46.696777, 44.639587, 52.245155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071640, 44.124245, 51.966812>,  <46.184689, 44.920181, 51.859112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071640, 44.124245, 51.966812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.305786, 44.267090, 52.257965>,  <46.446274, 44.352798, 52.432659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.305786, 44.267090, 52.257965>,  <46.071640, 44.124245, 51.966812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.305786, 44.267090, 52.257965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530615, -0.510062, 0.676967,
		0.613019, -0.782501, -0.109085,
		0.585368, 0.357112, 0.727884,
		46.481396, 44.374222, 52.476330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928993, 43.636761, 52.367207>,  <46.071640, 44.124245, 51.966812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928993, 43.636761, 52.367207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.160446, 43.871414, 52.593849>,  <46.299320, 44.012207, 52.729836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.160446, 43.871414, 52.593849>,  <45.928993, 43.636761, 52.367207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.160446, 43.871414, 52.593849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137842, -0.614387, 0.776871,
		0.803853, -0.527628, -0.274643,
		0.578636, 0.586633, 0.566607,
		46.334038, 44.047405, 52.763832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376160, 43.158749, 52.819057>,  <45.928993, 43.636761, 52.367207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376160, 43.158749, 52.819057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322861, 43.507233, 53.008045>,  <46.290882, 43.716324, 53.121437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322861, 43.507233, 53.008045>,  <46.376160, 43.158749, 52.819057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322861, 43.507233, 53.008045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416325, -0.481826, 0.771049,
		0.899400, -0.093964, 0.426909,
		-0.133246, 0.871214, 0.472474,
		46.282887, 43.768597, 53.149788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.657604, 43.149605, 53.517025>,  <46.376160, 43.158749, 52.819057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.657604, 43.149605, 53.517025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.381653, 43.438652, 53.499649>,  <46.216084, 43.612080, 53.489223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.381653, 43.438652, 53.499649>,  <46.657604, 43.149605, 53.517025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.381653, 43.438652, 53.499649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513212, -0.445869, 0.733358,
		0.510571, 0.528222, 0.678453,
		-0.689877, 0.722622, -0.043443,
		46.174690, 43.655437, 53.486618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.344887, 43.108276, 54.194344>,  <46.657604, 43.149605, 53.517025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.344887, 43.108276, 54.194344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094948, 43.366135, 54.018162>,  <45.944984, 43.520847, 53.912453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094948, 43.366135, 54.018162>,  <46.344887, 43.108276, 54.194344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094948, 43.366135, 54.018162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745560, -0.325206, 0.581705,
		0.231753, 0.691864, 0.683824,
		-0.624844, 0.644643, -0.440459,
		45.907494, 43.559528, 53.886024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009796, 43.581055, 54.723328>,  <46.344887, 43.108276, 54.194344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009796, 43.581055, 54.723328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782974, 43.522629, 54.399078>,  <45.646881, 43.487572, 54.204529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782974, 43.522629, 54.399078>,  <46.009796, 43.581055, 54.723328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782974, 43.522629, 54.399078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795235, -0.159326, 0.584993,
		-0.214602, 0.976360, -0.025811,
		-0.567052, -0.146067, -0.810628,
		45.612858, 43.478809, 54.155891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525864, 44.000156, 54.847652>,  <46.009796, 43.581055, 54.723328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525864, 44.000156, 54.847652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376930, 43.725403, 54.597992>,  <45.287571, 43.560551, 54.448196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376930, 43.725403, 54.597992>,  <45.525864, 44.000156, 54.847652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376930, 43.725403, 54.597992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802601, -0.099400, 0.588176,
		-0.466047, 0.719941, -0.514281,
		-0.372333, -0.686881, -0.624150,
		45.265232, 43.519341, 54.410748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782669, 44.182411, 54.700932>,  <45.525864, 44.000156, 54.847652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782669, 44.182411, 54.700932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797569, 43.794647, 54.603886>,  <44.806507, 43.561989, 54.545658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797569, 43.794647, 54.603886>,  <44.782669, 44.182411, 54.700932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797569, 43.794647, 54.603886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913948, -0.131226, 0.384028,
		-0.404117, 0.207433, -0.890876,
		0.037246, -0.969408, -0.242614,
		44.808743, 43.503826, 54.531101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219589, 44.016766, 54.338264>,  <44.782669, 44.182411, 54.700932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219589, 44.016766, 54.338264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340469, 43.673363, 54.503983>,  <44.412998, 43.467319, 54.603413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340469, 43.673363, 54.503983>,  <44.219589, 44.016766, 54.338264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340469, 43.673363, 54.503983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919356, -0.147640, 0.364673,
		-0.251909, -0.491087, -0.833892,
		0.302202, -0.858508, 0.414292,
		44.431129, 43.415810, 54.628269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671257, 43.760555, 54.329670>,  <44.219589, 44.016766, 54.338264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671257, 43.760555, 54.329670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881851, 43.518822, 54.568867>,  <44.008205, 43.373779, 54.712383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881851, 43.518822, 54.568867>,  <43.671257, 43.760555, 54.329670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881851, 43.518822, 54.568867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846584, -0.307971, 0.434107,
		-0.078183, -0.734800, -0.673763,
		0.526481, -0.604337, 0.597991,
		44.039795, 43.337521, 54.748264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300426, 43.137688, 54.312641>,  <43.671257, 43.760555, 54.329670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300426, 43.137688, 54.312641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515717, 43.150383, 54.649525>,  <43.644890, 43.158001, 54.851654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515717, 43.150383, 54.649525>,  <43.300426, 43.137688, 54.312641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515717, 43.150383, 54.649525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824297, -0.188434, 0.533880,
		0.175646, -0.981573, -0.075257,
		0.538223, 0.031740, 0.842205,
		43.677185, 43.159904, 54.902187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147320, 42.492290, 54.617531>,  <43.300426, 43.137688, 54.312641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147320, 42.492290, 54.617531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291176, 42.703491, 54.925266>,  <43.377491, 42.830212, 55.109905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291176, 42.703491, 54.925266>,  <43.147320, 42.492290, 54.617531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291176, 42.703491, 54.925266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763517, -0.307433, 0.567914,
		0.536378, -0.791644, 0.292573,
		0.359639, 0.528001, 0.769334,
		43.399067, 42.861893, 55.156067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092297, 42.013992, 55.217075>,  <43.147320, 42.492290, 54.617531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092297, 42.013992, 55.217075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106781, 42.389442, 55.354282>,  <43.115471, 42.614712, 55.436607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106781, 42.389442, 55.354282>,  <43.092297, 42.013992, 55.217075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106781, 42.389442, 55.354282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713793, -0.215941, 0.666235,
		0.699421, -0.268970, 0.662168,
		0.036208, 0.938629, 0.343022,
		43.117645, 42.671032, 55.457188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033722, 41.927212, 55.945583>,  <43.092297, 42.013992, 55.217075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033722, 41.927212, 55.945583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914436, 42.299644, 55.861534>,  <42.842865, 42.523106, 55.811104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914436, 42.299644, 55.861534>,  <43.033722, 41.927212, 55.945583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914436, 42.299644, 55.861534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769406, -0.104204, 0.630203,
		0.564876, 0.349605, 0.747457,
		-0.298210, 0.931085, -0.210125,
		42.824974, 42.578968, 55.798496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930607, 42.284435, 56.527920>,  <43.033722, 41.927212, 55.945583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930607, 42.284435, 56.527920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708427, 42.526871, 56.300190>,  <42.575119, 42.672333, 56.163551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708427, 42.526871, 56.300190>,  <42.930607, 42.284435, 56.527920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708427, 42.526871, 56.300190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736171, -0.040030, 0.675611,
		0.386693, 0.794386, 0.468423,
		-0.555446, 0.606093, -0.569325,
		42.541794, 42.708698, 56.129391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668430, 42.726490, 57.041935>,  <42.930607, 42.284435, 56.527920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668430, 42.726490, 57.041935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441597, 42.759666, 56.714146>,  <42.305496, 42.779572, 56.517471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441597, 42.759666, 56.714146>,  <42.668430, 42.726490, 57.041935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441597, 42.759666, 56.714146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823245, -0.088635, 0.560724,
		-0.026125, 0.992604, 0.118548,
		-0.567085, 0.082945, -0.819472,
		42.271473, 42.784550, 56.468304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234905, 43.275333, 57.269073>,  <42.668430, 42.726490, 57.041935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234905, 43.275333, 57.269073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064995, 43.081528, 56.963181>,  <41.963051, 42.965244, 56.779644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064995, 43.081528, 56.963181>,  <42.234905, 43.275333, 57.269073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064995, 43.081528, 56.963181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886370, 0.050744, 0.460187,
		-0.184161, 0.873311, -0.451012,
		-0.424773, -0.484513, -0.764732,
		41.937561, 42.936172, 56.733761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645348, 43.608955, 57.157036>,  <42.234905, 43.275333, 57.269073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645348, 43.608955, 57.157036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592113, 43.238861, 57.014923>,  <41.560173, 43.016804, 56.929657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592113, 43.238861, 57.014923>,  <41.645348, 43.608955, 57.157036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592113, 43.238861, 57.014923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874760, -0.058859, 0.480969,
		-0.465921, 0.374799, -0.801526,
		-0.133089, -0.925236, -0.355282,
		41.552185, 42.961288, 56.908337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955822, 43.566429, 56.972916>,  <41.645348, 43.608955, 57.157036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955822, 43.566429, 56.972916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028244, 43.173164, 56.982849>,  <41.071697, 42.937206, 56.988808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028244, 43.173164, 56.982849>,  <40.955822, 43.566429, 56.972916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028244, 43.173164, 56.982849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886304, -0.152170, 0.437390,
		-0.426246, -0.101197, -0.898929,
		0.181053, -0.983160, 0.024830,
		41.082561, 42.878216, 56.990299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307644, 43.192577, 56.763519>,  <40.955822, 43.566429, 56.972916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307644, 43.192577, 56.763519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532990, 42.933876, 56.969170>,  <40.668198, 42.778656, 57.092560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532990, 42.933876, 56.969170>,  <40.307644, 43.192577, 56.763519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532990, 42.933876, 56.969170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749996, -0.139283, 0.646611,
		-0.346590, -0.749873, -0.563531,
		0.563366, -0.646755, 0.514128,
		40.702000, 42.739849, 57.123409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729755, 42.744724, 56.384342>,  <40.307644, 43.192577, 56.763519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729755, 42.744724, 56.384342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380905, 42.855782, 56.223186>,  <39.171597, 42.922417, 56.126492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380905, 42.855782, 56.223186>,  <39.729755, 42.744724, 56.384342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380905, 42.855782, 56.223186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482345, 0.626097, -0.612655,
		0.082149, -0.728641, -0.679951,
		-0.872121, 0.277642, -0.402890,
		39.119270, 42.939075, 56.102318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673183, 42.543270, 55.581970>,  <39.729755, 42.744724, 56.384342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673183, 42.543270, 55.581970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460541, 42.861870, 55.697197>,  <39.332954, 43.053028, 55.766331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460541, 42.861870, 55.697197>,  <39.673183, 42.543270, 55.581970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460541, 42.861870, 55.697197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610224, 0.596031, -0.521893,
		-0.587382, -0.101661, -0.802899,
		-0.531609, 0.796499, 0.288062,
		39.301060, 43.100819, 55.783615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494370, 42.687069, 54.933910>,  <39.673183, 42.543270, 55.581970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494370, 42.687069, 54.933910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437679, 43.003136, 55.172424>,  <39.403664, 43.192776, 55.315533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437679, 43.003136, 55.172424>,  <39.494370, 42.687069, 54.933910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437679, 43.003136, 55.172424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415031, 0.594294, -0.688886,
		-0.898701, 0.149842, -0.412170,
		-0.141727, 0.790166, 0.596282,
		39.395161, 43.240185, 55.351307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220882, 43.138828, 54.500694>,  <39.494370, 42.687069, 54.933910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220882, 43.138828, 54.500694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370453, 43.362480, 54.796680>,  <39.460194, 43.496670, 54.974274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370453, 43.362480, 54.796680>,  <39.220882, 43.138828, 54.500694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370453, 43.362480, 54.796680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557470, 0.502134, -0.661127,
		-0.741219, 0.659723, -0.123936,
		0.373928, 0.559130, 0.739967,
		39.482632, 43.530220, 55.018669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131287, 43.752590, 54.262154>,  <39.220882, 43.138828, 54.500694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131287, 43.752590, 54.262154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431938, 43.755569, 54.525970>,  <39.612328, 43.757359, 54.684261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431938, 43.755569, 54.525970>,  <39.131287, 43.752590, 54.262154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431938, 43.755569, 54.525970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618504, 0.339427, -0.708691,
		-0.229144, 0.940603, 0.250517,
		0.751629, 0.007447, 0.659544,
		39.657429, 43.757805, 54.723835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551807, 44.299870, 54.048500>,  <39.131287, 43.752590, 54.262154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551807, 44.299870, 54.048500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804840, 44.146599, 54.317730>,  <39.956657, 44.054638, 54.479267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804840, 44.146599, 54.317730>,  <39.551807, 44.299870, 54.048500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804840, 44.146599, 54.317730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774245, 0.335046, -0.536925,
		-0.019774, 0.860768, 0.508613,
		0.632577, -0.383174, 0.673071,
		39.994614, 44.031647, 54.519650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008549, 44.832161, 54.239098>,  <39.551807, 44.299870, 54.048500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008549, 44.832161, 54.239098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191261, 44.493408, 54.348011>,  <40.300888, 44.290157, 54.413361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191261, 44.493408, 54.348011>,  <40.008549, 44.832161, 54.239098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191261, 44.493408, 54.348011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787455, 0.242539, -0.566647,
		0.413846, 0.473242, 0.777671,
		0.456778, -0.846886, 0.272283,
		40.328293, 44.239342, 54.429695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794846, 44.996346, 54.510101>,  <40.008549, 44.832161, 54.239098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794846, 44.996346, 54.510101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775902, 44.626297, 54.359421>,  <40.764534, 44.404266, 54.269012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775902, 44.626297, 54.359421>,  <40.794846, 44.996346, 54.510101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775902, 44.626297, 54.359421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786687, 0.197845, -0.584791,
		0.615532, -0.324042, 0.718413,
		-0.047362, -0.925124, -0.376700,
		40.761692, 44.348759, 54.246410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475441, 44.735573, 54.465126>,  <40.794846, 44.996346, 54.510101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475441, 44.735573, 54.465126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276260, 44.495575, 54.214672>,  <41.156754, 44.351578, 54.064400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276260, 44.495575, 54.214672>,  <41.475441, 44.735573, 54.465126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276260, 44.495575, 54.214672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806044, -0.053876, -0.589398,
		0.319902, -0.798187, 0.510450,
		-0.497951, -0.599995, -0.626139,
		41.126877, 44.315575, 54.026829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007568, 44.189091, 54.198376>,  <41.475441, 44.735573, 54.465126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007568, 44.189091, 54.198376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709190, 44.211861, 53.932949>,  <41.530163, 44.225525, 53.773693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709190, 44.211861, 53.932949>,  <42.007568, 44.189091, 54.198376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709190, 44.211861, 53.932949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637046, -0.229612, -0.735834,
		-0.194247, -0.971617, 0.135017,
		-0.745950, 0.056922, -0.663566,
		41.485405, 44.228939, 53.733879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181026, 43.654503, 53.715134>,  <42.007568, 44.189091, 54.198376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181026, 43.654503, 53.715134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908836, 43.873817, 53.520679>,  <41.745522, 44.005405, 53.404007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908836, 43.873817, 53.520679>,  <42.181026, 43.654503, 53.715134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908836, 43.873817, 53.520679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513351, -0.116715, -0.850205,
		-0.522898, -0.828104, -0.202043,
		-0.680477, 0.548289, -0.486138,
		41.704693, 44.038303, 53.374840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964283, 43.257702, 53.120991>,  <42.181026, 43.654503, 53.715134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964283, 43.257702, 53.120991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908592, 43.648727, 53.057762>,  <41.875175, 43.883343, 53.019825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908592, 43.648727, 53.057762>,  <41.964283, 43.257702, 53.120991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908592, 43.648727, 53.057762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634350, -0.034528, -0.772274,
		-0.760404, -0.207794, -0.615310,
		-0.139228, 0.977563, -0.158069,
		41.866825, 43.941998, 53.010342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053764, 43.351856, 52.354446>,  <41.964283, 43.257702, 53.120991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053764, 43.351856, 52.354446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096378, 43.720871, 52.502811>,  <42.121944, 43.942280, 52.591831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096378, 43.720871, 52.502811>,  <42.053764, 43.351856, 52.354446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096378, 43.720871, 52.502811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686453, 0.201634, -0.698660,
		-0.719328, 0.329047, -0.611797,
		0.106533, 0.922536, 0.370917,
		42.128338, 43.997631, 52.614086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241398, 43.752945, 51.847397>,  <42.053764, 43.351856, 52.354446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241398, 43.752945, 51.847397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352463, 44.006859, 52.135826>,  <42.419102, 44.159206, 52.308884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352463, 44.006859, 52.135826>,  <42.241398, 43.752945, 51.847397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352463, 44.006859, 52.135826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843261, 0.198541, -0.499492,
		-0.460234, 0.746743, -0.480166,
		0.277659, 0.634788, 0.721075,
		42.435760, 44.197296, 52.352150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521431, 44.330402, 51.461151>,  <42.241398, 43.752945, 51.847397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521431, 44.330402, 51.461151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664448, 44.370125, 51.832592>,  <42.750256, 44.393959, 52.055458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664448, 44.370125, 51.832592>,  <42.521431, 44.330402, 51.461151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664448, 44.370125, 51.832592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880824, 0.294567, -0.370646,
		-0.310345, 0.950457, 0.017846,
		0.357539, 0.099309, 0.928603,
		42.771709, 44.399918, 52.111172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758278, 44.969658, 51.551216>,  <42.521431, 44.330402, 51.461151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758278, 44.969658, 51.551216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947327, 44.762939, 51.836746>,  <43.060757, 44.638908, 52.008064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947327, 44.762939, 51.836746>,  <42.758278, 44.969658, 51.551216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947327, 44.762939, 51.836746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867204, 0.416850, -0.272383,
		-0.156790, 0.747766, 0.645184,
		0.472624, -0.516800, 0.713824,
		43.089115, 44.607899, 52.050892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209908, 45.436455, 51.823841>,  <42.758278, 44.969658, 51.551216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209908, 45.436455, 51.823841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346565, 45.082527, 51.950562>,  <43.428562, 44.870171, 52.026596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346565, 45.082527, 51.950562>,  <43.209908, 45.436455, 51.823841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346565, 45.082527, 51.950562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915482, 0.237090, -0.325086,
		0.212532, 0.401093, 0.891041,
		0.341647, -0.884823, 0.316804,
		43.449059, 44.817081, 52.045605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717262, 45.568943, 52.290592>,  <43.209908, 45.436455, 51.823841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717262, 45.568943, 52.290592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768810, 45.212296, 52.116970>,  <43.799740, 44.998306, 52.012794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768810, 45.212296, 52.116970>,  <43.717262, 45.568943, 52.290592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768810, 45.212296, 52.116970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932018, 0.258409, -0.254101,
		0.338727, -0.371805, 0.864306,
		0.128869, -0.891620, -0.434059,
		43.807472, 44.944809, 51.986752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458096, 45.315125, 52.388248>,  <43.717262, 45.568943, 52.290592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458096, 45.315125, 52.388248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341255, 45.084145, 52.083294>,  <44.271152, 44.945557, 51.900322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341255, 45.084145, 52.083294>,  <44.458096, 45.315125, 52.388248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341255, 45.084145, 52.083294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901286, 0.100467, -0.421414,
		0.319938, -0.810224, 0.491098,
		-0.292100, -0.577446, -0.762387,
		44.253624, 44.910912, 51.854576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098972, 44.983200, 52.070602>,  <44.458096, 45.315125, 52.388248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098972, 44.983200, 52.070602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825798, 44.933014, 51.782753>,  <44.661892, 44.902901, 51.610043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825798, 44.933014, 51.782753>,  <45.098972, 44.983200, 52.070602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825798, 44.933014, 51.782753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700367, 0.167452, -0.693863,
		0.207560, -0.977864, -0.026486,
		-0.682939, -0.125469, -0.719620,
		44.620914, 44.895374, 51.566868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411999, 44.507946, 51.543926>,  <45.098972, 44.983200, 52.070602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411999, 44.507946, 51.543926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132851, 44.725311, 51.357304>,  <44.965363, 44.855732, 51.245331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132851, 44.725311, 51.357304>,  <45.411999, 44.507946, 51.543926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132851, 44.725311, 51.357304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632685, 0.162428, -0.757183,
		-0.335686, -0.823598, -0.457167,
		-0.697872, 0.543418, -0.466553,
		44.923489, 44.888336, 51.217339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680187, 44.495789, 50.810585>,  <45.411999, 44.507946, 51.543926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680187, 44.495789, 50.810585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402756, 44.783630, 50.823967>,  <45.236298, 44.956337, 50.831997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402756, 44.783630, 50.823967>,  <45.680187, 44.495789, 50.810585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.402756, 44.783630, 50.823967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413331, 0.435558, -0.799654,
		-0.590006, -0.540795, -0.599528,
		-0.693578, 0.719604, 0.033454,
		45.194683, 44.999512, 50.834003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406578, 44.594597, 50.183563>,  <45.680187, 44.495789, 50.810585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406578, 44.594597, 50.183563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315956, 44.940063, 50.363670>,  <45.261581, 45.147343, 50.471737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315956, 44.940063, 50.363670>,  <45.406578, 44.594597, 50.183563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315956, 44.940063, 50.363670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370100, 0.503953, -0.780421,
		-0.900943, -0.010164, -0.433819,
		-0.226557, 0.863671, 0.450271,
		45.247990, 45.199165, 50.498753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986702, 45.015282, 49.766846>,  <45.406578, 44.594597, 50.183563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986702, 45.015282, 49.766846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134018, 45.290291, 50.017181>,  <45.222408, 45.455296, 50.167381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134018, 45.290291, 50.017181>,  <44.986702, 45.015282, 49.766846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134018, 45.290291, 50.017181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383130, 0.501102, -0.775956,
		-0.847096, 0.525556, -0.078858,
		0.368293, 0.687522, 0.625838,
		45.244507, 45.496548, 50.204933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908813, 45.650181, 49.446842>,  <44.986702, 45.015282, 49.766846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908813, 45.650181, 49.446842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187370, 45.733177, 49.721645>,  <45.354504, 45.782974, 49.886528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187370, 45.733177, 49.721645>,  <44.908813, 45.650181, 49.446842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187370, 45.733177, 49.721645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525375, 0.504743, -0.684993,
		-0.488890, 0.837964, 0.242493,
		0.696396, 0.207487, 0.687009,
		45.396290, 45.795422, 49.927750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084499, 46.335545, 49.290344>,  <44.908813, 45.650181, 49.446842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084499, 46.335545, 49.290344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.396858, 46.198662, 49.499374>,  <45.584274, 46.116531, 49.624794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.396858, 46.198662, 49.499374>,  <45.084499, 46.335545, 49.290344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.396858, 46.198662, 49.499374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621035, 0.515252, -0.590619,
		-0.067148, 0.785755, 0.614882,
		0.780901, -0.342204, 0.522580,
		45.631130, 46.096001, 49.656147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546043, 46.864098, 49.366085>,  <45.084499, 46.335545, 49.290344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546043, 46.864098, 49.366085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793030, 46.559067, 49.443256>,  <45.941219, 46.376049, 49.489559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793030, 46.559067, 49.443256>,  <45.546043, 46.864098, 49.366085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793030, 46.559067, 49.443256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720119, 0.449326, -0.528711,
		0.316496, 0.465388, 0.826586,
		0.617462, -0.762575, 0.192925,
		45.978268, 46.330296, 49.501133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165829, 47.125748, 49.682251>,  <45.546043, 46.864098, 49.366085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165829, 47.125748, 49.682251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255096, 46.779610, 49.502750>,  <46.308659, 46.571926, 49.395050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255096, 46.779610, 49.502750>,  <46.165829, 47.125748, 49.682251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.255096, 46.779610, 49.502750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600078, 0.484753, -0.636334,
		0.768180, -0.127272, 0.627457,
		0.223173, -0.865342, -0.448750,
		46.322048, 46.520008, 49.368126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806175, 47.277233, 49.411892>,  <46.165829, 47.125748, 49.682251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806175, 47.277233, 49.411892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679398, 46.948257, 49.222942>,  <46.603329, 46.750870, 49.109573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679398, 46.948257, 49.222942>,  <46.806175, 47.277233, 49.411892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679398, 46.948257, 49.222942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557253, 0.241534, -0.794437,
		0.767472, -0.515025, 0.381755,
		-0.316948, -0.822442, -0.472370,
		46.584312, 46.701527, 49.081230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.436462, 47.081947, 49.158634>,  <46.806175, 47.277233, 49.411892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.436462, 47.081947, 49.158634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.145271, 46.900948, 48.952606>,  <46.970558, 46.792347, 48.828991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.145271, 46.900948, 48.952606>,  <47.436462, 47.081947, 49.158634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.145271, 46.900948, 48.952606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520111, 0.124986, -0.844904,
		0.446691, -0.882965, 0.144361,
		-0.727978, -0.452495, -0.515069,
		46.926880, 46.765198, 48.798084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.752449, 46.701050, 48.710037>,  <47.436462, 47.081947, 49.158634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.752449, 46.701050, 48.710037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.387772, 46.703514, 48.545712>,  <47.168964, 46.704994, 48.447117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.387772, 46.703514, 48.545712>,  <47.752449, 46.701050, 48.710037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.387772, 46.703514, 48.545712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410074, -0.048353, -0.910770,
		-0.025475, -0.998811, 0.041557,
		-0.911696, 0.006161, -0.410818,
		47.114262, 46.705364, 48.422466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.643005, 46.056637, 48.289333>,  <47.752449, 46.701050, 48.710037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.643005, 46.056637, 48.289333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.381493, 46.325821, 48.150944>,  <47.224586, 46.487331, 48.067909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.381493, 46.325821, 48.150944>,  <47.643005, 46.056637, 48.289333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.381493, 46.325821, 48.150944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364673, -0.120413, -0.923317,
		-0.663015, -0.729813, -0.166687,
		-0.653777, 0.672959, -0.345979,
		47.185360, 46.527710, 48.047150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.430069, 45.771313, 47.637691>,  <47.643005, 46.056637, 48.289333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.430069, 45.771313, 47.637691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.319901, 46.154099, 47.601124>,  <47.253799, 46.383770, 47.579182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.319901, 46.154099, 47.601124>,  <47.430069, 45.771313, 47.637691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.319901, 46.154099, 47.601124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329132, 0.004517, -0.944273,
		-0.903225, -0.290162, -0.316213,
		-0.275420, 0.956967, -0.091422,
		47.237274, 46.441189, 47.573696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.986664, 45.838924, 47.056755>,  <47.430069, 45.771313, 47.637691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.986664, 45.838924, 47.056755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.151070, 46.201180, 47.098480>,  <47.249714, 46.418533, 47.123516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.151070, 46.201180, 47.098480>,  <46.986664, 45.838924, 47.056755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.151070, 46.201180, 47.098480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167923, 0.037254, -0.985096,
		-0.896031, 0.422403, -0.136767,
		0.411012, 0.905642, 0.104312,
		47.274372, 46.472874, 47.129772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.710258, 46.239468, 46.560150>,  <46.986664, 45.838924, 47.056755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.710258, 46.239468, 46.560150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.042557, 46.443260, 46.649857>,  <47.241936, 46.565536, 46.703678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.042557, 46.443260, 46.649857>,  <46.710258, 46.239468, 46.560150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.042557, 46.443260, 46.649857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119521, 0.230226, -0.965770,
		-0.543672, 0.829112, 0.130366,
		0.830744, 0.509480, 0.224264,
		47.291779, 46.596104, 46.717136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660233, 46.878681, 46.159248>,  <46.710258, 46.239468, 46.560150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660233, 46.878681, 46.159248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049477, 46.852509, 46.247581>,  <47.283024, 46.836803, 46.300579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049477, 46.852509, 46.247581>,  <46.660233, 46.878681, 46.159248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.049477, 46.852509, 46.247581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230209, 0.306194, -0.923715,
		-0.007175, 0.949718, 0.313025,
		0.973115, -0.065433, 0.220830,
		47.341412, 46.832878, 46.313831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.121208, 47.532059, 45.949707>,  <46.660233, 46.878681, 46.159248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.121208, 47.532059, 45.949707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.359451, 47.210747, 45.949989>,  <47.502396, 47.017960, 45.950157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.359451, 47.210747, 45.949989>,  <47.121208, 47.532059, 45.949707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.359451, 47.210747, 45.949989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379908, 0.280916, -0.881338,
		0.707759, 0.525198, 0.472486,
		0.595606, -0.803276, 0.000706,
		47.538132, 46.969765, 45.950203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.775543, 47.773388, 45.528931>,  <47.121208, 47.532059, 45.949707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.775543, 47.773388, 45.528931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.802391, 47.374763, 45.548363>,  <47.818501, 47.135590, 45.560020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.802391, 47.374763, 45.548363>,  <47.775543, 47.773388, 45.528931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.802391, 47.374763, 45.548363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317967, -0.024788, -0.947778,
		0.945723, 0.079061, 0.315209,
		0.067119, -0.996562, 0.048581,
		47.822525, 47.075794, 45.562939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.493828, 47.643280, 45.202866>,  <47.775543, 47.773388, 45.528931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.493828, 47.643280, 45.202866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.283714, 47.302910, 45.202843>,  <48.157646, 47.098686, 45.202827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.283714, 47.302910, 45.202843>,  <48.493828, 47.643280, 45.202866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.283714, 47.302910, 45.202843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159601, -0.098452, -0.982260,
		0.835828, -0.515971, 0.187524,
		-0.525280, -0.850930, -0.000061,
		48.126129, 47.047630, 45.202824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.918831, 47.085690, 44.930920>,  <48.493828, 47.643280, 45.202866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.918831, 47.085690, 44.930920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.531990, 46.999741, 44.876446>,  <48.299885, 46.948174, 44.843761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.531990, 46.999741, 44.876446>,  <48.918831, 47.085690, 44.930920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.531990, 46.999741, 44.876446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096126, 0.186983, -0.977649,
		0.235534, -0.958576, -0.160177,
		-0.967101, -0.214872, -0.136185,
		48.241859, 46.935280, 44.835590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.980595, 41.294651, 51.098087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.983177, 40.895287, 51.120502>,  <41.984726, 40.655670, 51.133953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.983177, 40.895287, 51.120502>,  <41.980595, 41.294651, 51.098087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983177, 40.895287, 51.120502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725490, -0.033897, -0.687398,
		0.688203, 0.045093, 0.724116,
		0.006452, -0.998408, 0.056042,
		41.985111, 40.595764, 51.137314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742886, 41.089481, 51.213024>,  <41.980595, 41.294651, 51.098087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742886, 41.089481, 51.213024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.527687, 40.795509, 51.047890>,  <42.398567, 40.619125, 50.948811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.527687, 40.795509, 51.047890>,  <42.742886, 41.089481, 51.213024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527687, 40.795509, 51.047890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733704, -0.167150, -0.658589,
		0.415013, -0.657219, 0.629149,
		-0.538000, -0.734932, -0.412834,
		42.366287, 40.575031, 50.924038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181824, 40.495911, 51.175694>,  <42.742886, 41.089481, 51.213024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181824, 40.495911, 51.175694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.890972, 40.466698, 50.902653>,  <42.716461, 40.449169, 50.738827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.890972, 40.466698, 50.902653>,  <43.181824, 40.495911, 51.175694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890972, 40.466698, 50.902653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682183, -0.188179, -0.706551,
		-0.076850, -0.979415, 0.186653,
		-0.727132, -0.073033, -0.682603,
		42.672832, 40.444790, 50.697872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433861, 39.963535, 50.816013>,  <43.181824, 40.495911, 51.175694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433861, 39.963535, 50.816013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.145714, 40.108299, 50.579338>,  <42.972824, 40.195160, 50.437332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.145714, 40.108299, 50.579338>,  <43.433861, 39.963535, 50.816013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145714, 40.108299, 50.579338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566590, -0.184988, -0.802966,
		-0.400059, -0.913673, -0.071798,
		-0.720367, 0.361914, -0.591684,
		42.929604, 40.216873, 50.401833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445690, 39.572121, 50.304302>,  <43.433861, 39.963535, 50.816013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445690, 39.572121, 50.304302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.265736, 39.897278, 50.156353>,  <43.157764, 40.092373, 50.067585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.265736, 39.897278, 50.156353>,  <43.445690, 39.572121, 50.304302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265736, 39.897278, 50.156353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521964, -0.096729, -0.847465,
		-0.724677, -0.574323, -0.380784,
		-0.449886, 0.812894, -0.369873,
		43.130772, 40.141148, 50.045391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304111, 39.412838, 49.554325>,  <43.445690, 39.572121, 50.304302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304111, 39.412838, 49.554325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.269547, 39.806595, 49.615646>,  <43.248806, 40.042850, 49.652439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.269547, 39.806595, 49.615646>,  <43.304111, 39.412838, 49.554325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269547, 39.806595, 49.615646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570514, 0.175047, -0.802416,
		-0.816729, 0.018121, -0.576737,
		-0.086416, 0.984393, 0.153304,
		43.243622, 40.101913, 49.661636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151707, 39.710754, 48.868507>,  <43.304111, 39.412838, 49.554325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151707, 39.710754, 48.868507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.288761, 40.026131, 49.072845>,  <43.370995, 40.215355, 49.195450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.288761, 40.026131, 49.072845>,  <43.151707, 39.710754, 48.868507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288761, 40.026131, 49.072845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509881, 0.300641, -0.806000,
		-0.789063, 0.536637, -0.298999,
		0.342638, 0.788439, 0.510845,
		43.391552, 40.262661, 49.226101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938377, 40.297104, 48.462063>,  <43.151707, 39.710754, 48.868507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938377, 40.297104, 48.462063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.254295, 40.430817, 48.667774>,  <43.443844, 40.511044, 48.791203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.254295, 40.430817, 48.667774>,  <42.938377, 40.297104, 48.462063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254295, 40.430817, 48.667774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407121, 0.341428, -0.847160,
		-0.458782, 0.878453, 0.133563,
		0.789792, 0.334285, 0.514278,
		43.491234, 40.531101, 48.822056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040466, 41.047531, 48.219097>,  <42.938377, 40.297104, 48.462063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040466, 41.047531, 48.219097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.382248, 40.927902, 48.389023>,  <43.587315, 40.856125, 48.490978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.382248, 40.927902, 48.389023>,  <43.040466, 41.047531, 48.219097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382248, 40.927902, 48.389023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516513, 0.400988, -0.756587,
		0.055927, 0.865890, 0.497099,
		0.854451, -0.299071, 0.424817,
		43.638584, 40.838181, 48.516468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450405, 41.686749, 48.286552>,  <43.040466, 41.047531, 48.219097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450405, 41.686749, 48.286552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.705570, 41.378899, 48.297413>,  <43.858669, 41.194187, 48.303928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.705570, 41.378899, 48.297413>,  <43.450405, 41.686749, 48.286552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705570, 41.378899, 48.297413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608321, 0.481966, -0.630599,
		0.472241, 0.418784, 0.775634,
		0.637914, -0.769629, 0.027151,
		43.896946, 41.148010, 48.305557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101765, 41.927509, 48.435242>,  <43.450405, 41.686749, 48.286552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101765, 41.927509, 48.435242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.162098, 41.578552, 48.249264>,  <44.198299, 41.369179, 48.137676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.162098, 41.578552, 48.249264>,  <44.101765, 41.927509, 48.435242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162098, 41.578552, 48.249264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589804, 0.456862, -0.665890,
		0.793335, -0.173788, 0.583452,
		0.150834, -0.872396, -0.464946,
		44.207348, 41.316833, 48.109779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828865, 41.993874, 48.204411>,  <44.101765, 41.927509, 48.435242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.828865, 41.993874, 48.204411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.683598, 41.695839, 47.980640>,  <44.596436, 41.517017, 47.846378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.683598, 41.695839, 47.980640>,  <44.828865, 41.993874, 48.204411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683598, 41.695839, 47.980640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673487, 0.204971, -0.710212,
		0.643835, -0.634692, 0.427367,
		-0.363168, -0.745086, -0.559425,
		44.574646, 41.472313, 47.812813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.396027, 41.677952, 48.040123>,  <44.828865, 41.993874, 48.204411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.396027, 41.677952, 48.040123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.121666, 41.574837, 47.767921>,  <44.957050, 41.512970, 47.604599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.121666, 41.574837, 47.767921>,  <45.396027, 41.677952, 48.040123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121666, 41.574837, 47.767921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640289, 0.230577, -0.732710,
		0.345790, -0.938287, 0.006903,
		-0.685900, -0.257783, -0.680506,
		44.915897, 41.497501, 47.563770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773827, 41.379162, 47.482304>,  <45.396027, 41.677952, 48.040123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773827, 41.379162, 47.482304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.427261, 41.464577, 47.301758>,  <45.219322, 41.515827, 47.193428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.427261, 41.464577, 47.301758>,  <45.773827, 41.379162, 47.482304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427261, 41.464577, 47.301758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490460, 0.194301, -0.849527,
		-0.093707, -0.957417, -0.273078,
		-0.866411, 0.213541, -0.451367,
		45.167339, 41.528637, 47.166348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.872280, 41.120850, 46.803825>,  <45.773827, 41.379162, 47.482304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.872280, 41.120850, 46.803825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.574799, 41.383461, 46.753437>,  <45.396309, 41.541027, 46.723206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.574799, 41.383461, 46.753437>,  <45.872280, 41.120850, 46.803825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574799, 41.383461, 46.753437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488426, 0.404981, -0.772936,
		-0.456442, -0.636364, -0.621854,
		-0.743707, 0.656530, -0.125966,
		45.351685, 41.580421, 46.715649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883774, 41.193085, 46.073872>,  <45.872280, 41.120850, 46.803825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883774, 41.193085, 46.073872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.676964, 41.513809, 46.193729>,  <45.552879, 41.706242, 46.265644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.676964, 41.513809, 46.193729>,  <45.883774, 41.193085, 46.073872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676964, 41.513809, 46.193729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316671, 0.504403, -0.803304,
		-0.795238, -0.320440, -0.514698,
		-0.517026, 0.801808, 0.299647,
		45.521854, 41.754353, 46.283623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653378, 41.554428, 45.507442>,  <45.883774, 41.193085, 46.073872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653378, 41.554428, 45.507442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.592049, 41.842308, 45.778301>,  <45.555252, 42.015038, 45.940815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.592049, 41.842308, 45.778301>,  <45.653378, 41.554428, 45.507442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592049, 41.842308, 45.778301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120492, 0.693750, -0.710065,
		-0.980802, -0.027281, -0.193088,
		-0.153326, 0.719699, 0.677144,
		45.546051, 42.058216, 45.981445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232433, 41.896782, 45.202766>,  <45.653378, 41.554428, 45.507442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232433, 41.896782, 45.202766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.392059, 42.150391, 45.467724>,  <45.487835, 42.302555, 45.626698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.392059, 42.150391, 45.467724>,  <45.232433, 41.896782, 45.202766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392059, 42.150391, 45.467724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118154, 0.680825, -0.722854,
		-0.909278, 0.366731, 0.196781,
		0.399066, 0.634024, 0.662390,
		45.511780, 42.340599, 45.666439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889496, 42.485649, 45.209496>,  <45.232433, 41.896782, 45.202766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889496, 42.485649, 45.209496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.242252, 42.609497, 45.351711>,  <45.453907, 42.683804, 45.437042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.242252, 42.609497, 45.351711>,  <44.889496, 42.485649, 45.209496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242252, 42.609497, 45.351711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025618, 0.784488, -0.619615,
		-0.470761, 0.537323, 0.699763,
		0.881889, 0.309617, 0.355542,
		45.506821, 42.702381, 45.458374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876732, 43.167904, 45.153908>,  <44.889496, 42.485649, 45.209496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876732, 43.167904, 45.153908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.271652, 43.120354, 45.196072>,  <45.508602, 43.091824, 45.221371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.271652, 43.120354, 45.196072>,  <44.876732, 43.167904, 45.153908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271652, 43.120354, 45.196072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158876, 0.742098, -0.651190,
		-0.000818, 0.659666, 0.751558,
		0.987298, -0.118872, 0.105412,
		45.567841, 43.084694, 45.227695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092617, 43.803776, 45.010117>,  <44.876732, 43.167904, 45.153908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092617, 43.803776, 45.010117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.434532, 43.599991, 44.970543>,  <45.639683, 43.477718, 44.946800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.434532, 43.599991, 44.970543>,  <45.092617, 43.803776, 45.010117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434532, 43.599991, 44.970543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322079, 0.670231, -0.668622,
		0.406944, 0.539665, 0.736992,
		0.854787, -0.509462, -0.098932,
		45.690968, 43.447151, 44.940865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592766, 44.249542, 44.895710>,  <45.092617, 43.803776, 45.010117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592766, 44.249542, 44.895710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.764877, 43.920120, 44.747864>,  <45.868145, 43.722466, 44.659157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.764877, 43.920120, 44.747864>,  <45.592766, 44.249542, 44.895710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764877, 43.920120, 44.747864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527618, 0.561680, -0.637287,
		0.732447, 0.079196, 0.676202,
		0.430280, -0.823555, -0.369616,
		45.893963, 43.673054, 44.636978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865520, 44.934097, 44.712814>,  <45.592766, 44.249542, 44.895710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865520, 44.934097, 44.712814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.720413, 45.300224, 44.642845>,  <45.633350, 45.519901, 44.600864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.720413, 45.300224, 44.642845>,  <45.865520, 44.934097, 44.712814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720413, 45.300224, 44.642845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613816, -0.093465, 0.783896,
		0.701162, 0.391746, 0.595741,
		-0.362769, 0.915314, -0.174926,
		45.611584, 45.574818, 44.590366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980942, 45.337273, 45.319424>,  <45.865520, 44.934097, 44.712814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980942, 45.337273, 45.319424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.661011, 45.497124, 45.140282>,  <45.469051, 45.593037, 45.032795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.661011, 45.497124, 45.140282>,  <45.980942, 45.337273, 45.319424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661011, 45.497124, 45.140282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523251, -0.098651, 0.846449,
		0.294086, 0.911353, 0.288010,
		-0.799826, 0.399630, -0.447854,
		45.421062, 45.617012, 45.005924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658501, 45.769558, 45.824997>,  <45.980942, 45.337273, 45.319424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658501, 45.769558, 45.824997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.370232, 45.677467, 45.563427>,  <45.197269, 45.622211, 45.406483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.370232, 45.677467, 45.563427>,  <45.658501, 45.769558, 45.824997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370232, 45.677467, 45.563427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620945, -0.205121, 0.756540,
		-0.308312, 0.951273, 0.004866,
		-0.720674, -0.230229, -0.653929,
		45.154030, 45.608398, 45.367249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132404, 46.168362, 46.070911>,  <45.658501, 45.769558, 45.824997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132404, 46.168362, 46.070911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.951904, 45.894875, 45.841515>,  <44.843605, 45.730782, 45.703876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.951904, 45.894875, 45.841515>,  <45.132404, 46.168362, 46.070911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951904, 45.894875, 45.841515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700605, -0.126623, 0.702225,
		-0.552743, 0.718675, -0.421879,
		-0.451252, -0.683720, -0.573497,
		44.816528, 45.689758, 45.669464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339367, 46.294628, 46.035576>,  <45.132404, 46.168362, 46.070911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339367, 46.294628, 46.035576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.411427, 45.907333, 45.966217>,  <44.454662, 45.674957, 45.924603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.411427, 45.907333, 45.966217>,  <44.339367, 46.294628, 46.035576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411427, 45.907333, 45.966217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765088, -0.248720, 0.593951,
		-0.618211, 0.025660, -0.785593,
		0.180152, -0.968235, -0.173394,
		44.465473, 45.616863, 45.914200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690895, 45.930916, 45.889454>,  <44.339367, 46.294628, 46.035576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690895, 45.930916, 45.889454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.919289, 45.619812, 45.994579>,  <44.056324, 45.433151, 46.057655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.919289, 45.619812, 45.994579>,  <43.690895, 45.930916, 45.889454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919289, 45.619812, 45.994579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752084, -0.367195, 0.547300,
		-0.329167, -0.510152, -0.794603,
		0.570981, -0.777761, 0.262808,
		44.090584, 45.386486, 46.073421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248833, 45.369965, 45.835854>,  <43.690895, 45.930916, 45.889454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248833, 45.369965, 45.835854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.548866, 45.224747, 46.056965>,  <43.728886, 45.137615, 46.189632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.548866, 45.224747, 46.056965>,  <43.248833, 45.369965, 45.835854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548866, 45.224747, 46.056965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661329, -0.416209, 0.624030,
		0.003520, -0.833647, -0.552286,
		0.750088, -0.363046, 0.552780,
		43.773891, 45.115833, 46.222797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015461, 44.743217, 45.991199>,  <43.248833, 45.369965, 45.835854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015461, 44.743217, 45.991199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.293137, 44.818237, 46.269173>,  <43.459743, 44.863251, 46.435955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.293137, 44.818237, 46.269173>,  <43.015461, 44.743217, 45.991199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293137, 44.818237, 46.269173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521998, -0.533575, 0.665444,
		0.495600, -0.824696, -0.272501,
		0.694189, 0.187549, 0.694929,
		43.501392, 44.874500, 46.477650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161354, 44.136925, 46.327919>,  <43.015461, 44.743217, 45.991199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161354, 44.136925, 46.327919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.286110, 44.396927, 46.605110>,  <43.360966, 44.552929, 46.771427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.286110, 44.396927, 46.605110>,  <43.161354, 44.136925, 46.327919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286110, 44.396927, 46.605110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225894, -0.657718, 0.718595,
		0.922873, -0.380665, -0.058306,
		0.311893, 0.650001, 0.692980,
		43.379677, 44.591927, 46.813004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433327, 43.757957, 46.773956>,  <43.161354, 44.136925, 46.327919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433327, 43.757957, 46.773956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.364338, 44.093513, 46.980461>,  <43.322945, 44.294846, 47.104362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.364338, 44.093513, 46.980461>,  <43.433327, 43.757957, 46.773956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364338, 44.093513, 46.980461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315238, -0.543557, 0.777927,
		0.933209, -0.028575, 0.358197,
		-0.172471, 0.838886, 0.516260,
		43.312595, 44.345181, 47.135338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637306, 43.680141, 47.453110>,  <43.433327, 43.757957, 46.773956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637306, 43.680141, 47.453110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.402584, 43.999901, 47.504673>,  <43.261749, 44.191757, 47.535610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.402584, 43.999901, 47.504673>,  <43.637306, 43.680141, 47.453110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402584, 43.999901, 47.504673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479587, -0.471395, 0.740124,
		0.652422, 0.372487, 0.659999,
		-0.586807, 0.799400, 0.128908,
		43.226543, 44.239719, 47.543346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589096, 43.689995, 48.154213>,  <43.637306, 43.680141, 47.453110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589096, 43.689995, 48.154213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.292755, 43.925400, 48.024734>,  <43.114948, 44.066643, 47.947048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.292755, 43.925400, 48.024734>,  <43.589096, 43.689995, 48.154213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292755, 43.925400, 48.024734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527488, -0.211459, 0.822825,
		0.415797, 0.780342, 0.467096,
		-0.740857, 0.588516, -0.323697,
		43.070499, 44.101955, 47.927624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407433, 44.020309, 48.812588>,  <43.589096, 43.689995, 48.154213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407433, 44.020309, 48.812588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.110310, 44.052467, 48.546722>,  <42.932037, 44.071762, 48.387203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.110310, 44.052467, 48.546722>,  <43.407433, 44.020309, 48.812588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110310, 44.052467, 48.546722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664179, -0.213506, 0.716436,
		-0.084311, 0.973628, 0.211990,
		-0.742804, 0.080396, -0.664665,
		42.887470, 44.076588, 48.347324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965870, 44.572521, 49.034607>,  <43.407433, 44.020309, 48.812588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965870, 44.572521, 49.034607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.758007, 44.315086, 48.809837>,  <42.633289, 44.160625, 48.674976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.758007, 44.315086, 48.809837>,  <42.965870, 44.572521, 49.034607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758007, 44.315086, 48.809837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564037, -0.235584, 0.791431,
		-0.641732, 0.728218, -0.240582,
		-0.519657, -0.643583, -0.561923,
		42.602112, 44.122013, 48.641262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223454, 44.645157, 49.158318>,  <42.965870, 44.572521, 49.034607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223454, 44.645157, 49.158318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.248230, 44.284546, 48.987011>,  <42.263096, 44.068180, 48.884228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.248230, 44.284546, 48.987011>,  <42.223454, 44.645157, 49.158318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248230, 44.284546, 48.987011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657285, -0.359752, 0.662235,
		-0.751092, 0.240473, -0.614844,
		0.061942, -0.901527, -0.428266,
		42.266811, 44.014088, 48.858532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488567, 44.407368, 49.201664>,  <42.223454, 44.645157, 49.158318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488567, 44.407368, 49.201664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.689178, 44.076263, 49.101040>,  <41.809547, 43.877602, 49.040665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.689178, 44.076263, 49.101040>,  <41.488567, 44.407368, 49.201664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689178, 44.076263, 49.101040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626153, -0.547952, 0.554691,
		-0.596994, -0.120677, -0.793117,
		0.501529, -0.827760, -0.251562,
		41.839638, 43.827934, 49.025570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952530, 43.828171, 49.069519>,  <41.488567, 44.407368, 49.201664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952530, 43.828171, 49.069519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.286999, 43.615913, 49.125000>,  <41.487679, 43.488560, 49.158287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.286999, 43.615913, 49.125000>,  <40.952530, 43.828171, 49.069519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286999, 43.615913, 49.125000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457244, -0.534768, 0.710599,
		-0.302901, -0.657602, -0.689790,
		0.836169, -0.530644, 0.138703,
		41.537849, 43.456718, 49.166611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836246, 43.082241, 48.980026>,  <40.952530, 43.828171, 49.069519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836246, 43.082241, 48.980026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.149643, 43.133835, 49.223175>,  <41.337681, 43.164791, 49.369064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.149643, 43.133835, 49.223175>,  <40.836246, 43.082241, 48.980026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149643, 43.133835, 49.223175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402480, -0.639972, 0.654557,
		0.473446, -0.757495, -0.449499,
		0.783491, 0.128983, 0.607869,
		41.384689, 43.172531, 49.405537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.909115, 42.449863, 49.290489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.126705, 42.694290, 49.520512>,  <41.257259, 42.840946, 49.658527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.126705, 42.694290, 49.520512>,  <40.909115, 42.449863, 49.290489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126705, 42.694290, 49.520512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207046, -0.566389, 0.797706,
		0.813158, -0.552994, -0.181582,
		0.543973, 0.611065, 0.575059,
		41.289898, 42.877609, 49.693027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351917, 42.051666, 49.731125>,  <40.909115, 42.449863, 49.290489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351917, 42.051666, 49.731125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.318069, 42.406631, 49.912384>,  <41.297760, 42.619610, 50.021141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.318069, 42.406631, 49.912384>,  <41.351917, 42.051666, 49.731125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318069, 42.406631, 49.912384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081772, -0.459433, 0.884440,
		0.993053, 0.037783, 0.111440,
		-0.084617, 0.887408, 0.453152,
		41.292683, 42.672855, 50.048328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687206, 41.923222, 50.322964>,  <41.351917, 42.051666, 49.731125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687206, 41.923222, 50.322964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.509022, 42.268852, 50.416718>,  <41.402111, 42.476231, 50.472969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.509022, 42.268852, 50.416718>,  <41.687206, 41.923222, 50.322964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509022, 42.268852, 50.416718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161609, -0.335095, 0.928221,
		0.880594, 0.375609, 0.288915,
		-0.445462, 0.864077, 0.234381,
		41.375381, 42.528076, 50.487030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014755, 42.082344, 50.895897>,  <41.687206, 41.923222, 50.322964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014755, 42.082344, 50.895897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.675552, 42.294334, 50.895592>,  <41.472031, 42.421528, 50.895409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.675552, 42.294334, 50.895592>,  <42.014755, 42.082344, 50.895897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675552, 42.294334, 50.895592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229126, -0.365323, 0.902242,
		0.477888, 0.765287, 0.431230,
		-0.848012, 0.529977, -0.000763,
		41.421150, 42.453327, 50.895363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894081, 42.416027, 51.576145>,  <42.014755, 42.082344, 50.895897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894081, 42.416027, 51.576145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.530556, 42.412895, 51.409294>,  <41.312439, 42.411015, 51.309181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.530556, 42.412895, 51.409294>,  <41.894081, 42.416027, 51.576145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530556, 42.412895, 51.409294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410937, -0.155863, 0.898242,
		-0.072051, 0.987748, 0.138431,
		-0.908812, -0.007833, -0.417132,
		41.257912, 42.410545, 51.284153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536610, 42.844143, 52.004795>,  <41.894081, 42.416027, 51.576145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536610, 42.844143, 52.004795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.251297, 42.640839, 51.811756>,  <41.080109, 42.518856, 51.695930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.251297, 42.640839, 51.811756>,  <41.536610, 42.844143, 52.004795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251297, 42.640839, 51.811756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581766, 0.045346, 0.812091,
		-0.390867, 0.860010, -0.328032,
		-0.713282, -0.508258, -0.482600,
		41.037312, 42.488361, 51.666977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869553, 43.156937, 52.136971>,  <41.536610, 42.844143, 52.004795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869553, 43.156937, 52.136971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.732635, 42.813576, 51.984146>,  <40.650486, 42.607559, 51.892452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.732635, 42.813576, 51.984146>,  <40.869553, 43.156937, 52.136971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732635, 42.813576, 51.984146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769734, 0.022995, 0.637950,
		-0.538834, 0.512457, -0.668615,
		-0.342296, -0.858405, -0.382065,
		40.629948, 42.556053, 51.869526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003387, 43.172413, 52.027973>,  <40.869553, 43.156937, 52.136971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003387, 43.172413, 52.027973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139206, 42.796890, 52.051117>,  <40.220699, 42.571575, 52.065002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139206, 42.796890, 52.051117>,  <40.003387, 43.172413, 52.027973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139206, 42.796890, 52.051117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680197, -0.202599, 0.704475,
		-0.649645, -0.278557, -0.707366,
		0.339548, -0.938807, 0.057856,
		40.241070, 42.515247, 52.068474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483746, 42.776474, 52.018574>,  <40.003387, 43.172413, 52.027973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483746, 42.776474, 52.018574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757278, 42.540619, 52.190483>,  <39.921398, 42.399105, 52.293629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757278, 42.540619, 52.190483>,  <39.483746, 42.776474, 52.018574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757278, 42.540619, 52.190483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679576, -0.300283, 0.669333,
		-0.265607, -0.749776, -0.606044,
		0.683835, -0.589632, 0.429772,
		39.962429, 42.363728, 52.319412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160583, 42.194744, 52.059986>,  <39.483746, 42.776474, 52.018574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160583, 42.194744, 52.059986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.454815, 42.110222, 52.317444>,  <39.631355, 42.059509, 52.471916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.454815, 42.110222, 52.317444>,  <39.160583, 42.194744, 52.059986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454815, 42.110222, 52.317444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662763, -0.421167, 0.619163,
		0.140245, -0.882024, -0.449850,
		0.735579, -0.211310, 0.643640,
		39.675488, 42.046829, 52.510536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968979, 41.633202, 52.346653>,  <39.160583, 42.194744, 52.059986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968979, 41.633202, 52.346653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253723, 41.733521, 52.609062>,  <39.424568, 41.793713, 52.766506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253723, 41.733521, 52.609062>,  <38.968979, 41.633202, 52.346653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253723, 41.733521, 52.609062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503768, -0.468506, 0.725754,
		0.489364, -0.847116, -0.207168,
		0.711858, 0.250793, 0.656020,
		39.467281, 41.808758, 52.805870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239422, 40.969368, 52.682812>,  <38.968979, 41.633202, 52.346653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239422, 40.969368, 52.682812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.283501, 41.303696, 52.897942>,  <39.309948, 41.504292, 53.027020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.283501, 41.303696, 52.897942>,  <39.239422, 40.969368, 52.682812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283501, 41.303696, 52.897942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584556, -0.383137, 0.715193,
		0.803836, -0.393199, 0.446366,
		0.110193, 0.835823, 0.537826,
		39.316559, 41.554443, 53.059288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420391, 40.735615, 53.406269>,  <39.239422, 40.969368, 52.682812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420391, 40.735615, 53.406269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293373, 41.112953, 53.444782>,  <39.217163, 41.339355, 53.467888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293373, 41.112953, 53.444782>,  <39.420391, 40.735615, 53.406269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293373, 41.112953, 53.444782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502460, -0.253499, 0.826603,
		0.804178, 0.214103, 0.554489,
		-0.317540, 0.943344, 0.096281,
		39.198112, 41.395958, 53.473667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547409, 40.899673, 54.097946>,  <39.420391, 40.735615, 53.406269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547409, 40.899673, 54.097946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.284416, 41.163712, 53.952621>,  <39.126621, 41.322136, 53.865429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.284416, 41.163712, 53.952621>,  <39.547409, 40.899673, 54.097946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284416, 41.163712, 53.952621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612777, -0.187871, 0.767599,
		0.438435, 0.727307, 0.528014,
		-0.657479, 0.660097, -0.363308,
		39.087173, 41.361740, 53.843628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386368, 41.358860, 54.668766>,  <39.547409, 40.899673, 54.097946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386368, 41.358860, 54.668766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.097084, 41.373688, 54.392910>,  <38.923515, 41.382584, 54.227398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.097084, 41.373688, 54.392910>,  <39.386368, 41.358860, 54.668766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097084, 41.373688, 54.392910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690424, -0.014294, 0.723264,
		0.016953, 0.999211, 0.035931,
		-0.723207, 0.037069, -0.689636,
		38.880123, 41.384808, 54.186020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846088, 41.673714, 55.011326>,  <39.386368, 41.358860, 54.668766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846088, 41.673714, 55.011326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.664616, 41.522629, 54.688461>,  <38.555733, 41.431976, 54.494743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.664616, 41.522629, 54.688461>,  <38.846088, 41.673714, 55.011326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664616, 41.522629, 54.688461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861575, -0.045550, 0.505583,
		-0.227732, 0.924801, -0.304763,
		-0.453682, -0.377714, -0.807158,
		38.528511, 41.409313, 54.446312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436924, 42.109444, 54.868187>,  <38.846088, 41.673714, 55.011326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436924, 42.109444, 54.868187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312935, 41.762428, 54.712601>,  <38.238541, 41.554218, 54.619247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312935, 41.762428, 54.712601>,  <38.436924, 42.109444, 54.868187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312935, 41.762428, 54.712601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776721, -0.004859, 0.629826,
		-0.548288, 0.497348, -0.672329,
		-0.309976, -0.867538, -0.388965,
		38.219944, 41.502167, 54.595913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632584, 42.200985, 54.775143>,  <38.436924, 42.109444, 54.868187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632584, 42.200985, 54.775143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.701584, 41.807518, 54.754604>,  <37.742985, 41.571438, 54.742283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.701584, 41.807518, 54.754604>,  <37.632584, 42.200985, 54.775143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701584, 41.807518, 54.754604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842788, -0.174373, 0.509218,
		-0.509855, -0.044571, -0.859105,
		0.172501, -0.983670, -0.051341,
		37.753334, 41.512417, 54.739201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975494, 41.894760, 54.583076>,  <37.632584, 42.200985, 54.775143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975494, 41.894760, 54.583076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190350, 41.592056, 54.732101>,  <37.319263, 41.410435, 54.821518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190350, 41.592056, 54.732101>,  <36.975494, 41.894760, 54.583076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190350, 41.592056, 54.732101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779987, -0.277479, 0.560916,
		-0.321098, -0.591884, -0.739304,
		0.537138, -0.756756, 0.372563,
		37.351490, 41.365028, 54.843872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519135, 41.407066, 54.580193>,  <36.975494, 41.894760, 54.583076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519135, 41.407066, 54.580193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799698, 41.294960, 54.842331>,  <36.968037, 41.227695, 54.999615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799698, 41.294960, 54.842331>,  <36.519135, 41.407066, 54.580193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799698, 41.294960, 54.842331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709836, -0.191477, 0.677841,
		-0.064490, -0.940632, -0.333245,
		0.701408, -0.280263, 0.655347,
		37.010120, 41.210880, 55.038937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356560, 40.811234, 54.935684>,  <36.519135, 41.407066, 54.580193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356560, 40.811234, 54.935684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605690, 40.982140, 55.197838>,  <36.755169, 41.084682, 55.355129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605690, 40.982140, 55.197838>,  <36.356560, 40.811234, 54.935684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605690, 40.982140, 55.197838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702703, -0.062765, 0.708709,
		0.343940, -0.901947, 0.261146,
		0.622827, 0.427262, 0.655388,
		36.792538, 41.110317, 55.394455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493866, 40.371906, 55.585411>,  <36.356560, 40.811234, 54.935684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493866, 40.371906, 55.585411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532967, 40.759331, 55.676918>,  <36.556427, 40.991787, 55.731823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532967, 40.759331, 55.676918>,  <36.493866, 40.371906, 55.585411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532967, 40.759331, 55.676918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633269, -0.116789, 0.765068,
		0.767733, -0.219656, 0.601944,
		0.097751, 0.968562, 0.228764,
		36.562290, 41.049900, 55.745548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632568, 40.456837, 56.407467>,  <36.493866, 40.371906, 55.585411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632568, 40.456837, 56.407467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483101, 40.793312, 56.251122>,  <36.393421, 40.995197, 56.157314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483101, 40.793312, 56.251122>,  <36.632568, 40.456837, 56.407467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483101, 40.793312, 56.251122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639366, 0.071702, 0.765552,
		0.671999, 0.535967, 0.511035,
		-0.373668, 0.841189, -0.390863,
		36.371002, 41.045670, 56.133862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733040, 39.660049, 56.424641>,  <36.632568, 40.456837, 56.407467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733040, 39.660049, 56.424641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737305, 39.281006, 56.552349>,  <36.739864, 39.053581, 56.628975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737305, 39.281006, 56.552349>,  <36.733040, 39.660049, 56.424641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737305, 39.281006, 56.552349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985129, -0.044804, -0.165874,
		0.171487, 0.316289, 0.933035,
		0.010661, -0.947604, 0.319269,
		36.740501, 38.996723, 56.648129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278538, 39.589687, 56.907471>,  <36.733040, 39.660049, 56.424641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278538, 39.589687, 56.907471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.205547, 39.230995, 56.746189>,  <37.161751, 39.015778, 56.649422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.205547, 39.230995, 56.746189>,  <37.278538, 39.589687, 56.907471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205547, 39.230995, 56.746189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959831, -0.073576, -0.270761,
		0.213135, -0.436411, 0.874139,
		-0.182479, -0.896734, -0.403199,
		37.150803, 38.961975, 56.625229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729321, 39.110344, 57.124126>,  <37.278538, 39.589687, 56.907471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729321, 39.110344, 57.124126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.601692, 38.933090, 56.789024>,  <37.525116, 38.826740, 56.587963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.601692, 38.933090, 56.789024>,  <37.729321, 39.110344, 57.124126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601692, 38.933090, 56.789024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947632, -0.136377, -0.288783,
		0.013718, -0.886023, 0.463439,
		-0.319070, -0.443131, -0.837752,
		37.505970, 38.800152, 56.537697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196877, 38.539917, 57.008335>,  <37.729321, 39.110344, 57.124126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196877, 38.539917, 57.008335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.029968, 38.626778, 56.655350>,  <37.929825, 38.678894, 56.443558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.029968, 38.626778, 56.655350>,  <38.196877, 38.539917, 57.008335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029968, 38.626778, 56.655350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851458, -0.246004, -0.463144,
		-0.317660, -0.944631, -0.082245,
		-0.417267, 0.217150, -0.882459,
		37.904789, 38.691921, 56.390614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451832, 38.003738, 56.586983>,  <38.196877, 38.539917, 57.008335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451832, 38.003738, 56.586983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.288631, 38.283836, 56.352654>,  <38.190712, 38.451897, 56.212055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.288631, 38.283836, 56.352654>,  <38.451832, 38.003738, 56.586983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288631, 38.283836, 56.352654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800166, -0.034720, -0.598773,
		-0.439629, -0.713056, -0.546148,
		-0.407996, 0.700247, -0.585827,
		38.166233, 38.493912, 56.176907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515995, 37.743732, 55.888809>,  <38.451832, 38.003738, 56.586983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515995, 37.743732, 55.888809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.507774, 38.143646, 55.889576>,  <38.502842, 38.383595, 55.890038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.507774, 38.143646, 55.889576>,  <38.515995, 37.743732, 55.888809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507774, 38.143646, 55.889576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798319, 0.017566, -0.601979,
		-0.601884, -0.010843, -0.798510,
		-0.020553, 0.999787, 0.001917,
		38.501610, 38.443581, 55.890152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332809, 37.988121, 55.161213>,  <38.515995, 37.743732, 55.888809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332809, 37.988121, 55.161213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506386, 38.293755, 55.352158>,  <38.610531, 38.477135, 55.466724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506386, 38.293755, 55.352158>,  <38.332809, 37.988121, 55.161213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506386, 38.293755, 55.352158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655121, 0.096117, -0.749385,
		-0.618475, 0.637917, -0.458858,
		0.433941, 0.764083, 0.477359,
		38.636570, 38.522980, 55.495365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736691, 38.294788, 54.648548>,  <38.332809, 37.988121, 55.161213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736691, 38.294788, 54.648548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.861076, 38.537010, 54.941563>,  <38.935707, 38.682343, 55.117371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.861076, 38.537010, 54.941563>,  <38.736691, 38.294788, 54.648548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861076, 38.537010, 54.941563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587772, 0.483156, -0.648911,
		-0.746878, 0.632352, -0.205682,
		0.310963, 0.605551, 0.732537,
		38.954365, 38.718674, 55.161324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650730, 38.981270, 54.531849>,  <38.736691, 38.294788, 54.648548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650730, 38.981270, 54.531849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.942207, 38.976517, 54.805744>,  <39.117092, 38.973663, 54.970081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.942207, 38.976517, 54.805744>,  <38.650730, 38.981270, 54.531849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942207, 38.976517, 54.805744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574492, 0.554857, -0.601741,
		-0.372783, 0.831861, 0.411146,
		0.728692, -0.011882, 0.684738,
		39.160816, 38.972954, 55.011166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816135, 39.598961, 54.626232>,  <38.650730, 38.981270, 54.531849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816135, 39.598961, 54.626232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149940, 39.427139, 54.764259>,  <39.350224, 39.324047, 54.847076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149940, 39.427139, 54.764259>,  <38.816135, 39.598961, 54.626232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149940, 39.427139, 54.764259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550136, 0.614740, -0.565195,
		0.030659, 0.661494, 0.749323,
		0.834512, -0.429558, 0.345065,
		39.400295, 39.298271, 54.867779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277485, 40.070827, 54.844128>,  <38.816135, 39.598961, 54.626232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277485, 40.070827, 54.844128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515236, 39.757721, 54.770382>,  <39.657887, 39.569859, 54.726135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515236, 39.757721, 54.770382>,  <39.277485, 40.070827, 54.844128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515236, 39.757721, 54.770382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586599, 0.578834, -0.566439,
		0.550106, 0.228531, 0.803217,
		0.594378, -0.782767, -0.184365,
		39.693550, 39.522892, 54.715073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865475, 40.470703, 54.655991>,  <39.277485, 40.070827, 54.844128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865475, 40.470703, 54.655991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.936226, 40.098618, 54.527359>,  <39.978676, 39.875366, 54.450180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.936226, 40.098618, 54.527359>,  <39.865475, 40.470703, 54.655991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936226, 40.098618, 54.527359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475832, 0.366835, -0.799385,
		0.861567, -0.011623, 0.507511,
		0.176882, -0.930213, -0.321583,
		39.989292, 39.819553, 54.430885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522106, 40.451790, 54.495232>,  <39.865475, 40.470703, 54.655991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522106, 40.451790, 54.495232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.362274, 40.146919, 54.291500>,  <40.266376, 39.963997, 54.169262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.362274, 40.146919, 54.291500>,  <40.522106, 40.451790, 54.495232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362274, 40.146919, 54.291500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525503, 0.264810, -0.808531,
		0.751124, -0.590724, 0.294717,
		-0.399575, -0.762182, -0.509332,
		40.242401, 39.918266, 54.138702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039406, 40.150555, 54.105839>,  <40.522106, 40.451790, 54.495232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039406, 40.150555, 54.105839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.723660, 39.997086, 53.914135>,  <40.534210, 39.905003, 53.799114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.723660, 39.997086, 53.914135>,  <41.039406, 40.150555, 54.105839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723660, 39.997086, 53.914135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510346, 0.023814, -0.859639,
		0.341237, -0.923160, 0.177010,
		-0.789369, -0.383677, -0.479257,
		40.486847, 39.881981, 53.770359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243988, 39.632473, 53.701984>,  <41.039406, 40.150555, 54.105839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243988, 39.632473, 53.701984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.885826, 39.711403, 53.542328>,  <40.670929, 39.758759, 53.446533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.885826, 39.711403, 53.542328>,  <41.243988, 39.632473, 53.701984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885826, 39.711403, 53.542328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385199, -0.106305, -0.916690,
		-0.223315, -0.974558, 0.019177,
		-0.895406, 0.197323, -0.399138,
		40.617203, 39.770599, 53.422588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169666, 39.090523, 53.220375>,  <41.243988, 39.632473, 53.701984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169666, 39.090523, 53.220375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.940994, 39.404716, 53.125557>,  <40.803791, 39.593235, 53.068668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.940994, 39.404716, 53.125557>,  <41.169666, 39.090523, 53.220375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940994, 39.404716, 53.125557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409514, 0.022821, -0.912018,
		-0.710970, -0.618457, -0.334714,
		-0.571683, 0.785487, -0.237042,
		40.769489, 39.640362, 53.054443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243416, 39.032074, 52.485199>,  <41.169666, 39.090523, 53.220375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243416, 39.032074, 52.485199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.064911, 39.384239, 52.549351>,  <40.957809, 39.595539, 52.587841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.064911, 39.384239, 52.549351>,  <41.243416, 39.032074, 52.485199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064911, 39.384239, 52.549351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357025, 0.339487, -0.870220,
		-0.820602, -0.331083, -0.465829,
		-0.446258, 0.880416, 0.160378,
		40.931034, 39.648365, 52.597466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653507, 39.223953, 51.933258>,  <41.243416, 39.032074, 52.485199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653507, 39.223953, 51.933258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799751, 39.561066, 52.091274>,  <40.887497, 39.763332, 52.186085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799751, 39.561066, 52.091274>,  <40.653507, 39.223953, 51.933258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799751, 39.561066, 52.091274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221986, 0.333221, -0.916344,
		-0.903910, 0.422716, -0.065256,
		0.365608, 0.842778, 0.395038,
		40.909435, 39.813900, 52.209785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574745, 39.718975, 51.346298>,  <40.653507, 39.223953, 51.933258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574745, 39.718975, 51.346298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.822311, 39.899010, 51.603783>,  <40.970852, 40.007030, 51.758274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.822311, 39.899010, 51.603783>,  <40.574745, 39.718975, 51.346298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822311, 39.899010, 51.603783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481033, 0.430670, -0.763630,
		-0.620924, 0.782272, 0.050045,
		0.618919, 0.450083, 0.643711,
		41.007988, 40.034035, 51.796898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700527, 40.416691, 51.091816>,  <40.574745, 39.718975, 51.346298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700527, 40.416691, 51.091816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.009857, 40.332779, 51.331131>,  <41.195457, 40.282433, 51.474720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.009857, 40.332779, 51.331131>,  <40.700527, 40.416691, 51.091816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009857, 40.332779, 51.331131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630067, 0.359301, -0.688417,
		-0.070549, 0.909337, 0.410035,
		0.773329, -0.209782, 0.598292,
		41.241856, 40.269844, 51.510620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153133, 41.012245, 51.105240>,  <40.700527, 40.416691, 51.091816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153133, 41.012245, 51.105240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.388084, 40.710205, 51.221725>,  <41.529057, 40.528980, 51.291618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.388084, 40.710205, 51.221725>,  <41.153133, 41.012245, 51.105240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388084, 40.710205, 51.221725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703083, 0.297883, -0.645709,
		0.400828, 0.584025, 0.705870,
		0.587377, -0.755103, 0.291218,
		41.564297, 40.483673, 51.309090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.004204, 44.726650, 47.599026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.345406, 44.543610, 47.699413>,  <42.550125, 44.433784, 47.759647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.345406, 44.543610, 47.699413>,  <42.004204, 44.726650, 47.599026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345406, 44.543610, 47.699413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511653, 0.638381, -0.575048,
		0.102925, 0.618930, 0.778674,
		0.853005, -0.457597, 0.250972,
		42.601307, 44.406330, 47.774704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457256, 45.239403, 47.852650>,  <42.004204, 44.726650, 47.599026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457256, 45.239403, 47.852650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683716, 44.934349, 47.727520>,  <42.819592, 44.751316, 47.652443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683716, 44.934349, 47.727520>,  <42.457256, 45.239403, 47.852650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683716, 44.934349, 47.727520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573373, 0.636996, -0.515247,
		0.592217, 0.112339, 0.797909,
		0.566147, -0.762638, -0.312828,
		42.853561, 44.705559, 47.633671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087631, 45.559635, 47.710907>,  <42.457256, 45.239403, 47.852650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087631, 45.559635, 47.710907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174721, 45.194740, 47.572098>,  <43.226974, 44.975803, 47.488811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174721, 45.194740, 47.572098>,  <43.087631, 45.559635, 47.710907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174721, 45.194740, 47.572098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744589, 0.385118, -0.545226,
		0.631019, -0.139685, 0.763088,
		0.217719, -0.912235, -0.347025,
		43.240036, 44.921070, 47.467991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830826, 45.531586, 47.644016>,  <43.087631, 45.559635, 47.710907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830826, 45.531586, 47.644016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.700539, 45.257065, 47.383896>,  <43.622368, 45.092350, 47.227825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.700539, 45.257065, 47.383896>,  <43.830826, 45.531586, 47.644016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700539, 45.257065, 47.383896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683437, 0.304369, -0.663531,
		0.653318, -0.660562, 0.369910,
		-0.325715, -0.686307, -0.650302,
		43.602825, 45.051174, 47.188805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375694, 45.009575, 47.401318>,  <43.830826, 45.531586, 47.644016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375694, 45.009575, 47.401318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116848, 44.982574, 47.097561>,  <43.961540, 44.966373, 46.915306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116848, 44.982574, 47.097561>,  <44.375694, 45.009575, 47.401318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116848, 44.982574, 47.097561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712972, 0.299192, -0.634157,
		0.270011, -0.951802, -0.145486,
		-0.647120, -0.067502, -0.759394,
		43.922710, 44.962322, 46.869743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741322, 44.686573, 46.995922>,  <44.375694, 45.009575, 47.401318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741322, 44.686573, 46.995922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.438492, 44.829277, 46.776993>,  <44.256794, 44.914902, 46.645638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.438492, 44.829277, 46.776993>,  <44.741322, 44.686573, 46.995922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438492, 44.829277, 46.776993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621206, 0.133629, -0.772170,
		-0.202346, -0.924587, -0.322792,
		-0.757073, 0.356765, -0.547320,
		44.211369, 44.936306, 46.612797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885979, 44.416084, 46.296490>,  <44.741322, 44.686573, 46.995922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885979, 44.416084, 46.296490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.623150, 44.702576, 46.202454>,  <44.465454, 44.874470, 46.146030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.623150, 44.702576, 46.202454>,  <44.885979, 44.416084, 46.296490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623150, 44.702576, 46.202454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477048, 0.153611, -0.865349,
		-0.583679, -0.680745, -0.442611,
		-0.657072, 0.716233, -0.235089,
		44.426029, 44.917446, 46.131927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681507, 44.381203, 45.506645>,  <44.885979, 44.416084, 46.296490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681507, 44.381203, 45.506645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.585991, 44.756416, 45.607105>,  <44.528683, 44.981544, 45.667381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.585991, 44.756416, 45.607105>,  <44.681507, 44.381203, 45.506645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585991, 44.756416, 45.607105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495970, 0.340168, -0.798936,
		-0.834861, -0.066213, -0.546464,
		-0.238789, 0.938031, 0.251153,
		44.514355, 45.037827, 45.682449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288651, 44.753448, 44.947681>,  <44.681507, 44.381203, 45.506645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288651, 44.753448, 44.947681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468433, 45.041084, 45.159683>,  <44.576305, 45.213665, 45.286884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468433, 45.041084, 45.159683>,  <44.288651, 44.753448, 44.947681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468433, 45.041084, 45.159683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420448, 0.353190, -0.835751,
		-0.788168, 0.598474, -0.143594,
		0.449460, 0.719087, 0.530000,
		44.603271, 45.256809, 45.318684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217266, 45.478168, 44.482655>,  <44.288651, 44.753448, 44.947681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217266, 45.478168, 44.482655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493301, 45.555908, 44.761509>,  <44.658924, 45.602551, 44.928822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493301, 45.555908, 44.761509>,  <44.217266, 45.478168, 44.482655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493301, 45.555908, 44.761509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537312, 0.507736, -0.673424,
		-0.484842, 0.839305, 0.245958,
		0.690090, 0.194348, 0.697140,
		44.700329, 45.614212, 44.970650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458664, 46.098343, 44.291775>,  <44.217266, 45.478168, 44.482655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458664, 46.098343, 44.291775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758400, 45.943787, 44.506878>,  <44.938244, 45.851051, 44.635941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758400, 45.943787, 44.506878>,  <44.458664, 46.098343, 44.291775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758400, 45.943787, 44.506878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656634, 0.328693, -0.678817,
		0.085529, 0.861780, 0.500021,
		0.749344, -0.386389, 0.537761,
		44.983204, 45.827869, 44.668205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000454, 46.657211, 44.342953>,  <44.458664, 46.098343, 44.291775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000454, 46.657211, 44.342953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.175198, 46.301476, 44.396957>,  <45.280045, 46.088032, 44.429359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.175198, 46.301476, 44.396957>,  <45.000454, 46.657211, 44.342953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175198, 46.301476, 44.396957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748332, 0.276023, -0.603167,
		0.499156, 0.364529, 0.786106,
		0.436855, -0.889342, 0.135011,
		45.306255, 46.034672, 44.437462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635849, 46.824608, 44.662228>,  <45.000454, 46.657211, 44.342953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635849, 46.824608, 44.662228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602692, 46.497665, 44.434174>,  <45.582798, 46.301498, 44.297340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602692, 46.497665, 44.434174>,  <45.635849, 46.824608, 44.662228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602692, 46.497665, 44.434174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766040, 0.313669, -0.561065,
		0.637425, -0.483257, 0.600127,
		-0.082898, -0.817358, -0.570134,
		45.577824, 46.252457, 44.263134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.293484, 46.599560, 44.529488>,  <45.635849, 46.824608, 44.662228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.293484, 46.599560, 44.529488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.063438, 46.440971, 44.243256>,  <45.925411, 46.345818, 44.071518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.063438, 46.440971, 44.243256>,  <46.293484, 46.599560, 44.529488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063438, 46.440971, 44.243256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703943, 0.205794, -0.679789,
		0.416779, -0.894684, 0.160738,
		-0.575117, -0.396472, -0.715577,
		45.890903, 46.322029, 44.028584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.028908, 46.463455, 44.637184>,  <46.293484, 46.599560, 44.529488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.028908, 46.463455, 44.637184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.398849, 46.604225, 44.694866>,  <47.620815, 46.688686, 44.729473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.398849, 46.604225, 44.694866>,  <47.028908, 46.463455, 44.637184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.398849, 46.604225, 44.694866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066747, -0.223076, 0.972513,
		0.374418, -0.909058, -0.182823,
		0.924855, 0.351923, 0.144201,
		47.676308, 46.709801, 44.738125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.406155, 45.913040, 45.031971>,  <47.028908, 46.463455, 44.637184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.406155, 45.913040, 45.031971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.577354, 46.271324, 45.080185>,  <47.680073, 46.486294, 45.109112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.577354, 46.271324, 45.080185>,  <47.406155, 45.913040, 45.031971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.577354, 46.271324, 45.080185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008632, -0.129306, 0.991567,
		0.903739, -0.425428, -0.047610,
		0.427996, 0.895707, 0.120531,
		47.705753, 46.540035, 45.116344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.898842, 45.768597, 45.574963>,  <47.406155, 45.913040, 45.031971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.898842, 45.768597, 45.574963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.895607, 46.168427, 45.563801>,  <47.893665, 46.408325, 45.557102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.895607, 46.168427, 45.563801>,  <47.898842, 45.768597, 45.574963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.895607, 46.168427, 45.563801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025563, 0.028104, 0.999278,
		0.999640, 0.007364, -0.025779,
		-0.008083, 0.999578, -0.027905,
		47.893181, 46.468300, 45.555428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.441559, 46.084942, 46.020622>,  <47.898842, 45.768597, 45.574963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.441559, 46.084942, 46.020622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.143219, 46.350578, 45.999878>,  <47.964214, 46.509960, 45.987431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.143219, 46.350578, 45.999878>,  <48.441559, 46.084942, 46.020622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.143219, 46.350578, 45.999878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117717, -0.054782, 0.991535,
		0.655627, 0.745643, 0.119034,
		-0.745852, 0.664090, -0.051858,
		47.919464, 46.549805, 45.984322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.550251, 46.590042, 46.569267>,  <48.441559, 46.084942, 46.020622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.550251, 46.590042, 46.569267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.162750, 46.658989, 46.497925>,  <47.930252, 46.700359, 46.455120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.162750, 46.658989, 46.497925>,  <48.550251, 46.590042, 46.569267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.162750, 46.658989, 46.497925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175399, 0.032383, 0.983965,
		0.175381, 0.984500, -0.001138,
		-0.968750, 0.172370, -0.178360,
		47.872124, 46.710701, 46.444416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.355217, 47.208092, 47.042076>,  <48.550251, 46.590042, 46.569267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.355217, 47.208092, 47.042076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.027908, 46.999077, 46.946255>,  <47.831524, 46.873669, 46.888763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.027908, 46.999077, 46.946255>,  <48.355217, 47.208092, 47.042076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.027908, 46.999077, 46.946255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298901, 0.030818, 0.953786,
		-0.491006, 0.852060, -0.181405,
		-0.818273, -0.522537, -0.239550,
		47.782425, 46.842316, 46.874390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.806995, 47.619194, 47.402294>,  <48.355217, 47.208092, 47.042076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.806995, 47.619194, 47.402294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.646484, 47.260765, 47.326355>,  <47.550179, 47.045708, 47.280792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.646484, 47.260765, 47.326355>,  <47.806995, 47.619194, 47.402294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.646484, 47.260765, 47.326355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373695, -0.029075, 0.927096,
		-0.836261, 0.442964, -0.323188,
		-0.401274, -0.896068, -0.189848,
		47.526104, 46.991943, 47.269402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.019421, 47.683243, 47.666843>,  <47.806995, 47.619194, 47.402294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.019421, 47.683243, 47.666843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.082062, 47.289902, 47.629974>,  <47.119648, 47.053898, 47.607853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.082062, 47.289902, 47.629974>,  <47.019421, 47.683243, 47.666843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.082062, 47.289902, 47.629974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654972, -0.173254, 0.735524,
		-0.739248, -0.054812, -0.671199,
		0.156603, -0.983350, -0.092178,
		47.129044, 46.994896, 47.602322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.293091, 47.390709, 47.670700>,  <47.019421, 47.683243, 47.666843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.293091, 47.390709, 47.670700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.569550, 47.121971, 47.777233>,  <46.735424, 46.960728, 47.841152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.569550, 47.121971, 47.777233>,  <46.293091, 47.390709, 47.670700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569550, 47.121971, 47.777233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507866, -0.189317, 0.840376,
		-0.514182, -0.716088, -0.472054,
		0.691151, -0.671846, 0.266333,
		46.776894, 46.920418, 47.857132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951908, 46.894573, 47.930756>,  <46.293091, 47.390709, 47.670700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951908, 46.894573, 47.930756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.323685, 46.844017, 48.069412>,  <46.546749, 46.813683, 48.152607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.323685, 46.844017, 48.069412>,  <45.951908, 46.894573, 47.930756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.323685, 46.844017, 48.069412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362850, -0.142701, 0.920856,
		-0.066919, -0.981663, -0.178492,
		0.929442, -0.126388, 0.346647,
		46.602516, 46.806099, 48.173405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040668, 46.120537, 48.055725>,  <45.951908, 46.894573, 47.930756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040668, 46.120537, 48.055725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.324394, 46.295174, 48.277088>,  <46.494629, 46.399956, 48.409904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.324394, 46.295174, 48.277088>,  <46.040668, 46.120537, 48.055725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324394, 46.295174, 48.277088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462923, -0.303543, 0.832805,
		0.531576, -0.846908, -0.013201,
		0.709316, 0.436588, 0.553409,
		46.537189, 46.426151, 48.443111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.331474, 45.622246, 48.439075>,  <46.040668, 46.120537, 48.055725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.331474, 45.622246, 48.439075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.424042, 45.952164, 48.645439>,  <46.479580, 46.150116, 48.769257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.424042, 45.952164, 48.645439>,  <46.331474, 45.622246, 48.439075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.424042, 45.952164, 48.645439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440207, -0.384132, 0.811579,
		0.867563, -0.414918, 0.274186,
		0.231415, 0.824794, 0.515909,
		46.493465, 46.199600, 48.800213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728683, 45.379307, 48.960373>,  <46.331474, 45.622246, 48.439075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728683, 45.379307, 48.960373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.608780, 45.739761, 49.085659>,  <46.536839, 45.956032, 49.160831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.608780, 45.739761, 49.085659>,  <46.728683, 45.379307, 48.960373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608780, 45.739761, 49.085659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252818, -0.391606, 0.884719,
		0.919908, 0.186014, 0.345209,
		-0.299756, 0.901135, 0.313213,
		46.518852, 46.010101, 49.179623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.862263, 45.429874, 49.695595>,  <46.728683, 45.379307, 48.960373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.862263, 45.429874, 49.695595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.582161, 45.709923, 49.639774>,  <46.414101, 45.877953, 49.606281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.582161, 45.709923, 49.639774>,  <46.862263, 45.429874, 49.695595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.582161, 45.709923, 49.639774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523125, -0.370216, 0.767646,
		0.485779, 0.610552, 0.625495,
		-0.700256, 0.700119, -0.139552,
		46.372086, 45.919960, 49.597908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.353752, 45.701488, 50.117046>,  <46.862263, 45.429874, 49.695595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.353752, 45.701488, 50.117046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.685333, 45.490280, 50.190830>,  <47.884281, 45.363556, 50.235100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.685333, 45.490280, 50.190830>,  <47.353752, 45.701488, 50.117046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.685333, 45.490280, 50.190830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358224, 0.247939, -0.900112,
		0.429542, 0.812233, 0.394680,
		0.828957, -0.528020, 0.184461,
		47.934021, 45.331875, 50.246170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.823589, 46.096634, 49.796921>,  <47.353752, 45.701488, 50.117046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.823589, 46.096634, 49.796921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.011986, 45.747559, 49.848423>,  <48.125023, 45.538113, 49.879322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.011986, 45.747559, 49.848423>,  <47.823589, 46.096634, 49.796921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.011986, 45.747559, 49.848423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513807, 0.152756, -0.844197,
		0.717055, 0.463764, 0.520342,
		0.470993, -0.872690, 0.128751,
		48.153282, 45.485752, 49.887047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.549351, 46.243622, 49.675362>,  <47.823589, 46.096634, 49.796921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.549351, 46.243622, 49.675362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.486237, 45.851700, 49.626221>,  <48.448368, 45.616547, 49.596737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.486237, 45.851700, 49.626221>,  <48.549351, 46.243622, 49.675362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.486237, 45.851700, 49.626221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595735, 0.004772, -0.803167,
		0.787531, -0.199912, 0.582949,
		-0.157781, -0.979802, -0.122852,
		48.438904, 45.557758, 49.589367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.126961, 45.919373, 49.836304>,  <48.549351, 46.243622, 49.675362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.126961, 45.919373, 49.836304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.903107, 45.693863, 49.593334>,  <48.768795, 45.558556, 49.447552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.903107, 45.693863, 49.593334>,  <49.126961, 45.919373, 49.836304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.903107, 45.693863, 49.593334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754453, -0.043275, -0.654926,
		0.342944, -0.824795, 0.449559,
		-0.559635, -0.563774, -0.607428,
		48.735218, 45.524731, 49.411106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.549034, 45.410202, 49.577827>,  <49.126961, 45.919373, 49.836304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.549034, 45.410202, 49.577827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.239708, 45.365173, 49.328247>,  <49.054111, 45.338154, 49.178497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.239708, 45.365173, 49.328247>,  <49.549034, 45.410202, 49.577827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.239708, 45.365173, 49.328247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630939, -0.039669, -0.774818,
		0.062474, -0.992851, 0.101705,
		-0.773313, -0.112575, -0.623950,
		49.007713, 45.331402, 49.141064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.725681, 44.824596, 49.171413>,  <49.549034, 45.410202, 49.577827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.725681, 44.824596, 49.171413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.465500, 45.044609, 48.961887>,  <49.309391, 45.176617, 48.836170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.465500, 45.044609, 48.961887>,  <49.725681, 44.824596, 49.171413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.465500, 45.044609, 48.961887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631289, 0.008000, -0.775506,
		-0.422362, -0.835106, -0.352432,
		-0.650449, 0.550031, -0.523814,
		49.270367, 45.209618, 48.804745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.628345, 44.461838, 48.534836>,  <49.725681, 44.824596, 49.171413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.628345, 44.461838, 48.534836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.530525, 44.843224, 48.464298>,  <49.471832, 45.072056, 48.421978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.530525, 44.843224, 48.464298>,  <49.628345, 44.461838, 48.534836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.530525, 44.843224, 48.464298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460806, -0.045733, -0.886322,
		-0.853144, -0.298007, -0.428179,
		-0.244548, 0.953467, -0.176340,
		49.457161, 45.129265, 48.411396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.752804, 44.529163, 47.855087>,  <49.628345, 44.461838, 48.534836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.752804, 44.529163, 47.855087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.721397, 44.908966, 47.976593>,  <49.702553, 45.136848, 48.049496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.721397, 44.908966, 47.976593>,  <49.752804, 44.529163, 47.855087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.721397, 44.908966, 47.976593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673056, 0.275268, -0.686457,
		-0.735412, 0.150549, -0.660685,
		-0.078520, 0.949506, 0.303764,
		49.697842, 45.193817, 48.067722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.784096, 44.899738, 47.220112>,  <49.752804, 44.529163, 47.855087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.784096, 44.899738, 47.220112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.868652, 45.174850, 47.497894>,  <49.919384, 45.339916, 47.664566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.868652, 45.174850, 47.497894>,  <49.784096, 44.899738, 47.220112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.868652, 45.174850, 47.497894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742646, 0.348909, -0.571611,
		-0.635446, 0.636568, -0.437023,
		0.211388, 0.687781, 0.694458,
		49.932068, 45.381184, 47.706230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.026123, 45.413090, 46.842358>,  <49.784096, 44.899738, 47.220112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.026123, 45.413090, 46.842358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<50.155151, 45.459290, 47.218147>,  <50.232567, 45.487011, 47.443619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<50.155151, 45.459290, 47.218147>,  <50.026123, 45.413090, 46.842358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.155151, 45.459290, 47.218147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901793, 0.264075, -0.342101,
		-0.287604, 0.957561, -0.018976,
		0.322571, 0.115502, 0.939472,
		50.251923, 45.493938, 47.499989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.287792, 46.108360, 46.849770>,  <50.026123, 45.413090, 46.842358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.287792, 46.108360, 46.849770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<50.461617, 45.887238, 47.134182>,  <50.565910, 45.754562, 47.304829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<50.461617, 45.887238, 47.134182>,  <50.287792, 46.108360, 46.849770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.461617, 45.887238, 47.134182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865811, 0.473844, -0.160758,
		-0.248049, 0.685476, 0.684539,
		0.434561, -0.552806, 0.711029,
		50.591984, 45.721397, 47.347492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.666916, 46.625523, 47.299549>,  <50.287792, 46.108360, 46.849770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.666916, 46.625523, 47.299549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<50.828278, 46.260490, 47.326275>,  <50.925095, 46.041473, 47.342312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<50.828278, 46.260490, 47.326275>,  <50.666916, 46.625523, 47.299549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.828278, 46.260490, 47.326275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901165, 0.383580, -0.201912,
		0.158631, 0.141667, 0.977122,
		0.403409, -0.912577, 0.066818,
		50.949299, 45.986717, 47.346321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<45.991016, 44.889370, 53.748783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083626, 44.556023, 53.548027>,  <46.139191, 44.356014, 53.427574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083626, 44.556023, 53.548027>,  <45.991016, 44.889370, 53.748783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083626, 44.556023, 53.548027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650607, 0.516197, -0.557002,
		0.723261, -0.197570, 0.661710,
		0.231526, -0.833371, -0.501885,
		46.153084, 44.306011, 53.397461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670704, 44.993404, 53.567390>,  <45.991016, 44.889370, 53.748783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670704, 44.993404, 53.567390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.573936, 44.693176, 53.321426>,  <46.515877, 44.513039, 53.173847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.573936, 44.693176, 53.321426>,  <46.670704, 44.993404, 53.567390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.573936, 44.693176, 53.321426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587807, 0.390838, -0.708327,
		0.771982, -0.532808, 0.346641,
		-0.241922, -0.750574, -0.614908,
		46.501358, 44.468002, 53.136955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.374496, 44.658886, 53.338303>,  <46.670704, 44.993404, 53.567390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.374496, 44.658886, 53.338303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.072578, 44.591644, 53.084682>,  <46.891426, 44.551300, 52.932510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.072578, 44.591644, 53.084682>,  <47.374496, 44.658886, 53.338303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.072578, 44.591644, 53.084682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561843, 0.333187, -0.757178,
		0.338563, -0.927750, -0.157024,
		-0.754790, -0.168130, -0.634054,
		46.846138, 44.541214, 52.894466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.701797, 44.176746, 52.961369>,  <47.374496, 44.658886, 53.338303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.701797, 44.176746, 52.961369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.403381, 44.329681, 52.743286>,  <47.224331, 44.421444, 52.612438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.403381, 44.329681, 52.743286>,  <47.701797, 44.176746, 52.961369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.403381, 44.329681, 52.743286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612298, 0.072020, -0.787340,
		-0.261765, -0.921211, -0.287835,
		-0.746036, 0.382339, -0.545204,
		47.179569, 44.444382, 52.579723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.778446, 43.871799, 52.341908>,  <47.701797, 44.176746, 52.961369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.778446, 43.871799, 52.341908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.543312, 44.178391, 52.238403>,  <47.402233, 44.362347, 52.176300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.543312, 44.178391, 52.238403>,  <47.778446, 43.871799, 52.341908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.543312, 44.178391, 52.238403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568560, 0.163890, -0.806151,
		-0.575490, -0.621006, -0.532131,
		-0.587835, 0.766480, -0.258762,
		47.366962, 44.408333, 52.160774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.719330, 43.827141, 51.648754>,  <47.778446, 43.871799, 52.341908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.719330, 43.827141, 51.648754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.598770, 44.203926, 51.707909>,  <47.526432, 44.429996, 51.743401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.598770, 44.203926, 51.707909>,  <47.719330, 43.827141, 51.648754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.598770, 44.203926, 51.707909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425758, 0.271731, -0.863071,
		-0.853162, -0.197170, -0.482947,
		-0.301404, 0.941959, 0.147884,
		47.508350, 44.486515, 51.752274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239494, 44.000179, 51.063843>,  <47.719330, 43.827141, 51.648754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239494, 44.000179, 51.063843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.378677, 44.338737, 51.225105>,  <47.462189, 44.541874, 51.321861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.378677, 44.338737, 51.225105>,  <47.239494, 44.000179, 51.063843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.378677, 44.338737, 51.225105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177954, 0.362581, -0.914805,
		-0.920465, 0.390060, -0.024456,
		0.347961, 0.846397, 0.403156,
		47.483067, 44.592655, 51.346050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.059101, 44.423481, 50.447086>,  <47.239494, 44.000179, 51.063843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.059101, 44.423481, 50.447086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.350136, 44.595116, 50.661190>,  <47.524757, 44.698097, 50.789654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.350136, 44.595116, 50.661190>,  <47.059101, 44.423481, 50.447086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.350136, 44.595116, 50.661190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333247, 0.460931, -0.822489,
		-0.599635, 0.776807, 0.192378,
		0.727588, 0.429084, 0.535259,
		47.568413, 44.723843, 50.821766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.013302, 45.127865, 50.342667>,  <47.059101, 44.423481, 50.447086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.013302, 45.127865, 50.342667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.394661, 45.102562, 50.460678>,  <47.623474, 45.087379, 50.531483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.394661, 45.102562, 50.460678>,  <47.013302, 45.127865, 50.342667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.394661, 45.102562, 50.460678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282685, 0.529126, -0.800072,
		-0.105497, 0.846182, 0.522347,
		0.953394, -0.063255, 0.295024,
		47.680679, 45.083584, 50.549187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636902, 45.680733, 50.406483>,  <47.013302, 45.127865, 50.342667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636902, 45.680733, 50.406483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.330353, 45.817535, 50.188965>,  <46.146423, 45.899616, 50.058456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.330353, 45.817535, 50.188965>,  <46.636902, 45.680733, 50.406483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.330353, 45.817535, 50.188965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634216, -0.268138, 0.725170,
		0.102199, 0.900631, 0.422397,
		-0.766372, 0.342003, -0.543791,
		46.100441, 45.920135, 50.025829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212837, 46.066673, 50.904930>,  <46.636902, 45.680733, 50.406483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212837, 46.066673, 50.904930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967125, 46.007156, 50.594955>,  <45.819698, 45.971447, 50.408970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967125, 46.007156, 50.594955>,  <46.212837, 46.066673, 50.904930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967125, 46.007156, 50.594955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721393, -0.292086, 0.627916,
		-0.319776, 0.944747, 0.072085,
		-0.614276, -0.148791, -0.774936,
		45.782841, 45.962521, 50.362476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616154, 46.368450, 51.086555>,  <46.212837, 46.066673, 50.904930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616154, 46.368450, 51.086555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519615, 46.096573, 50.809494>,  <45.461693, 45.933449, 50.643257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519615, 46.096573, 50.809494>,  <45.616154, 46.368450, 51.086555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519615, 46.096573, 50.809494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708505, -0.364336, 0.604384,
		-0.663154, 0.636615, -0.393634,
		-0.241345, -0.679691, -0.692656,
		45.447212, 45.892666, 50.601696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836937, 46.286110, 51.114647>,  <45.616154, 46.368450, 51.086555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836937, 46.286110, 51.114647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976311, 45.957352, 50.934387>,  <45.059933, 45.760098, 50.826233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976311, 45.957352, 50.934387>,  <44.836937, 46.286110, 51.114647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.976311, 45.957352, 50.934387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730778, -0.539272, 0.418510,
		-0.586994, 0.183504, -0.788520,
		0.348428, -0.821896, -0.450650,
		45.080841, 45.710781, 50.799194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341949, 46.029541, 50.565029>,  <44.836937, 46.286110, 51.114647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341949, 46.029541, 50.565029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582527, 45.741661, 50.703766>,  <44.726871, 45.568932, 50.787006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582527, 45.741661, 50.703766>,  <44.341949, 46.029541, 50.565029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582527, 45.741661, 50.703766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798879, -0.545953, 0.252443,
		0.007674, -0.428912, -0.903314,
		0.601442, -0.719701, 0.346838,
		44.762959, 45.525749, 50.807816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923286, 45.405739, 50.624691>,  <44.341949, 46.029541, 50.565029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923286, 45.405739, 50.624691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247299, 45.296516, 50.832264>,  <44.441708, 45.230984, 50.956810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247299, 45.296516, 50.832264>,  <43.923286, 45.405739, 50.624691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247299, 45.296516, 50.832264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568002, -0.585245, 0.578673,
		0.145697, -0.763499, -0.629160,
		0.810029, -0.273053, 0.518937,
		44.490307, 45.214600, 50.987946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719746, 44.795528, 50.667671>,  <43.923286, 45.405739, 50.624691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719746, 44.795528, 50.667671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012100, 44.829216, 50.938583>,  <44.187511, 44.849430, 51.101131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012100, 44.829216, 50.938583>,  <43.719746, 44.795528, 50.667671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012100, 44.829216, 50.938583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589261, -0.422814, 0.688477,
		0.344351, -0.902294, -0.259399,
		0.730886, 0.084224, 0.677283,
		44.231365, 44.854485, 51.141769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948162, 44.123329, 50.896351>,  <43.719746, 44.795528, 50.667671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948162, 44.123329, 50.896351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990269, 44.391792, 51.189873>,  <44.015533, 44.552868, 51.365986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990269, 44.391792, 51.189873>,  <43.948162, 44.123329, 50.896351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990269, 44.391792, 51.189873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595780, -0.548253, 0.586911,
		0.796219, -0.498969, 0.342147,
		0.105267, 0.671155, 0.733805,
		44.021851, 44.593140, 51.410015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771255, 43.701920, 51.513924>,  <43.948162, 44.123329, 50.896351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771255, 43.701920, 51.513924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804298, 44.067291, 51.673332>,  <43.824123, 44.286514, 51.768978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804298, 44.067291, 51.673332>,  <43.771255, 43.701920, 51.513924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804298, 44.067291, 51.673332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597583, -0.274622, 0.753311,
		0.797541, -0.300375, 0.523167,
		0.082603, 0.913432, 0.398521,
		43.829079, 44.341320, 51.792889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929489, 43.589367, 52.218338>,  <43.771255, 43.701920, 51.513924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929489, 43.589367, 52.218338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780510, 43.959473, 52.189568>,  <43.691124, 44.181534, 52.172306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780510, 43.959473, 52.189568>,  <43.929489, 43.589367, 52.218338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780510, 43.959473, 52.189568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677429, -0.218076, 0.702519,
		0.634329, 0.310376, 0.708021,
		-0.372448, 0.925262, -0.071926,
		43.668777, 44.237053, 52.167992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735065, 43.906342, 52.910072>,  <43.929489, 43.589367, 52.218338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735065, 43.906342, 52.910072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538784, 44.166321, 52.677944>,  <43.421017, 44.322308, 52.538666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538784, 44.166321, 52.677944>,  <43.735065, 43.906342, 52.910072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538784, 44.166321, 52.677944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837730, -0.168757, 0.519355,
		0.239622, 0.741002, 0.627293,
		-0.490703, 0.649951, -0.580322,
		43.391575, 44.361305, 52.503849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320007, 44.215748, 53.374310>,  <43.735065, 43.906342, 52.910072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320007, 44.215748, 53.374310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160538, 44.300034, 53.017288>,  <43.064854, 44.350605, 52.803074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160538, 44.300034, 53.017288>,  <43.320007, 44.215748, 53.374310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160538, 44.300034, 53.017288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910241, 0.027815, 0.413144,
		0.111883, 0.977151, 0.180716,
		-0.398677, 0.210719, -0.892555,
		43.040936, 44.363251, 52.749523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835087, 44.765118, 53.404694>,  <43.320007, 44.215748, 53.374310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835087, 44.765118, 53.404694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734966, 44.579376, 53.064877>,  <42.674892, 44.467930, 52.860989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734966, 44.579376, 53.064877>,  <42.835087, 44.765118, 53.404694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734966, 44.579376, 53.064877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964576, 0.044103, 0.260093,
		-0.083309, 0.884549, -0.458948,
		-0.250306, -0.464358, -0.849540,
		42.659874, 44.440067, 52.810013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343945, 45.201145, 53.040051>,  <42.835087, 44.765118, 53.404694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343945, 45.201145, 53.040051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282600, 44.823875, 52.922131>,  <42.245792, 44.597515, 52.851379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282600, 44.823875, 52.922131>,  <42.343945, 45.201145, 53.040051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282600, 44.823875, 52.922131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954304, 0.063933, 0.291917,
		-0.256481, 0.326095, -0.909879,
		-0.153364, -0.943172, -0.294796,
		42.236591, 44.540924, 52.833691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.165909, 37.439552, 52.707314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.137836, 37.832748, 52.775196>,  <43.120995, 38.068668, 52.815926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.137836, 37.832748, 52.775196>,  <43.165909, 37.439552, 52.707314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137836, 37.832748, 52.775196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217624, 0.181114, -0.959081,
		-0.973506, -0.030377, -0.226634,
		-0.070181, 0.982993, 0.169705,
		43.116783, 38.127647, 52.826107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892864, 37.719891, 52.046692>,  <43.165909, 37.439552, 52.707314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892864, 37.719891, 52.046692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.058487, 38.021950, 52.249989>,  <43.157860, 38.203186, 52.371967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.058487, 38.021950, 52.249989>,  <42.892864, 37.719891, 52.046692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058487, 38.021950, 52.249989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379339, 0.364411, -0.850474,
		-0.827441, 0.544943, -0.135568,
		0.414058, 0.755144, 0.508246,
		43.182705, 38.248493, 52.402462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771465, 38.209686, 51.610168>,  <42.892864, 37.719891, 52.046692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771465, 38.209686, 51.610168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.053841, 38.344772, 51.859200>,  <43.223267, 38.425823, 52.008617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.053841, 38.344772, 51.859200>,  <42.771465, 38.209686, 51.610168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053841, 38.344772, 51.859200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587270, 0.212295, -0.781054,
		-0.395942, 0.916996, -0.048461,
		0.705935, 0.337712, 0.622581,
		43.265621, 38.446087, 52.045975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910885, 38.894756, 51.395260>,  <42.771465, 38.209686, 51.610168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910885, 38.894756, 51.395260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.233124, 38.826302, 51.622143>,  <43.426468, 38.785229, 51.758274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.233124, 38.826302, 51.622143>,  <42.910885, 38.894756, 51.395260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233124, 38.826302, 51.622143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575880, 0.451117, -0.681804,
		-0.139195, 0.875903, 0.461973,
		0.805598, -0.171137, 0.567208,
		43.474804, 38.774960, 51.792305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324020, 39.506298, 51.358505>,  <42.910885, 38.894756, 51.395260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324020, 39.506298, 51.358505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.601295, 39.251198, 51.492832>,  <43.767658, 39.098137, 51.573429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.601295, 39.251198, 51.492832>,  <43.324020, 39.506298, 51.358505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601295, 39.251198, 51.492832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670556, 0.399787, -0.624920,
		0.264287, 0.658368, 0.704772,
		0.693186, -0.637747, 0.335815,
		43.809250, 39.059872, 51.593578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034817, 39.855652, 51.477001>,  <43.324020, 39.506298, 51.358505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034817, 39.855652, 51.477001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.103645, 39.463470, 51.438828>,  <44.144943, 39.228161, 51.415924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.103645, 39.463470, 51.438828>,  <44.034817, 39.855652, 51.477001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103645, 39.463470, 51.438828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756985, 0.193595, -0.624095,
		0.630370, 0.035147, 0.775499,
		0.172068, -0.980452, -0.095431,
		44.155266, 39.169334, 51.410198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708931, 39.819794, 51.567799>,  <44.034817, 39.855652, 51.477001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708931, 39.819794, 51.567799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.625496, 39.492943, 51.352840>,  <44.575436, 39.296833, 51.223866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.625496, 39.492943, 51.352840>,  <44.708931, 39.819794, 51.567799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625496, 39.492943, 51.352840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566047, 0.347223, -0.747681,
		0.797547, -0.460149, 0.390105,
		-0.208591, -0.817128, -0.537393,
		44.562920, 39.247803, 51.191624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386646, 39.725891, 51.221424>,  <44.708931, 39.819794, 51.567799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386646, 39.725891, 51.221424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.132774, 39.474991, 51.040871>,  <44.980450, 39.324451, 50.932541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.132774, 39.474991, 51.040871>,  <45.386646, 39.725891, 51.221424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132774, 39.474991, 51.040871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427389, 0.201729, -0.881274,
		0.643833, -0.752241, 0.140045,
		-0.634679, -0.627247, -0.451379,
		44.942371, 39.286816, 50.905457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792004, 39.209606, 50.965153>,  <45.386646, 39.725891, 51.221424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792004, 39.209606, 50.965153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.457169, 39.201904, 50.746460>,  <45.256268, 39.197285, 50.615246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.457169, 39.201904, 50.746460>,  <45.792004, 39.209606, 50.965153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457169, 39.201904, 50.746460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533784, 0.190168, -0.823960,
		0.119834, -0.981563, -0.148911,
		-0.837087, -0.019253, -0.546732,
		45.206043, 39.196129, 50.582439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895809, 38.720886, 50.422150>,  <45.792004, 39.209606, 50.965153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.895809, 38.720886, 50.422150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.604034, 38.969818, 50.308571>,  <45.428970, 39.119175, 50.240425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.604034, 38.969818, 50.308571>,  <45.895809, 38.720886, 50.422150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604034, 38.969818, 50.308571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480293, 0.170395, -0.860398,
		-0.487067, -0.763985, -0.423193,
		-0.729441, 0.622328, -0.283943,
		45.385201, 39.156517, 50.223389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699352, 38.596542, 49.687901>,  <45.895809, 38.720886, 50.422150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699352, 38.596542, 49.687901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.540886, 38.962204, 49.722252>,  <45.445808, 39.181602, 49.742863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.540886, 38.962204, 49.722252>,  <45.699352, 38.596542, 49.687901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540886, 38.962204, 49.722252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398821, 0.255569, -0.880697,
		-0.827040, -0.314651, -0.465831,
		-0.396164, 0.914155, 0.085877,
		45.422035, 39.236450, 49.748016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511909, 38.689323, 49.008446>,  <45.699352, 38.596542, 49.687901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511909, 38.689323, 49.008446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.501831, 39.057640, 49.164139>,  <45.495785, 39.278629, 49.257557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.501831, 39.057640, 49.164139>,  <45.511909, 38.689323, 49.008446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501831, 39.057640, 49.164139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518370, 0.344958, -0.782494,
		-0.854785, 0.182050, -0.486004,
		-0.025199, 0.920794, 0.389234,
		45.494270, 39.333878, 49.280910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173046, 39.142242, 48.530582>,  <45.511909, 38.689323, 49.008446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.173046, 39.142242, 48.530582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.399406, 39.383301, 48.755642>,  <45.535225, 39.527935, 48.890678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.399406, 39.383301, 48.755642>,  <45.173046, 39.142242, 48.530582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399406, 39.383301, 48.755642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479768, 0.314292, -0.819172,
		-0.670504, 0.733515, -0.111268,
		0.565904, 0.602641, 0.562651,
		45.569180, 39.564095, 48.924438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230183, 39.632935, 48.137947>,  <45.173046, 39.142242, 48.530582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230183, 39.632935, 48.137947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.521492, 39.709717, 48.401089>,  <45.696278, 39.755787, 48.558975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.521492, 39.709717, 48.401089>,  <45.230183, 39.632935, 48.137947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521492, 39.709717, 48.401089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524763, 0.461183, -0.715496,
		-0.440734, 0.866293, 0.235137,
		0.728270, 0.191952, 0.657858,
		45.739975, 39.767303, 48.598446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762634, 40.142445, 48.453247>,  <45.230183, 39.632935, 48.137947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762634, 40.142445, 48.453247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.521454, 40.457771, 48.404251>,  <44.376743, 40.646969, 48.374855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.521454, 40.457771, 48.404251>,  <44.762634, 40.142445, 48.453247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521454, 40.457771, 48.404251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410881, -0.175254, 0.894686,
		0.683831, 0.589780, 0.429575,
		-0.602953, 0.788318, -0.122486,
		44.340569, 40.694267, 48.367504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691029, 40.422729, 49.108734>,  <44.762634, 40.142445, 48.453247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691029, 40.422729, 49.108734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.375610, 40.570854, 48.912338>,  <44.186359, 40.659729, 48.794498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.375610, 40.570854, 48.912338>,  <44.691029, 40.422729, 49.108734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375610, 40.570854, 48.912338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587566, -0.217933, 0.779276,
		0.181568, 0.902983, 0.389430,
		-0.788542, 0.370307, -0.490993,
		44.139050, 40.681946, 48.765041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432831, 40.918068, 49.570133>,  <44.691029, 40.422729, 49.108734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432831, 40.918068, 49.570133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.142548, 40.791832, 49.325592>,  <43.968380, 40.716091, 49.178867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.142548, 40.791832, 49.325592>,  <44.432831, 40.918068, 49.570133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142548, 40.791832, 49.325592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635552, -0.032804, 0.771361,
		-0.263487, 0.948329, -0.176766,
		-0.725705, -0.315588, -0.611356,
		43.924835, 40.697155, 49.142185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874981, 41.223400, 49.898415>,  <44.432831, 40.918068, 49.570133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874981, 41.223400, 49.898415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.725189, 40.921715, 49.682663>,  <43.635315, 40.740704, 49.553211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.725189, 40.921715, 49.682663>,  <43.874981, 41.223400, 49.898415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725189, 40.921715, 49.682663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765735, -0.076494, 0.638591,
		-0.522891, 0.652162, -0.548880,
		-0.374479, -0.754210, -0.539382,
		43.612846, 40.695450, 49.520847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227398, 41.457001, 49.760071>,  <43.874981, 41.223400, 49.898415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227398, 41.457001, 49.760071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.228477, 41.057320, 49.744095>,  <43.229126, 40.817513, 49.734509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.228477, 41.057320, 49.744095>,  <43.227398, 41.457001, 49.760071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228477, 41.057320, 49.744095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710395, -0.030025, 0.703163,
		-0.703798, 0.026474, -0.709906,
		0.002699, -0.999198, -0.039939,
		43.229286, 40.757561, 49.732113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485153, 41.242207, 49.708759>,  <43.227398, 41.457001, 49.760071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485153, 41.242207, 49.708759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.691872, 40.914093, 49.806786>,  <42.815903, 40.717224, 49.865601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.691872, 40.914093, 49.806786>,  <42.485153, 41.242207, 49.708759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691872, 40.914093, 49.806786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710090, -0.250811, 0.657925,
		-0.478218, -0.514035, -0.712093,
		0.516798, -0.820282, 0.245069,
		42.846912, 40.668007, 49.880306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985847, 40.742123, 49.627857>,  <42.485153, 41.242207, 49.708759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985847, 40.742123, 49.627857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.275757, 40.590576, 49.858044>,  <42.449703, 40.499649, 49.996155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.275757, 40.590576, 49.858044>,  <41.985847, 40.742123, 49.627857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275757, 40.590576, 49.858044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676860, -0.235519, 0.697418,
		-0.128697, -0.894980, -0.427140,
		0.724774, -0.378869, 0.575465,
		42.493191, 40.476913, 50.030682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784412, 40.082836, 49.832893>,  <41.985847, 40.742123, 49.627857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784412, 40.082836, 49.832893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.057949, 40.216286, 50.092449>,  <42.222073, 40.296356, 50.248180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.057949, 40.216286, 50.092449>,  <41.784412, 40.082836, 49.832893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057949, 40.216286, 50.092449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671751, -0.059245, 0.738404,
		0.284791, -0.940843, 0.183597,
		0.683845, 0.333622, 0.648885,
		42.263103, 40.316372, 50.287113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756844, 39.581600, 50.371346>,  <41.784412, 40.082836, 49.832893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756844, 39.581600, 50.371346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.952827, 39.888939, 50.536068>,  <42.070415, 40.073341, 50.634903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.952827, 39.888939, 50.536068>,  <41.756844, 39.581600, 50.371346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952827, 39.888939, 50.536068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571424, -0.073681, 0.817341,
		0.658343, -0.635779, 0.402951,
		0.489958, 0.768347, 0.411807,
		42.099815, 40.119442, 50.659611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959232, 39.309731, 51.070919>,  <41.756844, 39.581600, 50.371346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959232, 39.309731, 51.070919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.951546, 39.709366, 51.086212>,  <41.946934, 39.949146, 51.095390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.951546, 39.709366, 51.086212>,  <41.959232, 39.309731, 51.070919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951546, 39.709366, 51.086212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511650, -0.042681, 0.858133,
		0.858979, -0.003077, 0.512001,
		-0.019212, 0.999084, 0.038236,
		41.945782, 40.009090, 51.097683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306438, 39.477646, 51.696339>,  <41.959232, 39.309731, 51.070919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306438, 39.477646, 51.696339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.076385, 39.786079, 51.587044>,  <41.938354, 39.971138, 51.521469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.076385, 39.786079, 51.587044>,  <42.306438, 39.477646, 51.696339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076385, 39.786079, 51.587044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472249, -0.040215, 0.880548,
		0.667988, 0.635463, 0.387272,
		-0.575129, 0.771083, -0.273233,
		41.903847, 40.017403, 51.505074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241695, 40.005165, 52.282761>,  <42.306438, 39.477646, 51.696339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241695, 40.005165, 52.282761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.927094, 40.081223, 52.047726>,  <41.738335, 40.126858, 51.906704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.927094, 40.081223, 52.047726>,  <42.241695, 40.005165, 52.282761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927094, 40.081223, 52.047726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562238, 0.173232, 0.808628,
		0.255543, 0.966352, -0.029342,
		-0.786503, 0.190142, -0.587588,
		41.691143, 40.138264, 51.871449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829796, 40.609814, 52.637207>,  <42.241695, 40.005165, 52.282761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829796, 40.609814, 52.637207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.583282, 40.440094, 52.371826>,  <41.435375, 40.338264, 52.212597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.583282, 40.440094, 52.371826>,  <41.829796, 40.609814, 52.637207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583282, 40.440094, 52.371826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738127, 0.017525, 0.674434,
		-0.274533, 0.905353, -0.323986,
		-0.616279, -0.424297, -0.663455,
		41.398399, 40.312805, 52.172791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175011, 40.930607, 52.731232>,  <41.829796, 40.609814, 52.637207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175011, 40.930607, 52.731232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.141182, 40.561607, 52.580585>,  <41.120884, 40.340206, 52.490200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.141182, 40.561607, 52.580585>,  <41.175011, 40.930607, 52.731232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141182, 40.561607, 52.580585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727582, -0.201066, 0.655894,
		-0.680788, 0.329486, -0.654191,
		-0.084573, -0.922503, -0.376612,
		41.115810, 40.284855, 52.467602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786083, 41.296906, 52.125393>,  <41.175011, 40.930607, 52.731232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786083, 41.296906, 52.125393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.616684, 41.658813, 52.107334>,  <40.515045, 41.875957, 52.096497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.616684, 41.658813, 52.107334>,  <40.786083, 41.296906, 52.125393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616684, 41.658813, 52.107334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374962, 0.129700, -0.917922,
		-0.824654, -0.405666, -0.394183,
		-0.423496, 0.904772, -0.045151,
		40.489635, 41.930244, 52.093788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469101, 41.311337, 51.456276>,  <40.786083, 41.296906, 52.125393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469101, 41.311337, 51.456276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.525963, 41.685455, 51.585899>,  <40.560081, 41.909927, 51.663673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.525963, 41.685455, 51.585899>,  <40.469101, 41.311337, 51.456276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525963, 41.685455, 51.585899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323739, 0.265451, -0.908146,
		-0.935406, 0.234008, -0.265057,
		0.142154, 0.935294, 0.324063,
		40.568607, 41.966045, 51.683117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201488, 41.759682, 50.967251>,  <40.469101, 41.311337, 51.456276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201488, 41.759682, 50.967251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.447552, 41.986237, 51.186626>,  <40.595188, 42.122169, 51.318253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.447552, 41.986237, 51.186626>,  <40.201488, 41.759682, 50.967251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447552, 41.986237, 51.186626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345171, 0.431942, -0.833237,
		-0.708832, 0.701874, 0.070210,
		0.615154, 0.566390, 0.548441,
		40.632099, 42.156155, 51.351158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103146, 42.413948, 50.732906>,  <40.201488, 41.759682, 50.967251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103146, 42.413948, 50.732906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.454269, 42.451111, 50.920876>,  <40.664944, 42.473408, 51.033657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.454269, 42.451111, 50.920876>,  <40.103146, 42.413948, 50.732906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454269, 42.451111, 50.920876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327077, 0.600466, -0.729699,
		-0.349966, 0.794235, 0.496704,
		0.877806, 0.092910, 0.469919,
		40.717613, 42.478985, 51.061852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319622, 43.181591, 50.728527>,  <40.103146, 42.413948, 50.732906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319622, 43.181591, 50.728527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.646679, 42.960289, 50.792248>,  <40.842911, 42.827507, 50.830479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.646679, 42.960289, 50.792248>,  <40.319622, 43.181591, 50.728527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646679, 42.960289, 50.792248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461159, 0.463716, -0.756505,
		0.344670, 0.692010, 0.634291,
		0.817640, -0.553253, 0.159298,
		40.891972, 42.794312, 50.840038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800583, 43.652439, 50.641888>,  <40.319622, 43.181591, 50.728527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800583, 43.652439, 50.641888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.984108, 43.299782, 50.597710>,  <41.094223, 43.088188, 50.571205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.984108, 43.299782, 50.597710>,  <40.800583, 43.652439, 50.641888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984108, 43.299782, 50.597710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387247, 0.310282, -0.868196,
		0.799709, 0.355567, 0.483774,
		0.458809, -0.881644, -0.110443,
		41.121750, 43.035290, 50.564575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379528, 43.890533, 50.565830>,  <40.800583, 43.652439, 50.641888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379528, 43.890533, 50.565830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.369926, 43.520134, 50.415131>,  <41.364166, 43.297894, 50.324711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.369926, 43.520134, 50.415131>,  <41.379528, 43.890533, 50.565830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369926, 43.520134, 50.415131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633728, 0.277371, -0.722118,
		0.773184, -0.256092, 0.580176,
		-0.024004, -0.926003, -0.376752,
		41.362724, 43.242332, 50.302105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951962, 43.671677, 50.479340>,  <41.379528, 43.890533, 50.565830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951962, 43.671677, 50.479340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.753082, 43.435081, 50.225433>,  <41.633755, 43.293125, 50.073090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.753082, 43.435081, 50.225433>,  <41.951962, 43.671677, 50.479340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753082, 43.435081, 50.225433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653142, 0.226436, -0.722587,
		0.571138, -0.773864, 0.273745,
		-0.497198, -0.591492, -0.634769,
		41.603924, 43.257633, 50.035004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428345, 43.359360, 50.125187>,  <41.951962, 43.671677, 50.479340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428345, 43.359360, 50.125187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.104851, 43.314972, 49.894142>,  <41.910755, 43.288338, 49.755516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.104851, 43.314972, 49.894142>,  <42.428345, 43.359360, 50.125187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104851, 43.314972, 49.894142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541467, 0.243037, -0.804827,
		0.229682, -0.963650, -0.136473,
		-0.808739, -0.110958, -0.577605,
		41.862228, 43.281681, 49.720860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738266, 43.065838, 49.496403>,  <42.428345, 43.359360, 50.125187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738266, 43.065838, 49.496403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.358807, 43.153984, 49.405624>,  <42.131130, 43.206871, 49.351158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.358807, 43.153984, 49.405624>,  <42.738266, 43.065838, 49.496403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358807, 43.153984, 49.405624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277936, 0.238055, -0.930635,
		-0.151050, -0.945923, -0.287077,
		-0.948649, 0.220362, -0.226948,
		42.074211, 43.220093, 49.337540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524746, 42.745598, 48.883999>,  <42.738266, 43.065838, 49.496403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524746, 42.745598, 48.883999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.321594, 43.087769, 48.924614>,  <42.199703, 43.293072, 48.948982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.321594, 43.087769, 48.924614>,  <42.524746, 42.745598, 48.883999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321594, 43.087769, 48.924614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352032, 0.313686, -0.881858,
		-0.786216, -0.412128, -0.460450,
		-0.507875, 0.855425, 0.101543,
		42.169231, 43.344395, 48.955078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349503, 42.904869, 48.265362>,  <42.524746, 42.745598, 48.883999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349503, 42.904869, 48.265362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.286995, 43.259041, 48.440445>,  <42.249489, 43.471546, 48.545494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.286995, 43.259041, 48.440445>,  <42.349503, 42.904869, 48.265362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286995, 43.259041, 48.440445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230506, 0.463612, -0.855530,
		-0.960441, -0.032799, -0.276546,
		-0.156271, 0.885431, 0.437711,
		42.240112, 43.524670, 48.571758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950150, 43.363052, 47.788803>,  <42.349503, 42.904869, 48.265362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950150, 43.363052, 47.788803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.142105, 43.596634, 48.050705>,  <42.257278, 43.736782, 48.207844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.142105, 43.596634, 48.050705>,  <41.950150, 43.363052, 47.788803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142105, 43.596634, 48.050705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360021, 0.549494, -0.753950,
		-0.800057, 0.597538, 0.053460,
		0.479889, 0.583956, 0.654753,
		42.286072, 43.771820, 48.247131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853580, 43.969955, 47.522762>,  <41.950150, 43.363052, 47.788803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853580, 43.969955, 47.522762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.165638, 44.010269, 47.769733>,  <42.352871, 44.034458, 47.917915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.165638, 44.010269, 47.769733>,  <41.853580, 43.969955, 47.522762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165638, 44.010269, 47.769733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437162, 0.618159, -0.653276,
		-0.447512, 0.779565, 0.438191,
		0.780143, 0.100789, 0.617429,
		42.399681, 44.040504, 47.954964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.560188, 45.155704, 52.747211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.664520, 44.780937, 52.840294>,  <41.727119, 44.556076, 52.896145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.664520, 44.780937, 52.840294>,  <41.560188, 45.155704, 52.747211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664520, 44.780937, 52.840294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853510, -0.111171, 0.509079,
		-0.451094, -0.331405, -0.828665,
		0.260834, -0.936916, 0.232709,
		41.742771, 44.499863, 52.910107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972881, 44.823135, 52.688095>,  <41.560188, 45.155704, 52.747211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972881, 44.823135, 52.688095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.186012, 44.571693, 52.914703>,  <41.313892, 44.420826, 53.050671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.186012, 44.571693, 52.914703>,  <40.972881, 44.823135, 52.688095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186012, 44.571693, 52.914703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816382, -0.205625, 0.539665,
		-0.222757, -0.750034, -0.622759,
		0.532822, -0.628623, 0.566510,
		41.345860, 44.383110, 53.084660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551632, 44.283722, 52.853317>,  <40.972881, 44.823135, 52.688095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551632, 44.283722, 52.853317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.843449, 44.265198, 53.126263>,  <41.018539, 44.254086, 53.290031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.843449, 44.265198, 53.126263>,  <40.551632, 44.283722, 52.853317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843449, 44.265198, 53.126263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672602, -0.229443, 0.703535,
		0.123985, -0.972220, -0.198535,
		0.729544, -0.046307, 0.682365,
		41.062313, 44.251305, 53.330971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533478, 43.593609, 53.157146>,  <40.551632, 44.283722, 52.853317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533478, 43.593609, 53.157146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.732437, 43.792809, 53.441284>,  <40.851814, 43.912331, 53.611767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.732437, 43.792809, 53.441284>,  <40.533478, 43.593609, 53.157146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732437, 43.792809, 53.441284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651789, -0.325842, 0.684835,
		0.572510, -0.803630, 0.162519,
		0.497398, 0.498002, 0.710345,
		40.881657, 43.942207, 53.654388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531631, 43.192101, 53.792473>,  <40.533478, 43.593609, 53.157146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531631, 43.192101, 53.792473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.619102, 43.554634, 53.937111>,  <40.671585, 43.772152, 54.023891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.619102, 43.554634, 53.937111>,  <40.531631, 43.192101, 53.792473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619102, 43.554634, 53.937111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545286, -0.193805, 0.815538,
		0.809225, -0.375507, 0.451829,
		0.218674, 0.906330, 0.361591,
		40.684704, 43.826534, 54.045589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797634, 43.020721, 54.523773>,  <40.531631, 43.192101, 53.792473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797634, 43.020721, 54.523773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.680801, 43.401970, 54.492130>,  <40.610703, 43.630718, 54.473145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.680801, 43.401970, 54.492130>,  <40.797634, 43.020721, 54.523773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680801, 43.401970, 54.492130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635046, -0.131431, 0.761211,
		0.715126, 0.272570, 0.643662,
		-0.292081, 0.953117, -0.079105,
		40.593178, 43.687904, 54.468399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820118, 43.312080, 55.171494>,  <40.797634, 43.020721, 54.523773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820118, 43.312080, 55.171494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.546230, 43.525078, 54.972450>,  <40.381897, 43.652874, 54.853024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.546230, 43.525078, 54.972450>,  <40.820118, 43.312080, 55.171494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546230, 43.525078, 54.972450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561229, 0.050328, 0.826129,
		0.464948, 0.844939, 0.264388,
		-0.684722, 0.532489, -0.497605,
		40.340813, 43.684826, 54.823170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552608, 43.718491, 55.679813>,  <40.820118, 43.312080, 55.171494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552608, 43.718491, 55.679813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.289635, 43.751015, 55.380169>,  <40.131851, 43.770531, 55.200382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.289635, 43.751015, 55.380169>,  <40.552608, 43.718491, 55.679813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289635, 43.751015, 55.380169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753189, -0.041692, 0.656482,
		0.022145, 0.995817, 0.088651,
		-0.657432, 0.081309, -0.749114,
		40.092403, 43.775406, 55.155434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081966, 44.138889, 55.989777>,  <40.552608, 43.718491, 55.679813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081966, 44.138889, 55.989777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.882412, 43.968933, 55.687630>,  <39.762680, 43.866959, 55.506340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.882412, 43.968933, 55.687630>,  <40.081966, 44.138889, 55.989777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882412, 43.968933, 55.687630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758550, -0.207489, 0.617698,
		-0.419184, 0.881145, -0.218788,
		-0.498886, -0.424891, -0.755368,
		39.732746, 43.841465, 55.461018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359386, 44.264950, 56.137730>,  <40.081966, 44.138889, 55.989777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359386, 44.264950, 56.137730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.381355, 43.958595, 55.881477>,  <39.394535, 43.774784, 55.727726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.381355, 43.958595, 55.881477>,  <39.359386, 44.264950, 56.137730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381355, 43.958595, 55.881477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686779, -0.494699, 0.532548,
		-0.724788, 0.410724, -0.553162,
		0.054918, -0.765884, -0.640629,
		39.397831, 43.728828, 55.689289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623840, 44.180847, 56.062679>,  <39.359386, 44.264950, 56.137730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623840, 44.180847, 56.062679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.826763, 43.850136, 55.965458>,  <38.948517, 43.651707, 55.907124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.826763, 43.850136, 55.965458>,  <38.623840, 44.180847, 56.062679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826763, 43.850136, 55.965458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710879, -0.560918, 0.424291,
		-0.487128, -0.042465, -0.872298,
		0.507305, -0.826782, -0.243051,
		38.978954, 43.602100, 55.892544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196819, 43.735374, 55.706970>,  <38.623840, 44.180847, 56.062679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196819, 43.735374, 55.706970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.486229, 43.524124, 55.884777>,  <38.659874, 43.397373, 55.991459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.486229, 43.524124, 55.884777>,  <38.196819, 43.735374, 55.706970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486229, 43.524124, 55.884777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687790, -0.606354, 0.399099,
		0.058758, -0.594491, -0.801953,
		0.723528, -0.528125, 0.444513,
		38.703289, 43.365688, 56.018131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950237, 43.150463, 55.602264>,  <38.196819, 43.735374, 55.706970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950237, 43.150463, 55.602264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206055, 43.136909, 55.909470>,  <38.359543, 43.128777, 56.093792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206055, 43.136909, 55.909470>,  <37.950237, 43.150463, 55.602264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206055, 43.136909, 55.909470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539272, -0.731762, 0.416785,
		0.547879, -0.680718, -0.486263,
		0.639542, -0.033880, 0.768010,
		38.397919, 43.126747, 56.139874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006069, 42.478928, 55.782978>,  <37.950237, 43.150463, 55.602264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006069, 42.478928, 55.782978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.123260, 42.648270, 56.125893>,  <38.193577, 42.749874, 56.331642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.123260, 42.648270, 56.125893>,  <38.006069, 42.478928, 55.782978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123260, 42.648270, 56.125893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657644, -0.561614, 0.502090,
		0.694024, -0.710889, 0.113874,
		0.292977, 0.423351, 0.857285,
		38.211155, 42.775276, 56.383080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248158, 42.115097, 55.861301>,  <38.006069, 42.478928, 55.782978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248158, 42.115097, 55.861301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.062401, 41.770760, 55.944534>,  <36.950947, 41.564159, 55.994473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.062401, 41.770760, 55.944534>,  <37.248158, 42.115097, 55.861301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062401, 41.770760, 55.944534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728330, -0.504888, -0.463275,
		0.503864, -0.063588, 0.861439,
		-0.464389, -0.860839, 0.208082,
		36.923084, 41.512508, 56.006958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662338, 41.530212, 56.261417>,  <37.248158, 42.115097, 55.861301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662338, 41.530212, 56.261417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.386982, 41.418762, 55.993542>,  <37.221767, 41.351891, 55.832817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.386982, 41.418762, 55.993542>,  <37.662338, 41.530212, 56.261417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386982, 41.418762, 55.993542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723333, -0.332310, -0.605276,
		-0.053899, -0.901076, 0.430299,
		-0.688392, -0.278626, -0.669689,
		37.180466, 41.335175, 55.792633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862404, 40.828518, 55.930992>,  <37.662338, 41.530212, 56.261417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862404, 40.828518, 55.930992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.603790, 40.966934, 55.659035>,  <37.448624, 41.049984, 55.495861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.603790, 40.966934, 55.659035>,  <37.862404, 40.828518, 55.930992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603790, 40.966934, 55.659035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688918, -0.117985, -0.715172,
		-0.327695, -0.930772, -0.162112,
		-0.646535, 0.346040, -0.679889,
		37.409828, 41.070747, 55.455067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982403, 40.371532, 55.356792>,  <37.862404, 40.828518, 55.930992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982403, 40.371532, 55.356792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.807823, 40.693352, 55.195686>,  <37.703075, 40.886444, 55.099022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.807823, 40.693352, 55.195686>,  <37.982403, 40.371532, 55.356792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807823, 40.693352, 55.195686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720253, 0.044143, -0.692306,
		-0.539214, -0.592244, -0.598744,
		-0.436444, 0.804548, -0.402763,
		37.676891, 40.934715, 55.074856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004856, 40.215515, 54.699692>,  <37.982403, 40.371532, 55.356792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004856, 40.215515, 54.699692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.937485, 40.609558, 54.713524>,  <37.897060, 40.845985, 54.721821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.937485, 40.609558, 54.713524>,  <38.004856, 40.215515, 54.699692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937485, 40.609558, 54.713524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621248, 0.133321, -0.772189,
		-0.765299, -0.108577, -0.634451,
		-0.168427, 0.985107, 0.034577,
		37.886955, 40.905090, 54.723896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961819, 40.348854, 54.106590>,  <38.004856, 40.215515, 54.699692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961819, 40.348854, 54.106590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.051502, 40.705917, 54.263000>,  <38.105312, 40.920155, 54.356846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.051502, 40.705917, 54.263000>,  <37.961819, 40.348854, 54.106590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051502, 40.705917, 54.263000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598371, 0.190600, -0.778218,
		-0.769208, 0.408462, -0.491403,
		0.224211, 0.892654, 0.391023,
		38.118767, 40.973713, 54.380306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896648, 40.830055, 53.408089>,  <37.961819, 40.348854, 54.106590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896648, 40.830055, 53.408089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096497, 41.001511, 53.709190>,  <38.216408, 41.104385, 53.889851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096497, 41.001511, 53.709190>,  <37.896648, 40.830055, 53.408089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096497, 41.001511, 53.709190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649177, 0.390081, -0.652998,
		-0.573539, 0.814925, -0.083371,
		0.499623, 0.428642, 0.752757,
		38.246384, 41.130104, 53.935017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861862, 41.573902, 53.386532>,  <37.896648, 40.830055, 53.408089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861862, 41.573902, 53.386532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.172256, 41.500107, 53.627796>,  <38.358494, 41.455830, 53.772556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.172256, 41.500107, 53.627796>,  <37.861862, 41.573902, 53.386532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172256, 41.500107, 53.627796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615954, 0.427536, -0.661675,
		-0.135800, 0.884972, 0.445402,
		0.775989, -0.184492, 0.603161,
		38.405052, 41.444759, 53.808746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226906, 42.206173, 53.415932>,  <37.861862, 41.573902, 53.386532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226906, 42.206173, 53.415932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.486435, 41.930611, 53.545204>,  <38.642151, 41.765274, 53.622768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.486435, 41.930611, 53.545204>,  <38.226906, 42.206173, 53.415932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486435, 41.930611, 53.545204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712001, 0.399758, -0.577276,
		0.268493, 0.604654, 0.749870,
		0.648819, -0.688903, 0.323182,
		38.681080, 41.723938, 53.642159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814781, 42.649258, 53.636795>,  <38.226906, 42.206173, 53.415932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814781, 42.649258, 53.636795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.894836, 42.264458, 53.562500>,  <38.942871, 42.033577, 53.517921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.894836, 42.264458, 53.562500>,  <38.814781, 42.649258, 53.636795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894836, 42.264458, 53.562500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797935, 0.270046, -0.538864,
		0.568546, -0.040358, 0.821661,
		0.200139, -0.962001, -0.185736,
		38.954880, 41.975857, 53.506779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550392, 42.657211, 53.813637>,  <38.814781, 42.649258, 53.636795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550392, 42.657211, 53.813637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.476475, 42.337379, 53.585072>,  <39.432125, 42.145481, 53.447933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.476475, 42.337379, 53.585072>,  <39.550392, 42.657211, 53.813637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476475, 42.337379, 53.585072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811423, 0.203904, -0.547738,
		0.554475, -0.564882, 0.611118,
		-0.184798, -0.799582, -0.571417,
		39.421036, 42.097504, 53.413647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129597, 42.354374, 53.753822>,  <39.550392, 42.657211, 53.813637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129597, 42.354374, 53.753822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.938293, 42.185776, 53.445641>,  <39.823513, 42.084618, 53.260731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.938293, 42.185776, 53.445641>,  <40.129597, 42.354374, 53.753822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938293, 42.185776, 53.445641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779970, 0.199342, -0.593220,
		0.403627, -0.884647, 0.233420,
		-0.478260, -0.421500, -0.770458,
		39.794815, 42.059326, 53.214504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595642, 42.038483, 53.407272>,  <40.129597, 42.354374, 53.753822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595642, 42.038483, 53.407272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.317619, 42.036377, 53.119698>,  <40.150806, 42.035114, 52.947151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.317619, 42.036377, 53.119698>,  <40.595642, 42.038483, 53.407272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317619, 42.036377, 53.119698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702689, 0.206555, -0.680854,
		0.152084, -0.978421, -0.139869,
		-0.695053, -0.005263, -0.718940,
		40.109104, 42.034798, 52.904015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848255, 41.603745, 52.824936>,  <40.595642, 42.038483, 53.407272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848255, 41.603745, 52.824936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.559044, 41.839554, 52.680882>,  <40.385517, 41.981037, 52.594448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.559044, 41.839554, 52.680882>,  <40.848255, 41.603745, 52.824936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559044, 41.839554, 52.680882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555313, 0.185880, -0.810602,
		-0.410924, -0.786075, -0.461765,
		-0.723027, 0.589520, -0.360135,
		40.342136, 42.016411, 52.572842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496338, 40.882504, 52.902283>,  <40.848255, 41.603745, 52.824936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496338, 40.882504, 52.902283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.610519, 40.521561, 52.773121>,  <40.679028, 40.304996, 52.695625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.610519, 40.521561, 52.773121>,  <40.496338, 40.882504, 52.902283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610519, 40.521561, 52.773121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628559, -0.430607, 0.647681,
		-0.723484, 0.018080, -0.690104,
		0.285454, -0.902358, -0.322901,
		40.696156, 40.250854, 52.676250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895058, 40.523148, 52.648071>,  <40.496338, 40.882504, 52.902283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895058, 40.523148, 52.648071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.179657, 40.273079, 52.776402>,  <40.350418, 40.123039, 52.853401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.179657, 40.273079, 52.776402>,  <39.895058, 40.523148, 52.648071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179657, 40.273079, 52.776402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658343, -0.433436, 0.615400,
		-0.245671, -0.649072, -0.719966,
		0.711498, -0.625171, 0.320830,
		40.393108, 40.085529, 52.872650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493572, 39.889217, 52.779144>,  <39.895058, 40.523148, 52.648071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493572, 39.889217, 52.779144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.841446, 39.866608, 52.975288>,  <40.050171, 39.853043, 53.092976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.841446, 39.866608, 52.975288>,  <39.493572, 39.889217, 52.779144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841446, 39.866608, 52.975288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472391, -0.383445, 0.793610,
		0.143172, -0.921833, -0.360175,
		0.869683, -0.056521, 0.490364,
		40.102352, 39.849651, 53.122398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344482, 39.492943, 53.302853>,  <39.493572, 39.889217, 52.779144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344482, 39.492943, 53.302853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.714218, 39.587761, 53.422462>,  <39.936058, 39.644653, 53.494228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.714218, 39.587761, 53.422462>,  <39.344482, 39.492943, 53.302853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714218, 39.587761, 53.422462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239986, -0.248115, 0.938534,
		0.296669, -0.939280, -0.172454,
		0.924334, 0.237047, 0.299022,
		39.991520, 39.658875, 53.512169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701981, 38.900063, 53.543682>,  <39.344482, 39.492943, 53.302853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701981, 38.900063, 53.543682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.868439, 39.215271, 53.725166>,  <39.968311, 39.404396, 53.834057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.868439, 39.215271, 53.725166>,  <39.701981, 38.900063, 53.543682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868439, 39.215271, 53.725166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204124, -0.405269, 0.891117,
		0.886092, -0.463443, -0.007795,
		0.416141, 0.788021, 0.453706,
		39.993282, 39.451679, 53.861279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234463, 38.626034, 53.952843>,  <39.701981, 38.900063, 53.543682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234463, 38.626034, 53.952843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.126205, 38.974953, 54.115742>,  <40.061253, 39.184303, 54.213482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.126205, 38.974953, 54.115742>,  <40.234463, 38.626034, 53.952843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126205, 38.974953, 54.115742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242145, -0.471114, 0.848185,
		0.931729, 0.130941, 0.338726,
		-0.270641, 0.872299, 0.407244,
		40.045013, 39.236641, 54.237915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481110, 38.551949, 54.616024>,  <40.234463, 38.626034, 53.952843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481110, 38.551949, 54.616024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.237541, 38.867607, 54.648201>,  <40.091400, 39.057003, 54.667507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.237541, 38.867607, 54.648201>,  <40.481110, 38.551949, 54.616024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237541, 38.867607, 54.648201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343745, -0.353908, 0.869821,
		0.714882, 0.501999, 0.486765,
		-0.608920, 0.789142, 0.080443,
		40.054867, 39.104351, 54.672333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142021, 38.724403, 55.028927>,  <40.481110, 38.551949, 54.616024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142021, 38.724403, 55.028927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.455051, 38.508598, 55.153183>,  <41.642868, 38.379116, 55.227737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.455051, 38.508598, 55.153183>,  <41.142021, 38.724403, 55.028927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455051, 38.508598, 55.153183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480262, 0.205683, -0.852668,
		0.396133, 0.816467, 0.420071,
		0.782577, -0.539515, 0.310641,
		41.689823, 38.346745, 55.246376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643497, 38.989079, 54.731594>,  <41.142021, 38.724403, 55.028927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643497, 38.989079, 54.731594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.841728, 38.667862, 54.863976>,  <41.960667, 38.475132, 54.943405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.841728, 38.667862, 54.863976>,  <41.643497, 38.989079, 54.731594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841728, 38.667862, 54.863976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621083, 0.061271, -0.781346,
		0.607173, 0.592769, 0.529118,
		0.495577, -0.803039, 0.330957,
		41.990402, 38.426949, 54.963261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380154, 39.217270, 54.787983>,  <41.643497, 38.989079, 54.731594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380154, 39.217270, 54.787983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.334156, 38.823959, 54.731491>,  <42.306557, 38.587975, 54.697598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.334156, 38.823959, 54.731491>,  <42.380154, 39.217270, 54.787983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334156, 38.823959, 54.731491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585862, 0.047681, -0.809007,
		0.802211, -0.175770, 0.570581,
		-0.114993, -0.983276, -0.141228,
		42.299660, 38.528976, 54.689121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019005, 38.992176, 54.655087>,  <42.380154, 39.217270, 54.787983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019005, 38.992176, 54.655087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.786804, 38.693710, 54.524696>,  <42.647484, 38.514629, 54.446461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.786804, 38.693710, 54.524696>,  <43.019005, 38.992176, 54.655087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786804, 38.693710, 54.524696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533909, -0.046540, -0.844260,
		0.614786, -0.664134, 0.425400,
		-0.580500, -0.746164, -0.325975,
		42.612656, 38.469860, 54.426903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525497, 38.396858, 54.432663>,  <43.019005, 38.992176, 54.655087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525497, 38.396858, 54.432663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.167458, 38.345993, 54.261726>,  <42.952633, 38.315472, 54.159164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.167458, 38.345993, 54.261726>,  <43.525497, 38.396858, 54.432663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167458, 38.345993, 54.261726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441481, -0.118718, -0.889382,
		0.062367, -0.984751, 0.162406,
		-0.895100, -0.127167, -0.427345,
		42.898926, 38.307842, 54.133522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669521, 37.955288, 53.923794>,  <43.525497, 38.396858, 54.432663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669521, 37.955288, 53.923794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.314850, 38.107933, 53.819355>,  <43.102047, 38.199520, 53.756691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.314850, 38.107933, 53.819355>,  <43.669521, 37.955288, 53.923794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314850, 38.107933, 53.819355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295702, 0.033872, -0.954680,
		-0.355475, -0.923701, -0.142878,
		-0.886678, 0.381613, -0.261099,
		43.048847, 38.222416, 53.741024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484661, 37.547554, 53.329304>,  <43.669521, 37.955288, 53.923794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484661, 37.547554, 53.329304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.302780, 37.903450, 53.313313>,  <43.193649, 38.116989, 53.303719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.302780, 37.903450, 53.313313>,  <43.484661, 37.547554, 53.329304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302780, 37.903450, 53.313313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162290, 0.038638, -0.985986,
		-0.875731, -0.454822, -0.161965,
		-0.454706, 0.889744, -0.039976,
		43.166367, 38.170372, 53.301319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.429638, 41.826488, 57.615196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.189987, 42.110588, 57.467361>,  <41.046196, 42.281048, 57.378662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.189987, 42.110588, 57.467361>,  <41.429638, 41.826488, 57.615196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189987, 42.110588, 57.467361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480092, -0.050731, -0.875750,
		-0.640749, -0.702121, -0.310590,
		-0.599127, 0.710248, -0.369588,
		41.010250, 42.323662, 57.356483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248619, 41.625774, 56.995975>,  <41.429638, 41.826488, 57.615196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248619, 41.625774, 56.995975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.233749, 42.025490, 56.998596>,  <41.224827, 42.265320, 57.000168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.233749, 42.025490, 56.998596>,  <41.248619, 41.625774, 56.995975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233749, 42.025490, 56.998596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529255, 0.025253, -0.848087,
		-0.847648, -0.028059, -0.529816,
		-0.037176, 0.999287, 0.006555,
		41.222595, 42.325275, 57.000561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213097, 41.874874, 56.288902>,  <41.248619, 41.625774, 56.995975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213097, 41.874874, 56.288902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335587, 42.184303, 56.510826>,  <41.409081, 42.369961, 56.643982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335587, 42.184303, 56.510826>,  <41.213097, 41.874874, 56.288902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335587, 42.184303, 56.510826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572752, 0.315808, -0.756453,
		-0.760383, 0.549414, -0.346356,
		0.306224, 0.773569, 0.554813,
		41.427452, 42.416374, 56.677269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381153, 42.318096, 55.730049>,  <41.213097, 41.874874, 56.288902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381153, 42.318096, 55.730049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.546104, 42.508820, 56.040558>,  <41.645077, 42.623253, 56.226864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.546104, 42.508820, 56.040558>,  <41.381153, 42.318096, 55.730049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546104, 42.508820, 56.040558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656464, 0.435286, -0.616102,
		-0.631663, 0.763662, -0.133504,
		0.412381, 0.476809, 0.776270,
		41.669819, 42.651863, 56.273438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479164, 42.952965, 55.472504>,  <41.381153, 42.318096, 55.730049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479164, 42.952965, 55.472504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.736855, 42.895012, 55.772896>,  <41.891468, 42.860241, 55.953133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.736855, 42.895012, 55.772896>,  <41.479164, 42.952965, 55.472504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736855, 42.895012, 55.772896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757171, 0.259448, -0.599482,
		-0.107985, 0.954827, 0.276847,
		0.644229, -0.144886, 0.750984,
		41.930122, 42.851547, 55.998192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928707, 43.490471, 55.358410>,  <41.479164, 42.952965, 55.472504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928707, 43.490471, 55.358410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.128624, 43.264893, 55.621368>,  <42.248573, 43.129547, 55.779144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.128624, 43.264893, 55.621368>,  <41.928707, 43.490471, 55.358410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128624, 43.264893, 55.621368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862716, 0.256666, -0.435711,
		0.076986, 0.784912, 0.614806,
		0.499794, -0.563946, 0.657396,
		42.278561, 43.095707, 55.818588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496536, 43.848045, 55.637180>,  <41.928707, 43.490471, 55.358410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496536, 43.848045, 55.637180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.589905, 43.463425, 55.695057>,  <42.645924, 43.232651, 55.729782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.589905, 43.463425, 55.695057>,  <42.496536, 43.848045, 55.637180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589905, 43.463425, 55.695057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945258, 0.189486, -0.265673,
		0.228042, 0.198780, 0.953144,
		0.233418, -0.961552, 0.144688,
		42.659931, 43.174957, 55.738464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121655, 43.846699, 56.051701>,  <42.496536, 43.848045, 55.637180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121655, 43.846699, 56.051701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.121990, 43.486740, 55.877258>,  <43.122192, 43.270767, 55.772594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.121990, 43.486740, 55.877258>,  <43.121655, 43.846699, 56.051701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121990, 43.486740, 55.877258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926926, 0.164344, -0.337343,
		0.375244, -0.403956, 0.834273,
		0.000836, -0.899895, -0.436106,
		43.122242, 43.216770, 55.746426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804058, 43.638447, 56.129063>,  <43.121655, 43.846699, 56.051701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804058, 43.638447, 56.129063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.668617, 43.395477, 55.841625>,  <43.587353, 43.249695, 55.669163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.668617, 43.395477, 55.841625>,  <43.804058, 43.638447, 56.129063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668617, 43.395477, 55.841625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862181, 0.105559, -0.495481,
		0.376823, -0.787330, 0.487971,
		-0.338598, -0.607427, -0.718598,
		43.567039, 43.213249, 55.626045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265060, 43.049564, 56.108078>,  <43.804058, 43.638447, 56.129063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265060, 43.049564, 56.108078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.089767, 43.085480, 55.750332>,  <43.984592, 43.107029, 55.535683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.089767, 43.085480, 55.750332>,  <44.265060, 43.049564, 56.108078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089767, 43.085480, 55.750332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893229, 0.154720, -0.422141,
		0.100472, -0.983869, -0.148007,
		-0.438231, 0.089791, -0.894366,
		43.958298, 43.112419, 55.482021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652893, 42.645962, 55.706795>,  <44.265060, 43.049564, 56.108078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652893, 42.645962, 55.706795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.468605, 42.843956, 55.412113>,  <44.358032, 42.962753, 55.235306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.468605, 42.843956, 55.412113>,  <44.652893, 42.645962, 55.706795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468605, 42.843956, 55.412113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854884, 0.024376, -0.518246,
		-0.238564, -0.868562, -0.434383,
		-0.460717, 0.494981, -0.736704,
		44.330391, 42.992451, 55.191101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800552, 42.239117, 55.076057>,  <44.652893, 42.645962, 55.706795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800552, 42.239117, 55.076057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.692184, 42.598816, 54.938679>,  <44.627163, 42.814636, 54.856251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.692184, 42.598816, 54.938679>,  <44.800552, 42.239117, 55.076057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692184, 42.598816, 54.938679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736572, -0.036043, -0.675398,
		-0.619729, -0.435953, -0.652596,
		-0.270921, 0.899247, -0.343447,
		44.610909, 42.868591, 54.835644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570374, 41.685394, 54.497101>,  <44.800552, 42.239117, 55.076057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570374, 41.685394, 54.497101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.833092, 41.404953, 54.608147>,  <44.990723, 41.236687, 54.674774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.833092, 41.404953, 54.608147>,  <44.570374, 41.685394, 54.497101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833092, 41.404953, 54.608147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625535, -0.300988, 0.719800,
		-0.421099, -0.646417, -0.636255,
		0.656796, -0.701107, 0.277611,
		45.030132, 41.194622, 54.691429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228458, 41.033592, 54.463223>,  <44.570374, 41.685394, 54.497101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228458, 41.033592, 54.463223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.542282, 40.996269, 54.708420>,  <44.730576, 40.973873, 54.855537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.542282, 40.996269, 54.708420>,  <44.228458, 41.033592, 54.463223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542282, 40.996269, 54.708420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589620, -0.418210, 0.690977,
		0.191885, -0.903545, -0.383128,
		0.784556, -0.093312, 0.612996,
		44.777649, 40.968277, 54.892319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204407, 40.335114, 54.793015>,  <44.228458, 41.033592, 54.463223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204407, 40.335114, 54.793015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.472847, 40.514160, 55.029408>,  <44.633911, 40.621590, 55.171246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.472847, 40.514160, 55.029408>,  <44.204407, 40.335114, 54.793015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472847, 40.514160, 55.029408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393554, -0.460468, 0.795666,
		0.628283, -0.766557, -0.132859,
		0.671101, 0.447616, 0.590985,
		44.674179, 40.648445, 55.206703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418385, 39.787113, 55.256836>,  <44.204407, 40.335114, 54.793015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418385, 39.787113, 55.256836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.485344, 40.138786, 55.435280>,  <44.525520, 40.349789, 55.542347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.485344, 40.138786, 55.435280>,  <44.418385, 39.787113, 55.256836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485344, 40.138786, 55.435280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310471, -0.382463, 0.870247,
		0.935727, -0.284184, 0.208936,
		0.167400, 0.879182, 0.446111,
		44.535564, 40.402542, 55.569115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812588, 39.571533, 55.830215>,  <44.418385, 39.787113, 55.256836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812588, 39.571533, 55.830215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.679527, 39.943481, 55.893051>,  <44.599689, 40.166653, 55.930752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.679527, 39.943481, 55.893051>,  <44.812588, 39.571533, 55.830215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679527, 39.943481, 55.893051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278212, -0.255929, 0.925796,
		0.901077, 0.264266, 0.343838,
		-0.332655, 0.929873, 0.157090,
		44.579731, 40.222443, 55.940178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145714, 39.832726, 56.425697>,  <44.812588, 39.571533, 55.830215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145714, 39.832726, 56.425697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.804642, 40.036919, 56.381271>,  <44.599998, 40.159435, 56.354614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.804642, 40.036919, 56.381271>,  <45.145714, 39.832726, 56.425697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804642, 40.036919, 56.381271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369582, -0.439164, 0.818867,
		0.369245, 0.739282, 0.563135,
		-0.852682, 0.510487, -0.111066,
		44.548836, 40.190063, 56.347950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950401, 40.148102, 57.087524>,  <45.145714, 39.832726, 56.425697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950401, 40.148102, 57.087524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.611416, 40.137756, 56.875435>,  <44.408024, 40.131550, 56.748180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.611416, 40.137756, 56.875435>,  <44.950401, 40.148102, 57.087524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611416, 40.137756, 56.875435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496324, -0.315750, 0.808680,
		-0.188331, 0.948490, 0.254752,
		-0.847463, -0.025860, -0.530224,
		44.357178, 40.129997, 56.716366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495335, 40.208652, 57.589767>,  <44.950401, 40.148102, 57.087524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495335, 40.208652, 57.589767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.256134, 40.101929, 57.287453>,  <44.112614, 40.037895, 57.106064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.256134, 40.101929, 57.287453>,  <44.495335, 40.208652, 57.589767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256134, 40.101929, 57.287453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731281, -0.204344, 0.650747,
		-0.328067, 0.941836, -0.072916,
		-0.597997, -0.266811, -0.755785,
		44.076736, 40.021885, 57.060719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799541, 40.600239, 57.594975>,  <44.495335, 40.208652, 57.589767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799541, 40.600239, 57.594975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.773575, 40.241608, 57.419735>,  <43.757996, 40.026428, 57.314590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.773575, 40.241608, 57.419735>,  <43.799541, 40.600239, 57.594975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773575, 40.241608, 57.419735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715490, -0.264212, 0.646735,
		-0.695600, 0.355435, -0.624344,
		-0.064913, -0.896581, -0.438096,
		43.754101, 39.972633, 57.288307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036156, 40.519554, 57.519264>,  <43.799541, 40.600239, 57.594975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036156, 40.519554, 57.519264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.179382, 40.146851, 57.495216>,  <43.265320, 39.923229, 57.480789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.179382, 40.146851, 57.495216>,  <43.036156, 40.519554, 57.519264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179382, 40.146851, 57.495216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722479, -0.317281, 0.614293,
		-0.591447, -0.176526, -0.786784,
		0.358070, -0.931757, -0.060119,
		43.286804, 39.867325, 57.477180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463268, 40.188808, 57.646030>,  <43.036156, 40.519554, 57.519264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463268, 40.188808, 57.646030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.724670, 39.891327, 57.702377>,  <42.881512, 39.712837, 57.736187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.724670, 39.891327, 57.702377>,  <42.463268, 40.188808, 57.646030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724670, 39.891327, 57.702377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643376, -0.447717, 0.620981,
		-0.398750, -0.496449, -0.771062,
		0.653503, -0.743699, 0.140877,
		42.920719, 39.668217, 57.744640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081402, 39.563782, 57.595478>,  <42.463268, 40.188808, 57.646030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081402, 39.563782, 57.595478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.401852, 39.456955, 57.809723>,  <42.594120, 39.392860, 57.938271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.401852, 39.456955, 57.809723>,  <42.081402, 39.563782, 57.595478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401852, 39.456955, 57.809723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589230, -0.508821, 0.627622,
		0.104914, -0.818400, -0.564990,
		0.801125, -0.267063, 0.535608,
		42.642189, 39.376835, 57.970406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060368, 38.828228, 57.712608>,  <42.081402, 39.563782, 57.595478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060368, 38.828228, 57.712608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.290146, 38.970680, 58.007412>,  <42.428013, 39.056152, 58.184296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.290146, 38.970680, 58.007412>,  <42.060368, 38.828228, 57.712608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290146, 38.970680, 58.007412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641081, -0.364092, 0.675612,
		0.508944, -0.860587, 0.019156,
		0.574448, 0.356129, 0.737008,
		42.462479, 39.077518, 58.228516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078007, 38.293655, 58.182415>,  <42.060368, 38.828228, 57.712608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078007, 38.293655, 58.182415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.208923, 38.602654, 58.400085>,  <42.287476, 38.788052, 58.530685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.208923, 38.602654, 58.400085>,  <42.078007, 38.293655, 58.182415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208923, 38.602654, 58.400085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652407, -0.231856, 0.721531,
		0.683552, -0.591174, 0.428100,
		0.327293, 0.772500, 0.544172,
		42.307110, 38.834404, 58.563335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395428, 38.054382, 58.336792>,  <42.078007, 38.293655, 58.182415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395428, 38.054382, 58.336792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.151688, 37.824928, 58.117836>,  <41.005444, 37.687256, 57.986462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.151688, 37.824928, 58.117836>,  <41.395428, 38.054382, 58.336792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151688, 37.824928, 58.117836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425376, 0.346107, -0.836221,
		0.669143, -0.742396, 0.033112,
		-0.609347, -0.573636, -0.547392,
		40.968884, 37.652836, 57.953617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779945, 37.636208, 57.934170>,  <41.395428, 38.054382, 58.336792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779945, 37.636208, 57.934170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.433567, 37.640602, 57.734161>,  <41.225742, 37.643238, 57.614155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.433567, 37.640602, 57.734161>,  <41.779945, 37.636208, 57.934170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433567, 37.640602, 57.734161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496022, 0.146915, -0.855791,
		0.064059, -0.989088, -0.132670,
		-0.865944, 0.010986, -0.500021,
		41.173782, 37.643898, 57.584156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843689, 37.038376, 57.370811>,  <41.779945, 37.636208, 57.934170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843689, 37.038376, 57.370811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.578022, 37.324791, 57.284855>,  <41.418621, 37.496639, 57.233280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.578022, 37.324791, 57.284855>,  <41.843689, 37.038376, 57.370811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578022, 37.324791, 57.284855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432071, 0.133081, -0.891966,
		-0.610080, -0.685263, -0.397766,
		-0.664166, 0.716034, -0.214893,
		41.378773, 37.539600, 57.220387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664570, 36.908894, 56.732616>,  <41.843689, 37.038376, 57.370811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664570, 36.908894, 56.732616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.558678, 37.291481, 56.781738>,  <41.495140, 37.521034, 56.811211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.558678, 37.291481, 56.781738>,  <41.664570, 36.908894, 56.732616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558678, 37.291481, 56.781738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287726, 0.199894, -0.936620,
		-0.920397, -0.212620, -0.328120,
		-0.264733, 0.956470, 0.122806,
		41.479259, 37.578423, 56.818581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384148, 36.998341, 56.121067>,  <41.664570, 36.908894, 56.732616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384148, 36.998341, 56.121067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.390129, 37.379082, 56.243546>,  <41.393719, 37.607525, 56.317032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.390129, 37.379082, 56.243546>,  <41.384148, 36.998341, 56.121067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390129, 37.379082, 56.243546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350969, 0.281753, -0.892993,
		-0.936268, 0.120817, -0.329858,
		0.014950, 0.951850, 0.306199,
		41.394615, 37.664639, 56.335403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014137, 37.390602, 55.626930>,  <41.384148, 36.998341, 56.121067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014137, 37.390602, 55.626930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.241474, 37.669708, 55.801334>,  <41.377876, 37.837173, 55.905975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.241474, 37.669708, 55.801334>,  <41.014137, 37.390602, 55.626930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241474, 37.669708, 55.801334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291226, 0.325015, -0.899751,
		-0.769526, 0.638348, -0.018487,
		0.568345, 0.697766, 0.436011,
		41.411980, 37.879040, 55.932137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813938, 38.105034, 55.289333>,  <41.014137, 37.390602, 55.626930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813938, 38.105034, 55.289333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.175201, 38.113579, 55.460842>,  <41.391960, 38.118706, 55.563747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.175201, 38.113579, 55.460842>,  <40.813938, 38.105034, 55.289333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175201, 38.113579, 55.460842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386911, 0.392243, -0.834533,
		-0.186011, 0.919614, 0.345992,
		0.903161, 0.021364, 0.428770,
		41.446148, 38.119987, 55.589474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502190, 38.799297, 55.360382>,  <40.813938, 38.105034, 55.289333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502190, 38.799297, 55.360382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.162453, 38.961060, 55.224693>,  <39.958611, 39.058117, 55.143280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.162453, 38.961060, 55.224693>,  <40.502190, 38.799297, 55.360382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162453, 38.961060, 55.224693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524439, -0.573650, 0.629198,
		0.059857, 0.712305, 0.699313,
		-0.849342, 0.404409, -0.339223,
		39.907650, 39.082382, 55.122925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101700, 38.942532, 55.888401>,  <40.502190, 38.799297, 55.360382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101700, 38.942532, 55.888401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.825226, 38.910332, 55.601128>,  <39.659340, 38.891010, 55.428764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.825226, 38.910332, 55.601128>,  <40.101700, 38.942532, 55.888401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825226, 38.910332, 55.601128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655361, -0.349008, 0.669848,
		-0.304576, 0.933655, 0.188470,
		-0.691184, -0.080504, -0.718180,
		39.617870, 38.886181, 55.385674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591141, 39.408909, 56.047310>,  <40.101700, 38.942532, 55.888401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591141, 39.408909, 56.047310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.404839, 39.192108, 55.767509>,  <39.293056, 39.062027, 55.599628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.404839, 39.192108, 55.767509>,  <39.591141, 39.408909, 56.047310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404839, 39.192108, 55.767509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881510, 0.214915, 0.420419,
		-0.077536, 0.812429, -0.577881,
		-0.465756, -0.542006, -0.699501,
		39.265110, 39.029507, 55.557659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947029, 39.671890, 55.948921>,  <39.591141, 39.408909, 56.047310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947029, 39.671890, 55.948921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.914917, 39.293739, 55.822540>,  <38.895649, 39.066849, 55.746712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.914917, 39.293739, 55.822540>,  <38.947029, 39.671890, 55.948921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914917, 39.293739, 55.822540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881322, -0.080754, 0.465565,
		-0.465647, 0.315828, -0.826696,
		-0.080280, -0.945374, -0.315949,
		38.890835, 39.010128, 55.727757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239437, 39.664669, 55.686836>,  <38.947029, 39.671890, 55.948921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239437, 39.664669, 55.686836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.336018, 39.283241, 55.758842>,  <38.393967, 39.054386, 55.802044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.336018, 39.283241, 55.758842>,  <38.239437, 39.664669, 55.686836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336018, 39.283241, 55.758842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918331, -0.164577, 0.359976,
		-0.313636, -0.252230, -0.915430,
		0.241456, -0.953569, 0.180014,
		38.408455, 38.997169, 55.812847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729588, 39.429455, 55.375462>,  <38.239437, 39.664669, 55.686836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729588, 39.429455, 55.375462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.879669, 39.154808, 55.624550>,  <37.969719, 38.990021, 55.774002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.879669, 39.154808, 55.624550>,  <37.729588, 39.429455, 55.375462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879669, 39.154808, 55.624550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913992, -0.162133, 0.371929,
		-0.154407, -0.708714, -0.688391,
		0.375203, -0.686612, 0.622725,
		37.992229, 38.948822, 55.811367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391392, 38.868782, 55.181137>,  <37.729588, 39.429455, 55.375462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391392, 38.868782, 55.181137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527756, 38.810051, 55.552563>,  <37.609573, 38.774815, 55.775417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527756, 38.810051, 55.552563>,  <37.391392, 38.868782, 55.181137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527756, 38.810051, 55.552563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937564, -0.125562, 0.324358,
		0.068968, -0.981161, -0.180462,
		0.340907, -0.146824, 0.928561,
		37.630028, 38.766003, 55.831131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004501, 38.350330, 55.474087>,  <37.391392, 38.868782, 55.181137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004501, 38.350330, 55.474087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.166771, 38.484474, 55.814198>,  <37.264133, 38.564960, 56.018265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.166771, 38.484474, 55.814198>,  <37.004501, 38.350330, 55.474087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166771, 38.484474, 55.814198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874840, -0.126976, 0.467474,
		0.264734, -0.933495, 0.241872,
		0.405673, 0.335355, 0.850274,
		37.288471, 38.585079, 56.069279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952068, 37.804848, 56.062630>,  <37.004501, 38.350330, 55.474087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952068, 37.804848, 56.062630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.015816, 38.156258, 56.242764>,  <37.054066, 38.367104, 56.350845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.015816, 38.156258, 56.242764>,  <36.952068, 37.804848, 56.062630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015816, 38.156258, 56.242764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774819, -0.171371, 0.608512,
		0.611765, -0.445908, 0.653383,
		0.159369, 0.878521, 0.450337,
		37.063625, 38.419815, 56.377865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<46.354393, 42.593357, 44.078354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.246330, 42.927513, 44.269829>,  <46.181492, 43.128006, 44.384712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.246330, 42.927513, 44.269829>,  <46.354393, 42.593357, 44.078354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.246330, 42.927513, 44.269829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212711, -0.536672, 0.816540,
		0.939025, 0.118774, 0.322684,
		-0.270159, 0.835390, 0.478684,
		46.165283, 43.178131, 44.413433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.657806, 42.587841, 44.690620>,  <46.354393, 42.593357, 44.078354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.657806, 42.587841, 44.690620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.373138, 42.856361, 44.773453>,  <46.202335, 43.017471, 44.823151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.373138, 42.856361, 44.773453>,  <46.657806, 42.587841, 44.690620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.373138, 42.856361, 44.773453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141131, -0.425377, 0.893944,
		0.688188, 0.606971, 0.397470,
		-0.711673, 0.671298, 0.207077,
		46.159637, 43.057751, 44.835575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.829147, 42.806652, 45.346085>,  <46.657806, 42.587841, 44.690620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.829147, 42.806652, 45.346085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.444160, 42.902458, 45.295036>,  <46.213169, 42.959942, 45.264408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.444160, 42.902458, 45.295036>,  <46.829147, 42.806652, 45.346085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444160, 42.902458, 45.295036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221401, -0.420998, 0.879626,
		0.156953, 0.874868, 0.458226,
		-0.962469, 0.239512, -0.127620,
		46.155418, 42.974312, 45.256752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.628052, 43.116482, 46.011635>,  <46.829147, 42.806652, 45.346085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.628052, 43.116482, 46.011635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.287369, 42.988022, 45.846008>,  <46.082958, 42.910946, 45.746632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.287369, 42.988022, 45.846008>,  <46.628052, 43.116482, 46.011635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.287369, 42.988022, 45.846008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174347, -0.571495, 0.801871,
		-0.494158, 0.755153, 0.430757,
		-0.851711, -0.321149, -0.414067,
		46.031857, 42.891678, 45.721786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209831, 42.956669, 46.631313>,  <46.628052, 43.116482, 46.011635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209831, 42.956669, 46.631313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.989227, 42.789955, 46.342281>,  <45.856865, 42.689926, 46.168861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.989227, 42.789955, 46.342281>,  <46.209831, 42.956669, 46.631313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.989227, 42.789955, 46.342281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434212, -0.596188, 0.675293,
		-0.712249, 0.686184, 0.147829,
		-0.551509, -0.416787, -0.722583,
		45.823776, 42.664921, 46.125507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618210, 42.868938, 46.986343>,  <46.209831, 42.956669, 46.631313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.618210, 42.868938, 46.986343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.565254, 42.651535, 46.654785>,  <45.533482, 42.521091, 46.455849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.565254, 42.651535, 46.654785>,  <45.618210, 42.868938, 46.986343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565254, 42.651535, 46.654785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642041, -0.590086, 0.489470,
		-0.755152, 0.596987, -0.270834,
		-0.132393, -0.543511, -0.828895,
		45.525536, 42.488483, 46.406116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863991, 42.776157, 46.775822>,  <45.618210, 42.868938, 46.986343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863991, 42.776157, 46.775822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.102158, 42.482056, 46.646278>,  <45.245056, 42.305595, 46.568554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.102158, 42.482056, 46.646278>,  <44.863991, 42.776157, 46.775822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102158, 42.482056, 46.646278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517231, -0.659253, 0.545763,
		-0.614776, -0.157449, -0.772826,
		0.595418, -0.735251, -0.323856,
		45.280781, 42.261478, 46.549122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404377, 42.375679, 46.528927>,  <44.863991, 42.776157, 46.775822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404377, 42.375679, 46.528927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.716026, 42.140480, 46.615852>,  <44.903015, 41.999363, 46.668007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.716026, 42.140480, 46.615852>,  <44.404377, 42.375679, 46.528927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716026, 42.140480, 46.615852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611672, -0.637219, 0.468838,
		-0.137195, -0.498211, -0.856133,
		0.779124, -0.587995, 0.217318,
		44.949764, 41.964081, 46.681049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095253, 41.705147, 46.497471>,  <44.404377, 42.375679, 46.528927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095253, 41.705147, 46.497471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.434006, 41.675537, 46.708115>,  <44.637257, 41.657772, 46.834499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.434006, 41.675537, 46.708115>,  <44.095253, 41.705147, 46.497471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434006, 41.675537, 46.708115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488714, -0.498756, 0.715822,
		0.209659, -0.863575, -0.458563,
		0.846877, -0.074028, 0.526611,
		44.688068, 41.653328, 46.866096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039291, 40.999043, 46.746754>,  <44.095253, 41.705147, 46.497471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039291, 40.999043, 46.746754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.289448, 41.180885, 47.000439>,  <44.439541, 41.289989, 47.152649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.289448, 41.180885, 47.000439>,  <44.039291, 40.999043, 46.746754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289448, 41.180885, 47.000439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399090, -0.512073, 0.760597,
		0.670532, -0.728777, -0.138818,
		0.625391, 0.454604, 0.634209,
		44.477066, 41.317268, 47.190701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275249, 40.481339, 47.153492>,  <44.039291, 40.999043, 46.746754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275249, 40.481339, 47.153492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.342690, 40.818291, 47.358227>,  <44.383152, 41.020462, 47.481068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.342690, 40.818291, 47.358227>,  <44.275249, 40.481339, 47.153492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342690, 40.818291, 47.358227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211616, -0.476226, 0.853480,
		0.962702, -0.252206, 0.097971,
		0.168596, 0.842379, 0.511834,
		44.393269, 41.071003, 47.511776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786949, 40.309582, 47.678505>,  <44.275249, 40.481339, 47.153492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786949, 40.309582, 47.678505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.570587, 40.623703, 47.798985>,  <44.440769, 40.812176, 47.871273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.570587, 40.623703, 47.798985>,  <44.786949, 40.309582, 47.678505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570587, 40.623703, 47.798985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089326, -0.409723, 0.907826,
		0.836327, 0.464142, 0.291769,
		-0.540905, 0.785302, 0.301202,
		44.408318, 40.859295, 47.889347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.445412, 40.324440, 47.975594>,  <44.786949, 40.309582, 47.678505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.445412, 40.324440, 47.975594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.761932, 40.204590, 48.188782>,  <45.951847, 40.132679, 48.316696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.761932, 40.204590, 48.188782>,  <45.445412, 40.324440, 47.975594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761932, 40.204590, 48.188782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586440, 0.618568, -0.522937,
		-0.172995, 0.726359, 0.665188,
		0.791304, -0.299627, 0.532975,
		45.999325, 40.114700, 48.348675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884911, 40.938419, 48.028358>,  <45.445412, 40.324440, 47.975594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884911, 40.938419, 48.028358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.132202, 40.633293, 48.104160>,  <46.280575, 40.450218, 48.149643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.132202, 40.633293, 48.104160>,  <45.884911, 40.938419, 48.028358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.132202, 40.633293, 48.104160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693863, 0.416387, -0.587517,
		0.369256, 0.494712, 0.786708,
		0.618226, -0.762812, 0.189509,
		46.317669, 40.404449, 48.161015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.518002, 41.176998, 48.199821>,  <45.884911, 40.938419, 48.028358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.518002, 41.176998, 48.199821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.588287, 40.802925, 48.076824>,  <46.630459, 40.578480, 48.003025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.588287, 40.802925, 48.076824>,  <46.518002, 41.176998, 48.199821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588287, 40.802925, 48.076824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842531, 0.304419, -0.444376,
		0.509180, -0.180985, 0.841415,
		0.175717, -0.935186, -0.307490,
		46.641003, 40.522369, 47.984577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.243340, 41.112236, 48.192375>,  <46.518002, 41.176998, 48.199821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.243340, 41.112236, 48.192375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.164467, 40.788322, 47.971333>,  <47.117142, 40.593975, 47.838707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.164467, 40.788322, 47.971333>,  <47.243340, 41.112236, 48.192375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.164467, 40.788322, 47.971333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893454, 0.083594, -0.441306,
		0.403556, -0.580747, 0.707019,
		-0.197185, -0.809781, -0.552605,
		47.105312, 40.545387, 47.805550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.781719, 40.601162, 48.252800>,  <47.243340, 41.112236, 48.192375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.781719, 40.601162, 48.252800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.612587, 40.548729, 47.894131>,  <47.511108, 40.517269, 47.678928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.612587, 40.548729, 47.894131>,  <47.781719, 40.601162, 48.252800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.612587, 40.548729, 47.894131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878176, 0.184930, -0.441143,
		0.223648, -0.973971, 0.036917,
		-0.422833, -0.131081, -0.896677,
		47.485737, 40.509403, 47.625126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.284058, 40.242142, 47.820766>,  <47.781719, 40.601162, 48.252800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.284058, 40.242142, 47.820766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.028839, 40.386406, 47.548645>,  <47.875706, 40.472965, 47.385372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.028839, 40.386406, 47.548645>,  <48.284058, 40.242142, 47.820766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.028839, 40.386406, 47.548645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769855, 0.281973, -0.572550,
		-0.014667, -0.889054, -0.457568,
		-0.638050, 0.360659, -0.680307,
		47.837425, 40.494602, 47.344551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.630676, 40.101715, 47.282703>,  <48.284058, 40.242142, 47.820766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.630676, 40.101715, 47.282703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.362450, 40.372002, 47.160229>,  <48.201515, 40.534172, 47.086742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.362450, 40.372002, 47.160229>,  <48.630676, 40.101715, 47.282703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.362450, 40.372002, 47.160229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715984, 0.481448, -0.505545,
		-0.194193, -0.558224, -0.806644,
		-0.670564, 0.675717, -0.306186,
		48.161282, 40.574718, 47.068375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.907597, 40.253864, 46.663364>,  <48.630676, 40.101715, 47.282703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.907597, 40.253864, 46.663364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.671112, 40.567924, 46.737137>,  <48.529221, 40.756359, 46.781403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.671112, 40.567924, 46.737137>,  <48.907597, 40.253864, 46.663364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.671112, 40.567924, 46.737137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721845, 0.617119, -0.313214,
		-0.359737, -0.052043, -0.931601,
		-0.591210, 0.785147, 0.184434,
		48.493748, 40.803467, 46.792465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.882961, 40.608963, 46.092125>,  <48.907597, 40.253864, 46.663364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.882961, 40.608963, 46.092125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.795929, 40.877098, 46.375900>,  <48.743710, 41.037979, 46.546165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.795929, 40.877098, 46.375900>,  <48.882961, 40.608963, 46.092125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.795929, 40.877098, 46.375900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688132, 0.620825, -0.375567,
		-0.692195, 0.406473, -0.596361,
		-0.217578, 0.670340, 0.709439,
		48.730656, 41.078201, 46.588734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.678265, 41.350487, 45.857193>,  <48.882961, 40.608963, 46.092125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.678265, 41.350487, 45.857193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.775757, 41.422371, 46.238411>,  <48.834251, 41.465504, 46.467144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.775757, 41.422371, 46.238411>,  <48.678265, 41.350487, 45.857193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.775757, 41.422371, 46.238411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632304, 0.715672, -0.296657,
		-0.735382, 0.674920, 0.060798,
		0.243732, 0.179714, 0.953047,
		48.848877, 41.476284, 46.524326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.577011, 42.119015, 45.987434>,  <48.678265, 41.350487, 45.857193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.577011, 42.119015, 45.987434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.826248, 41.975327, 46.265343>,  <48.975792, 41.889114, 46.432087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.826248, 41.975327, 46.265343>,  <48.577011, 42.119015, 45.987434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.826248, 41.975327, 46.265343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662698, 0.714278, -0.225028,
		-0.415429, 0.600640, 0.683118,
		0.623097, -0.359218, 0.694775,
		49.013176, 41.867561, 46.473774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.715820, 42.713902, 46.274441>,  <48.577011, 42.119015, 45.987434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.715820, 42.713902, 46.274441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.003685, 42.462090, 46.391590>,  <49.176403, 42.311005, 46.461880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.003685, 42.462090, 46.391590>,  <48.715820, 42.713902, 46.274441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.003685, 42.462090, 46.391590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692570, 0.620911, -0.367172,
		0.049294, 0.467080, 0.882840,
		0.719664, -0.629528, 0.292878,
		49.219585, 42.273232, 46.479454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.230427, 43.111115, 46.558956>,  <48.715820, 42.713902, 46.274441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.230427, 43.111115, 46.558956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.432663, 42.774353, 46.483513>,  <49.554005, 42.572296, 46.438248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.432663, 42.774353, 46.483513>,  <49.230427, 43.111115, 46.558956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.432663, 42.774353, 46.483513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797616, 0.539443, -0.269835,
		0.328919, -0.014011, 0.944254,
		0.505591, -0.841906, -0.188608,
		49.584339, 42.521782, 46.426929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.895283, 43.229725, 46.861069>,  <49.230427, 43.111115, 46.558956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.895283, 43.229725, 46.861069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.948067, 42.949417, 46.580639>,  <49.979736, 42.781231, 46.412380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.948067, 42.949417, 46.580639>,  <49.895283, 43.229725, 46.861069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.948067, 42.949417, 46.580639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827254, 0.467506, -0.311591,
		0.546111, -0.538853, 0.641405,
		0.131959, -0.700768, -0.701078,
		49.987656, 42.739185, 46.370316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.686527, 43.016861, 46.763508>,  <49.895283, 43.229725, 46.861069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.686527, 43.016861, 46.763508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.493896, 42.943710, 46.420662>,  <50.378319, 42.899818, 46.214954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.493896, 42.943710, 46.420662>,  <50.686527, 43.016861, 46.763508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.493896, 42.943710, 46.420662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623048, 0.616358, -0.481575,
		0.616358, -0.765936, -0.182879,
		0.481575, 0.182879, 0.857112,
		50.349422, 42.888847, 46.163528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.448017, 43.109745, 46.880852>,  <50.686527, 43.016861, 46.763508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.448017, 43.109745, 46.880852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.607704, 43.431129, 47.057518>,  <51.703518, 43.623962, 47.163517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.607704, 43.431129, 47.057518>,  <51.448017, 43.109745, 46.880852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.607704, 43.431129, 47.057518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006163, -0.479360, 0.877597,
		0.916835, -0.353075, -0.186417,
		0.399218, 0.803463, 0.441670,
		51.727470, 43.672169, 47.190018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.083889, 42.944134, 47.234280>,  <51.448017, 43.109745, 46.880852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.083889, 42.944134, 47.234280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.841888, 43.229301, 47.376106>,  <51.696686, 43.400402, 47.461205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.841888, 43.229301, 47.376106>,  <52.083889, 42.944134, 47.234280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.841888, 43.229301, 47.376106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099425, -0.509473, 0.854723,
		0.789991, 0.481857, 0.379115,
		-0.605004, 0.712917, 0.354570,
		51.660389, 43.443176, 47.482479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.276897, 42.948151, 47.896858>,  <52.083889, 42.944134, 47.234280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.276897, 42.948151, 47.896858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.899261, 43.077805, 47.872734>,  <51.672680, 43.155598, 47.858261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.899261, 43.077805, 47.872734>,  <52.276897, 42.948151, 47.896858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.899261, 43.077805, 47.872734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238950, -0.546656, 0.802540,
		0.227160, 0.772079, 0.593542,
		-0.944088, 0.324132, -0.060310,
		51.616035, 43.175045, 47.854641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.079155, 43.320843, 48.517288>,  <52.276897, 42.948151, 47.896858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.079155, 43.320843, 48.517288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.733482, 43.191605, 48.362991>,  <51.526077, 43.114063, 48.270412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.733482, 43.191605, 48.362991>,  <52.079155, 43.320843, 48.517288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.733482, 43.191605, 48.362991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225958, -0.435778, 0.871229,
		-0.449584, 0.840065, 0.303588,
		-0.864186, -0.323092, -0.385738,
		51.474228, 43.094677, 48.247269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.637501, 43.237209, 49.140774>,  <52.079155, 43.320843, 48.517288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.637501, 43.237209, 49.140774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.419319, 43.050240, 48.862495>,  <51.288410, 42.938057, 48.695530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.419319, 43.050240, 48.862495>,  <51.637501, 43.237209, 49.140774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.419319, 43.050240, 48.862495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462089, -0.524786, 0.714894,
		-0.699252, 0.711415, 0.070254,
		-0.545455, -0.467427, -0.695695,
		51.255684, 42.910011, 48.653786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.004215, 43.249420, 49.421631>,  <51.637501, 43.237209, 49.140774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.004215, 43.249420, 49.421631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.981102, 42.955559, 49.151237>,  <50.967232, 42.779243, 48.989002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.981102, 42.955559, 49.151237>,  <51.004215, 43.249420, 49.421631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.981102, 42.955559, 49.151237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548681, -0.542309, 0.636278,
		-0.834032, 0.407667, -0.371750,
		-0.057786, -0.734649, -0.675982,
		50.963764, 42.735165, 48.948444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.315529, 43.052120, 49.301929>,  <51.004215, 43.249420, 49.421631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.315529, 43.052120, 49.301929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.493652, 42.715591, 49.179367>,  <50.600525, 42.513676, 49.105831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.493652, 42.715591, 49.179367>,  <50.315529, 43.052120, 49.301929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.493652, 42.715591, 49.179367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653598, -0.539329, 0.530975,
		-0.611974, -0.036178, -0.790050,
		0.445306, -0.841318, -0.306409,
		50.627243, 42.463196, 49.087444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.854412, 42.633690, 49.033287>,  <50.315529, 43.052120, 49.301929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.854412, 42.633690, 49.033287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.142426, 42.370193, 49.120575>,  <50.315231, 42.212097, 49.172947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.142426, 42.370193, 49.120575>,  <49.854412, 42.633690, 49.033287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.142426, 42.370193, 49.120575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652815, -0.536347, 0.534943,
		-0.235346, -0.527632, -0.816221,
		0.720031, -0.658738, 0.218219,
		50.358437, 42.172573, 49.186039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.545940, 41.986073, 48.897728>,  <49.854412, 42.633690, 49.033287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.545940, 41.986073, 48.897728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.857124, 41.908066, 49.136642>,  <50.043835, 41.861263, 49.279991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.857124, 41.908066, 49.136642>,  <49.545940, 41.986073, 48.897728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.857124, 41.908066, 49.136642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599427, -0.515284, 0.612511,
		0.188322, -0.834537, -0.517767,
		0.777960, -0.195014, 0.597283,
		50.090511, 41.849560, 49.315826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.488689, 41.204586, 48.992001>,  <49.545940, 41.986073, 48.897728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.488689, 41.204586, 48.992001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.671722, 41.391975, 49.294300>,  <49.781540, 41.504410, 49.475677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.671722, 41.391975, 49.294300>,  <49.488689, 41.204586, 48.992001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.671722, 41.391975, 49.294300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628756, -0.430508, 0.647556,
		0.628719, -0.771488, 0.097565,
		0.457579, 0.468476, 0.755746,
		49.808998, 41.532516, 49.521023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.411983, 40.705925, 49.570557>,  <49.488689, 41.204586, 48.992001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.411983, 40.705925, 49.570557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.531837, 41.060722, 49.711105>,  <49.603748, 41.273602, 49.795433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.531837, 41.060722, 49.711105>,  <49.411983, 40.705925, 49.570557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.531837, 41.060722, 49.711105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566363, -0.131003, 0.813678,
		0.767758, -0.442807, 0.463108,
		0.299634, 0.886995, 0.351368,
		49.621727, 41.326820, 49.816517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.374031, 40.613979, 50.268539>,  <49.411983, 40.705925, 49.570557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.374031, 40.613979, 50.268539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.395309, 41.013268, 50.257706>,  <49.408077, 41.252838, 50.251205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.395309, 41.013268, 50.257706>,  <49.374031, 40.613979, 50.268539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.395309, 41.013268, 50.257706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599986, 0.053633, 0.798211,
		0.798240, -0.026207, 0.601769,
		0.053194, 0.998217, -0.027088,
		49.411266, 41.312733, 50.249580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.635399, 40.835476, 50.949192>,  <49.374031, 40.613979, 50.268539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.635399, 40.835476, 50.949192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.459793, 41.165268, 50.806366>,  <49.354427, 41.363144, 50.720673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.459793, 41.165268, 50.806366>,  <49.635399, 40.835476, 50.949192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.459793, 41.165268, 50.806366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579661, 0.043731, 0.813683,
		0.686482, 0.564196, 0.458721,
		-0.439016, 0.824482, -0.357063,
		49.328087, 41.412613, 50.699245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.553387, 41.232006, 51.516098>,  <49.635399, 40.835476, 50.949192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.553387, 41.232006, 51.516098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.305450, 41.414383, 51.260624>,  <49.156689, 41.523808, 51.107338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.305450, 41.414383, 51.260624>,  <49.553387, 41.232006, 51.516098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.305450, 41.414383, 51.260624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625208, 0.204951, 0.753067,
		0.474252, 0.866092, 0.158020,
		-0.619839, 0.455939, -0.638685,
		49.119499, 41.551167, 51.069019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.394958, 41.838249, 51.801727>,  <49.553387, 41.232006, 51.516098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.394958, 41.838249, 51.801727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.107353, 41.725914, 51.547436>,  <48.934788, 41.658512, 51.394863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.107353, 41.725914, 51.547436>,  <49.394958, 41.838249, 51.801727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.107353, 41.725914, 51.547436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686657, 0.145819, 0.712207,
		-0.107311, 0.948614, -0.297683,
		-0.719018, -0.280833, -0.635725,
		48.891647, 41.641663, 51.356720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.828766, 42.306992, 51.861492>,  <49.394958, 41.838249, 51.801727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.828766, 42.306992, 51.861492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.649422, 41.984085, 51.707977>,  <48.541817, 41.790340, 51.615868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.649422, 41.984085, 51.707977>,  <48.828766, 42.306992, 51.861492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.649422, 41.984085, 51.707977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762944, 0.121920, 0.634864,
		-0.465714, 0.577456, -0.670563,
		-0.448362, -0.807267, -0.383787,
		48.514912, 41.741905, 51.592842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.027763, 42.510048, 51.802486>,  <48.828766, 42.306992, 51.861492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.027763, 42.510048, 51.802486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.068794, 42.116463, 51.744110>,  <48.093414, 41.880310, 51.709084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.068794, 42.116463, 51.744110>,  <48.027763, 42.510048, 51.802486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.068794, 42.116463, 51.744110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800191, -0.168777, 0.575507,
		-0.590908, 0.057744, -0.804670,
		0.102577, -0.983961, -0.145938,
		48.099567, 41.821274, 51.700329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.374596, 42.255375, 51.543232>,  <48.027763, 42.510048, 51.802486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.374596, 42.255375, 51.543232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.575058, 41.945999, 51.698471>,  <47.695335, 41.760372, 51.791615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.575058, 41.945999, 51.698471>,  <47.374596, 42.255375, 51.543232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.575058, 41.945999, 51.698471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765318, -0.186825, 0.615942,
		-0.403890, -0.605707, -0.685560,
		0.501160, -0.773444, 0.388102,
		47.725407, 41.713966, 51.814903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.892006, 41.741508, 51.538742>,  <47.374596, 42.255375, 51.543232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.892006, 41.741508, 51.538742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.159042, 41.610352, 51.806118>,  <47.319263, 41.531658, 51.966545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.159042, 41.610352, 51.806118>,  <46.892006, 41.741508, 51.538742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.159042, 41.610352, 51.806118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734935, -0.146543, 0.662114,
		-0.119138, -0.933284, -0.338802,
		0.667590, -0.327880, 0.668445,
		47.359318, 41.511986, 52.006649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.602932, 41.171913, 51.701336>,  <46.892006, 41.741508, 51.538742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.602932, 41.171913, 51.701336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.845261, 41.256676, 52.008080>,  <46.990658, 41.307533, 52.192127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.845261, 41.256676, 52.008080>,  <46.602932, 41.171913, 51.701336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.845261, 41.256676, 52.008080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715372, -0.276720, 0.641614,
		0.348171, -0.937294, -0.016048,
		0.605822, 0.211911, 0.766859,
		47.027008, 41.320248, 52.238136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.479454, 40.660976, 52.239243>,  <46.602932, 41.171913, 51.701336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.479454, 40.660976, 52.239243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.666740, 40.948326, 52.445042>,  <46.779114, 41.120735, 52.568523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.666740, 40.948326, 52.445042>,  <46.479454, 40.660976, 52.239243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.666740, 40.948326, 52.445042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569375, -0.199983, 0.797383,
		0.675709, -0.666294, 0.315387,
		0.468219, 0.718372, 0.514502,
		46.807205, 41.163837, 52.599392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.791771, 40.303528, 52.853596>,  <46.479454, 40.660976, 52.239243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.791771, 40.303528, 52.853596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.746162, 40.696777, 52.910812>,  <46.718796, 40.932728, 52.945141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.746162, 40.696777, 52.910812>,  <46.791771, 40.303528, 52.853596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.746162, 40.696777, 52.910812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453077, -0.179592, 0.873194,
		0.884149, 0.034756, 0.465910,
		-0.114022, 0.983127, 0.143039,
		46.711956, 40.991714, 52.953724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865829, 40.414009, 53.562363>,  <46.791771, 40.303528, 52.853596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865829, 40.414009, 53.562363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.673019, 40.743980, 53.444275>,  <46.557335, 40.941963, 53.373425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.673019, 40.743980, 53.444275>,  <46.865829, 40.414009, 53.562363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.673019, 40.743980, 53.444275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516283, 0.004805, 0.856405,
		0.707888, 0.565222, 0.423579,
		-0.482024, 0.824925, -0.295216,
		46.528412, 40.991459, 53.355709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.947365, 40.970776, 54.075981>,  <46.865829, 40.414009, 53.562363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.947365, 40.970776, 54.075981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.613388, 41.060455, 53.874939>,  <46.413002, 41.114262, 53.754314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.613388, 41.060455, 53.874939>,  <46.947365, 40.970776, 54.075981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.613388, 41.060455, 53.874939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444828, 0.262796, 0.856193,
		0.324038, 0.938442, -0.119690,
		-0.834941, 0.224197, -0.502601,
		46.362907, 41.127716, 53.724159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705845, 41.459881, 54.501240>,  <46.947365, 40.970776, 54.075981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705845, 41.459881, 54.501240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.401199, 41.357346, 54.263168>,  <46.218410, 41.295826, 54.120327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.401199, 41.357346, 54.263168>,  <46.705845, 41.459881, 54.501240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401199, 41.357346, 54.263168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607237, -0.038408, 0.793591,
		-0.226284, 0.965825, -0.126404,
		-0.761615, -0.256334, -0.595176,
		46.172714, 41.280445, 54.084614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.122913, 41.781883, 54.735466>,  <46.705845, 41.459881, 54.501240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.122913, 41.781883, 54.735466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.956398, 41.507240, 54.497047>,  <45.856487, 41.342453, 54.353996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.956398, 41.507240, 54.497047>,  <46.122913, 41.781883, 54.735466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956398, 41.507240, 54.497047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792069, -0.048045, 0.608538,
		-0.446465, 0.725438, -0.523841,
		-0.416288, -0.686609, -0.596047,
		45.831512, 41.301258, 54.318233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494118, 42.042717, 54.492462>,  <46.122913, 41.781883, 54.735466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494118, 42.042717, 54.492462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.479439, 41.643005, 54.488617>,  <45.470631, 41.403179, 54.486309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.479439, 41.643005, 54.488617>,  <45.494118, 42.042717, 54.492462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479439, 41.643005, 54.488617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742054, 0.020803, 0.670017,
		-0.669335, 0.031724, -0.742283,
		-0.036698, -0.999280, -0.009617,
		45.468430, 41.343220, 54.485733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904259, 42.299473, 54.134830>,  <45.494118, 42.042717, 54.492462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904259, 42.299473, 54.134830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.842293, 42.682167, 54.233345>,  <44.805111, 42.911785, 54.292454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.842293, 42.682167, 54.233345>,  <44.904259, 42.299473, 54.134830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842293, 42.682167, 54.233345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644157, 0.286836, -0.709074,
		-0.749040, 0.048797, -0.660725,
		-0.154919, 0.956736, 0.246284,
		44.795818, 42.969189, 54.307232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866119, 42.699867, 53.522663>,  <44.904259, 42.299473, 54.134830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866119, 42.699867, 53.522663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.973732, 42.963264, 53.803806>,  <45.038300, 43.121304, 53.972492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.973732, 42.963264, 53.803806>,  <44.866119, 42.699867, 53.522663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973732, 42.963264, 53.803806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584066, 0.468721, -0.662697,
		-0.765827, 0.588797, -0.258507,
		0.269027, 0.658497, 0.702856,
		45.054440, 43.160812, 54.014664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883320, 43.335751, 53.111374>,  <44.866119, 42.699867, 53.522663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883320, 43.335751, 53.111374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.088028, 43.417488, 53.445160>,  <45.210854, 43.466530, 53.645432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.088028, 43.417488, 53.445160>,  <44.883320, 43.335751, 53.111374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088028, 43.417488, 53.445160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565067, 0.651578, -0.506109,
		-0.647141, 0.730541, 0.217989,
		0.511770, 0.204345, 0.834467,
		45.241558, 43.478790, 53.695499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043308, 44.095226, 53.058544>,  <44.883320, 43.335751, 53.111374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043308, 44.095226, 53.058544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.292358, 43.929642, 53.324165>,  <45.441788, 43.830292, 53.483540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.292358, 43.929642, 53.324165>,  <45.043308, 44.095226, 53.058544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292358, 43.929642, 53.324165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742516, 0.580392, -0.334387,
		-0.246986, 0.701269, 0.668745,
		0.622630, -0.413965, 0.664052,
		45.479149, 43.805450, 53.523380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305214, 44.600922, 53.630112>,  <45.043308, 44.095226, 53.058544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305214, 44.600922, 53.630112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.570404, 44.312202, 53.550648>,  <45.729519, 44.138969, 53.502968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.570404, 44.312202, 53.550648>,  <45.305214, 44.600922, 53.630112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570404, 44.312202, 53.550648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658070, 0.688397, -0.305046,
		0.356942, 0.071503, 0.931386,
		0.662975, -0.721801, -0.198664,
		45.769295, 44.095661, 53.491047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
