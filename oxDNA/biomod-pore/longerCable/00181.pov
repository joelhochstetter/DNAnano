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
	<24.257040, 34.644848, 34.960014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212875, 35.031410, 34.867172>,  <24.186377, 35.263348, 34.811466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212875, 35.031410, 34.867172>,  <24.257040, 34.644848, 34.960014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.212875, 35.031410, 34.867172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298882, -0.190438, -0.935095,
		-0.947881, -0.172616, -0.267815,
		-0.110411, 0.966404, -0.232105,
		24.179752, 35.321331, 34.797543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.973009, 34.714745, 34.227612>,  <24.257040, 34.644848, 34.960014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.973009, 34.714745, 34.227612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238214, 34.981838, 34.362988>,  <24.397337, 35.142094, 34.444214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238214, 34.981838, 34.362988>,  <23.973009, 34.714745, 34.227612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.238214, 34.981838, 34.362988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556683, -0.137498, -0.819267,
		-0.500518, 0.731590, -0.462880,
		0.663012, 0.667735, 0.338444,
		24.437119, 35.182159, 34.464520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689304, 34.553570, 33.858189>,  <23.973009, 34.714745, 34.227612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.689304, 34.553570, 33.858189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943399, 34.415768, 33.581699>,  <25.095856, 34.333084, 33.415806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943399, 34.415768, 33.581699>,  <24.689304, 34.553570, 33.858189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.943399, 34.415768, 33.581699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434583, 0.899307, -0.048835,
		0.638445, -0.269372, 0.720990,
		0.635236, -0.344509, -0.691223,
		25.133970, 34.312416, 33.374332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443161, 34.821194, 33.989895>,  <24.689304, 34.553570, 33.858189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443161, 34.821194, 33.989895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431656, 34.738174, 33.598774>,  <25.424753, 34.688362, 33.364101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431656, 34.738174, 33.598774>,  <25.443161, 34.821194, 33.989895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431656, 34.738174, 33.598774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470933, 0.860028, -0.196404,
		0.881700, -0.466128, 0.073006,
		-0.028763, -0.207550, -0.977802,
		25.423027, 34.675911, 33.305435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053770, 35.037891, 33.752869>,  <25.443161, 34.821194, 33.989895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053770, 35.037891, 33.752869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798254, 35.022163, 33.445518>,  <25.644943, 35.012726, 33.261108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798254, 35.022163, 33.445518>,  <26.053770, 35.037891, 33.752869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798254, 35.022163, 33.445518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340033, 0.881433, -0.327799,
		0.690161, -0.470668, -0.549681,
		-0.638792, -0.039324, -0.768373,
		25.606617, 35.010365, 33.215008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464132, 35.096741, 33.042862>,  <26.053770, 35.037891, 33.752869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464132, 35.096741, 33.042862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093754, 35.244579, 33.073910>,  <25.871527, 35.333282, 33.092541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093754, 35.244579, 33.073910>,  <26.464132, 35.096741, 33.042862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093754, 35.244579, 33.073910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341982, 0.907779, -0.242871,
		-0.160228, -0.198339, -0.966948,
		-0.925946, 0.369594, 0.077623,
		25.815969, 35.355457, 33.097198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341906, 35.422417, 32.387798>,  <26.464132, 35.096741, 33.042862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341906, 35.422417, 32.387798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116964, 35.578484, 32.679420>,  <25.982000, 35.672123, 32.854393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116964, 35.578484, 32.679420>,  <26.341906, 35.422417, 32.387798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116964, 35.578484, 32.679420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398416, 0.900438, -0.174573,
		-0.724586, 0.192297, -0.661814,
		-0.562353, 0.390170, 0.729059,
		25.948259, 35.695534, 32.898136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061323, 35.676350, 32.408028>,  <26.341906, 35.422417, 32.387798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061323, 35.676350, 32.408028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442415, 35.589130, 32.492649>,  <27.671070, 35.536800, 32.543423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442415, 35.589130, 32.492649>,  <27.061323, 35.676350, 32.408028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442415, 35.589130, 32.492649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299981, -0.785409, 0.541428,
		0.048102, -0.579299, -0.813695,
		0.952731, -0.218049, 0.211559,
		27.728235, 35.523716, 32.556118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080975, 34.960239, 32.370907>,  <27.061323, 35.676350, 32.408028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080975, 34.960239, 32.370907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401848, 35.043007, 32.594936>,  <27.594372, 35.092667, 32.729355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401848, 35.043007, 32.594936>,  <27.080975, 34.960239, 32.370907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401848, 35.043007, 32.594936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122734, -0.860857, 0.493823,
		0.584326, -0.464878, -0.665170,
		0.802184, 0.206915, 0.560078,
		27.642504, 35.105080, 32.762959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413755, 34.424946, 32.278194>,  <27.080975, 34.960239, 32.370907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413755, 34.424946, 32.278194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546444, 34.586636, 32.619148>,  <27.626057, 34.683647, 32.823723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546444, 34.586636, 32.619148>,  <27.413755, 34.424946, 32.278194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546444, 34.586636, 32.619148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276908, -0.822028, 0.497586,
		0.901823, -0.401092, -0.160751,
		0.331720, 0.404222, 0.852389,
		27.645960, 34.707901, 32.874866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796328, 33.912025, 32.545628>,  <27.413755, 34.424946, 32.278194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796328, 33.912025, 32.545628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716293, 34.139824, 32.864536>,  <27.668274, 34.276505, 33.055882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716293, 34.139824, 32.864536>,  <27.796328, 33.912025, 32.545628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716293, 34.139824, 32.864536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137702, -0.821995, 0.552596,
		0.970054, 0.000779, 0.242889,
		-0.200084, 0.569495, 0.797272,
		27.656269, 34.310673, 33.103718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276808, 33.776394, 33.031731>,  <27.796328, 33.912025, 32.545628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276808, 33.776394, 33.031731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916775, 33.885834, 33.167370>,  <27.700754, 33.951500, 33.248753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916775, 33.885834, 33.167370>,  <28.276808, 33.776394, 33.031731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916775, 33.885834, 33.167370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142101, -0.920039, 0.365152,
		0.411892, 0.280481, 0.866992,
		-0.900085, 0.273603, 0.339100,
		27.646749, 33.967915, 33.269100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756826, 33.224197, 32.790337>,  <28.276808, 33.776394, 33.031731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756826, 33.224197, 32.790337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488726, 33.065678, 32.539349>,  <27.327866, 32.970566, 32.388756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488726, 33.065678, 32.539349>,  <27.756826, 33.224197, 32.790337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488726, 33.065678, 32.539349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441011, 0.892698, -0.092732,
		0.596887, 0.214566, -0.773103,
		-0.670250, -0.396296, -0.627466,
		27.287651, 32.946789, 32.351109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199480, 33.109627, 33.318954>,  <27.756826, 33.224197, 32.790337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199480, 33.109627, 33.318954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328894, 33.262226, 33.665314>,  <27.406542, 33.353786, 33.873131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328894, 33.262226, 33.665314>,  <27.199480, 33.109627, 33.318954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328894, 33.262226, 33.665314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069239, 0.922212, -0.380434,
		-0.943680, 0.063129, 0.324782,
		0.323534, 0.381496, 0.865902,
		27.425955, 33.376675, 33.925083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802649, 33.812878, 33.523819>,  <27.199480, 33.109627, 33.318954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802649, 33.812878, 33.523819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173178, 33.833164, 33.673138>,  <27.395496, 33.845337, 33.762730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173178, 33.833164, 33.673138>,  <26.802649, 33.812878, 33.523819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173178, 33.833164, 33.673138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064137, 0.955203, -0.288918,
		-0.371227, 0.291574, 0.881575,
		0.926324, 0.050713, 0.373298,
		27.451075, 33.848377, 33.785126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827936, 34.433651, 33.958569>,  <26.802649, 33.812878, 33.523819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827936, 34.433651, 33.958569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189421, 34.320263, 33.830223>,  <27.406311, 34.252232, 33.753216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189421, 34.320263, 33.830223>,  <26.827936, 34.433651, 33.958569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189421, 34.320263, 33.830223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151153, 0.912409, -0.380346,
		0.400578, 0.295222, 0.867399,
		0.903709, -0.283468, -0.320867,
		27.460533, 34.235222, 33.733963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406233, 34.913643, 34.202347>,  <26.827936, 34.433651, 33.958569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406233, 34.913643, 34.202347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487963, 34.732464, 33.855225>,  <27.537001, 34.623756, 33.646950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487963, 34.732464, 33.855225>,  <27.406233, 34.913643, 34.202347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487963, 34.732464, 33.855225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292041, 0.874347, -0.387594,
		0.934325, -0.174240, 0.310930,
		0.204326, -0.452943, -0.867810,
		27.549261, 34.596581, 33.594883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906435, 35.278278, 33.975510>,  <27.406233, 34.913643, 34.202347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906435, 35.278278, 33.975510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823853, 35.101517, 33.626316>,  <27.774303, 34.995461, 33.416801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823853, 35.101517, 33.626316>,  <27.906435, 35.278278, 33.975510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823853, 35.101517, 33.626316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398614, 0.776822, -0.487498,
		0.893579, -0.448629, 0.015770,
		-0.206455, -0.441904, -0.872982,
		27.761915, 34.968945, 33.364422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606440, 35.302223, 33.586613>,  <27.906435, 35.278278, 33.975510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606440, 35.302223, 33.586613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304781, 35.250465, 33.329079>,  <28.123785, 35.219410, 33.174561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304781, 35.250465, 33.329079>,  <28.606440, 35.302223, 33.586613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304781, 35.250465, 33.329079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382738, 0.710072, -0.591025,
		0.533640, -0.692139, -0.485976,
		-0.754149, -0.129393, -0.643830,
		28.078537, 35.211647, 33.135929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939180, 35.457752, 32.979252>,  <28.606440, 35.302223, 33.586613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939180, 35.457752, 32.979252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557180, 35.480686, 32.862846>,  <28.327980, 35.494446, 32.793003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557180, 35.480686, 32.862846>,  <28.939180, 35.457752, 32.979252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557180, 35.480686, 32.862846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231378, 0.757880, -0.609986,
		0.185577, -0.649870, -0.737041,
		-0.955000, 0.057336, -0.291011,
		28.270679, 35.497887, 32.775543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822489, 35.337406, 32.271297>,  <28.939180, 35.457752, 32.979252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822489, 35.337406, 32.271297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578749, 35.610714, 32.432213>,  <28.432505, 35.774700, 32.528763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578749, 35.610714, 32.432213>,  <28.822489, 35.337406, 32.271297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578749, 35.610714, 32.432213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335178, 0.681773, -0.650262,
		-0.718575, -0.261397, -0.644454,
		-0.609348, 0.683270, 0.402290,
		28.395945, 35.815693, 32.552898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998665, 34.906586, 31.604647>,  <28.822489, 35.337406, 32.271297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998665, 34.906586, 31.604647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359858, 34.751568, 31.530420>,  <29.576572, 34.658558, 31.485884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359858, 34.751568, 31.530420>,  <28.998665, 34.906586, 31.604647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359858, 34.751568, 31.530420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193268, 0.752050, -0.630133,
		0.383759, 0.533135, 0.753987,
		0.902982, -0.387541, -0.185568,
		29.630753, 34.635307, 31.474751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579485, 35.411816, 31.778311>,  <28.998665, 34.906586, 31.604647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579485, 35.411816, 31.778311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586260, 35.153778, 31.472744>,  <29.590324, 34.998955, 31.289404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586260, 35.153778, 31.472744>,  <29.579485, 35.411816, 31.778311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586260, 35.153778, 31.472744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031027, 0.763997, -0.644472,
		0.999375, -0.012786, 0.032956,
		0.016939, -0.645092, -0.763917,
		29.591341, 34.960251, 31.243568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102013, 35.580879, 31.418161>,  <29.579485, 35.411816, 31.778311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102013, 35.580879, 31.418161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807877, 35.431717, 31.191811>,  <29.631395, 35.342220, 31.056000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807877, 35.431717, 31.191811>,  <30.102013, 35.580879, 31.418161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807877, 35.431717, 31.191811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156604, 0.718894, -0.677249,
		0.659356, -0.586627, -0.470232,
		-0.735340, -0.372908, -0.565875,
		29.587275, 35.319843, 31.022047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464558, 35.267300, 30.803604>,  <30.102013, 35.580879, 31.418161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464558, 35.267300, 30.803604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089979, 35.403152, 30.768450>,  <29.865232, 35.484665, 30.747356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089979, 35.403152, 30.768450>,  <30.464558, 35.267300, 30.803604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089979, 35.403152, 30.768450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257560, 0.495498, -0.829544,
		-0.238190, -0.799458, -0.551482,
		-0.936444, 0.339629, -0.087886,
		29.809046, 35.505039, 30.742085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180525, 35.026615, 30.169172>,  <30.464558, 35.267300, 30.803604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180525, 35.026615, 30.169172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003065, 35.365681, 30.285547>,  <29.896589, 35.569118, 30.355371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003065, 35.365681, 30.285547>,  <30.180525, 35.026615, 30.169172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003065, 35.365681, 30.285547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310326, 0.449850, -0.837456,
		-0.840759, -0.281250, -0.462627,
		-0.443647, 0.847664, 0.290936,
		29.869970, 35.619980, 30.372828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763149, 35.301239, 29.602833>,  <30.180525, 35.026615, 30.169172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763149, 35.301239, 29.602833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891178, 35.586571, 29.852222>,  <29.967995, 35.757771, 30.001856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891178, 35.586571, 29.852222>,  <29.763149, 35.301239, 29.602833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891178, 35.586571, 29.852222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325434, 0.535266, -0.779476,
		-0.889745, 0.452389, -0.060817,
		0.320073, 0.713327, 0.623472,
		29.987200, 35.800568, 30.039265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413637, 36.025021, 29.658314>,  <29.763149, 35.301239, 29.602833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413637, 36.025021, 29.658314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808844, 36.067619, 29.703007>,  <30.045967, 36.093178, 29.729822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808844, 36.067619, 29.703007>,  <29.413637, 36.025021, 29.658314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808844, 36.067619, 29.703007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056099, 0.426593, -0.902702,
		-0.143802, 0.898151, 0.415505,
		0.988015, 0.106501, 0.111730,
		30.105247, 36.099571, 29.736526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546614, 36.655098, 29.407909>,  <29.413637, 36.025021, 29.658314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546614, 36.655098, 29.407909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885902, 36.443253, 29.405834>,  <30.089476, 36.316147, 29.404589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885902, 36.443253, 29.405834>,  <29.546614, 36.655098, 29.407909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885902, 36.443253, 29.405834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189711, 0.312956, -0.930628,
		0.494497, 0.788396, 0.365930,
		0.848223, -0.529614, -0.005188,
		30.140369, 36.284367, 29.404278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050480, 37.087723, 29.281500>,  <29.546614, 36.655098, 29.407909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050480, 37.087723, 29.281500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134516, 36.730965, 29.121309>,  <30.184937, 36.516911, 29.025196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134516, 36.730965, 29.121309>,  <30.050480, 37.087723, 29.281500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134516, 36.730965, 29.121309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131746, 0.380055, -0.915533,
		0.968765, 0.245103, -0.037659,
		0.210088, -0.891898, -0.400475,
		30.197542, 36.463394, 29.001167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582249, 37.202351, 28.851254>,  <30.050480, 37.087723, 29.281500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582249, 37.202351, 28.851254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423023, 36.865261, 28.706278>,  <30.327488, 36.663010, 28.619291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423023, 36.865261, 28.706278>,  <30.582249, 37.202351, 28.851254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423023, 36.865261, 28.706278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123880, 0.440854, -0.888989,
		0.908954, -0.308977, -0.279885,
		-0.398066, -0.842722, -0.362440,
		30.303604, 36.612446, 28.597546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919998, 37.040916, 28.201530>,  <30.582249, 37.202351, 28.851254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919998, 37.040916, 28.201530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537170, 36.937824, 28.254591>,  <30.307474, 36.875969, 28.286427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537170, 36.937824, 28.254591>,  <30.919998, 37.040916, 28.201530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537170, 36.937824, 28.254591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237610, 0.435469, -0.868279,
		0.166015, -0.862521, -0.478012,
		-0.957069, -0.257728, 0.132650,
		30.250050, 36.860504, 28.294386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727377, 36.935276, 27.563118>,  <30.919998, 37.040916, 28.201530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727377, 36.935276, 27.563118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411346, 37.042198, 27.783781>,  <30.221727, 37.106350, 27.916180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411346, 37.042198, 27.783781>,  <30.727377, 36.935276, 27.563118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411346, 37.042198, 27.783781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442181, 0.374766, -0.814878,
		-0.424562, -0.887750, -0.177898,
		-0.790077, 0.267303, 0.551658,
		30.174324, 37.122391, 27.949278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039310, 36.627258, 27.305542>,  <30.727377, 36.935276, 27.563118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039310, 36.627258, 27.305542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030643, 36.977295, 27.498930>,  <30.025442, 37.187317, 27.614964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030643, 36.977295, 27.498930>,  <30.039310, 36.627258, 27.305542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030643, 36.977295, 27.498930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490111, 0.412190, -0.768043,
		-0.871391, -0.253597, 0.419961,
		-0.021669, 0.875093, 0.483469,
		30.024143, 37.239822, 27.643970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289652, 36.721344, 27.623600>,  <30.039310, 36.627258, 27.305542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289652, 36.721344, 27.623600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533829, 37.006329, 27.485176>,  <29.680334, 37.177319, 27.402122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533829, 37.006329, 27.485176>,  <29.289652, 36.721344, 27.623600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533829, 37.006329, 27.485176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656971, 0.211389, -0.723674,
		-0.442439, 0.669111, 0.597108,
		0.610440, 0.712464, -0.346059,
		29.716961, 37.220066, 27.381359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991962, 37.414677, 27.534718>,  <29.289652, 36.721344, 27.623600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991962, 37.414677, 27.534718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289820, 37.378799, 27.270155>,  <29.468534, 37.357273, 27.111418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289820, 37.378799, 27.270155>,  <28.991962, 37.414677, 27.534718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289820, 37.378799, 27.270155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653354, 0.104698, -0.749778,
		0.136495, 0.990452, 0.019364,
		0.744646, -0.089689, -0.661407,
		29.513214, 37.351894, 27.071733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393444, 37.557682, 28.126833>,  <28.991962, 37.414677, 27.534718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393444, 37.557682, 28.126833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320282, 37.164433, 28.125662>,  <28.276384, 36.928482, 28.124958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320282, 37.164433, 28.125662>,  <28.393444, 37.557682, 28.126833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320282, 37.164433, 28.125662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678729, -0.124118, -0.723825,
		0.711247, -0.134379, 0.689978,
		-0.182905, -0.983126, -0.002928,
		28.265409, 36.869495, 28.124783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046722, 37.294163, 28.287489>,  <28.393444, 37.557682, 28.126833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046722, 37.294163, 28.287489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384396, 37.132431, 28.146704>,  <29.587000, 37.035393, 28.062233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384396, 37.132431, 28.146704>,  <29.046722, 37.294163, 28.287489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384396, 37.132431, 28.146704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016741, -0.636369, 0.771203,
		-0.535797, -0.656927, -0.530442,
		0.844181, -0.404328, -0.351962,
		29.637650, 37.011131, 28.041115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972319, 36.556465, 28.489931>,  <29.046722, 37.294163, 28.287489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972319, 36.556465, 28.489931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357885, 36.641243, 28.425503>,  <29.589226, 36.692108, 28.386847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357885, 36.641243, 28.425503>,  <28.972319, 36.556465, 28.489931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357885, 36.641243, 28.425503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249842, -0.511422, 0.822209,
		0.091889, -0.832783, -0.545921,
		0.963917, 0.211946, -0.161070,
		29.647060, 36.704826, 28.377182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444866, 35.934555, 28.453991>,  <28.972319, 36.556465, 28.489931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444866, 35.934555, 28.453991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546980, 36.277916, 28.631969>,  <29.608248, 36.483932, 28.738756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546980, 36.277916, 28.631969>,  <29.444866, 35.934555, 28.453991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546980, 36.277916, 28.631969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100892, -0.481334, 0.870711,
		0.961588, -0.177388, -0.209483,
		0.255285, 0.858401, 0.444948,
		29.623566, 36.535435, 28.765453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840641, 35.455948, 28.205914>,  <29.444866, 35.934555, 28.453991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840641, 35.455948, 28.205914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006388, 35.802750, 28.316629>,  <30.105835, 36.010830, 28.383059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006388, 35.802750, 28.316629>,  <29.840641, 35.455948, 28.205914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006388, 35.802750, 28.316629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258117, -0.403592, 0.877775,
		0.872741, -0.292275, -0.391022,
		0.414365, 0.867000, 0.276790,
		30.130697, 36.062851, 28.399666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584766, 35.333530, 28.525820>,  <29.840641, 35.455948, 28.205914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584766, 35.333530, 28.525820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454561, 35.681686, 28.673582>,  <30.376438, 35.890579, 28.762239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454561, 35.681686, 28.673582>,  <30.584766, 35.333530, 28.525820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454561, 35.681686, 28.673582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247579, -0.298594, 0.921708,
		0.912549, 0.391486, -0.118294,
		-0.325514, 0.870391, 0.369406,
		30.356907, 35.942802, 28.784405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086311, 35.632626, 28.991476>,  <30.584766, 35.333530, 28.525820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086311, 35.632626, 28.991476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754961, 35.813992, 29.123058>,  <30.556150, 35.922810, 29.202007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754961, 35.813992, 29.123058>,  <31.086311, 35.632626, 28.991476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754961, 35.813992, 29.123058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334846, -0.069989, 0.939670,
		0.449083, 0.888548, -0.093847,
		-0.828373, 0.453414, 0.328958,
		30.506449, 35.950016, 29.221746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508352, 35.966663, 29.350929>,  <31.086311, 35.632626, 28.991476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508352, 35.966663, 29.350929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521465, 35.849056, 28.968834>,  <31.529333, 35.778492, 28.739576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521465, 35.849056, 28.968834>,  <31.508352, 35.966663, 29.350929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521465, 35.849056, 28.968834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963416, 0.263661, -0.048093,
		0.265999, -0.918713, 0.291908,
		0.032781, -0.294021, -0.955236,
		31.531300, 35.760849, 28.682262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022476, 35.440262, 29.324808>,  <31.508352, 35.966663, 29.350929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022476, 35.440262, 29.324808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978901, 35.653522, 28.989218>,  <31.952757, 35.781479, 28.787863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978901, 35.653522, 28.989218>,  <32.022476, 35.440262, 29.324808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978901, 35.653522, 28.989218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968486, 0.247096, 0.031275,
		0.223983, -0.809132, -0.543266,
		-0.108934, 0.533151, -0.838978,
		31.946220, 35.813469, 28.737524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282051, 34.887184, 29.798330>,  <32.022476, 35.440262, 29.324808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282051, 34.887184, 29.798330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613129, 35.063293, 29.937517>,  <32.811775, 35.168961, 30.021029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613129, 35.063293, 29.937517>,  <32.282051, 34.887184, 29.798330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613129, 35.063293, 29.937517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374827, -0.895200, 0.241086,
		0.417642, -0.069119, -0.905979,
		0.827696, 0.440273, 0.347966,
		32.861439, 35.195374, 30.041906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787628, 34.288593, 29.845716>,  <32.282051, 34.887184, 29.798330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787628, 34.288593, 29.845716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934704, 34.579010, 30.078156>,  <33.022949, 34.753258, 30.217619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934704, 34.579010, 30.078156>,  <32.787628, 34.288593, 29.845716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934704, 34.579010, 30.078156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423017, -0.687058, 0.590769,
		0.828169, 0.028597, -0.559748,
		0.367686, 0.726039, 0.581097,
		33.045010, 34.796822, 30.252485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384472, 34.295013, 29.776224>,  <32.787628, 34.288593, 29.845716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384472, 34.295013, 29.776224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290852, 34.408524, 30.148178>,  <33.234680, 34.476631, 30.371351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290852, 34.408524, 30.148178>,  <33.384472, 34.295013, 29.776224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290852, 34.408524, 30.148178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487426, -0.793314, 0.364787,
		0.841210, 0.538630, 0.047357,
		-0.234054, 0.283779, 0.929886,
		33.220634, 34.493656, 30.427143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044861, 34.237492, 30.254772>,  <33.384472, 34.295013, 29.776224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044861, 34.237492, 30.254772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703415, 34.196968, 30.459156>,  <33.498547, 34.172653, 30.581787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703415, 34.196968, 30.459156>,  <34.044861, 34.237492, 30.254772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703415, 34.196968, 30.459156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366488, -0.813866, 0.450898,
		0.370175, 0.572154, 0.731854,
		-0.853614, -0.101304, 0.510960,
		33.447330, 34.166576, 30.612444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107933, 34.282001, 30.974859>,  <34.044861, 34.237492, 30.254772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107933, 34.282001, 30.974859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839169, 33.990467, 30.922186>,  <33.677910, 33.815548, 30.890581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839169, 33.990467, 30.922186>,  <34.107933, 34.282001, 30.974859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839169, 33.990467, 30.922186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639802, -0.660749, 0.392509,
		-0.373083, 0.179479, 0.910273,
		-0.671909, -0.728833, -0.131683,
		33.637596, 33.771816, 30.882681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656681, 33.846012, 30.727739>,  <34.107933, 34.282001, 30.974859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656681, 33.846012, 30.727739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888134, 34.170841, 30.757998>,  <35.027004, 34.365738, 30.776154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888134, 34.170841, 30.757998>,  <34.656681, 33.846012, 30.727739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888134, 34.170841, 30.757998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005065, -0.089172, 0.996003,
		0.815574, -0.576701, -0.047485,
		0.578631, 0.812074, 0.075648,
		35.061722, 34.414463, 30.780691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299450, 33.705563, 31.176748>,  <34.656681, 33.846012, 30.727739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299450, 33.705563, 31.176748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180267, 34.087395, 31.175978>,  <35.108757, 34.316494, 31.175516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180267, 34.087395, 31.175978>,  <35.299450, 33.705563, 31.176748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180267, 34.087395, 31.175978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226124, -0.068620, 0.971679,
		0.927410, 0.289954, 0.236299,
		-0.297957, 0.954577, -0.001927,
		35.090881, 34.373768, 31.175400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487335, 34.071709, 31.787781>,  <35.299450, 33.705563, 31.176748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487335, 34.071709, 31.787781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159748, 34.281887, 31.695513>,  <34.963196, 34.407993, 31.640152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159748, 34.281887, 31.695513>,  <35.487335, 34.071709, 31.787781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159748, 34.281887, 31.695513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188575, 0.133220, 0.972981,
		0.541974, 0.840336, -0.010017,
		-0.818965, 0.525441, -0.230668,
		34.914059, 34.439518, 31.626312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255222, 33.811115, 32.505711>,  <35.487335, 34.071709, 31.787781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255222, 33.811115, 32.505711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537910, 33.788864, 32.787834>,  <35.707523, 33.775513, 32.957108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537910, 33.788864, 32.787834>,  <35.255222, 33.811115, 32.505711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537910, 33.788864, 32.787834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671920, 0.259371, 0.693722,
		-0.221526, -0.964174, 0.145925,
		0.706718, -0.055628, 0.705305,
		35.749928, 33.772175, 32.999424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124107, 33.306946, 33.084511>,  <35.255222, 33.811115, 32.505711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124107, 33.306946, 33.084511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331165, 33.632118, 33.191235>,  <35.455399, 33.827221, 33.255268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331165, 33.632118, 33.191235>,  <35.124107, 33.306946, 33.084511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331165, 33.632118, 33.191235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796452, 0.343901, 0.497390,
		0.312588, -0.469971, 0.825479,
		0.517642, 0.812932, 0.266810,
		35.486458, 33.875999, 33.271278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000610, 33.384163, 33.743862>,  <35.124107, 33.306946, 33.084511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000610, 33.384163, 33.743862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107994, 33.749565, 33.621593>,  <35.172424, 33.968807, 33.548233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107994, 33.749565, 33.621593>,  <35.000610, 33.384163, 33.743862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107994, 33.749565, 33.621593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832076, 0.379788, 0.404240,
		0.485367, 0.145821, 0.862065,
		0.268455, 0.913508, -0.305671,
		35.188530, 34.023617, 33.529892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018814, 33.728657, 34.290977>,  <35.000610, 33.384163, 33.743862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018814, 33.728657, 34.290977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969833, 33.996445, 33.997906>,  <34.940445, 34.157116, 33.822063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969833, 33.996445, 33.997906>,  <35.018814, 33.728657, 34.290977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969833, 33.996445, 33.997906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874499, 0.276311, 0.398626,
		0.469315, 0.689541, 0.551613,
		-0.122452, 0.669466, -0.732680,
		34.933098, 34.197285, 33.778103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957939, 34.417362, 34.554085>,  <35.018814, 33.728657, 34.290977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957939, 34.417362, 34.554085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761356, 34.414398, 34.205734>,  <34.643406, 34.412621, 33.996723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761356, 34.414398, 34.205734>,  <34.957939, 34.417362, 34.554085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761356, 34.414398, 34.205734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864130, 0.128616, 0.486556,
		0.108404, 0.991667, -0.069609,
		-0.491454, -0.007407, -0.870872,
		34.613918, 34.412178, 33.944473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369919, 34.389477, 34.934792>,  <34.957939, 34.417362, 34.554085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369919, 34.389477, 34.934792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219837, 34.411556, 34.564674>,  <34.129787, 34.424805, 34.342602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219837, 34.411556, 34.564674>,  <34.369919, 34.389477, 34.934792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219837, 34.411556, 34.564674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922763, 0.072434, 0.378500,
		0.087917, 0.995844, 0.023761,
		-0.375206, 0.055202, -0.925296,
		34.107277, 34.428116, 34.287086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688522, 34.116604, 34.591194>,  <34.369919, 34.389477, 34.934792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688522, 34.116604, 34.591194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557625, 34.450703, 34.414436>,  <33.479084, 34.651161, 34.308380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557625, 34.450703, 34.414436>,  <33.688522, 34.116604, 34.591194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557625, 34.450703, 34.414436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787091, -0.017828, -0.616579,
		-0.522875, -0.549584, -0.651582,
		-0.327246, 0.835248, -0.441894,
		33.459450, 34.701279, 34.281868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633194, 33.943344, 33.948738>,  <33.688522, 34.116604, 34.591194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633194, 33.943344, 33.948738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706505, 34.335648, 33.975651>,  <33.750492, 34.571030, 33.991798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706505, 34.335648, 33.975651>,  <33.633194, 33.943344, 33.948738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706505, 34.335648, 33.975651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755024, -0.096599, -0.648542,
		-0.629562, 0.169665, -0.758199,
		0.183276, 0.980756, 0.067286,
		33.761486, 34.629875, 33.995838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789200, 34.156773, 33.311527>,  <33.633194, 33.943344, 33.948738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789200, 34.156773, 33.311527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949196, 34.442780, 33.540878>,  <34.045193, 34.614384, 33.678490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949196, 34.442780, 33.540878>,  <33.789200, 34.156773, 33.311527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949196, 34.442780, 33.540878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803260, 0.027771, -0.594980,
		-0.441342, 0.698559, -0.563234,
		0.399987, 0.715013, 0.573381,
		34.069191, 34.657284, 33.712894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098373, 34.655907, 32.893955>,  <33.789200, 34.156773, 33.311527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098373, 34.655907, 32.893955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282055, 34.680122, 33.248463>,  <34.392265, 34.694653, 33.461166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282055, 34.680122, 33.248463>,  <34.098373, 34.655907, 32.893955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282055, 34.680122, 33.248463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887867, -0.063480, -0.455700,
		0.028671, 0.996145, -0.082904,
		0.459206, 0.060542, 0.886264,
		34.419815, 34.698284, 33.514343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801044, 35.003109, 32.800709>,  <34.098373, 34.655907, 32.893955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801044, 35.003109, 32.800709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857864, 34.789135, 33.133854>,  <34.891956, 34.660751, 33.333740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857864, 34.789135, 33.133854>,  <34.801044, 35.003109, 32.800709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857864, 34.789135, 33.133854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923590, -0.231061, -0.305928,
		0.356094, 0.812685, 0.461237,
		0.142049, -0.534933, 0.832868,
		34.900478, 34.628654, 33.383713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471397, 35.192261, 33.072605>,  <34.801044, 35.003109, 32.800709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471397, 35.192261, 33.072605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384174, 34.832825, 33.224911>,  <35.331841, 34.617165, 33.316296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384174, 34.832825, 33.224911>,  <35.471397, 35.192261, 33.072605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384174, 34.832825, 33.224911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877186, -0.351480, -0.327118,
		0.427777, 0.262670, 0.864876,
		-0.218062, -0.898591, 0.380766,
		35.318756, 34.563248, 33.339142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181736, 34.940121, 33.450684>,  <35.471397, 35.192261, 33.072605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181736, 34.940121, 33.450684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938370, 34.632328, 33.372993>,  <35.792351, 34.447651, 33.326378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938370, 34.632328, 33.372993>,  <36.181736, 34.940121, 33.450684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938370, 34.632328, 33.372993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777108, -0.527990, -0.342535,
		0.161025, -0.359340, 0.919209,
		-0.608420, -0.769481, -0.194226,
		35.755844, 34.401485, 33.314724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515198, 34.386417, 33.765678>,  <36.181736, 34.940121, 33.450684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515198, 34.386417, 33.765678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281956, 34.297127, 33.453228>,  <36.142010, 34.243553, 33.265759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281956, 34.297127, 33.453228>,  <36.515198, 34.386417, 33.765678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281956, 34.297127, 33.453228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762030, -0.483573, -0.430660,
		-0.281593, -0.846359, 0.452085,
		-0.583109, -0.223232, -0.781122,
		36.107021, 34.230156, 33.218891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759220, 33.758125, 33.483723>,  <36.515198, 34.386417, 33.765678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759220, 33.758125, 33.483723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540493, 33.914341, 33.187489>,  <36.409256, 34.008072, 33.009747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540493, 33.914341, 33.187489>,  <36.759220, 33.758125, 33.483723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540493, 33.914341, 33.187489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560137, -0.486792, -0.670283,
		-0.622285, -0.781352, 0.047430,
		-0.546816, 0.390540, -0.740588,
		36.376450, 34.031502, 32.965313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454815, 33.277142, 33.027878>,  <36.759220, 33.758125, 33.483723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454815, 33.277142, 33.027878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468555, 33.603657, 32.797226>,  <36.476799, 33.799564, 32.658836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468555, 33.603657, 32.797226>,  <36.454815, 33.277142, 33.027878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468555, 33.603657, 32.797226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578982, -0.486538, -0.654263,
		-0.814616, -0.311383, -0.489327,
		0.034350, 0.816285, -0.576627,
		36.478859, 33.848541, 32.624237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242577, 33.032269, 32.376984>,  <36.454815, 33.277142, 33.027878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242577, 33.032269, 32.376984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449039, 33.372139, 32.333858>,  <36.572918, 33.576061, 32.307983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449039, 33.372139, 32.333858>,  <36.242577, 33.032269, 32.376984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449039, 33.372139, 32.333858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672417, -0.479968, -0.563458,
		-0.530505, 0.218341, -0.819080,
		0.516159, 0.849681, -0.107809,
		36.603886, 33.627045, 32.301517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246223, 33.175438, 31.659071>,  <36.242577, 33.032269, 32.376984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246223, 33.175438, 31.659071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565514, 33.376732, 31.791489>,  <36.757088, 33.497509, 31.870939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565514, 33.376732, 31.791489>,  <36.246223, 33.175438, 31.659071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565514, 33.376732, 31.791489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573326, -0.466172, -0.673782,
		-0.184743, 0.727629, -0.660626,
		0.798228, 0.503230, 0.331046,
		36.804981, 33.527702, 31.890802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620583, 33.243118, 31.079294>,  <36.246223, 33.175438, 31.659071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620583, 33.243118, 31.079294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883778, 33.324860, 31.369204>,  <37.041695, 33.373905, 31.543150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883778, 33.324860, 31.369204>,  <36.620583, 33.243118, 31.079294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883778, 33.324860, 31.369204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746976, -0.298920, -0.593863,
		0.095293, 0.932142, -0.349329,
		0.657986, 0.204350, 0.724773,
		37.081173, 33.386166, 31.586636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090698, 33.525677, 30.699507>,  <36.620583, 33.243118, 31.079294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090698, 33.525677, 30.699507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278175, 33.441288, 31.042627>,  <37.390663, 33.390656, 31.248499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278175, 33.441288, 31.042627>,  <37.090698, 33.525677, 30.699507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278175, 33.441288, 31.042627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779758, -0.357499, -0.513976,
		0.415096, 0.909773, -0.003052,
		0.468692, -0.210970, 0.857799,
		37.418781, 33.377998, 31.299967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697155, 33.901905, 30.618397>,  <37.090698, 33.525677, 30.699507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697155, 33.901905, 30.618397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741631, 33.601540, 30.878786>,  <37.768314, 33.421322, 31.035021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741631, 33.601540, 30.878786>,  <37.697155, 33.901905, 30.618397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741631, 33.601540, 30.878786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857778, -0.258266, -0.444426,
		0.501850, 0.607807, 0.615400,
		0.111188, -0.750912, 0.650975,
		37.774986, 33.376266, 31.074078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414589, 33.932560, 30.895966>,  <37.697155, 33.901905, 30.618397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414589, 33.932560, 30.895966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284859, 33.555622, 30.928957>,  <38.207020, 33.329460, 30.948751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284859, 33.555622, 30.928957>,  <38.414589, 33.932560, 30.895966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284859, 33.555622, 30.928957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796372, -0.319055, -0.513805,
		0.510496, -0.100956, 0.853933,
		-0.324324, -0.942344, 0.082478,
		38.187561, 33.272919, 30.953701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075821, 33.438614, 30.992977>,  <38.414589, 33.932560, 30.895966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075821, 33.438614, 30.992977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790138, 33.175808, 30.896446>,  <38.618729, 33.018124, 30.838528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790138, 33.175808, 30.896446>,  <39.075821, 33.438614, 30.992977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790138, 33.175808, 30.896446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613828, -0.422251, -0.667023,
		0.336344, -0.624525, 0.704869,
		-0.714204, -0.657018, -0.241330,
		38.575878, 32.978703, 30.824047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378277, 32.887352, 30.966034>,  <39.075821, 33.438614, 30.992977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378277, 32.887352, 30.966034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059547, 32.795746, 30.742380>,  <38.868309, 32.740784, 30.608189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059547, 32.795746, 30.742380>,  <39.378277, 32.887352, 30.966034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059547, 32.795746, 30.742380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583867, -0.529982, -0.614994,
		-0.155489, -0.816500, 0.556014,
		-0.796820, -0.229013, -0.559134,
		38.820503, 32.727043, 30.574640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364799, 32.178631, 30.812954>,  <39.378277, 32.887352, 30.966034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364799, 32.178631, 30.812954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134933, 32.330509, 30.522963>,  <38.997013, 32.421638, 30.348969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134933, 32.330509, 30.522963>,  <39.364799, 32.178631, 30.812954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134933, 32.330509, 30.522963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488775, -0.551279, -0.676159,
		-0.656403, -0.742913, 0.131211,
		-0.574661, 0.379700, -0.724978,
		38.962536, 32.444420, 30.305470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289982, 31.589924, 30.399935>,  <39.364799, 32.178631, 30.812954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289982, 31.589924, 30.399935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209045, 31.921358, 30.191126>,  <39.160484, 32.120220, 30.065840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209045, 31.921358, 30.191126>,  <39.289982, 31.589924, 30.399935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209045, 31.921358, 30.191126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276471, -0.463034, -0.842118,
		-0.939480, -0.314718, -0.135389,
		-0.202340, 0.828584, -0.522022,
		39.148342, 32.169933, 30.034519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002625, 31.355209, 29.870796>,  <39.289982, 31.589924, 30.399935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002625, 31.355209, 29.870796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101929, 31.726715, 29.760696>,  <39.161510, 31.949619, 29.694637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101929, 31.726715, 29.760696>,  <39.002625, 31.355209, 29.870796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101929, 31.726715, 29.760696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329108, -0.348114, -0.877784,
		-0.911073, 0.127335, -0.392087,
		0.248263, 0.928764, -0.275250,
		39.176407, 32.005344, 29.678122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789337, 31.359842, 29.221252>,  <39.002625, 31.355209, 29.870796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789337, 31.359842, 29.221252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060562, 31.651867, 29.255285>,  <39.223297, 31.827082, 29.275705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060562, 31.651867, 29.255285>,  <38.789337, 31.359842, 29.221252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060562, 31.651867, 29.255285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504499, -0.378104, -0.776220,
		-0.534520, 0.569249, -0.624695,
		0.678062, 0.730064, 0.085081,
		39.263981, 31.870886, 29.280809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728428, 31.763620, 28.555119>,  <38.789337, 31.359842, 29.221252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728428, 31.763620, 28.555119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101101, 31.815905, 28.690695>,  <39.324703, 31.847275, 28.772041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101101, 31.815905, 28.690695>,  <38.728428, 31.763620, 28.555119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101101, 31.815905, 28.690695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350895, -0.082339, -0.932788,
		-0.094016, 0.987996, -0.122579,
		0.931683, 0.130709, 0.338942,
		39.380608, 31.855118, 28.792377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972542, 32.188759, 28.097233>,  <38.728428, 31.763620, 28.555119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972542, 32.188759, 28.097233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292858, 32.024014, 28.271177>,  <39.485046, 31.925167, 28.375544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292858, 32.024014, 28.271177>,  <38.972542, 32.188759, 28.097233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292858, 32.024014, 28.271177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386830, -0.198659, -0.900498,
		0.457269, 0.889328, 0.000236,
		0.800792, -0.411861, 0.434859,
		39.533096, 31.900455, 28.401634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581463, 32.590199, 27.862144>,  <38.972542, 32.188759, 28.097233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581463, 32.590199, 27.862144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688747, 32.214973, 27.949877>,  <39.753120, 31.989840, 28.002516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688747, 32.214973, 27.949877>,  <39.581463, 32.590199, 27.862144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688747, 32.214973, 27.949877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197990, -0.169136, -0.965501,
		0.942794, 0.302387, 0.140361,
		0.268215, -0.938059, 0.219330,
		39.769211, 31.933556, 28.015676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004120, 32.395752, 27.309071>,  <39.581463, 32.590199, 27.862144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004120, 32.395752, 27.309071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001972, 32.037727, 27.487432>,  <40.000683, 31.822912, 27.594450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001972, 32.037727, 27.487432>,  <40.004120, 32.395752, 27.309071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001972, 32.037727, 27.487432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159246, -0.440986, -0.883274,
		0.987224, 0.066265, 0.144903,
		-0.005370, -0.895064, 0.445904,
		40.000362, 31.769209, 27.621204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588837, 32.005379, 26.992643>,  <40.004120, 32.395752, 27.309071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588837, 32.005379, 26.992643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321617, 31.741522, 27.130384>,  <40.161285, 31.583208, 27.213030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321617, 31.741522, 27.130384>,  <40.588837, 32.005379, 26.992643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321617, 31.741522, 27.130384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025193, -0.482553, -0.875504,
		0.743687, -0.576208, 0.338990,
		-0.668053, -0.659641, 0.344352,
		40.121201, 31.543629, 27.233690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857098, 31.227213, 26.862204>,  <40.588837, 32.005379, 26.992643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857098, 31.227213, 26.862204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464352, 31.168041, 26.909637>,  <40.228706, 31.132538, 26.938097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464352, 31.168041, 26.909637>,  <40.857098, 31.227213, 26.862204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464352, 31.168041, 26.909637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004802, -0.644668, -0.764447,
		0.189532, -0.750013, 0.633686,
		-0.981863, -0.147931, 0.118584,
		40.169792, 31.123663, 26.945213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682850, 30.419537, 26.860746>,  <40.857098, 31.227213, 26.862204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682850, 30.419537, 26.860746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322189, 30.585192, 26.810913>,  <40.105793, 30.684584, 26.781013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322189, 30.585192, 26.810913>,  <40.682850, 30.419537, 26.860746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322189, 30.585192, 26.810913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121381, -0.518835, -0.846213,
		-0.415087, -0.747864, 0.518075,
		-0.901648, 0.414137, -0.124585,
		40.051693, 30.709433, 26.773539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311306, 29.879675, 26.597713>,  <40.682850, 30.419537, 26.860746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311306, 29.879675, 26.597713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116337, 30.218590, 26.513311>,  <39.999355, 30.421938, 26.462671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116337, 30.218590, 26.513311>,  <40.311306, 29.879675, 26.597713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116337, 30.218590, 26.513311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233379, -0.359279, -0.903578,
		-0.841399, -0.391181, 0.372860,
		-0.487424, 0.847287, -0.211004,
		39.970108, 30.472776, 26.450010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643349, 29.716337, 26.236074>,  <40.311306, 29.879675, 26.597713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643349, 29.716337, 26.236074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730843, 30.090282, 26.124228>,  <39.783340, 30.314650, 26.057119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730843, 30.090282, 26.124228>,  <39.643349, 29.716337, 26.236074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730843, 30.090282, 26.124228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263330, -0.219373, -0.939432,
		-0.939581, 0.279120, 0.198192,
		0.218736, 0.934862, -0.279620,
		39.796463, 30.370741, 26.040342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051277, 30.077848, 25.945051>,  <39.643349, 29.716337, 26.236074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051277, 30.077848, 25.945051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372448, 30.248068, 25.778093>,  <39.565151, 30.350199, 25.677919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372448, 30.248068, 25.778093>,  <39.051277, 30.077848, 25.945051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372448, 30.248068, 25.778093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343039, -0.242773, -0.907406,
		-0.487477, 0.871763, -0.048949,
		0.802926, 0.425548, -0.417395,
		39.613327, 30.375732, 25.652874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818699, 30.212622, 25.305147>,  <39.051277, 30.077848, 25.945051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818699, 30.212622, 25.305147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204250, 30.311415, 25.265274>,  <39.435581, 30.370691, 25.241350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204250, 30.311415, 25.265274>,  <38.818699, 30.212622, 25.305147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204250, 30.311415, 25.265274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036255, -0.249118, -0.967794,
		-0.263862, 0.936450, -0.231165,
		0.963879, 0.246983, -0.099684,
		39.493416, 30.385509, 25.235369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893826, 30.531252, 24.730309>,  <38.818699, 30.212622, 25.305147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893826, 30.531252, 24.730309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285084, 30.452242, 24.756296>,  <39.519836, 30.404837, 24.771889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285084, 30.452242, 24.756296>,  <38.893826, 30.531252, 24.730309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285084, 30.452242, 24.756296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019966, -0.221793, -0.974889,
		0.206974, 0.954878, -0.213002,
		0.978143, -0.197524, 0.064971,
		39.578526, 30.392984, 24.775787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311768, 30.924620, 24.169764>,  <38.893826, 30.531252, 24.730309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311768, 30.924620, 24.169764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542194, 30.619511, 24.287294>,  <39.680450, 30.436445, 24.357813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542194, 30.619511, 24.287294>,  <39.311768, 30.924620, 24.169764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542194, 30.619511, 24.287294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245725, -0.181235, -0.952246,
		0.779597, 0.620754, 0.083029,
		0.576063, -0.762770, 0.293825,
		39.715012, 30.390680, 24.375443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731113, 30.850788, 23.640041>,  <39.311768, 30.924620, 24.169764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731113, 30.850788, 23.640041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832108, 30.503204, 23.810291>,  <39.892704, 30.294653, 23.912441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832108, 30.503204, 23.810291>,  <39.731113, 30.850788, 23.640041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832108, 30.503204, 23.810291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394649, -0.309147, -0.865263,
		0.883462, 0.386437, 0.264881,
		0.252483, -0.868962, 0.425626,
		39.907852, 30.242516, 23.937979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426792, 30.712341, 23.435081>,  <39.731113, 30.850788, 23.640041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426792, 30.712341, 23.435081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291767, 30.358326, 23.563305>,  <40.210751, 30.145916, 23.640240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291767, 30.358326, 23.563305>,  <40.426792, 30.712341, 23.435081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291767, 30.358326, 23.563305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388575, -0.441195, -0.808923,
		0.857357, -0.148501, 0.492834,
		-0.337562, -0.885039, 0.320558,
		40.190498, 30.092813, 23.659472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917011, 30.287331, 23.373133>,  <40.426792, 30.712341, 23.435081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917011, 30.287331, 23.373133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591965, 30.054293, 23.367056>,  <40.396935, 29.914469, 23.363411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591965, 30.054293, 23.367056>,  <40.917011, 30.287331, 23.373133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591965, 30.054293, 23.367056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316759, -0.419645, -0.850625,
		0.489196, -0.696046, 0.525554,
		-0.812620, -0.582597, -0.015190,
		40.348179, 29.879515, 23.362499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203743, 29.643484, 23.263895>,  <40.917011, 30.287331, 23.373133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203743, 29.643484, 23.263895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812477, 29.635281, 23.181160>,  <40.577717, 29.630360, 23.131519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812477, 29.635281, 23.181160>,  <41.203743, 29.643484, 23.263895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812477, 29.635281, 23.181160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198703, -0.384228, -0.901602,
		-0.060983, -0.923011, 0.379911,
		-0.978161, -0.020507, -0.206836,
		40.519028, 29.629129, 23.119108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138062, 28.953001, 23.001257>,  <41.203743, 29.643484, 23.263895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138062, 28.953001, 23.001257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826931, 29.162006, 22.861559>,  <40.640255, 29.287409, 22.777740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826931, 29.162006, 22.861559>,  <41.138062, 28.953001, 23.001257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826931, 29.162006, 22.861559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172216, -0.357227, -0.918004,
		-0.604428, -0.774190, 0.187874,
		-0.777823, 0.522512, -0.349246,
		40.593582, 29.318760, 22.756784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896217, 28.515701, 22.613022>,  <41.138062, 28.953001, 23.001257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896217, 28.515701, 22.613022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721771, 28.849930, 22.479383>,  <40.617104, 29.050467, 22.399200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721771, 28.849930, 22.479383>,  <40.896217, 28.515701, 22.613022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721771, 28.849930, 22.479383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164063, -0.291211, -0.942486,
		-0.884808, -0.465847, -0.010085,
		-0.436117, 0.835574, -0.334094,
		40.590935, 29.100601, 22.379156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684601, 28.337612, 21.987232>,  <40.896217, 28.515701, 22.613022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684601, 28.337612, 21.987232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671261, 28.734446, 21.938803>,  <40.663258, 28.972546, 21.909746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671261, 28.734446, 21.938803>,  <40.684601, 28.337612, 21.987232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671261, 28.734446, 21.938803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396682, -0.098051, -0.912704,
		-0.917350, -0.078466, -0.390272,
		-0.033350, 0.992083, -0.121073,
		40.661255, 29.032070, 21.902481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501583, 28.482058, 21.220261>,  <40.684601, 28.337612, 21.987232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501583, 28.482058, 21.220261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681751, 28.808104, 21.365978>,  <40.789852, 29.003731, 21.453409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681751, 28.808104, 21.365978>,  <40.501583, 28.482058, 21.220261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681751, 28.808104, 21.365978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378179, 0.195432, -0.904868,
		-0.808767, 0.545338, -0.220233,
		0.450419, 0.815115, 0.364294,
		40.816875, 29.052639, 21.475267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266582, 28.976824, 20.831156>,  <40.501583, 28.482058, 21.220261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266582, 28.976824, 20.831156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588917, 29.158491, 20.983135>,  <40.782318, 29.267492, 21.074324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588917, 29.158491, 20.983135>,  <40.266582, 28.976824, 20.831156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588917, 29.158491, 20.983135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273098, 0.284277, -0.919023,
		-0.525403, 0.844344, 0.105048,
		0.805834, 0.454170, 0.379949,
		40.830666, 29.294743, 21.097120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223183, 29.645840, 20.473146>,  <40.266582, 28.976824, 20.831156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223183, 29.645840, 20.473146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590038, 29.588533, 20.621918>,  <40.810150, 29.554150, 20.711182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590038, 29.588533, 20.621918>,  <40.223183, 29.645840, 20.473146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590038, 29.588533, 20.621918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396288, 0.427459, -0.812548,
		-0.042576, 0.892611, 0.448814,
		0.917139, -0.143265, 0.371930,
		40.865181, 29.545553, 20.733498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515915, 30.347120, 20.616606>,  <40.223183, 29.645840, 20.473146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515915, 30.347120, 20.616606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803055, 30.073256, 20.566130>,  <40.975338, 29.908937, 20.535843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803055, 30.073256, 20.566130>,  <40.515915, 30.347120, 20.616606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803055, 30.073256, 20.566130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372895, 0.531195, -0.760777,
		0.587908, 0.499070, 0.636627,
		0.717853, -0.684662, -0.126192,
		41.018410, 29.867857, 20.528273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127434, 30.736818, 20.612869>,  <40.515915, 30.347120, 20.616606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127434, 30.736818, 20.612869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155621, 30.393690, 20.409231>,  <41.172531, 30.187813, 20.287048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155621, 30.393690, 20.409231>,  <41.127434, 30.736818, 20.612869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155621, 30.393690, 20.409231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512813, 0.468909, -0.719129,
		0.855603, -0.210396, 0.472944,
		0.070466, -0.857821, -0.509094,
		41.176762, 30.136343, 20.256502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710342, 30.768143, 20.279694>,  <41.127434, 30.736818, 20.612869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710342, 30.768143, 20.279694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521797, 30.489290, 20.063610>,  <41.408669, 30.321980, 19.933960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521797, 30.489290, 20.063610>,  <41.710342, 30.768143, 20.279694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521797, 30.489290, 20.063610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418373, 0.362471, -0.832814,
		0.776390, -0.618567, 0.120805,
		-0.471363, -0.697130, -0.540210,
		41.380390, 30.280151, 19.901546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099884, 30.805676, 19.686539>,  <41.710342, 30.768143, 20.279694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099884, 30.805676, 19.686539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826862, 30.545437, 19.553364>,  <41.663048, 30.389294, 19.473459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826862, 30.545437, 19.553364>,  <42.099884, 30.805676, 19.686539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826862, 30.545437, 19.553364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298547, 0.167602, -0.939563,
		0.667077, -0.740699, 0.079836,
		-0.682553, -0.650596, -0.332937,
		41.622097, 30.350258, 19.453484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459084, 30.327108, 19.283234>,  <42.099884, 30.805676, 19.686539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459084, 30.327108, 19.283234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070179, 30.328209, 19.189684>,  <41.836834, 30.328869, 19.133554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070179, 30.328209, 19.189684>,  <42.459084, 30.327108, 19.283234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070179, 30.328209, 19.189684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232972, 0.099902, -0.967338,
		0.020702, -0.994993, -0.097772,
		-0.972263, 0.002752, -0.233874,
		41.778500, 30.329035, 19.119522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358696, 29.919403, 18.656658>,  <42.459084, 30.327108, 19.283234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358696, 29.919403, 18.656658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033859, 30.152744, 18.662407>,  <41.838959, 30.292749, 18.665855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033859, 30.152744, 18.662407>,  <42.358696, 29.919403, 18.656658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033859, 30.152744, 18.662407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220101, 0.329025, -0.918312,
		-0.540429, -0.742590, -0.395595,
		-0.812091, 0.583354, 0.014370,
		41.790234, 30.327751, 18.666718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851692, 29.891953, 18.037642>,  <42.358696, 29.919403, 18.656658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851692, 29.891953, 18.037642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899822, 30.236908, 18.234337>,  <41.928699, 30.443882, 18.352354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899822, 30.236908, 18.234337>,  <41.851692, 29.891953, 18.037642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899822, 30.236908, 18.234337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366284, 0.421819, -0.829400,
		-0.922690, 0.279914, -0.265124,
		0.120326, 0.862390, 0.491737,
		41.935921, 30.495625, 18.381857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638443, 30.493296, 17.675131>,  <41.851692, 29.891953, 18.037642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638443, 30.493296, 17.675131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894112, 30.650812, 17.939369>,  <42.047512, 30.745321, 18.097912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894112, 30.650812, 17.939369>,  <41.638443, 30.493296, 17.675131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894112, 30.650812, 17.939369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489612, 0.454045, -0.744394,
		-0.593076, 0.799232, 0.097408,
		0.639171, 0.393790, 0.660598,
		42.085861, 30.768950, 18.137548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666588, 31.156311, 17.524750>,  <41.638443, 30.493296, 17.675131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666588, 31.156311, 17.524750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000050, 31.079231, 17.731783>,  <42.200127, 31.032984, 17.856003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000050, 31.079231, 17.731783>,  <41.666588, 31.156311, 17.524750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000050, 31.079231, 17.731783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549975, 0.375370, -0.746073,
		-0.050516, 0.906622, 0.418908,
		0.833652, -0.192701, 0.517582,
		42.250145, 31.021421, 17.887058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044991, 31.783453, 17.445745>,  <41.666588, 31.156311, 17.524750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044991, 31.783453, 17.445745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266720, 31.465683, 17.545033>,  <42.399757, 31.275021, 17.604605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266720, 31.465683, 17.545033>,  <42.044991, 31.783453, 17.445745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266720, 31.465683, 17.545033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701951, 0.285992, -0.652283,
		0.447202, 0.535814, 0.716180,
		0.554324, -0.794426, 0.248219,
		42.433018, 31.227356, 17.619497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772549, 31.997009, 17.579620>,  <42.044991, 31.783453, 17.445745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772549, 31.997009, 17.579620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843719, 31.616850, 17.477573>,  <42.886421, 31.388754, 17.416346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843719, 31.616850, 17.477573>,  <42.772549, 31.997009, 17.579620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843719, 31.616850, 17.477573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705655, 0.303924, -0.640063,
		0.685852, -0.066141, 0.724730,
		0.177929, -0.950398, -0.255120,
		42.897099, 31.331730, 17.401037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342800, 32.417679, 17.174883>,  <42.772549, 31.997009, 17.579620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342800, 32.417679, 17.174883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261383, 32.283077, 16.807114>,  <42.212532, 32.202316, 16.586452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261383, 32.283077, 16.807114>,  <42.342800, 32.417679, 17.174883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261383, 32.283077, 16.807114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971584, -0.046455, 0.232092,
		-0.120812, 0.940536, -0.317484,
		-0.203542, -0.336501, -0.919423,
		42.200321, 32.182125, 16.531286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638615, 32.300491, 17.166166>,  <42.342800, 32.417679, 17.174883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638615, 32.300491, 17.166166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670074, 32.178291, 16.786591>,  <41.688950, 32.104969, 16.558846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670074, 32.178291, 16.786591>,  <41.638615, 32.300491, 17.166166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670074, 32.178291, 16.786591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990070, -0.135190, -0.038532,
		-0.116515, 0.942545, -0.313103,
		0.078647, -0.305504, -0.948937,
		41.693668, 32.086639, 16.501909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211292, 32.674118, 16.749557>,  <41.638615, 32.300491, 17.166166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211292, 32.674118, 16.749557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265945, 32.296684, 16.628908>,  <41.298737, 32.070225, 16.556519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265945, 32.296684, 16.628908>,  <41.211292, 32.674118, 16.749557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265945, 32.296684, 16.628908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987675, -0.153225, 0.031929,
		-0.076344, 0.293541, -0.952893,
		0.136634, -0.943587, -0.301621,
		41.306934, 32.013607, 16.538422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672203, 32.751881, 17.261791>,  <41.211292, 32.674118, 16.749557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672203, 32.751881, 17.261791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444824, 32.467453, 17.427317>,  <40.308395, 32.296795, 17.526632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444824, 32.467453, 17.427317>,  <40.672203, 32.751881, 17.261791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444824, 32.467453, 17.427317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012889, 0.510616, 0.859712,
		-0.822617, 0.483370, -0.299425,
		-0.568450, -0.711073, 0.413812,
		40.274288, 32.254131, 17.551460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000763, 32.997478, 17.517460>,  <40.672203, 32.751881, 17.261791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000763, 32.997478, 17.517460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055252, 32.652657, 17.712729>,  <40.087944, 32.445763, 17.829889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055252, 32.652657, 17.712729>,  <40.000763, 32.997478, 17.517460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055252, 32.652657, 17.712729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228741, 0.452081, 0.862149,
		-0.963909, -0.229110, -0.135602,
		0.136224, -0.862051, 0.488172,
		40.096119, 32.394043, 17.859180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506268, 33.053005, 18.164343>,  <40.000763, 32.997478, 17.517460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506268, 33.053005, 18.164343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773884, 32.763058, 18.230009>,  <39.934452, 32.589088, 18.269409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773884, 32.763058, 18.230009>,  <39.506268, 33.053005, 18.164343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773884, 32.763058, 18.230009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052448, 0.266377, 0.962441,
		-0.741373, -0.635301, 0.216235,
		0.669040, -0.724869, 0.164165,
		39.974594, 32.545597, 18.279259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240486, 32.633781, 18.779083>,  <39.506268, 33.053005, 18.164343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240486, 32.633781, 18.779083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637039, 32.620472, 18.728413>,  <39.874973, 32.612488, 18.698009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637039, 32.620472, 18.728413>,  <39.240486, 32.633781, 18.779083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637039, 32.620472, 18.728413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130913, 0.281730, 0.950521,
		0.004061, -0.958916, 0.283659,
		0.991386, -0.033275, -0.126679,
		39.934456, 32.610489, 18.690409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487415, 32.245636, 19.273411>,  <39.240486, 32.633781, 18.779083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487415, 32.245636, 19.273411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818932, 32.446156, 19.173964>,  <40.017841, 32.566467, 19.114296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818932, 32.446156, 19.173964>,  <39.487415, 32.245636, 19.273411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818932, 32.446156, 19.173964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164569, 0.206287, 0.964553,
		0.534813, -0.840326, 0.088471,
		0.828789, 0.501296, -0.248617,
		40.067570, 32.596546, 19.099379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987339, 32.065308, 19.765701>,  <39.487415, 32.245636, 19.273411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987339, 32.065308, 19.765701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129139, 32.420742, 19.649258>,  <40.214218, 32.634003, 19.579391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129139, 32.420742, 19.649258>,  <39.987339, 32.065308, 19.765701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129139, 32.420742, 19.649258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263868, 0.203608, 0.942824,
		0.897054, -0.411042, -0.162291,
		0.354497, 0.888587, -0.291109,
		40.235489, 32.687317, 19.561926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674923, 32.280365, 20.164322>,  <39.987339, 32.065308, 19.765701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674923, 32.280365, 20.164322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542801, 32.629601, 20.020870>,  <40.463528, 32.839142, 19.934799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542801, 32.629601, 20.020870>,  <40.674923, 32.280365, 20.164322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542801, 32.629601, 20.020870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159351, 0.426081, 0.890541,
		0.930327, 0.237000, -0.279864,
		-0.330303, 0.873090, -0.358628,
		40.443710, 32.891529, 19.913282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154831, 32.858719, 20.368519>,  <40.674923, 32.280365, 20.164322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154831, 32.858719, 20.368519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827682, 33.063995, 20.264423>,  <40.631393, 33.187160, 20.201967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827682, 33.063995, 20.264423>,  <41.154831, 32.858719, 20.368519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827682, 33.063995, 20.264423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029195, 0.488698, 0.871964,
		0.574660, 0.705557, -0.414675,
		-0.817871, 0.513190, -0.260237,
		40.582321, 33.217953, 20.186352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247959, 33.512447, 20.697132>,  <41.154831, 32.858719, 20.368519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247959, 33.512447, 20.697132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859249, 33.492584, 20.604885>,  <40.626022, 33.480667, 20.549538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859249, 33.492584, 20.604885>,  <41.247959, 33.512447, 20.697132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859249, 33.492584, 20.604885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223758, 0.503650, 0.834427,
		0.074714, 0.862479, -0.500547,
		-0.971777, -0.049658, -0.230616,
		40.567715, 33.477688, 20.535700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054047, 34.271069, 20.715996>,  <41.247959, 33.512447, 20.697132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054047, 34.271069, 20.715996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778702, 33.985882, 20.769424>,  <40.613495, 33.814770, 20.801481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778702, 33.985882, 20.769424>,  <41.054047, 34.271069, 20.715996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778702, 33.985882, 20.769424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176296, 0.343064, 0.922619,
		-0.703617, 0.611548, -0.361845,
		-0.688362, -0.712963, 0.133572,
		40.572193, 33.771992, 20.809496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792652, 34.565922, 21.239357>,  <41.054047, 34.271069, 20.715996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792652, 34.565922, 21.239357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616280, 34.206924, 21.243217>,  <40.510456, 33.991528, 21.245535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616280, 34.206924, 21.243217>,  <40.792652, 34.565922, 21.239357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616280, 34.206924, 21.243217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274452, 0.145060, 0.950597,
		-0.854551, 0.416496, -0.310279,
		-0.440929, -0.897490, 0.009652,
		40.484001, 33.937679, 21.246113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207588, 34.731922, 21.623756>,  <40.792652, 34.565922, 21.239357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207588, 34.731922, 21.623756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248859, 34.334873, 21.649250>,  <40.273621, 34.096645, 21.664547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248859, 34.334873, 21.649250>,  <40.207588, 34.731922, 21.623756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248859, 34.334873, 21.649250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226855, 0.038905, 0.973151,
		-0.968448, -0.114867, -0.221166,
		0.103178, -0.992619, 0.063736,
		40.279812, 34.037086, 21.668371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689423, 34.493549, 21.971230>,  <40.207588, 34.731922, 21.623756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689423, 34.493549, 21.971230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972366, 34.216331, 22.026833>,  <40.142132, 34.049999, 22.060194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972366, 34.216331, 22.026833>,  <39.689423, 34.493549, 21.971230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972366, 34.216331, 22.026833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173571, 0.020333, 0.984611,
		-0.685209, -0.720605, -0.105911,
		0.707363, -0.693047, 0.139009,
		40.184574, 34.008419, 22.068535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440926, 34.111111, 22.430391>,  <39.689423, 34.493549, 21.971230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440926, 34.111111, 22.430391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831680, 34.025902, 22.437469>,  <40.066132, 33.974777, 22.441717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831680, 34.025902, 22.437469>,  <39.440926, 34.111111, 22.430391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831680, 34.025902, 22.437469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022597, -0.020587, 0.999533,
		-0.212563, -0.976829, -0.024925,
		0.976886, -0.213027, 0.017698,
		40.124744, 33.961994, 22.442780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488953, 33.565495, 22.877132>,  <39.440926, 34.111111, 22.430391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488953, 33.565495, 22.877132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845509, 33.745640, 22.856770>,  <40.059444, 33.853725, 22.844551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845509, 33.745640, 22.856770>,  <39.488953, 33.565495, 22.877132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845509, 33.745640, 22.856770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110648, -0.107319, 0.988048,
		0.439515, -0.886373, -0.145495,
		0.891394, 0.450361, -0.050907,
		40.112926, 33.880749, 22.841497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839714, 33.160126, 23.345661>,  <39.488953, 33.565495, 22.877132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839714, 33.160126, 23.345661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022758, 33.512123, 23.294741>,  <40.132587, 33.723320, 23.264189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022758, 33.512123, 23.294741>,  <39.839714, 33.160126, 23.345661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022758, 33.512123, 23.294741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100208, 0.091218, 0.990776,
		0.883486, -0.466150, -0.046440,
		0.457614, 0.879991, -0.127302,
		40.160042, 33.776119, 23.256550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417320, 33.023727, 23.672182>,  <39.839714, 33.160126, 23.345661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417320, 33.023727, 23.672182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367264, 33.417194, 23.620443>,  <40.337231, 33.653275, 23.589399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367264, 33.417194, 23.620443>,  <40.417320, 33.023727, 23.672182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367264, 33.417194, 23.620443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028521, 0.133884, 0.990586,
		0.991729, 0.120269, -0.044809,
		-0.125137, 0.983672, -0.129346,
		40.329723, 33.712296, 23.581640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962265, 33.376770, 24.028831>,  <40.417320, 33.023727, 23.672182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962265, 33.376770, 24.028831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635189, 33.605396, 24.001442>,  <40.438942, 33.742573, 23.985008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635189, 33.605396, 24.001442>,  <40.962265, 33.376770, 24.028831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635189, 33.605396, 24.001442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006594, 0.128246, 0.991720,
		0.575619, 0.810470, -0.108635,
		-0.817691, 0.571570, -0.068476,
		40.389881, 33.776867, 23.980900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049751, 34.019405, 24.501795>,  <40.962265, 33.376770, 24.028831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049751, 34.019405, 24.501795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657948, 33.971737, 24.436855>,  <40.422867, 33.943134, 24.397892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657948, 33.971737, 24.436855>,  <41.049751, 34.019405, 24.501795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657948, 33.971737, 24.436855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156685, -0.055529, 0.986086,
		-0.126528, 0.991320, 0.035719,
		-0.979510, -0.119171, -0.162351,
		40.364094, 33.935986, 24.388149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786911, 34.200623, 25.151340>,  <41.049751, 34.019405, 24.501795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786911, 34.200623, 25.151340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445415, 34.069077, 24.989862>,  <40.240517, 33.990147, 24.892975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445415, 34.069077, 24.989862>,  <40.786911, 34.200623, 25.151340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445415, 34.069077, 24.989862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427712, 0.000761, 0.903915,
		-0.296961, 0.944376, -0.141311,
		-0.853743, -0.328868, -0.403695,
		40.189293, 33.970417, 24.868753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321568, 34.487869, 25.551424>,  <40.786911, 34.200623, 25.151340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321568, 34.487869, 25.551424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108681, 34.190388, 25.389608>,  <39.980949, 34.011898, 25.292519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108681, 34.190388, 25.389608>,  <40.321568, 34.487869, 25.551424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108681, 34.190388, 25.389608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441649, -0.163770, 0.882114,
		-0.722280, 0.648143, -0.241294,
		-0.532219, -0.743701, -0.404540,
		39.949017, 33.967278, 25.268246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654716, 34.532677, 25.752724>,  <40.321568, 34.487869, 25.551424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654716, 34.532677, 25.752724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670380, 34.142799, 25.664684>,  <39.679779, 33.908875, 25.611860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670380, 34.142799, 25.664684>,  <39.654716, 34.532677, 25.752724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670380, 34.142799, 25.664684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439504, -0.214616, 0.872225,
		-0.897387, 0.062580, -0.436784,
		0.039157, -0.974692, -0.220097,
		39.682125, 33.850391, 25.598656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950523, 34.381256, 25.759304>,  <39.654716, 34.532677, 25.752724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950523, 34.381256, 25.759304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150490, 34.036629, 25.794598>,  <39.270470, 33.829853, 25.815773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150490, 34.036629, 25.794598>,  <38.950523, 34.381256, 25.759304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150490, 34.036629, 25.794598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553392, -0.239398, 0.797776,
		-0.666216, -0.447647, -0.596464,
		0.499914, -0.861569, 0.088233,
		39.300465, 33.778156, 25.821068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511921, 33.883621, 25.774376>,  <38.950523, 34.381256, 25.759304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511921, 33.883621, 25.774376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837173, 33.741570, 25.958857>,  <39.032326, 33.656338, 26.069544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837173, 33.741570, 25.958857>,  <38.511921, 33.883621, 25.774376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837173, 33.741570, 25.958857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573568, -0.353806, 0.738810,
		-0.099196, -0.865278, -0.491380,
		0.813130, -0.355127, 0.461200,
		39.081112, 33.635033, 26.097216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290646, 33.377033, 26.271940>,  <38.511921, 33.883621, 25.774376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290646, 33.377033, 26.271940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654732, 33.429104, 26.429195>,  <38.873184, 33.460346, 26.523548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654732, 33.429104, 26.429195>,  <38.290646, 33.377033, 26.271940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654732, 33.429104, 26.429195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389239, -0.055241, 0.919479,
		0.141415, -0.989950, 0.000390,
		0.910217, 0.130180, 0.393140,
		38.927795, 33.468159, 26.547138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334229, 32.909824, 26.913080>,  <38.290646, 33.377033, 26.271940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334229, 32.909824, 26.913080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633018, 33.175533, 26.924175>,  <38.812294, 33.334961, 26.930832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633018, 33.175533, 26.924175>,  <38.334229, 32.909824, 26.913080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633018, 33.175533, 26.924175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167660, 0.147831, 0.974698,
		0.643366, -0.732725, 0.221798,
		0.746974, 0.664274, 0.027739,
		38.857109, 33.374817, 26.932497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624397, 32.828426, 27.598885>,  <38.334229, 32.909824, 26.913080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624397, 32.828426, 27.598885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751213, 33.194405, 27.499001>,  <38.827301, 33.413994, 27.439070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751213, 33.194405, 27.499001>,  <38.624397, 32.828426, 27.598885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751213, 33.194405, 27.499001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234572, 0.330759, 0.914098,
		0.918946, -0.231231, 0.319485,
		0.317040, 0.914949, -0.249709,
		38.846325, 33.468887, 27.424088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942223, 33.034328, 28.186680>,  <38.624397, 32.828426, 27.598885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942223, 33.034328, 28.186680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898300, 33.373112, 27.978601>,  <38.871948, 33.576382, 27.853754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898300, 33.373112, 27.978601>,  <38.942223, 33.034328, 28.186680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898300, 33.373112, 27.978601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038184, 0.526570, 0.849274,
		0.993219, 0.073393, -0.090161,
		-0.109807, 0.846958, -0.520197,
		38.865356, 33.627197, 27.822542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437313, 33.596386, 28.419643>,  <38.942223, 33.034328, 28.186680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437313, 33.596386, 28.419643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132332, 33.797512, 28.256752>,  <38.949341, 33.918190, 28.159018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132332, 33.797512, 28.256752>,  <39.437313, 33.596386, 28.419643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132332, 33.797512, 28.256752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110808, 0.518604, 0.847804,
		0.637481, 0.691537, -0.339697,
		-0.762456, 0.502818, -0.407228,
		38.903595, 33.948357, 28.134584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535244, 34.146854, 28.840389>,  <39.437313, 33.596386, 28.419643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535244, 34.146854, 28.840389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197170, 34.207649, 28.635424>,  <38.994328, 34.244125, 28.512445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197170, 34.207649, 28.635424>,  <39.535244, 34.146854, 28.840389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197170, 34.207649, 28.635424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322533, 0.619445, 0.715724,
		0.426192, 0.770187, -0.474523,
		-0.845182, 0.151987, -0.512413,
		38.943615, 34.253246, 28.481699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457260, 34.950909, 28.631329>,  <39.535244, 34.146854, 28.840389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457260, 34.950909, 28.631329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124588, 34.736523, 28.689365>,  <38.924984, 34.607891, 28.724188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124588, 34.736523, 28.689365>,  <39.457260, 34.950909, 28.631329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124588, 34.736523, 28.689365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333629, 0.691231, 0.641008,
		-0.443852, 0.484705, -0.753695,
		-0.831677, -0.535967, 0.145093,
		38.875084, 34.575733, 28.732893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972256, 35.500858, 28.649202>,  <39.457260, 34.950909, 28.631329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972256, 35.500858, 28.649202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795475, 35.182899, 28.815489>,  <38.689407, 34.992126, 28.915260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795475, 35.182899, 28.815489>,  <38.972256, 35.500858, 28.649202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795475, 35.182899, 28.815489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513963, 0.604211, 0.608910,
		-0.735199, 0.055447, -0.675580,
		-0.441955, -0.794893, 0.415717,
		38.662888, 34.944431, 28.940205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326744, 35.663963, 28.579218>,  <38.972256, 35.500858, 28.649202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326744, 35.663963, 28.579218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315262, 35.377819, 28.858484>,  <38.308372, 35.206131, 29.026043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315262, 35.377819, 28.858484>,  <38.326744, 35.663963, 28.579218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315262, 35.377819, 28.858484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641488, 0.548836, 0.535979,
		-0.766596, -0.432478, -0.474651,
		-0.028706, -0.715362, 0.698165,
		38.306648, 35.163212, 29.067934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624420, 35.595436, 28.628239>,  <38.326744, 35.663963, 28.579218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624420, 35.595436, 28.628239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817291, 35.471832, 28.956146>,  <37.933014, 35.397671, 29.152891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817291, 35.471832, 28.956146>,  <37.624420, 35.595436, 28.628239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817291, 35.471832, 28.956146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665545, 0.479286, 0.572132,
		-0.569697, -0.821461, 0.025441,
		0.482177, -0.309010, 0.819767,
		37.961945, 35.379128, 29.202076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995018, 35.592846, 29.064402>,  <37.624420, 35.595436, 28.628239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995018, 35.592846, 29.064402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323284, 35.574993, 29.292267>,  <37.520245, 35.564281, 29.428986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323284, 35.574993, 29.292267>,  <36.995018, 35.592846, 29.064402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323284, 35.574993, 29.292267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489151, 0.460455, 0.740751,
		-0.295362, -0.886561, 0.356050,
		0.820665, -0.044627, 0.569663,
		37.569485, 35.561604, 29.463165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763321, 35.252979, 29.763168>,  <36.995018, 35.592846, 29.064402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763321, 35.252979, 29.763168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104538, 35.453682, 29.820509>,  <37.309269, 35.574104, 29.854914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104538, 35.453682, 29.820509>,  <36.763321, 35.252979, 29.763168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104538, 35.453682, 29.820509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308098, 0.262561, 0.914406,
		0.421173, -0.824197, 0.378567,
		0.853047, 0.501759, 0.143350,
		37.360451, 35.604210, 29.863514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942863, 35.173710, 30.493856>,  <36.763321, 35.252979, 29.763168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942863, 35.173710, 30.493856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165897, 35.490334, 30.393829>,  <37.299717, 35.680305, 30.333813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165897, 35.490334, 30.393829>,  <36.942863, 35.173710, 30.493856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165897, 35.490334, 30.393829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261370, 0.453326, 0.852163,
		0.787897, -0.409796, 0.459658,
		0.557588, 0.791557, -0.250066,
		37.333172, 35.727802, 30.318810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345085, 35.292286, 31.125137>,  <36.942863, 35.173710, 30.493856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345085, 35.292286, 31.125137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321735, 35.636192, 30.922201>,  <37.307728, 35.842537, 30.800440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321735, 35.636192, 30.922201>,  <37.345085, 35.292286, 31.125137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321735, 35.636192, 30.922201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209586, 0.486326, 0.848269,
		0.976046, 0.155846, 0.151808,
		-0.058371, 0.859767, -0.507339,
		37.304226, 35.894123, 30.769999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758945, 35.756840, 31.509907>,  <37.345085, 35.292286, 31.125137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758945, 35.756840, 31.509907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547741, 36.002651, 31.275452>,  <37.421017, 36.150139, 31.134779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547741, 36.002651, 31.275452>,  <37.758945, 35.756840, 31.509907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547741, 36.002651, 31.275452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009204, 0.686011, 0.727533,
		0.849187, 0.389540, -0.356565,
		-0.528011, 0.614530, -0.586137,
		37.389339, 36.187012, 31.099611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007095, 36.248161, 31.804522>,  <37.758945, 35.756840, 31.509907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007095, 36.248161, 31.804522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685040, 36.377865, 31.605883>,  <37.491806, 36.455688, 31.486698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685040, 36.377865, 31.605883>,  <38.007095, 36.248161, 31.804522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685040, 36.377865, 31.605883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100475, 0.750631, 0.653038,
		0.584518, 0.575680, -0.571780,
		-0.805136, 0.324263, -0.496598,
		37.443501, 36.475143, 31.456903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019978, 36.962593, 31.463001>,  <38.007095, 36.248161, 31.804522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019978, 36.962593, 31.463001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647327, 36.876965, 31.580471>,  <37.423737, 36.825588, 31.650953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647327, 36.876965, 31.580471>,  <38.019978, 36.962593, 31.463001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647327, 36.876965, 31.580471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007628, 0.796396, 0.604728,
		-0.363336, 0.565621, -0.740311,
		-0.931627, -0.214072, 0.293674,
		37.367840, 36.812744, 31.668573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183483, 37.546318, 30.996544>,  <38.019978, 36.962593, 31.463001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183483, 37.546318, 30.996544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534447, 37.670029, 31.143244>,  <38.745026, 37.744255, 31.231264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534447, 37.670029, 31.143244>,  <38.183483, 37.546318, 30.996544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534447, 37.670029, 31.143244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352063, 0.104223, -0.930155,
		-0.325901, 0.945243, -0.017439,
		0.877405, 0.309278, 0.366752,
		38.797668, 37.762814, 31.253269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264782, 38.145145, 30.738955>,  <38.183483, 37.546318, 30.996544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264782, 38.145145, 30.738955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645874, 38.057777, 30.823425>,  <38.874531, 38.005356, 30.874107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645874, 38.057777, 30.823425>,  <38.264782, 38.145145, 30.738955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645874, 38.057777, 30.823425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242002, 0.125361, -0.962143,
		0.183675, 0.967770, 0.172293,
		0.952732, -0.218417, 0.211176,
		38.931694, 37.992252, 30.886778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721756, 38.572796, 30.379313>,  <38.264782, 38.145145, 30.738955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721756, 38.572796, 30.379313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960194, 38.258305, 30.444452>,  <39.103256, 38.069611, 30.483536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960194, 38.258305, 30.444452>,  <38.721756, 38.572796, 30.379313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960194, 38.258305, 30.444452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516150, 0.219875, -0.827794,
		0.615026, 0.577500, 0.536877,
		0.596097, -0.786225, 0.162848,
		39.139023, 38.022438, 30.493307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424290, 38.847229, 30.158863>,  <38.721756, 38.572796, 30.379313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424290, 38.847229, 30.158863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450871, 38.448116, 30.159941>,  <39.466820, 38.208649, 30.160587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450871, 38.448116, 30.159941>,  <39.424290, 38.847229, 30.158863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450871, 38.448116, 30.159941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469904, 0.028914, -0.882244,
		0.880213, 0.059895, 0.470785,
		0.066454, -0.997786, 0.002694,
		39.470806, 38.148781, 30.160749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010822, 38.715843, 29.903263>,  <39.424290, 38.847229, 30.158863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010822, 38.715843, 29.903263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838432, 38.363930, 29.823013>,  <39.734997, 38.152782, 29.774864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838432, 38.363930, 29.823013>,  <40.010822, 38.715843, 29.903263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838432, 38.363930, 29.823013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514006, -0.056613, -0.855916,
		0.741660, -0.471999, 0.476611,
		-0.430974, -0.879780, -0.200623,
		39.709141, 38.099995, 29.762827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572079, 38.363403, 29.646721>,  <40.010822, 38.715843, 29.903263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572079, 38.363403, 29.646721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240276, 38.174976, 29.526716>,  <40.041195, 38.061920, 29.454714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240276, 38.174976, 29.526716>,  <40.572079, 38.363403, 29.646721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240276, 38.174976, 29.526716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438855, -0.217538, -0.871828,
		0.345429, -0.854851, 0.387181,
		-0.829509, -0.471071, -0.300012,
		39.991425, 38.033653, 29.436712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847157, 37.701942, 29.398766>,  <40.572079, 38.363403, 29.646721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847157, 37.701942, 29.398766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502102, 37.797668, 29.220518>,  <40.295067, 37.855106, 29.113569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502102, 37.797668, 29.220518>,  <40.847157, 37.701942, 29.398766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502102, 37.797668, 29.220518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427802, -0.124864, -0.895206,
		-0.269883, -0.962878, 0.005331,
		-0.862640, 0.239320, -0.445620,
		40.243309, 37.869465, 29.086832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830719, 37.314533, 28.750195>,  <40.847157, 37.701942, 29.398766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830719, 37.314533, 28.750195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525993, 37.567898, 28.695898>,  <40.343159, 37.719917, 28.663321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525993, 37.567898, 28.695898>,  <40.830719, 37.314533, 28.750195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525993, 37.567898, 28.695898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293131, 0.150209, -0.944199,
		-0.577679, -0.759094, -0.300104,
		-0.761814, 0.633413, -0.135741,
		40.297447, 37.757923, 28.655176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566082, 37.154285, 28.149815>,  <40.830719, 37.314533, 28.750195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566082, 37.154285, 28.149815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430359, 37.528587, 28.188272>,  <40.348927, 37.753166, 28.211348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430359, 37.528587, 28.188272>,  <40.566082, 37.154285, 28.149815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430359, 37.528587, 28.188272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223181, 0.179371, -0.958132,
		-0.913818, -0.303640, -0.269703,
		-0.339304, 0.935750, 0.096146,
		40.328568, 37.809311, 28.217115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151527, 37.141960, 27.572199>,  <40.566082, 37.154285, 28.149815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151527, 37.141960, 27.572199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239571, 37.515118, 27.686220>,  <40.292397, 37.739014, 27.754633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239571, 37.515118, 27.686220>,  <40.151527, 37.141960, 27.572199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239571, 37.515118, 27.686220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142940, 0.258218, -0.955453,
		-0.964945, 0.251051, -0.076512,
		0.220111, 0.932897, 0.285052,
		40.305603, 37.794987, 27.771736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825150, 37.507217, 27.072622>,  <40.151527, 37.141960, 27.572199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825150, 37.507217, 27.072622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111187, 37.742870, 27.223125>,  <40.282810, 37.884262, 27.313427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111187, 37.742870, 27.223125>,  <39.825150, 37.507217, 27.072622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111187, 37.742870, 27.223125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282273, 0.249058, -0.926441,
		-0.639502, 0.768699, 0.011805,
		0.715094, 0.589128, 0.376256,
		40.325714, 37.919609, 27.336002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802299, 38.075069, 26.625669>,  <39.825150, 37.507217, 27.072622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802299, 38.075069, 26.625669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171707, 38.116570, 26.773369>,  <40.393353, 38.141472, 26.861988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171707, 38.116570, 26.773369>,  <39.802299, 38.075069, 26.625669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171707, 38.116570, 26.773369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344009, 0.201646, -0.917059,
		-0.169604, 0.973948, 0.150532,
		0.923522, 0.103753, 0.369246,
		40.448765, 38.147694, 26.884142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049068, 38.656940, 26.370472>,  <39.802299, 38.075069, 26.625669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049068, 38.656940, 26.370472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372356, 38.453663, 26.489485>,  <40.566330, 38.331696, 26.560892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372356, 38.453663, 26.489485>,  <40.049068, 38.656940, 26.370472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372356, 38.453663, 26.489485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374132, 0.052944, -0.925863,
		0.454763, 0.859616, 0.232920,
		0.808218, -0.508191, 0.297533,
		40.614822, 38.301205, 26.578745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574287, 38.939602, 25.982275>,  <40.049068, 38.656940, 26.370472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574287, 38.939602, 25.982275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681293, 38.568592, 26.086685>,  <40.745495, 38.345985, 26.149332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681293, 38.568592, 26.086685>,  <40.574287, 38.939602, 25.982275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681293, 38.568592, 26.086685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459573, -0.115280, -0.880627,
		0.846895, 0.355537, 0.395427,
		0.267511, -0.927526, 0.261025,
		40.761547, 38.290333, 26.164993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265457, 38.920521, 25.832628>,  <40.574287, 38.939602, 25.982275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265457, 38.920521, 25.832628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134647, 38.543617, 25.861464>,  <41.056160, 38.317474, 25.878765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134647, 38.543617, 25.861464>,  <41.265457, 38.920521, 25.832628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134647, 38.543617, 25.861464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571014, -0.257808, -0.779409,
		0.752993, -0.213721, 0.622354,
		-0.327023, -0.942263, 0.072090,
		41.036541, 38.260937, 25.883091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822968, 38.626747, 25.645247>,  <41.265457, 38.920521, 25.832628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822968, 38.626747, 25.645247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535351, 38.352318, 25.600903>,  <41.362782, 38.187660, 25.574297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535351, 38.352318, 25.600903>,  <41.822968, 38.626747, 25.645247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535351, 38.352318, 25.600903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484844, -0.380927, -0.787287,
		0.497906, -0.619839, 0.606539,
		-0.719038, -0.686072, -0.110860,
		41.319641, 38.146496, 25.567644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163040, 37.945816, 25.443123>,  <41.822968, 38.626747, 25.645247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163040, 37.945816, 25.443123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788559, 37.838284, 25.352564>,  <41.563869, 37.773766, 25.298227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788559, 37.838284, 25.352564>,  <42.163040, 37.945816, 25.443123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788559, 37.838284, 25.352564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345775, -0.589079, -0.730360,
		0.062976, -0.762048, 0.644451,
		-0.936202, -0.268830, -0.226399,
		41.507698, 37.757633, 25.284645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270473, 37.342567, 25.285151>,  <42.163040, 37.945816, 25.443123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270473, 37.342567, 25.285151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897881, 37.389854, 25.147537>,  <41.674324, 37.418228, 25.064970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897881, 37.389854, 25.147537>,  <42.270473, 37.342567, 25.285151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897881, 37.389854, 25.147537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191246, -0.645343, -0.739565,
		-0.309450, -0.754689, 0.578519,
		-0.931486, 0.118219, -0.344033,
		41.618435, 37.425320, 25.044327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018684, 36.729073, 25.196632>,  <42.270473, 37.342567, 25.285151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018684, 36.729073, 25.196632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803768, 36.952576, 24.943933>,  <41.674820, 37.086678, 24.792315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803768, 36.952576, 24.943933>,  <42.018684, 36.729073, 25.196632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803768, 36.952576, 24.943933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167637, -0.663354, -0.729287,
		-0.826572, -0.497741, 0.262742,
		-0.537287, 0.558762, -0.631749,
		41.642582, 37.120205, 24.754408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461430, 36.352493, 24.853252>,  <42.018684, 36.729073, 25.196632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461430, 36.352493, 24.853252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556934, 36.664104, 24.621355>,  <41.614239, 36.851070, 24.482216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556934, 36.664104, 24.621355>,  <41.461430, 36.352493, 24.853252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556934, 36.664104, 24.621355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082839, -0.611174, -0.787149,
		-0.967538, 0.139917, -0.210460,
		0.238763, 0.779031, -0.579744,
		41.628563, 36.897812, 24.447432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994812, 36.343433, 24.276257>,  <41.461430, 36.352493, 24.853252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994812, 36.343433, 24.276257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306622, 36.552570, 24.138285>,  <41.493710, 36.678051, 24.055502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306622, 36.552570, 24.138285>,  <40.994812, 36.343433, 24.276257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306622, 36.552570, 24.138285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043432, -0.594472, -0.802943,
		-0.624860, 0.610935, -0.486115,
		0.779527, 0.522840, -0.344927,
		41.540482, 36.709423, 24.034807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938290, 36.412685, 23.418417>,  <40.994812, 36.343433, 24.276257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938290, 36.412685, 23.418417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314503, 36.497181, 23.524837>,  <41.540230, 36.547878, 23.588690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314503, 36.497181, 23.524837>,  <40.938290, 36.412685, 23.418417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314503, 36.497181, 23.524837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339694, -0.576538, -0.743110,
		-0.003583, 0.789293, -0.614007,
		0.940529, 0.211237, 0.266052,
		41.596661, 36.560551, 23.604652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205853, 36.613453, 22.774490>,  <40.938290, 36.412685, 23.418417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205853, 36.613453, 22.774490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504696, 36.528988, 23.026596>,  <41.684002, 36.478310, 23.177860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504696, 36.528988, 23.026596>,  <41.205853, 36.613453, 22.774490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504696, 36.528988, 23.026596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406600, -0.604921, -0.684650,
		0.525834, 0.767776, -0.366085,
		0.747111, -0.211162, 0.630266,
		41.728828, 36.465641, 23.215675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809772, 36.693604, 22.294117>,  <41.205853, 36.613453, 22.774490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809772, 36.693604, 22.294117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889263, 36.465866, 22.613205>,  <41.936958, 36.329224, 22.804657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889263, 36.465866, 22.613205>,  <41.809772, 36.693604, 22.294117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889263, 36.465866, 22.613205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274028, -0.749211, -0.602985,
		0.940965, 0.338428, 0.007127,
		0.198728, -0.569341, 0.797720,
		41.948883, 36.295063, 22.852522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531483, 36.477699, 22.126377>,  <41.809772, 36.693604, 22.294117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531483, 36.477699, 22.126377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376400, 36.244560, 22.412025>,  <42.283352, 36.104675, 22.583414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376400, 36.244560, 22.412025>,  <42.531483, 36.477699, 22.126377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376400, 36.244560, 22.412025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553685, -0.766639, -0.325112,
		0.736965, 0.269352, 0.619945,
		-0.387704, -0.582851, 0.714122,
		42.260090, 36.069706, 22.626263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112659, 36.021206, 22.431232>,  <42.531483, 36.477699, 22.126377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112659, 36.021206, 22.431232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772644, 35.832661, 22.525257>,  <42.568634, 35.719536, 22.581673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772644, 35.832661, 22.525257>,  <43.112659, 36.021206, 22.431232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772644, 35.832661, 22.525257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416794, -0.874804, -0.246985,
		0.322052, -0.111974, 0.940077,
		-0.850038, -0.471361, 0.235062,
		42.517632, 35.691254, 22.595776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248230, 35.463631, 22.857714>,  <43.112659, 36.021206, 22.431232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248230, 35.463631, 22.857714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882629, 35.348480, 22.743359>,  <42.663269, 35.279388, 22.674746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882629, 35.348480, 22.743359>,  <43.248230, 35.463631, 22.857714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882629, 35.348480, 22.743359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386200, -0.833256, -0.395644,
		-0.124322, -0.472029, 0.872773,
		-0.913999, -0.287878, -0.285890,
		42.608429, 35.262115, 22.657591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209030, 34.766468, 23.037334>,  <43.248230, 35.463631, 22.857714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209030, 34.766468, 23.037334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910500, 34.800983, 22.773350>,  <42.731380, 34.821693, 22.614960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910500, 34.800983, 22.773350>,  <43.209030, 34.766468, 23.037334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910500, 34.800983, 22.773350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325260, -0.817811, -0.474754,
		-0.580690, -0.568981, 0.582288,
		-0.746328, 0.086290, -0.659961,
		42.686600, 34.826870, 22.575361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125008, 34.123726, 22.848900>,  <43.209030, 34.766468, 23.037334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125008, 34.123726, 22.848900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949425, 34.334026, 22.557447>,  <42.844074, 34.460205, 22.382576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949425, 34.334026, 22.557447>,  <43.125008, 34.123726, 22.848900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949425, 34.334026, 22.557447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132107, -0.764357, -0.631115,
		-0.888744, -0.373289, 0.266064,
		-0.438956, 0.525751, -0.728631,
		42.817738, 34.491753, 22.338858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687347, 33.631645, 22.585115>,  <43.125008, 34.123726, 22.848900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687347, 33.631645, 22.585115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732216, 33.918743, 22.310228>,  <42.759136, 34.091000, 22.145296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732216, 33.918743, 22.310228>,  <42.687347, 33.631645, 22.585115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732216, 33.918743, 22.310228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232900, -0.691307, -0.683998,
		-0.966010, -0.083329, -0.244706,
		0.112170, 0.717741, -0.687216,
		42.765865, 34.134064, 22.104063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503586, 33.258137, 22.077112>,  <42.687347, 33.631645, 22.585115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503586, 33.258137, 22.077112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706951, 33.556988, 21.905851>,  <42.828972, 33.736298, 21.803095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706951, 33.556988, 21.905851>,  <42.503586, 33.258137, 22.077112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706951, 33.556988, 21.905851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333818, -0.629331, -0.701789,
		-0.793777, 0.213874, -0.569365,
		0.508413, 0.747128, -0.428153,
		42.859474, 33.781128, 21.777405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196278, 33.373539, 21.391361>,  <42.503586, 33.258137, 22.077112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196278, 33.373539, 21.391361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568890, 33.518536, 21.379637>,  <42.792458, 33.605534, 21.372602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568890, 33.518536, 21.379637>,  <42.196278, 33.373539, 21.391361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568890, 33.518536, 21.379637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225472, -0.638897, -0.735509,
		-0.285339, 0.678538, -0.676881,
		0.931528, 0.362487, -0.029311,
		42.848347, 33.627281, 21.370844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281879, 33.537106, 20.614672>,  <42.196278, 33.373539, 21.391361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281879, 33.537106, 20.614672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647026, 33.521126, 20.777189>,  <42.866116, 33.511539, 20.874701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647026, 33.521126, 20.777189>,  <42.281879, 33.537106, 20.614672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647026, 33.521126, 20.777189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322150, -0.540839, -0.776989,
		0.250778, 0.840177, -0.480846,
		0.912869, -0.039948, 0.406294,
		42.920887, 33.509140, 20.899076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721554, 33.573067, 20.092667>,  <42.281879, 33.537106, 20.614672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721554, 33.573067, 20.092667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989681, 33.444893, 20.360399>,  <43.150558, 33.367989, 20.521038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989681, 33.444893, 20.360399>,  <42.721554, 33.573067, 20.092667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989681, 33.444893, 20.360399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460614, -0.527520, -0.713833,
		0.581819, 0.786795, -0.206009,
		0.670315, -0.320431, 0.669330,
		43.190777, 33.348763, 20.561197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317272, 33.706440, 19.756374>,  <42.721554, 33.573067, 20.092667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317272, 33.706440, 19.756374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372627, 33.415035, 20.024738>,  <43.405838, 33.240192, 20.185757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372627, 33.415035, 20.024738>,  <43.317272, 33.706440, 19.756374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372627, 33.415035, 20.024738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532829, -0.516267, -0.670494,
		0.834831, 0.450266, 0.316728,
		0.138384, -0.728511, 0.670911,
		43.414143, 33.196484, 20.226011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921310, 33.581829, 19.622520>,  <43.317272, 33.706440, 19.756374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921310, 33.581829, 19.622520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815395, 33.254265, 19.826195>,  <43.751846, 33.057724, 19.948399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815395, 33.254265, 19.826195>,  <43.921310, 33.581829, 19.622520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815395, 33.254265, 19.826195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395502, -0.573804, -0.717166,
		0.879468, 0.011484, 0.475819,
		-0.264791, -0.818912, 0.509184,
		43.735958, 33.008591, 19.978951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520844, 33.288414, 19.757401>,  <43.921310, 33.581829, 19.622520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520844, 33.288414, 19.757401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235176, 33.008427, 19.759159>,  <44.063778, 32.840435, 19.760214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235176, 33.008427, 19.759159>,  <44.520844, 33.288414, 19.757401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235176, 33.008427, 19.759159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520653, -0.535391, -0.665039,
		0.467857, -0.472659, 0.746795,
		-0.714164, -0.699964, 0.004395,
		44.020927, 32.798439, 19.760477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925735, 32.747959, 19.756117>,  <44.520844, 33.288414, 19.757401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925735, 32.747959, 19.756117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567337, 32.631664, 19.621861>,  <44.352299, 32.561886, 19.541307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567337, 32.631664, 19.621861>,  <44.925735, 32.747959, 19.756117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567337, 32.631664, 19.621861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439307, -0.470133, -0.765496,
		0.064766, -0.833333, 0.548963,
		-0.895999, -0.290742, -0.335640,
		44.298538, 32.544441, 19.521168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614407, 32.508820, 19.652994>,  <44.925735, 32.747959, 19.756117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614407, 32.508820, 19.652994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.989754, 32.584408, 19.768761>,  <46.214962, 32.629761, 19.838221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.989754, 32.584408, 19.768761>,  <45.614407, 32.508820, 19.652994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.989754, 32.584408, 19.768761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300852, 0.858769, 0.414734,
		-0.170170, -0.476243, 0.862690,
		0.938366, 0.188967, 0.289415,
		46.271263, 32.641098, 19.855585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583626, 32.617424, 20.443213>,  <45.614407, 32.508820, 19.652994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583626, 32.617424, 20.443213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906937, 32.797623, 20.291561>,  <46.100922, 32.905743, 20.200569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906937, 32.797623, 20.291561>,  <45.583626, 32.617424, 20.443213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906937, 32.797623, 20.291561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143257, 0.775015, 0.615491,
		0.571109, -0.443174, 0.690964,
		0.808277, 0.450498, -0.379131,
		46.149418, 32.932774, 20.177822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.890503, 32.988110, 21.082438>,  <45.583626, 32.617424, 20.443213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.890503, 32.988110, 21.082438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.074509, 33.131077, 20.757318>,  <46.184914, 33.216858, 20.562246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.074509, 33.131077, 20.757318>,  <45.890503, 32.988110, 21.082438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.074509, 33.131077, 20.757318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130412, 0.878281, 0.460018,
		0.878280, -0.317615, 0.357413,
		-0.460018, -0.357413, 0.812797,
		46.212513, 33.238300, 20.513479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642750, 33.170280, 21.231152>,  <45.890503, 32.988110, 21.082438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642750, 33.170280, 21.231152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556480, 33.400871, 20.915897>,  <46.504719, 33.539227, 20.726746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556480, 33.400871, 20.915897>,  <46.642750, 33.170280, 21.231152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556480, 33.400871, 20.915897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176453, 0.816850, 0.549200,
		0.960391, -0.020623, -0.277891,
		-0.215669, 0.576482, -0.788134,
		46.491779, 33.573814, 20.679457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.234997, 33.676331, 20.980570>,  <46.642750, 33.170280, 21.231152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.234997, 33.676331, 20.980570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888462, 33.832924, 20.856501>,  <46.680542, 33.926880, 20.782059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888462, 33.832924, 20.856501>,  <47.234997, 33.676331, 20.980570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.888462, 33.832924, 20.856501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165625, 0.811043, 0.561051,
		0.471207, 0.434684, -0.767473,
		-0.866333, 0.391484, -0.310174,
		46.628563, 33.950371, 20.763449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.331612, 34.314949, 21.179461>,  <47.234997, 33.676331, 20.980570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.331612, 34.314949, 21.179461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.945625, 34.334270, 21.076307>,  <46.714031, 34.345863, 21.014416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.945625, 34.334270, 21.076307>,  <47.331612, 34.314949, 21.179461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.945625, 34.334270, 21.076307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134350, 0.753288, 0.643823,
		0.225361, 0.655915, -0.720408,
		-0.964968, 0.048306, -0.257884,
		46.656136, 34.348763, 20.998941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.180428, 35.000523, 21.148462>,  <47.331612, 34.314949, 21.179461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.180428, 35.000523, 21.148462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816139, 34.838024, 21.178282>,  <46.597569, 34.740524, 21.196173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816139, 34.838024, 21.178282>,  <47.180428, 35.000523, 21.148462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.816139, 34.838024, 21.178282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326169, 0.818113, 0.473608,
		-0.253391, 0.407008, -0.877575,
		-0.910718, -0.406246, 0.074549,
		46.542923, 34.716152, 21.200647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717335, 35.586121, 21.096024>,  <47.180428, 35.000523, 21.148462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717335, 35.586121, 21.096024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482849, 35.305462, 21.258034>,  <46.342159, 35.137066, 21.355240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482849, 35.305462, 21.258034>,  <46.717335, 35.586121, 21.096024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482849, 35.305462, 21.258034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270625, 0.640811, 0.718418,
		-0.763622, 0.311534, -0.565534,
		-0.586212, -0.701647, 0.405028,
		46.306984, 35.094967, 21.379541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043961, 35.902817, 21.161121>,  <46.717335, 35.586121, 21.096024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043961, 35.902817, 21.161121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.078053, 35.604713, 21.425642>,  <46.098507, 35.425850, 21.584354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.078053, 35.604713, 21.425642>,  <46.043961, 35.902817, 21.161121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.078053, 35.604713, 21.425642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425423, 0.572957, 0.700526,
		-0.900973, -0.341038, -0.268219,
		0.085228, -0.745261, 0.661304,
		46.103622, 35.381134, 21.624033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.359673, 35.859421, 21.373114>,  <46.043961, 35.902817, 21.161121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.359673, 35.859421, 21.373114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613316, 35.726875, 21.652573>,  <45.765499, 35.647346, 21.820248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613316, 35.726875, 21.652573>,  <45.359673, 35.859421, 21.373114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613316, 35.726875, 21.652573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602555, 0.354496, 0.715024,
		-0.484601, -0.874374, 0.025122,
		0.634104, -0.331364, 0.698648,
		45.803547, 35.627464, 21.862167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964272, 35.679787, 21.900620>,  <45.359673, 35.859421, 21.373114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964272, 35.679787, 21.900620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302925, 35.664455, 22.112938>,  <45.506119, 35.655254, 22.240330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302925, 35.664455, 22.112938>,  <44.964272, 35.679787, 21.900620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302925, 35.664455, 22.112938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521651, 0.137621, 0.841986,
		-0.105324, -0.989743, 0.096518,
		0.846633, -0.038332, 0.530796,
		45.556915, 35.652954, 22.272177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767139, 35.465553, 22.492752>,  <44.964272, 35.679787, 21.900620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767139, 35.465553, 22.492752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132656, 35.585995, 22.601801>,  <45.351967, 35.658260, 22.667231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132656, 35.585995, 22.601801>,  <44.767139, 35.465553, 22.492752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132656, 35.585995, 22.601801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375722, 0.371583, 0.848975,
		0.154326, -0.878217, 0.452680,
		0.913792, 0.301101, 0.272621,
		45.406796, 35.676327, 22.683586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856285, 35.296593, 23.236380>,  <44.767139, 35.465553, 22.492752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856285, 35.296593, 23.236380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120014, 35.580627, 23.137533>,  <45.278252, 35.751049, 23.078226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120014, 35.580627, 23.137533>,  <44.856285, 35.296593, 23.236380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120014, 35.580627, 23.137533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219827, 0.496371, 0.839817,
		0.719005, -0.499388, 0.483366,
		0.659323, 0.710089, -0.247114,
		45.317810, 35.793655, 23.063398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249874, 35.370289, 23.806864>,  <44.856285, 35.296593, 23.236380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249874, 35.370289, 23.806864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292011, 35.712910, 23.604782>,  <45.317291, 35.918480, 23.483534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292011, 35.712910, 23.604782>,  <45.249874, 35.370289, 23.806864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292011, 35.712910, 23.604782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093170, 0.514295, 0.852537,
		0.990062, -0.042736, 0.133980,
		0.105339, 0.856548, -0.505202,
		45.323612, 35.969875, 23.453222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.703312, 35.761539, 24.219206>,  <45.249874, 35.370289, 23.806864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.703312, 35.761539, 24.219206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485779, 35.992859, 23.975956>,  <45.355259, 36.131649, 23.830006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485779, 35.992859, 23.975956>,  <45.703312, 35.761539, 24.219206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485779, 35.992859, 23.975956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397981, 0.460256, 0.793584,
		0.738823, 0.673598, -0.020149,
		-0.543830, 0.578300, -0.608127,
		45.322628, 36.166348, 23.793518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636623, 36.336220, 24.591709>,  <45.703312, 35.761539, 24.219206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636623, 36.336220, 24.591709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336445, 36.369614, 24.329454>,  <45.156338, 36.389648, 24.172102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336445, 36.369614, 24.329454>,  <45.636623, 36.336220, 24.591709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336445, 36.369614, 24.329454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518327, 0.541153, 0.662186,
		0.410080, 0.836770, -0.362837,
		-0.750448, 0.083481, -0.655636,
		45.111309, 36.394657, 24.132763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461391, 37.040623, 24.676472>,  <45.636623, 36.336220, 24.591709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461391, 37.040623, 24.676472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159382, 36.862408, 24.484039>,  <44.978176, 36.755478, 24.368580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159382, 36.862408, 24.484039>,  <45.461391, 37.040623, 24.676472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159382, 36.862408, 24.484039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652640, 0.439805, 0.616954,
		-0.063294, 0.779786, -0.622838,
		-0.755020, -0.445539, -0.481083,
		44.932877, 36.728745, 24.339714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942841, 37.571838, 24.504566>,  <45.461391, 37.040623, 24.676472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942841, 37.571838, 24.504566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755486, 37.218903, 24.522840>,  <44.643070, 37.007141, 24.533804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755486, 37.218903, 24.522840>,  <44.942841, 37.571838, 24.504566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755486, 37.218903, 24.522840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761486, 0.429375, 0.485569,
		-0.448053, 0.192647, -0.873004,
		-0.468390, -0.882340, 0.045684,
		44.614967, 36.954201, 24.536547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262062, 37.776917, 24.472343>,  <44.942841, 37.571838, 24.504566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262062, 37.776917, 24.472343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246628, 37.404369, 24.617153>,  <44.237370, 37.180840, 24.704039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246628, 37.404369, 24.617153>,  <44.262062, 37.776917, 24.472343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246628, 37.404369, 24.617153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763505, 0.261203, 0.590621,
		-0.644648, -0.253618, -0.721184,
		-0.038584, -0.931370, 0.362023,
		44.235054, 37.124958, 24.725760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587307, 37.756763, 24.802345>,  <44.262062, 37.776917, 24.472343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587307, 37.756763, 24.802345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738632, 37.399666, 24.900238>,  <43.829426, 37.185410, 24.958975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738632, 37.399666, 24.900238>,  <43.587307, 37.756763, 24.802345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738632, 37.399666, 24.900238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579779, -0.022413, 0.814466,
		-0.721622, -0.450012, -0.526072,
		0.378310, -0.892741, 0.244734,
		43.852127, 37.131844, 24.973658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027096, 37.298489, 24.975718>,  <43.587307, 37.756763, 24.802345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027096, 37.298489, 24.975718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357533, 37.167179, 25.158934>,  <43.555794, 37.088394, 25.268864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357533, 37.167179, 25.158934>,  <43.027096, 37.298489, 24.975718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357533, 37.167179, 25.158934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517152, -0.118722, 0.847619,
		-0.223875, -0.937091, -0.267845,
		0.826095, -0.328277, 0.458040,
		43.605362, 37.068699, 25.296347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778152, 36.758816, 25.424225>,  <43.027096, 37.298489, 24.975718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778152, 36.758816, 25.424225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141399, 36.846546, 25.566893>,  <43.359348, 36.899185, 25.652494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141399, 36.846546, 25.566893>,  <42.778152, 36.758816, 25.424225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141399, 36.846546, 25.566893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383034, 0.091078, 0.919233,
		0.169135, -0.971389, 0.166722,
		0.908118, 0.219335, 0.356671,
		43.413834, 36.912346, 25.673895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836456, 36.448051, 26.123173>,  <42.778152, 36.758816, 25.424225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836456, 36.448051, 26.123173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100052, 36.747463, 26.093697>,  <43.258209, 36.927113, 26.076012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100052, 36.747463, 26.093697>,  <42.836456, 36.448051, 26.123173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100052, 36.747463, 26.093697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246326, 0.307347, 0.919163,
		0.710671, -0.587569, 0.386922,
		0.658992, 0.748532, -0.073689,
		43.297749, 36.972023, 26.071590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301682, 36.381222, 26.685917>,  <42.836456, 36.448051, 26.123173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301682, 36.381222, 26.685917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.294823, 36.768513, 26.586130>,  <43.290707, 37.000889, 26.526258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.294823, 36.768513, 26.586130>,  <43.301682, 36.381222, 26.685917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294823, 36.768513, 26.586130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287610, 0.234181, 0.928676,
		0.957594, 0.087677, 0.274456,
		-0.017151, 0.968231, -0.249467,
		43.289677, 37.058983, 26.511290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536465, 36.711800, 27.334986>,  <43.301682, 36.381222, 26.685917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536465, 36.711800, 27.334986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412048, 37.028744, 27.125067>,  <43.337399, 37.218910, 26.999115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412048, 37.028744, 27.125067>,  <43.536465, 36.711800, 27.334986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412048, 37.028744, 27.125067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269310, 0.456070, 0.848217,
		0.911440, 0.405167, 0.071533,
		-0.311045, 0.792364, -0.524796,
		43.318733, 37.266453, 26.967628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969177, 37.273544, 27.651783>,  <43.536465, 36.711800, 27.334986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969177, 37.273544, 27.651783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650646, 37.426907, 27.464651>,  <43.459526, 37.518925, 27.352373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650646, 37.426907, 27.464651>,  <43.969177, 37.273544, 27.651783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650646, 37.426907, 27.464651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164416, 0.607113, 0.777419,
		0.582091, 0.695999, -0.420423,
		-0.796327, 0.383405, -0.467829,
		43.411747, 37.541927, 27.324303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084110, 38.002079, 27.590971>,  <43.969177, 37.273544, 27.651783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084110, 38.002079, 27.590971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687946, 37.947098, 27.585390>,  <43.450249, 37.914108, 27.582043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687946, 37.947098, 27.585390>,  <44.084110, 38.002079, 27.590971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687946, 37.947098, 27.585390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078846, 0.479418, 0.874038,
		-0.113450, 0.866756, -0.485658,
		-0.990410, -0.137452, -0.013951,
		43.390823, 37.905861, 27.581205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715324, 38.682907, 27.751186>,  <44.084110, 38.002079, 27.590971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715324, 38.682907, 27.751186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445747, 38.398094, 27.829987>,  <43.284000, 38.227207, 27.877266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445747, 38.398094, 27.829987>,  <43.715324, 38.682907, 27.751186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445747, 38.398094, 27.829987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281487, 0.494025, 0.822621,
		-0.683057, 0.498945, -0.533373,
		-0.673942, -0.712035, 0.197000,
		43.243565, 38.184483, 27.889086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100872, 38.966648, 28.020182>,  <43.715324, 38.682907, 27.751186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100872, 38.966648, 28.020182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052654, 38.591049, 28.149029>,  <43.023724, 38.365692, 28.226337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052654, 38.591049, 28.149029>,  <43.100872, 38.966648, 28.020182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052654, 38.591049, 28.149029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499249, 0.337804, 0.797897,
		-0.858033, -0.064636, -0.509511,
		-0.120542, -0.938994, 0.322116,
		43.016491, 38.309349, 28.245663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380112, 38.979893, 28.462023>,  <43.100872, 38.966648, 28.020182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380112, 38.979893, 28.462023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578304, 38.649761, 28.570345>,  <42.697220, 38.451683, 28.635338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578304, 38.649761, 28.570345>,  <42.380112, 38.979893, 28.462023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578304, 38.649761, 28.570345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366796, 0.083804, 0.926519,
		-0.787374, -0.558404, -0.261202,
		0.495482, -0.825325, 0.270806,
		42.726948, 38.402164, 28.651587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965260, 38.666283, 28.949211>,  <42.380112, 38.979893, 28.462023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965260, 38.666283, 28.949211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323448, 38.496998, 29.004366>,  <42.538361, 38.395428, 29.037458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323448, 38.496998, 29.004366>,  <41.965260, 38.666283, 28.949211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323448, 38.496998, 29.004366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137788, 0.031002, 0.989976,
		-0.423248, -0.905498, -0.030553,
		0.895475, -0.423216, 0.137888,
		42.592091, 38.370033, 29.045732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794895, 38.120628, 29.383354>,  <41.965260, 38.666283, 28.949211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794895, 38.120628, 29.383354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180969, 38.220642, 29.414062>,  <42.412613, 38.280651, 29.432487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180969, 38.220642, 29.414062>,  <41.794895, 38.120628, 29.383354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180969, 38.220642, 29.414062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080082, 0.003091, 0.996783,
		0.248992, -0.968232, 0.023007,
		0.965189, 0.250033, 0.076769,
		42.470528, 38.295650, 29.437094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151642, 37.617027, 29.926456>,  <41.794895, 38.120628, 29.383354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151642, 37.617027, 29.926456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361603, 37.956837, 29.905325>,  <42.487579, 38.160721, 29.892647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361603, 37.956837, 29.905325>,  <42.151642, 37.617027, 29.926456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361603, 37.956837, 29.905325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132348, -0.020150, 0.990999,
		0.840811, -0.527167, -0.123009,
		0.524901, 0.849523, -0.052827,
		42.519073, 38.211693, 29.889477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611164, 37.600212, 30.566093>,  <42.151642, 37.617027, 29.926456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611164, 37.600212, 30.566093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654438, 37.965538, 30.409046>,  <42.680401, 38.184734, 30.314817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654438, 37.965538, 30.409046>,  <42.611164, 37.600212, 30.566093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654438, 37.965538, 30.409046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263928, 0.354377, 0.897083,
		0.958456, -0.200672, -0.202712,
		0.108183, 0.913317, -0.392618,
		42.686893, 38.239532, 30.291260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318806, 37.914307, 30.624605>,  <42.611164, 37.600212, 30.566093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318806, 37.914307, 30.624605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037903, 38.198975, 30.616964>,  <42.869362, 38.369774, 30.612381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037903, 38.198975, 30.616964>,  <43.318806, 37.914307, 30.624605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037903, 38.198975, 30.616964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287428, 0.307966, 0.906941,
		0.651326, 0.631412, -0.420825,
		-0.702253, 0.711671, -0.019101,
		42.827229, 38.412476, 30.611235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617088, 38.253384, 31.146000>,  <43.318806, 37.914307, 30.624605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617088, 38.253384, 31.146000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273460, 38.445812, 31.076063>,  <43.067284, 38.561272, 31.034101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273460, 38.445812, 31.076063>,  <43.617088, 38.253384, 31.146000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273460, 38.445812, 31.076063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171907, 0.592904, 0.786710,
		0.482131, 0.645781, -0.592045,
		-0.859068, 0.481074, -0.174843,
		43.015739, 38.590134, 31.023611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775158, 38.941776, 31.304659>,  <43.617088, 38.253384, 31.146000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775158, 38.941776, 31.304659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375576, 38.926243, 31.314280>,  <43.135826, 38.916924, 31.320051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375576, 38.926243, 31.314280>,  <43.775158, 38.941776, 31.304659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375576, 38.926243, 31.314280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003058, 0.582196, 0.813043,
		-0.045578, 0.812121, -0.581707,
		-0.998956, -0.038836, 0.024052,
		43.075890, 38.914593, 31.321495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623318, 39.672138, 31.295778>,  <43.775158, 38.941776, 31.304659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623318, 39.672138, 31.295778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339806, 39.433144, 31.445789>,  <43.169701, 39.289749, 31.535797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339806, 39.433144, 31.445789>,  <43.623318, 39.672138, 31.295778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339806, 39.433144, 31.445789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010449, 0.522680, 0.852465,
		-0.705354, 0.608127, -0.364221,
		-0.708778, -0.597484, 0.375029,
		43.127171, 39.253899, 31.558298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183571, 40.149876, 31.667002>,  <43.623318, 39.672138, 31.295778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183571, 40.149876, 31.667002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109444, 39.786068, 31.815825>,  <43.064968, 39.567783, 31.905117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109444, 39.786068, 31.815825>,  <43.183571, 40.149876, 31.667002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109444, 39.786068, 31.815825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077433, 0.390953, 0.917148,
		-0.979623, 0.141157, -0.142879,
		-0.185321, -0.909522, 0.372056,
		43.053848, 39.513210, 31.927441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569069, 40.229038, 32.009972>,  <43.183571, 40.149876, 31.667002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569069, 40.229038, 32.009972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757236, 39.911289, 32.163685>,  <42.870136, 39.720638, 32.255913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757236, 39.911289, 32.163685>,  <42.569069, 40.229038, 32.009972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757236, 39.911289, 32.163685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161615, 0.350558, 0.922491,
		-0.867520, -0.496059, 0.036524,
		0.470414, -0.794377, 0.384287,
		42.898361, 39.672977, 32.278973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171577, 40.074192, 32.501450>,  <42.569069, 40.229038, 32.009972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171577, 40.074192, 32.501450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516434, 39.922638, 32.636002>,  <42.723347, 39.831703, 32.716732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516434, 39.922638, 32.636002>,  <42.171577, 40.074192, 32.501450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516434, 39.922638, 32.636002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219645, 0.318788, 0.922025,
		-0.456578, -0.868803, 0.191621,
		0.862144, -0.378888, 0.336379,
		42.775078, 39.808971, 32.736916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075382, 39.969078, 33.178085>,  <42.171577, 40.074192, 32.501450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075382, 39.969078, 33.178085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462658, 39.871426, 33.200043>,  <42.695023, 39.812836, 33.213219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462658, 39.871426, 33.200043>,  <42.075382, 39.969078, 33.178085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462658, 39.871426, 33.200043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002189, 0.211116, 0.977459,
		-0.250219, -0.946483, 0.203865,
		0.968187, -0.244132, 0.054897,
		42.753113, 39.798187, 33.216511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185368, 39.315910, 33.613998>,  <42.075382, 39.969078, 33.178085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185368, 39.315910, 33.613998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506226, 39.554676, 33.607620>,  <42.698742, 39.697933, 33.603794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506226, 39.554676, 33.607620>,  <42.185368, 39.315910, 33.613998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506226, 39.554676, 33.607620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014123, 0.007732, 0.999870,
		0.596957, -0.802270, -0.002228,
		0.802149, 0.596911, -0.015947,
		42.746872, 39.733749, 33.602837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546955, 39.020542, 34.203854>,  <42.185368, 39.315910, 33.613998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546955, 39.020542, 34.203854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733635, 39.366974, 34.132191>,  <42.845642, 39.574833, 34.089195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733635, 39.366974, 34.132191>,  <42.546955, 39.020542, 34.203854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733635, 39.366974, 34.132191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055728, 0.230963, 0.971365,
		0.882658, -0.443353, 0.156055,
		0.466701, 0.866080, -0.179154,
		42.873646, 39.626797, 34.078445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981861, 39.150845, 34.728546>,  <42.546955, 39.020542, 34.203854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981861, 39.150845, 34.728546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959381, 39.521622, 34.580158>,  <42.945892, 39.744087, 34.491127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959381, 39.521622, 34.580158>,  <42.981861, 39.150845, 34.728546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959381, 39.521622, 34.580158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029107, 0.372920, 0.927407,
		0.997995, 0.041323, -0.047939,
		-0.056200, 0.926943, -0.370970,
		42.942520, 39.799706, 34.468868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610970, 39.486664, 34.963757>,  <42.981861, 39.150845, 34.728546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610970, 39.486664, 34.963757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308487, 39.738674, 34.893082>,  <43.126999, 39.889881, 34.850677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308487, 39.738674, 34.893082>,  <43.610970, 39.486664, 34.963757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308487, 39.738674, 34.893082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131583, 0.410937, 0.902118,
		0.640967, 0.658937, -0.393654,
		-0.756206, 0.630026, -0.176692,
		43.081627, 39.927681, 34.840073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800087, 40.104431, 35.323597>,  <43.610970, 39.486664, 34.963757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800087, 40.104431, 35.323597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427254, 40.198032, 35.212994>,  <43.203552, 40.254192, 35.146633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427254, 40.198032, 35.212994>,  <43.800087, 40.104431, 35.323597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427254, 40.198032, 35.212994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036829, 0.698167, 0.714987,
		0.360357, 0.676613, -0.642135,
		-0.932087, 0.234001, -0.276508,
		43.147629, 40.268234, 35.130039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844715, 40.799091, 35.223259>,  <43.800087, 40.104431, 35.323597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844715, 40.799091, 35.223259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.471867, 40.684837, 35.312313>,  <43.248158, 40.616287, 35.365746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.471867, 40.684837, 35.312313>,  <43.844715, 40.799091, 35.223259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471867, 40.684837, 35.312313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055560, 0.494691, 0.867291,
		-0.357863, 0.820789, -0.445241,
		-0.932120, -0.285633, 0.222635,
		43.192230, 40.599148, 35.379105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468479, 41.374355, 35.419094>,  <43.844715, 40.799091, 35.223259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468479, 41.374355, 35.419094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267632, 41.074673, 35.591866>,  <43.147121, 40.894863, 35.695530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267632, 41.074673, 35.591866>,  <43.468479, 41.374355, 35.419094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267632, 41.074673, 35.591866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089017, 0.541580, 0.835923,
		-0.860203, 0.381287, -0.338632,
		-0.502123, -0.749207, 0.431928,
		43.116993, 40.849911, 35.721443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079220, 41.792480, 35.880119>,  <43.468479, 41.374355, 35.419094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079220, 41.792480, 35.880119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060795, 41.408035, 35.989029>,  <43.049740, 41.177368, 36.054375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060795, 41.408035, 35.989029>,  <43.079220, 41.792480, 35.880119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060795, 41.408035, 35.989029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083648, 0.275315, 0.957708,
		-0.995430, 0.021337, -0.093077,
		-0.046060, -0.961117, 0.272272,
		43.046978, 41.119701, 36.070709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404900, 41.740692, 36.008709>,  <43.079220, 41.792480, 35.880119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404900, 41.740692, 36.008709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628307, 41.467262, 36.196659>,  <42.762352, 41.303204, 36.309429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628307, 41.467262, 36.196659>,  <42.404900, 41.740692, 36.008709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628307, 41.467262, 36.196659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350829, 0.318637, 0.880562,
		-0.751647, -0.656659, -0.061851,
		0.558521, -0.683571, 0.469878,
		42.795864, 41.262192, 36.337624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014858, 41.330864, 36.527168>,  <42.404900, 41.740692, 36.008709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014858, 41.330864, 36.527168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392525, 41.287804, 36.651726>,  <42.619125, 41.261967, 36.726460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392525, 41.287804, 36.651726>,  <42.014858, 41.330864, 36.527168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392525, 41.287804, 36.651726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252123, 0.372382, 0.893177,
		-0.212112, -0.921815, 0.324448,
		0.944162, -0.107653, 0.311398,
		42.675774, 41.255508, 36.745144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855408, 41.151012, 37.149040>,  <42.014858, 41.330864, 36.527168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855408, 41.151012, 37.149040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252594, 41.189270, 37.176983>,  <42.490906, 41.212223, 37.193748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252594, 41.189270, 37.176983>,  <41.855408, 41.151012, 37.149040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252594, 41.189270, 37.176983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097046, 0.318890, 0.942810,
		0.067897, -0.942953, 0.325927,
		0.992961, 0.095644, 0.069858,
		42.550484, 41.217964, 37.197941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031181, 40.903687, 37.841316>,  <41.855408, 41.151012, 37.149040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031181, 40.903687, 37.841316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322098, 41.151669, 37.723530>,  <42.496647, 41.300457, 37.652859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322098, 41.151669, 37.723530>,  <42.031181, 40.903687, 37.841316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322098, 41.151669, 37.723530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045860, 0.471983, 0.880414,
		0.684800, -0.626809, 0.371698,
		0.727287, 0.619953, -0.294469,
		42.540283, 41.337654, 37.635189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597496, 40.958172, 38.285278>,  <42.031181, 40.903687, 37.841316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597496, 40.958172, 38.285278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606255, 41.322792, 38.121040>,  <42.611511, 41.541565, 38.022495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606255, 41.322792, 38.121040>,  <42.597496, 40.958172, 38.285278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606255, 41.322792, 38.121040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166108, 0.401672, 0.900593,
		0.985864, -0.087926, -0.142620,
		0.021899, 0.911553, -0.410599,
		42.612823, 41.596256, 37.997860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816761, 41.260071, 38.860348>,  <42.597496, 40.958172, 38.285278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816761, 41.260071, 38.860348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722908, 41.548946, 38.600071>,  <42.666595, 41.722271, 38.443905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722908, 41.548946, 38.600071>,  <42.816761, 41.260071, 38.860348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722908, 41.548946, 38.600071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061217, 0.657069, 0.751340,
		0.970156, 0.216119, -0.109957,
		-0.234628, 0.722186, -0.650690,
		42.652519, 41.765602, 38.404865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209984, 41.916424, 39.016064>,  <42.816761, 41.260071, 38.860348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209984, 41.916424, 39.016064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852013, 41.985912, 38.851662>,  <42.637230, 42.027603, 38.753021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852013, 41.985912, 38.851662>,  <43.209984, 41.916424, 39.016064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852013, 41.985912, 38.851662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211107, 0.646651, 0.732991,
		0.393111, 0.742741, -0.542033,
		-0.894929, 0.173720, -0.411004,
		42.583534, 42.038029, 38.728359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239265, 42.649792, 38.908665>,  <43.209984, 41.916424, 39.016064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239265, 42.649792, 38.908665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859585, 42.527138, 38.936951>,  <42.631779, 42.453545, 38.953922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859585, 42.527138, 38.936951>,  <43.239265, 42.649792, 38.908665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859585, 42.527138, 38.936951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195854, 0.751557, 0.629923,
		-0.246302, 0.584071, -0.773431,
		-0.949198, -0.306631, 0.070717,
		42.574825, 42.435150, 38.958164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824169, 43.244617, 38.832867>,  <43.239265, 42.649792, 38.908665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824169, 43.244617, 38.832867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592770, 42.982250, 39.026821>,  <42.453930, 42.824829, 39.143192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592770, 42.982250, 39.026821>,  <42.824169, 43.244617, 38.832867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592770, 42.982250, 39.026821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215515, 0.696238, 0.684694,
		-0.786698, 0.291593, -0.544132,
		-0.578497, -0.655916, 0.484887,
		42.419220, 42.785477, 39.172287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207779, 43.566322, 39.004063>,  <42.824169, 43.244617, 38.832867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207779, 43.566322, 39.004063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279507, 43.287342, 39.281597>,  <42.322544, 43.119953, 39.448116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279507, 43.287342, 39.281597>,  <42.207779, 43.566322, 39.004063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279507, 43.287342, 39.281597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308962, 0.629662, 0.712789,
		-0.934017, -0.342186, -0.102576,
		0.179319, -0.697449, 0.693837,
		42.333302, 43.078106, 39.489750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841190, 43.758114, 39.524536>,  <42.207779, 43.566322, 39.004063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841190, 43.758114, 39.524536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101501, 43.498905, 39.682800>,  <42.257687, 43.343380, 39.777760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101501, 43.498905, 39.682800>,  <41.841190, 43.758114, 39.524536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101501, 43.498905, 39.682800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029476, 0.499157, 0.866010,
		-0.758695, -0.575243, 0.305740,
		0.650779, -0.648026, 0.395664,
		42.296734, 43.304497, 39.801498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564888, 43.427704, 40.095676>,  <41.841190, 43.758114, 39.524536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564888, 43.427704, 40.095676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960915, 43.454880, 40.144909>,  <42.198532, 43.471188, 40.174446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960915, 43.454880, 40.144909>,  <41.564888, 43.427704, 40.095676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960915, 43.454880, 40.144909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137893, 0.639839, 0.756037,
		-0.027384, -0.765500, 0.642853,
		0.990069, 0.067941, 0.123078,
		42.257935, 43.475262, 40.181831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751995, 43.348728, 40.819138>,  <41.564888, 43.427704, 40.095676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751995, 43.348728, 40.819138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029701, 43.573334, 40.639046>,  <42.196323, 43.708096, 40.530991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029701, 43.573334, 40.639046>,  <41.751995, 43.348728, 40.819138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029701, 43.573334, 40.639046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031464, 0.601280, 0.798419,
		0.719035, -0.568477, 0.399778,
		0.694261, 0.561513, -0.450228,
		42.237980, 43.741787, 40.503979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158836, 42.987137, 40.336525>,  <41.751995, 43.348728, 40.819138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158836, 42.987137, 40.336525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365246, 42.679886, 40.184898>,  <42.489094, 42.495533, 40.093922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365246, 42.679886, 40.184898>,  <42.158836, 42.987137, 40.336525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365246, 42.679886, 40.184898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141060, 0.360295, -0.922112,
		0.844878, 0.529306, 0.077569,
		0.516027, -0.768130, -0.379069,
		42.520054, 42.449448, 40.071178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293793, 42.360390, 40.836521>,  <42.158836, 42.987137, 40.336525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293793, 42.360390, 40.836521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658760, 42.320057, 40.995178>,  <42.877739, 42.295856, 41.090374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658760, 42.320057, 40.995178>,  <42.293793, 42.360390, 40.836521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658760, 42.320057, 40.995178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151687, 0.983465, -0.098935,
		-0.380108, 0.150436, 0.912626,
		0.912419, -0.100827, 0.396642,
		42.932487, 42.289810, 41.114170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084095, 42.036217, 40.186470>,  <42.293793, 42.360390, 40.836521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084095, 42.036217, 40.186470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063255, 42.358841, 39.950928>,  <42.050751, 42.552414, 39.809605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063255, 42.358841, 39.950928>,  <42.084095, 42.036217, 40.186470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063255, 42.358841, 39.950928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134662, -0.589942, -0.796137,
		-0.989521, 0.037821, 0.139346,
		-0.052096, 0.806559, -0.588853,
		42.047626, 42.600807, 39.774273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495113, 41.977516, 39.658234>,  <42.084095, 42.036217, 40.186470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495113, 41.977516, 39.658234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767166, 42.223038, 39.497898>,  <41.930397, 42.370350, 39.401699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767166, 42.223038, 39.497898>,  <41.495113, 41.977516, 39.658234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767166, 42.223038, 39.497898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042755, -0.579057, -0.814165,
		-0.731842, 0.536602, -0.420078,
		0.680132, 0.613801, -0.400835,
		41.971207, 42.407177, 39.377647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286892, 42.193066, 38.973961>,  <41.495113, 41.977516, 39.658234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286892, 42.193066, 38.973961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681538, 42.255402, 38.954765>,  <41.918327, 42.292805, 38.943249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681538, 42.255402, 38.954765>,  <41.286892, 42.193066, 38.973961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681538, 42.255402, 38.954765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027150, -0.447208, -0.894018,
		-0.160786, 0.880749, -0.445453,
		0.986616, 0.155840, -0.047993,
		41.977524, 42.302155, 38.940369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373241, 42.408962, 38.369938>,  <41.286892, 42.193066, 38.973961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373241, 42.408962, 38.369938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749645, 42.318321, 38.470451>,  <41.975487, 42.263935, 38.530762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749645, 42.318321, 38.470451>,  <41.373241, 42.408962, 38.369938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749645, 42.318321, 38.470451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103871, -0.513332, -0.851881,
		0.322033, 0.827733, -0.459515,
		0.941013, -0.226603, 0.251287,
		42.031948, 42.250340, 38.545837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737015, 42.448021, 37.748573>,  <41.373241, 42.408962, 38.369938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737015, 42.448021, 37.748573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953075, 42.219952, 37.996166>,  <42.082710, 42.083111, 38.144722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953075, 42.219952, 37.996166>,  <41.737015, 42.448021, 37.748573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953075, 42.219952, 37.996166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002411, -0.734457, -0.678650,
		0.841565, 0.368066, -0.395343,
		0.540151, -0.570175, 0.618981,
		42.115120, 42.048901, 38.181862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266876, 42.049454, 37.345161>,  <41.737015, 42.448021, 37.748573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266876, 42.049454, 37.345161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182652, 41.880348, 37.697739>,  <42.132118, 41.778885, 37.909283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182652, 41.880348, 37.697739>,  <42.266876, 42.049454, 37.345161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182652, 41.880348, 37.697739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415679, -0.777363, -0.472142,
		0.884803, -0.465810, -0.012052,
		-0.210560, -0.422762, 0.881440,
		42.119484, 41.753521, 37.962170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849026, 42.401993, 37.120506>,  <42.266876, 42.049454, 37.345161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849026, 42.401993, 37.120506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876358, 42.159912, 37.437759>,  <42.892757, 42.014664, 37.628113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876358, 42.159912, 37.437759>,  <42.849026, 42.401993, 37.120506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876358, 42.159912, 37.437759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293103, -0.747730, -0.595811,
		0.953636, 0.273180, 0.126296,
		0.068329, -0.605205, 0.793132,
		42.896858, 41.978352, 37.675697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523308, 42.051003, 37.203964>,  <42.849026, 42.401993, 37.120506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523308, 42.051003, 37.203964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227070, 41.824219, 37.348232>,  <43.049328, 41.688148, 37.434795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227070, 41.824219, 37.348232>,  <43.523308, 42.051003, 37.203964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227070, 41.824219, 37.348232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229581, -0.717943, -0.657153,
		0.631520, -0.403877, 0.661865,
		-0.740591, -0.566957, 0.360673,
		43.004894, 41.654133, 37.456432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824368, 41.362171, 37.331528>,  <43.523308, 42.051003, 37.203964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824368, 41.362171, 37.331528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431244, 41.330269, 37.264923>,  <43.195370, 41.311127, 37.224960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431244, 41.330269, 37.264923>,  <43.824368, 41.362171, 37.331528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431244, 41.330269, 37.264923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180638, -0.601809, -0.777943,
		-0.038160, -0.794647, 0.605871,
		-0.982809, -0.079757, -0.166508,
		43.136402, 41.306343, 37.214970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756828, 40.647179, 37.065212>,  <43.824368, 41.362171, 37.331528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756828, 40.647179, 37.065212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428459, 40.849854, 36.959862>,  <43.231438, 40.971458, 36.896652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428459, 40.849854, 36.959862>,  <43.756828, 40.647179, 37.065212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428459, 40.849854, 36.959862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103513, -0.585605, -0.803960,
		-0.561581, -0.632725, 0.533184,
		-0.820921, 0.506680, -0.263370,
		43.182182, 41.001858, 36.880852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328434, 40.170719, 36.955040>,  <43.756828, 40.647179, 37.065212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328434, 40.170719, 36.955040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201801, 40.496700, 36.760876>,  <43.125824, 40.692291, 36.644379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201801, 40.496700, 36.760876>,  <43.328434, 40.170719, 36.955040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201801, 40.496700, 36.760876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119663, -0.541954, -0.831846,
		-0.940988, -0.205259, 0.269091,
		-0.316579, 0.814957, -0.485410,
		43.106827, 40.741188, 36.615253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567112, 40.121349, 36.589264>,  <43.328434, 40.170719, 36.955040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567112, 40.121349, 36.589264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788086, 40.406212, 36.415993>,  <42.920670, 40.577129, 36.312031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788086, 40.406212, 36.415993>,  <42.567112, 40.121349, 36.589264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788086, 40.406212, 36.415993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078618, -0.472842, -0.877633,
		-0.829839, 0.518892, -0.205227,
		0.552437, 0.712159, -0.433177,
		42.953815, 40.619858, 36.286041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092136, 40.422951, 36.186203>,  <42.567112, 40.121349, 36.589264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092136, 40.422951, 36.186203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443008, 40.511745, 36.015892>,  <42.653530, 40.565022, 35.913708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443008, 40.511745, 36.015892>,  <42.092136, 40.422951, 36.186203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443008, 40.511745, 36.015892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291206, -0.459101, -0.839300,
		-0.381784, 0.860203, -0.338070,
		0.877177, 0.221983, -0.425774,
		42.706161, 40.578339, 35.888161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870964, 40.278709, 35.546013>,  <42.092136, 40.422951, 36.186203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870964, 40.278709, 35.546013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246880, 40.404972, 35.493618>,  <42.472427, 40.480728, 35.462181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246880, 40.404972, 35.493618>,  <41.870964, 40.278709, 35.546013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246880, 40.404972, 35.493618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008506, -0.404778, -0.914375,
		-0.341649, 0.858206, -0.383091,
		0.939789, 0.315654, -0.130992,
		42.528816, 40.499668, 35.454319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893356, 40.519249, 34.912521>,  <41.870964, 40.278709, 35.546013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893356, 40.519249, 34.912521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282825, 40.453026, 34.975201>,  <42.516506, 40.413292, 35.012806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282825, 40.453026, 34.975201>,  <41.893356, 40.519249, 34.912521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282825, 40.453026, 34.975201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052407, -0.506413, -0.860697,
		0.221844, 0.846249, -0.484405,
		0.973673, -0.165555, 0.156694,
		42.574928, 40.403358, 35.022209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170731, 40.738194, 34.272671>,  <41.893356, 40.519249, 34.912521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170731, 40.738194, 34.272671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443115, 40.499069, 34.441868>,  <42.606544, 40.355595, 34.543385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443115, 40.499069, 34.441868>,  <42.170731, 40.738194, 34.272671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443115, 40.499069, 34.441868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304334, -0.294351, -0.905946,
		0.666091, 0.745641, -0.018507,
		0.680958, -0.597810, 0.422988,
		42.647404, 40.319725, 34.568764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891953, 40.986313, 33.936333>,  <42.170731, 40.738194, 34.272671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891953, 40.986313, 33.936333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913216, 40.622906, 34.102116>,  <42.925972, 40.404861, 34.201588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913216, 40.622906, 34.102116>,  <42.891953, 40.986313, 33.936333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913216, 40.622906, 34.102116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319945, -0.377671, -0.868907,
		0.945944, 0.178791, 0.270600,
		0.053156, -0.908514, 0.414459,
		42.929161, 40.350353, 34.226452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602654, 40.757565, 33.835396>,  <42.891953, 40.986313, 33.936333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602654, 40.757565, 33.835396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373745, 40.433975, 33.889160>,  <43.236401, 40.239822, 33.921421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373745, 40.433975, 33.889160>,  <43.602654, 40.757565, 33.835396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373745, 40.433975, 33.889160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229311, -0.315226, -0.920896,
		0.787349, -0.496183, 0.365902,
		-0.572274, -0.808972, 0.134413,
		43.202065, 40.191284, 33.929485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916889, 40.224155, 33.597054>,  <43.602654, 40.757565, 33.835396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916889, 40.224155, 33.597054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540943, 40.088596, 33.614033>,  <43.315376, 40.007259, 33.624222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540943, 40.088596, 33.614033>,  <43.916889, 40.224155, 33.597054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540943, 40.088596, 33.614033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075901, -0.328427, -0.941475,
		0.333008, -0.881637, 0.334399,
		-0.939864, -0.338900, 0.042452,
		43.258984, 39.986927, 33.626770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038925, 39.708065, 33.228828>,  <43.916889, 40.224155, 33.597054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038925, 39.708065, 33.228828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639099, 39.719803, 33.228630>,  <43.399204, 39.726845, 33.228512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639099, 39.719803, 33.228630>,  <44.038925, 39.708065, 33.228828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639099, 39.719803, 33.228630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012580, -0.443720, -0.896077,
		-0.026515, -0.895685, 0.443898,
		-0.999569, 0.029344, -0.000497,
		43.339230, 39.728607, 33.228481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769096, 39.058048, 33.003258>,  <44.038925, 39.708065, 33.228828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769096, 39.058048, 33.003258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449413, 39.292004, 32.947865>,  <43.257603, 39.432377, 32.914627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449413, 39.292004, 32.947865>,  <43.769096, 39.058048, 33.003258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449413, 39.292004, 32.947865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211786, -0.489654, -0.845805,
		-0.562514, -0.646640, 0.515204,
		-0.799203, 0.584890, -0.138488,
		43.209652, 39.467472, 32.906319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350338, 39.355534, 33.657139>,  <43.769096, 39.058048, 33.003258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350338, 39.355534, 33.657139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063297, 39.360565, 33.378605>,  <42.891071, 39.363586, 33.211483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063297, 39.360565, 33.378605>,  <43.350338, 39.355534, 33.657139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063297, 39.360565, 33.378605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295893, 0.910620, -0.288476,
		0.630470, -0.413054, -0.657186,
		-0.717603, 0.012581, -0.696339,
		42.848015, 39.364338, 33.169704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140938, 39.091808, 33.805298>,  <43.350338, 39.355534, 33.657139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140938, 39.091808, 33.805298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114235, 38.695717, 33.854263>,  <44.098213, 38.458061, 33.883644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114235, 38.695717, 33.854263>,  <44.140938, 39.091808, 33.805298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114235, 38.695717, 33.854263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024965, 0.124310, 0.991929,
		-0.997457, 0.063158, -0.033019,
		-0.066753, -0.990231, 0.122417,
		44.094208, 38.398647, 33.890987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901340, 39.272633, 34.013313>,  <44.140938, 39.091808, 33.805298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901340, 39.272633, 34.013313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661087, 39.247368, 33.694504>,  <44.516933, 39.232208, 33.503220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661087, 39.247368, 33.694504>,  <44.901340, 39.272633, 34.013313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661087, 39.247368, 33.694504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484038, -0.822152, -0.299621,
		-0.636351, -0.565753, 0.524386,
		-0.600637, -0.063159, -0.797023,
		44.480896, 39.228420, 33.455399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721222, 38.566814, 33.902847>,  <44.901340, 39.272633, 34.013313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721222, 38.566814, 33.902847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672695, 38.761971, 33.557076>,  <44.643578, 38.879063, 33.349613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672695, 38.761971, 33.557076>,  <44.721222, 38.566814, 33.902847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672695, 38.761971, 33.557076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365438, -0.787746, -0.495894,
		-0.922896, -0.376059, -0.082724,
		-0.121320, 0.487889, -0.864434,
		44.636299, 38.908337, 33.297745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269531, 38.332508, 33.255131>,  <44.721222, 38.566814, 33.902847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269531, 38.332508, 33.255131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605385, 38.525051, 33.154488>,  <44.806896, 38.640575, 33.094101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605385, 38.525051, 33.154488>,  <44.269531, 38.332508, 33.255131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605385, 38.525051, 33.154488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351349, -0.834610, -0.424241,
		-0.414205, 0.267807, -0.869893,
		0.839636, 0.481359, -0.251606,
		44.857277, 38.669460, 33.079006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458035, 38.272755, 32.518269>,  <44.269531, 38.332508, 33.255131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458035, 38.272755, 32.518269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750500, 38.307213, 32.788963>,  <44.925980, 38.327888, 32.951382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750500, 38.307213, 32.788963>,  <44.458035, 38.272755, 32.518269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750500, 38.307213, 32.788963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422410, -0.836128, -0.349942,
		0.535693, 0.541727, -0.647739,
		0.731165, 0.086150, 0.676739,
		44.969849, 38.333057, 32.991985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918888, 37.995907, 32.105919>,  <44.458035, 38.272755, 32.518269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918888, 37.995907, 32.105919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067093, 37.974087, 32.476807>,  <45.156017, 37.960995, 32.699341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067093, 37.974087, 32.476807>,  <44.918888, 37.995907, 32.105919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.067093, 37.974087, 32.476807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403845, -0.889515, -0.213708,
		0.836438, 0.453637, -0.307547,
		0.370514, -0.054552, 0.927224,
		45.178246, 37.957722, 32.754974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.522991, 37.556908, 32.019947>,  <44.918888, 37.995907, 32.105919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.522991, 37.556908, 32.019947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472160, 37.609070, 32.413261>,  <45.441662, 37.640366, 32.649250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472160, 37.609070, 32.413261>,  <45.522991, 37.556908, 32.019947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472160, 37.609070, 32.413261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332748, -0.928271, 0.166109,
		0.934414, 0.348295, 0.074570,
		-0.127076, 0.130402, 0.983284,
		45.434036, 37.648190, 32.708248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048088, 37.058956, 32.255131>,  <45.522991, 37.556908, 32.019947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048088, 37.058956, 32.255131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357498, 37.261211, 32.102299>,  <46.543144, 37.382565, 32.010601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357498, 37.261211, 32.102299>,  <46.048088, 37.058956, 32.255131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357498, 37.261211, 32.102299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143757, -0.727145, -0.671263,
		-0.617241, 0.464315, -0.635157,
		0.773529, 0.505639, -0.382075,
		46.589558, 37.412903, 31.987677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.440029, 37.521214, 32.790249>,  <46.048088, 37.058956, 32.255131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.440029, 37.521214, 32.790249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474819, 37.144093, 32.661522>,  <46.495693, 36.917820, 32.584286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474819, 37.144093, 32.661522>,  <46.440029, 37.521214, 32.790249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.474819, 37.144093, 32.661522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957517, -0.010044, 0.288202,
		-0.274949, -0.333208, 0.901873,
		0.086973, -0.942800, -0.321813,
		46.500912, 36.861252, 32.564980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.860039, 38.037457, 32.345036>,  <46.440029, 37.521214, 32.790249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.860039, 38.037457, 32.345036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.118855, 38.281048, 32.528549>,  <47.274143, 38.427200, 32.638657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.118855, 38.281048, 32.528549>,  <46.860039, 38.037457, 32.345036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.118855, 38.281048, 32.528549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268587, -0.381103, 0.884659,
		0.713580, -0.695636, -0.083026,
		0.647043, 0.608976, 0.458786,
		47.312969, 38.463741, 32.666183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306396, 37.589966, 32.700169>,  <46.860039, 38.037457, 32.345036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306396, 37.589966, 32.700169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.283447, 37.940887, 32.890766>,  <47.269680, 38.151440, 33.005123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.283447, 37.940887, 32.890766>,  <47.306396, 37.589966, 32.700169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.283447, 37.940887, 32.890766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257869, -0.474104, 0.841861,
		0.964475, -0.074575, 0.253429,
		-0.057370, 0.877305, 0.476492,
		47.266235, 38.204079, 33.033714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.857979, 37.604275, 33.303280>,  <47.306396, 37.589966, 32.700169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.857979, 37.604275, 33.303280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.507137, 37.789059, 33.355873>,  <47.296635, 37.899929, 33.387428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.507137, 37.789059, 33.355873>,  <47.857979, 37.604275, 33.303280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.507137, 37.789059, 33.355873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175122, -0.562488, 0.808047,
		0.447242, 0.685713, 0.574258,
		-0.877101, 0.461958, 0.131485,
		47.244007, 37.927647, 33.395317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.739265, 37.720257, 34.034935>,  <47.857979, 37.604275, 33.303280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.739265, 37.720257, 34.034935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426586, 37.652832, 33.794758>,  <47.238979, 37.612377, 33.650650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426586, 37.652832, 33.794758>,  <47.739265, 37.720257, 34.034935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.426586, 37.652832, 33.794758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224630, -0.822061, 0.523218,
		-0.581800, 0.543876, 0.604738,
		-0.781697, -0.168566, -0.600446,
		47.192078, 37.602261, 33.614624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075905, 37.651535, 34.478836>,  <47.739265, 37.720257, 34.034935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075905, 37.651535, 34.478836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.116077, 37.434143, 34.145481>,  <47.140179, 37.303707, 33.945469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.116077, 37.434143, 34.145481>,  <47.075905, 37.651535, 34.478836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.116077, 37.434143, 34.145481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187069, -0.833002, 0.520685,
		-0.977200, 0.103610, -0.185325,
		0.100428, -0.543482, -0.833392,
		47.146206, 37.271099, 33.895462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.523060, 37.219769, 34.388741>,  <47.075905, 37.651535, 34.478836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.523060, 37.219769, 34.388741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831596, 37.057693, 34.192432>,  <47.016720, 36.960449, 34.074646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831596, 37.057693, 34.192432>,  <46.523060, 37.219769, 34.388741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831596, 37.057693, 34.192432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093476, -0.834909, 0.542392,
		-0.629516, -0.372496, -0.681877,
		0.771344, -0.405184, -0.490769,
		47.063000, 36.936138, 34.045200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.505783, 36.472870, 34.563198>,  <46.523060, 37.219769, 34.388741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.505783, 36.472870, 34.563198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840218, 36.427628, 34.348476>,  <47.040878, 36.400482, 34.219643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840218, 36.427628, 34.348476>,  <46.505783, 36.472870, 34.563198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840218, 36.427628, 34.348476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172748, -0.874452, 0.453313,
		-0.520685, -0.471742, -0.711581,
		0.836090, -0.113109, -0.536806,
		47.091045, 36.393696, 34.187435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.601082, 35.809914, 34.105812>,  <46.505783, 36.472870, 34.563198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.601082, 35.809914, 34.105812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.960236, 35.925755, 34.238438>,  <47.175728, 35.995258, 34.318012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.960236, 35.925755, 34.238438>,  <46.601082, 35.809914, 34.105812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.960236, 35.925755, 34.238438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135080, -0.898064, 0.418610,
		0.418996, -0.331076, -0.845477,
		0.897884, 0.289603, 0.331563,
		47.229599, 36.012634, 34.337906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.169258, 35.240017, 33.901310>,  <46.601082, 35.809914, 34.105812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.169258, 35.240017, 33.901310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260777, 35.465118, 34.219044>,  <47.315685, 35.600178, 34.409683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260777, 35.465118, 34.219044>,  <47.169258, 35.240017, 33.901310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.260777, 35.465118, 34.219044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055302, -0.822173, 0.566545,
		0.971903, -0.085693, -0.219228,
		0.228793, 0.562750, 0.794334,
		47.329414, 35.633942, 34.457344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.845936, 35.028118, 34.302719>,  <47.169258, 35.240017, 33.901310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.845936, 35.028118, 34.302719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587147, 35.186508, 34.563374>,  <47.431873, 35.281544, 34.719765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587147, 35.186508, 34.563374>,  <47.845936, 35.028118, 34.302719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587147, 35.186508, 34.563374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086680, -0.810856, 0.578791,
		0.757570, 0.430946, 0.490279,
		-0.646973, 0.395977, 0.651635,
		47.393055, 35.305302, 34.758865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.162956, 35.044510, 35.023651>,  <47.845936, 35.028118, 34.302719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.162956, 35.044510, 35.023651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766663, 35.017914, 34.976276>,  <47.528885, 35.001957, 34.947853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766663, 35.017914, 34.976276>,  <48.162956, 35.044510, 35.023651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.766663, 35.017914, 34.976276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015018, -0.813006, 0.582061,
		-0.134994, 0.578446, 0.804473,
		-0.990733, -0.066493, -0.118438,
		47.469444, 34.997967, 34.940746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<43.328747, 31.066578, 26.657137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.957188, 30.931620, 26.596066>,  <42.734253, 30.850645, 26.559423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.957188, 30.931620, 26.596066>,  <43.328747, 31.066578, 26.657137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957188, 30.931620, 26.596066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347507, 0.651626, 0.674257,
		-0.128002, 0.679374, -0.722542,
		-0.928899, -0.337394, -0.152678,
		42.678516, 30.830400, 26.550262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951019, 31.689695, 26.455143>,  <43.328747, 31.066578, 26.657137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951019, 31.689695, 26.455143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.721333, 31.398228, 26.604445>,  <42.583523, 31.223347, 26.694025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.721333, 31.398228, 26.604445>,  <42.951019, 31.689695, 26.455143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721333, 31.398228, 26.604445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294400, 0.609188, 0.736355,
		-0.763942, 0.312939, -0.564324,
		-0.574214, -0.728669, 0.373255,
		42.549068, 31.179626, 26.716421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279812, 31.938961, 26.620169>,  <42.951019, 31.689695, 26.455143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279812, 31.938961, 26.620169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.299511, 31.615810, 26.855083>,  <42.311329, 31.421919, 26.996033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.299511, 31.615810, 26.855083>,  <42.279812, 31.938961, 26.620169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299511, 31.615810, 26.855083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342842, 0.538602, 0.769654,
		-0.938101, -0.239252, -0.250449,
		0.049249, -0.807878, 0.587289,
		42.314285, 31.373447, 27.031271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647873, 31.783669, 26.905659>,  <42.279812, 31.938961, 26.620169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647873, 31.783669, 26.905659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.881836, 31.585520, 27.162561>,  <42.022213, 31.466631, 27.316704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.881836, 31.585520, 27.162561>,  <41.647873, 31.783669, 26.905659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881836, 31.585520, 27.162561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436711, 0.474924, 0.764023,
		-0.683498, -0.727362, 0.061452,
		0.584906, -0.495371, 0.642256,
		42.057308, 31.436909, 27.355238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257694, 31.597361, 27.506138>,  <41.647873, 31.783669, 26.905659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257694, 31.597361, 27.506138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.636078, 31.585306, 27.635290>,  <41.863110, 31.578074, 27.712782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.636078, 31.585306, 27.635290>,  <41.257694, 31.597361, 27.506138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636078, 31.585306, 27.635290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279279, 0.430335, 0.858380,
		-0.164815, -0.902166, 0.398663,
		0.945960, -0.030136, 0.322881,
		41.919865, 31.576265, 27.732155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146683, 31.694265, 28.172384>,  <41.257694, 31.597361, 27.506138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146683, 31.694265, 28.172384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.544655, 31.733780, 28.179855>,  <41.783440, 31.757488, 28.184338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.544655, 31.733780, 28.179855>,  <41.146683, 31.694265, 28.172384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544655, 31.733780, 28.179855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063552, 0.474025, 0.878215,
		0.077902, -0.874952, 0.477901,
		0.994933, 0.098786, 0.018678,
		41.843136, 31.763416, 28.185459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466354, 31.430098, 28.770802>,  <41.146683, 31.694265, 28.172384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466354, 31.430098, 28.770802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.701271, 31.729418, 28.647427>,  <41.842220, 31.909010, 28.573402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.701271, 31.729418, 28.647427>,  <41.466354, 31.430098, 28.770802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701271, 31.729418, 28.647427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085544, 0.436334, 0.895709,
		0.804841, -0.499659, 0.320269,
		0.587293, 0.748300, -0.308436,
		41.877460, 31.953907, 28.554895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886089, 31.576406, 29.324232>,  <41.466354, 31.430098, 28.770802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886089, 31.576406, 29.324232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.934635, 31.899096, 29.092899>,  <41.963760, 32.092709, 28.954100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.934635, 31.899096, 29.092899>,  <41.886089, 31.576406, 29.324232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934635, 31.899096, 29.092899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239957, 0.589202, 0.771532,
		0.963168, 0.045140, 0.265086,
		0.121362, 0.806724, -0.578332,
		41.971043, 32.141113, 28.919399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298061, 32.089657, 29.699585>,  <41.886089, 31.576406, 29.324232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298061, 32.089657, 29.699585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.104149, 32.305626, 29.424347>,  <41.987801, 32.435207, 29.259205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.104149, 32.305626, 29.424347>,  <42.298061, 32.089657, 29.699585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104149, 32.305626, 29.424347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353671, 0.598524, 0.718809,
		0.799940, 0.591824, -0.099199,
		-0.484781, 0.539920, -0.688094,
		41.958714, 32.467602, 29.217918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593506, 32.786098, 29.671284>,  <42.298061, 32.089657, 29.699585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593506, 32.786098, 29.671284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.219025, 32.812195, 29.533138>,  <41.994335, 32.827854, 29.450251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.219025, 32.812195, 29.533138>,  <42.593506, 32.786098, 29.671284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219025, 32.812195, 29.533138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183997, 0.746242, 0.639740,
		0.299462, 0.662470, -0.686627,
		-0.936198, 0.065241, -0.345364,
		41.938164, 32.831768, 29.429529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541573, 33.518627, 29.728125>,  <42.593506, 32.786098, 29.671284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541573, 33.518627, 29.728125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.164429, 33.397854, 29.671772>,  <41.938141, 33.325390, 29.637960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.164429, 33.397854, 29.671772>,  <42.541573, 33.518627, 29.728125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164429, 33.397854, 29.671772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329440, 0.781610, 0.529674,
		-0.049811, 0.545822, -0.836419,
		-0.942862, -0.301934, -0.140883,
		41.881569, 33.307274, 29.629507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109634, 34.090088, 29.619795>,  <42.541573, 33.518627, 29.728125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109634, 34.090088, 29.619795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.805111, 33.833817, 29.659664>,  <41.622395, 33.680054, 29.683586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.805111, 33.833817, 29.659664>,  <42.109634, 34.090088, 29.619795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805111, 33.833817, 29.659664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511161, 0.687625, 0.515642,
		-0.398899, 0.341615, -0.850987,
		-0.761311, -0.640680, 0.099673,
		41.576717, 33.641613, 29.689566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492672, 34.410728, 29.444067>,  <42.109634, 34.090088, 29.619795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492672, 34.410728, 29.444067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.413738, 34.113659, 29.700033>,  <41.366379, 33.935417, 29.853613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.413738, 34.113659, 29.700033>,  <41.492672, 34.410728, 29.444067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413738, 34.113659, 29.700033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393034, 0.657928, 0.642382,
		-0.898101, -0.124745, -0.421728,
		-0.197332, -0.742677, 0.639915,
		41.354538, 33.890858, 29.892008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744030, 34.480705, 29.668554>,  <41.492672, 34.410728, 29.444067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744030, 34.480705, 29.668554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.943855, 34.282658, 29.952890>,  <41.063751, 34.163830, 30.123491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.943855, 34.282658, 29.952890>,  <40.744030, 34.480705, 29.668554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943855, 34.282658, 29.952890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493062, 0.512171, 0.703257,
		-0.712270, -0.701807, 0.011734,
		0.499561, -0.495124, 0.710838,
		41.093723, 34.134121, 30.166142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291527, 34.341396, 30.156149>,  <40.744030, 34.480705, 29.668554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291527, 34.341396, 30.156149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.649876, 34.322186, 30.332829>,  <40.864887, 34.310658, 30.438837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.649876, 34.322186, 30.332829>,  <40.291527, 34.341396, 30.156149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649876, 34.322186, 30.332829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312638, 0.638230, 0.703505,
		-0.315697, -0.768346, 0.556759,
		0.895876, -0.048031, 0.441701,
		40.918640, 34.307777, 30.465340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115585, 34.361897, 30.786287>,  <40.291527, 34.341396, 30.156149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115585, 34.361897, 30.786287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.498764, 34.475624, 30.801798>,  <40.728672, 34.543861, 30.811104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.498764, 34.475624, 30.801798>,  <40.115585, 34.361897, 30.786287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498764, 34.475624, 30.801798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227554, 0.670376, 0.706268,
		0.174810, -0.685390, 0.706881,
		0.957946, 0.284317, 0.038775,
		40.786148, 34.560921, 30.813431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179337, 34.351402, 31.413927>,  <40.115585, 34.361897, 30.786287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179337, 34.351402, 31.413927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.474628, 34.586758, 31.281979>,  <40.651806, 34.727970, 31.202810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.474628, 34.586758, 31.281979>,  <40.179337, 34.351402, 31.413927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474628, 34.586758, 31.281979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060816, 0.545087, 0.836170,
		0.671801, -0.597226, 0.438184,
		0.738231, 0.588388, -0.329869,
		40.696098, 34.763275, 31.183018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668991, 34.402775, 31.981611>,  <40.179337, 34.351402, 31.413927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668991, 34.402775, 31.981611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.764099, 34.721230, 31.759035>,  <40.821163, 34.912304, 31.625488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.764099, 34.721230, 31.759035>,  <40.668991, 34.402775, 31.981611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764099, 34.721230, 31.759035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043829, 0.581081, 0.812664,
		0.970332, -0.168840, 0.173059,
		0.237771, 0.796139, -0.556441,
		40.835430, 34.960072, 31.592102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084064, 34.641247, 32.420635>,  <40.668991, 34.402775, 31.981611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084064, 34.641247, 32.420635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.971500, 34.946049, 32.187344>,  <40.903961, 35.128929, 32.047367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.971500, 34.946049, 32.187344>,  <41.084064, 34.641247, 32.420635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971500, 34.946049, 32.187344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026180, 0.613661, 0.789135,
		0.959229, 0.206804, -0.192642,
		-0.281413, 0.762005, -0.583228,
		40.887077, 35.174652, 32.012375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550892, 35.269344, 32.549728>,  <41.084064, 34.641247, 32.420635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550892, 35.269344, 32.549728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.217289, 35.419872, 32.388329>,  <41.017128, 35.510189, 32.291489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.217289, 35.419872, 32.388329>,  <41.550892, 35.269344, 32.549728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217289, 35.419872, 32.388329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124032, 0.584717, 0.801700,
		0.537628, 0.718672, -0.440984,
		-0.834010, 0.376320, -0.403498,
		40.967087, 35.532768, 32.267281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563469, 35.974625, 32.673992>,  <41.550892, 35.269344, 32.549728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563469, 35.974625, 32.673992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.178402, 35.882389, 32.617294>,  <40.947361, 35.827049, 32.583275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.178402, 35.882389, 32.617294>,  <41.563469, 35.974625, 32.673992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178402, 35.882389, 32.617294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228191, 0.409764, 0.883189,
		-0.145573, 0.882565, -0.447087,
		-0.962672, -0.230590, -0.141743,
		40.889599, 35.813213, 32.574772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307098, 36.281746, 32.708378>,  <41.563469, 35.974625, 32.673992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307098, 36.281746, 32.708378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.597168, 36.533791, 32.819431>,  <42.771210, 36.685017, 32.886063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.597168, 36.533791, 32.819431>,  <42.307098, 36.281746, 32.708378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597168, 36.533791, 32.819431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567480, -0.318548, -0.759272,
		-0.389985, 0.708158, -0.588578,
		0.725174, 0.630111, 0.277637,
		42.814720, 36.722824, 32.902721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609604, 36.578804, 32.046711>,  <42.307098, 36.281746, 32.708378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609604, 36.578804, 32.046711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.886440, 36.646835, 32.327305>,  <43.052540, 36.687653, 32.495663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.886440, 36.646835, 32.327305>,  <42.609604, 36.578804, 32.046711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886440, 36.646835, 32.327305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721811, -0.161592, -0.672961,
		-0.001102, 0.972091, -0.234601,
		0.692089, 0.170079, 0.701488,
		43.094067, 36.697861, 32.537750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108250, 37.109970, 31.740572>,  <42.609604, 36.578804, 32.046711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108250, 37.109970, 31.740572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.288372, 36.948776, 32.059277>,  <43.396446, 36.852058, 32.250500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.288372, 36.948776, 32.059277>,  <43.108250, 37.109970, 31.740572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288372, 36.948776, 32.059277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739053, -0.332508, -0.585866,
		0.501023, 0.852668, 0.148096,
		0.450306, -0.402983, 0.796761,
		43.423466, 36.827881, 32.298306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817616, 37.203579, 31.588371>,  <43.108250, 37.109970, 31.740572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817616, 37.203579, 31.588371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.788403, 36.902454, 31.850040>,  <43.770874, 36.721779, 32.007042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.788403, 36.902454, 31.850040>,  <43.817616, 37.203579, 31.588371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788403, 36.902454, 31.850040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647456, -0.534700, -0.543044,
		0.758596, 0.383888, 0.526462,
		-0.073031, -0.752811, 0.654172,
		43.766495, 36.676609, 32.046291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557091, 36.925087, 31.688866>,  <43.817616, 37.203579, 31.588371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557091, 36.925087, 31.688866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.314217, 36.644321, 31.837809>,  <44.168491, 36.475864, 31.927176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.314217, 36.644321, 31.837809>,  <44.557091, 36.925087, 31.688866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314217, 36.644321, 31.837809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508850, -0.703430, -0.496244,
		0.610248, -0.111835, 0.784277,
		-0.607181, -0.701912, 0.372359,
		44.132061, 36.433746, 31.949516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055069, 36.396404, 31.750202>,  <44.557091, 36.925087, 31.688866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055069, 36.396404, 31.750202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.689617, 36.234322, 31.763361>,  <44.470345, 36.137074, 31.771257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.689617, 36.234322, 31.763361>,  <45.055069, 36.396404, 31.750202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689617, 36.234322, 31.763361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348240, -0.821805, -0.450960,
		0.209768, -0.400556, 0.891938,
		-0.913634, -0.405205, 0.032899,
		44.415527, 36.112759, 31.773230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991016, 35.717159, 32.125565>,  <45.055069, 36.396404, 31.750202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991016, 35.717159, 32.125565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.687546, 35.689835, 31.866415>,  <44.505463, 35.673439, 31.710926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.687546, 35.689835, 31.866415>,  <44.991016, 35.717159, 32.125565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687546, 35.689835, 31.866415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435943, -0.792246, -0.426966,
		-0.484103, -0.606366, 0.630844,
		-0.758681, -0.068316, -0.647870,
		44.459942, 35.669338, 31.672054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848335, 34.994232, 32.089500>,  <44.991016, 35.717159, 32.125565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848335, 34.994232, 32.089500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.664333, 35.165154, 31.778166>,  <44.553932, 35.267708, 31.591364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.664333, 35.165154, 31.778166>,  <44.848335, 34.994232, 32.089500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664333, 35.165154, 31.778166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304172, -0.747715, -0.590256,
		-0.834194, -0.508267, 0.213975,
		-0.460000, 0.427303, -0.778339,
		44.526333, 35.293343, 31.544664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488785, 34.432934, 31.860048>,  <44.848335, 34.994232, 32.089500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488785, 34.432934, 31.860048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.508972, 34.687801, 31.552420>,  <44.521084, 34.840721, 31.367842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.508972, 34.687801, 31.552420>,  <44.488785, 34.432934, 31.860048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508972, 34.687801, 31.552420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046449, -0.770718, -0.635481,
		-0.997645, -0.003649, -0.068495,
		0.050471, 0.637166, -0.769072,
		44.524113, 34.878952, 31.321697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130184, 34.071796, 31.412180>,  <44.488785, 34.432934, 31.860048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130184, 34.071796, 31.412180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.284756, 34.352283, 31.172523>,  <44.377499, 34.520576, 31.028728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.284756, 34.352283, 31.172523>,  <44.130184, 34.071796, 31.412180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284756, 34.352283, 31.172523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093531, -0.676048, -0.730898,
		-0.917566, 0.226399, -0.326827,
		0.386425, 0.701216, -0.599143,
		44.400684, 34.562649, 30.992781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754875, 34.025394, 30.783634>,  <44.130184, 34.071796, 31.412180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754875, 34.025394, 30.783634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.103569, 34.184856, 30.669687>,  <44.312786, 34.280533, 30.601320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.103569, 34.184856, 30.669687>,  <43.754875, 34.025394, 30.783634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103569, 34.184856, 30.669687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067008, -0.478930, -0.875292,
		-0.485368, 0.782114, -0.390788,
		0.871738, 0.398653, -0.284865,
		44.365089, 34.304451, 30.584229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626423, 34.337978, 30.194445>,  <43.754875, 34.025394, 30.783634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626423, 34.337978, 30.194445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.023499, 34.289818, 30.191029>,  <44.261745, 34.260921, 30.188980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.023499, 34.289818, 30.191029>,  <43.626423, 34.337978, 30.194445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023499, 34.289818, 30.191029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057637, -0.410674, -0.909959,
		0.106054, 0.903798, -0.414611,
		0.992689, -0.120402, -0.008539,
		44.321304, 34.253696, 30.188467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908440, 34.595440, 29.552238>,  <43.626423, 34.337978, 30.194445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908440, 34.595440, 29.552238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.230995, 34.381119, 29.652359>,  <44.424530, 34.252525, 29.712431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.230995, 34.381119, 29.652359>,  <43.908440, 34.595440, 29.552238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230995, 34.381119, 29.652359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058538, -0.348853, -0.935347,
		0.588478, 0.768909, -0.249948,
		0.806392, -0.535800, 0.250303,
		44.472912, 34.220379, 29.727449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239822, 34.616901, 28.954248>,  <43.908440, 34.595440, 29.552238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239822, 34.616901, 28.954248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.422337, 34.319057, 29.149128>,  <44.531845, 34.140350, 29.266056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.422337, 34.319057, 29.149128>,  <44.239822, 34.616901, 28.954248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422337, 34.319057, 29.149128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113621, -0.494280, -0.861846,
		0.882551, 0.448601, -0.140928,
		0.456282, -0.744611, 0.487198,
		44.559219, 34.095673, 29.295288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877213, 34.477692, 28.681709>,  <44.239822, 34.616901, 28.954248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877213, 34.477692, 28.681709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.758453, 34.131973, 28.844116>,  <44.687199, 33.924541, 28.941561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.758453, 34.131973, 28.844116>,  <44.877213, 34.477692, 28.681709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758453, 34.131973, 28.844116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101451, -0.451333, -0.886570,
		0.949505, -0.222028, 0.221682,
		-0.296896, -0.864293, 0.406018,
		44.669384, 33.872684, 28.965921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272385, 33.945938, 28.307863>,  <44.877213, 34.477692, 28.681709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272385, 33.945938, 28.307863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.019367, 33.726269, 28.526331>,  <44.867558, 33.594467, 28.657412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.019367, 33.726269, 28.526331>,  <45.272385, 33.945938, 28.307863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019367, 33.726269, 28.526331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199543, -0.796909, -0.570192,
		0.748383, -0.251685, 0.613660,
		-0.632540, -0.549173, 0.546171,
		44.829605, 33.561516, 28.690182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576340, 33.250359, 28.530834>,  <45.272385, 33.945938, 28.307863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576340, 33.250359, 28.530834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.180016, 33.202114, 28.555309>,  <44.942219, 33.173168, 28.569994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.180016, 33.202114, 28.555309>,  <45.576340, 33.250359, 28.530834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180016, 33.202114, 28.555309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079381, -0.884925, -0.458919,
		0.109496, -0.449846, 0.886369,
		-0.990812, -0.120611, 0.061187,
		44.882771, 33.165932, 28.573666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541325, 32.620979, 28.743551>,  <45.576340, 33.250359, 28.530834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541325, 32.620979, 28.743551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.188774, 32.699913, 28.571861>,  <44.977245, 32.747272, 28.468847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.188774, 32.699913, 28.571861>,  <45.541325, 32.620979, 28.743551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188774, 32.699913, 28.571861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113346, -0.793706, -0.597648,
		-0.458614, -0.575405, 0.677188,
		-0.881377, 0.197333, -0.429225,
		44.924362, 32.759113, 28.443094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147179, 31.905956, 28.725851>,  <45.541325, 32.620979, 28.743551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147179, 31.905956, 28.725851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.991825, 32.157810, 28.456715>,  <44.898613, 32.308922, 28.295233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.991825, 32.157810, 28.456715>,  <45.147179, 31.905956, 28.725851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991825, 32.157810, 28.456715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033311, -0.720093, -0.693078,
		-0.920895, -0.291595, 0.258700,
		-0.388386, 0.629634, -0.672843,
		44.875309, 32.346699, 28.254862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<44.600956, 31.526726, 28.395199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.670582, 31.807432, 28.118874>,  <44.712357, 31.975857, 27.953079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.670582, 31.807432, 28.118874>,  <44.600956, 31.526726, 28.395199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670582, 31.807432, 28.118874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149080, -0.674656, -0.722921,
		-0.973383, 0.228825, -0.012817,
		0.174069, 0.701768, -0.690812,
		44.722801, 32.017963, 27.911631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030186, 31.480474, 27.919722>,  <44.600956, 31.526726, 28.395199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030186, 31.480474, 27.919722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.341934, 31.647100, 27.732506>,  <44.528984, 31.747076, 27.620176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.341934, 31.647100, 27.732506>,  <44.030186, 31.480474, 27.919722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341934, 31.647100, 27.732506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196660, -0.546608, -0.813968,
		-0.594903, 0.726426, -0.344088,
		0.779368, 0.416564, -0.468038,
		44.575745, 31.772070, 27.592094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752247, 31.660034, 27.331192>,  <44.030186, 31.480474, 27.919722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752247, 31.660034, 27.331192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.150066, 31.658659, 27.289518>,  <44.388760, 31.657835, 27.264515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.150066, 31.658659, 27.289518>,  <43.752247, 31.660034, 27.331192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150066, 31.658659, 27.289518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094129, -0.459017, -0.883427,
		-0.044787, 0.888421, -0.456840,
		0.994552, -0.003436, -0.104184,
		44.448433, 31.657629, 27.258263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865929, 31.878342, 26.699558>,  <43.752247, 31.660034, 27.331192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865929, 31.878342, 26.699558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.210049, 31.688263, 26.773386>,  <44.416523, 31.574217, 26.817682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.210049, 31.688263, 26.773386>,  <43.865929, 31.878342, 26.699558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210049, 31.688263, 26.773386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019915, -0.330447, -0.943614,
		0.509391, 0.815471, -0.274822,
		0.860305, -0.475196, 0.184567,
		44.468140, 31.545704, 26.828756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191639, 32.001011, 26.081831>,  <43.865929, 31.878342, 26.699558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191639, 32.001011, 26.081831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.403294, 31.702600, 26.243551>,  <44.530285, 31.523554, 26.340584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.403294, 31.702600, 26.243551>,  <44.191639, 32.001011, 26.081831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403294, 31.702600, 26.243551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276432, -0.298920, -0.913363,
		0.802248, 0.595053, 0.048057,
		0.529134, -0.746029, 0.404300,
		44.562035, 31.478792, 26.364841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907825, 32.065460, 25.902805>,  <44.191639, 32.001011, 26.081831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907825, 32.065460, 25.902805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.888985, 31.675699, 25.990734>,  <44.877678, 31.441843, 26.043491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.888985, 31.675699, 25.990734>,  <44.907825, 32.065460, 25.902805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888985, 31.675699, 25.990734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514347, -0.212309, -0.830886,
		0.856287, 0.073926, 0.511182,
		-0.047105, -0.974402, 0.219822,
		44.874855, 31.383379, 26.056681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567299, 31.703112, 25.665237>,  <44.907825, 32.065460, 25.902805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567299, 31.703112, 25.665237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.304729, 31.404150, 25.706221>,  <45.147190, 31.224773, 25.730810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.304729, 31.404150, 25.706221>,  <45.567299, 31.703112, 25.665237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304729, 31.404150, 25.706221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416963, -0.472633, -0.776376,
		0.628692, -0.466909, 0.621886,
		-0.656421, -0.747405, 0.102457,
		45.107803, 31.179928, 25.736958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.885452, 31.003935, 25.518648>,  <45.567299, 31.703112, 25.665237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.885452, 31.003935, 25.518648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.489986, 30.950918, 25.490461>,  <45.252705, 30.919107, 25.473549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.489986, 30.950918, 25.490461>,  <45.885452, 31.003935, 25.518648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489986, 30.950918, 25.490461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131899, -0.542957, -0.829337,
		0.071663, -0.829234, 0.554288,
		-0.988669, -0.132542, -0.070465,
		45.193386, 30.911156, 25.469322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.921513, 30.358410, 25.287333>,  <45.885452, 31.003935, 25.518648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.921513, 30.358410, 25.287333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.557632, 30.498674, 25.198355>,  <45.339306, 30.582832, 25.144968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.557632, 30.498674, 25.198355>,  <45.921513, 30.358410, 25.287333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557632, 30.498674, 25.198355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105356, -0.323251, -0.940430,
		-0.401674, -0.878947, 0.257118,
		-0.909702, 0.350658, -0.222444,
		45.284721, 30.603872, 25.131620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632137, 29.792419, 25.033319>,  <45.921513, 30.358410, 25.287333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632137, 29.792419, 25.033319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.442585, 30.115730, 24.893536>,  <45.328854, 30.309717, 24.809666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.442585, 30.115730, 24.893536>,  <45.632137, 29.792419, 25.033319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442585, 30.115730, 24.893536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176908, -0.301371, -0.936952,
		-0.862635, -0.505826, -0.000177,
		-0.473882, 0.808279, -0.349458,
		45.300419, 30.358213, 24.788698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103161, 29.558809, 24.531788>,  <45.632137, 29.792419, 25.033319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103161, 29.558809, 24.531788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.152119, 29.945354, 24.441311>,  <45.181492, 30.177282, 24.387024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.152119, 29.945354, 24.441311>,  <45.103161, 29.558809, 24.531788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152119, 29.945354, 24.441311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134058, -0.241915, -0.960992,
		-0.983386, 0.087295, -0.159157,
		0.122392, 0.966363, -0.226193,
		45.188835, 30.235264, 24.373453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802166, 29.680269, 23.875145>,  <45.103161, 29.558809, 24.531788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802166, 29.680269, 23.875145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.012489, 30.017859, 23.917559>,  <45.138683, 30.220411, 23.943007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.012489, 30.017859, 23.917559>,  <44.802166, 29.680269, 23.875145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012489, 30.017859, 23.917559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135958, 0.039669, -0.989920,
		-0.839670, 0.534920, -0.093886,
		0.525804, 0.843971, 0.106036,
		45.170231, 30.271049, 23.949369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596092, 30.057718, 23.403959>,  <44.802166, 29.680269, 23.875145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596092, 30.057718, 23.403959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.955830, 30.224293, 23.457275>,  <45.171673, 30.324238, 23.489265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.955830, 30.224293, 23.457275>,  <44.596092, 30.057718, 23.403959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955830, 30.224293, 23.457275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139045, 0.016634, -0.990146,
		-0.414550, 0.909013, -0.042944,
		0.899341, 0.416436, 0.133289,
		45.225632, 30.349224, 23.497263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581440, 30.592779, 23.049532>,  <44.596092, 30.057718, 23.403959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581440, 30.592779, 23.049532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.970215, 30.507589, 23.089500>,  <45.203480, 30.456476, 23.113482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.970215, 30.507589, 23.089500>,  <44.581440, 30.592779, 23.049532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970215, 30.507589, 23.089500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140210, 0.183369, -0.972994,
		0.188898, 0.959697, 0.208084,
		0.971935, -0.212972, 0.099922,
		45.261795, 30.443697, 23.119476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993484, 31.200397, 22.701765>,  <44.581440, 30.592779, 23.049532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993484, 31.200397, 22.701765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.276600, 30.918655, 22.723381>,  <45.446468, 30.749611, 22.736351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.276600, 30.918655, 22.723381>,  <44.993484, 31.200397, 22.701765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276600, 30.918655, 22.723381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320074, 0.251556, -0.913385,
		0.629753, 0.663780, 0.403494,
		0.707788, -0.704355, 0.054041,
		45.488937, 30.707350, 22.739594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549698, 31.494415, 22.349756>,  <44.993484, 31.200397, 22.701765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549698, 31.494415, 22.349756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.654884, 31.108500, 22.351971>,  <45.717995, 30.876949, 22.353300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.654884, 31.108500, 22.351971>,  <45.549698, 31.494415, 22.349756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654884, 31.108500, 22.351971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499010, 0.131092, -0.856624,
		0.825736, 0.228023, 0.515912,
		0.262962, -0.964790, 0.005538,
		45.733772, 30.819063, 22.353632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243546, 31.450119, 22.190182>,  <45.549698, 31.494415, 22.349756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243546, 31.450119, 22.190182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.096771, 31.089985, 22.096581>,  <46.008705, 30.873905, 22.040421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.096771, 31.089985, 22.096581>,  <46.243546, 31.450119, 22.190182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.096771, 31.089985, 22.096581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513260, 0.013847, -0.858121,
		0.775836, -0.434980, 0.457024,
		-0.366937, -0.900334, -0.234001,
		45.986691, 30.819885, 22.026381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.817963, 31.049347, 21.910095>,  <46.243546, 31.450119, 22.190182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.817963, 31.049347, 21.910095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.488995, 30.868645, 21.771791>,  <46.291615, 30.760223, 21.688808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.488995, 30.868645, 21.771791>,  <46.817963, 31.049347, 21.910095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488995, 30.868645, 21.771791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435456, -0.108800, -0.893611,
		0.366075, -0.885483, 0.286198,
		-0.822416, -0.451755, -0.345760,
		46.242271, 30.733118, 21.668064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.056515, 30.438541, 21.634796>,  <46.817963, 31.049347, 21.910095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.056515, 30.438541, 21.634796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.693008, 30.466326, 21.470205>,  <46.474903, 30.482996, 21.371450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.693008, 30.466326, 21.470205>,  <47.056515, 30.438541, 21.634796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.693008, 30.466326, 21.470205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392394, -0.193300, -0.899256,
		-0.142000, -0.978678, 0.148410,
		-0.908770, 0.069459, -0.411476,
		46.420376, 30.487164, 21.346762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.037628, 29.870840, 21.219795>,  <47.056515, 30.438541, 21.634796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.037628, 29.870840, 21.219795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.782845, 30.125273, 21.045586>,  <46.629974, 30.277933, 20.941059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.782845, 30.125273, 21.045586>,  <47.037628, 29.870840, 21.219795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.782845, 30.125273, 21.045586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463555, -0.135373, -0.875666,
		-0.615955, -0.759652, -0.208633,
		-0.636958, 0.636084, -0.435524,
		46.591759, 30.316097, 20.914928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642067, 29.492788, 20.662485>,  <47.037628, 29.870840, 21.219795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642067, 29.492788, 20.662485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.611351, 29.881664, 20.573984>,  <46.592922, 30.114990, 20.520884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.611351, 29.881664, 20.573984>,  <46.642067, 29.492788, 20.662485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.611351, 29.881664, 20.573984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334539, -0.183920, -0.924260,
		-0.939248, -0.144989, -0.311113,
		-0.076787, 0.972189, -0.221250,
		46.588314, 30.173321, 20.507608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.382401, 29.456507, 20.031404>,  <46.642067, 29.492788, 20.662485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.382401, 29.456507, 20.031404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.543831, 29.820276, 20.071550>,  <46.640690, 30.038538, 20.095638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.543831, 29.820276, 20.071550>,  <46.382401, 29.456507, 20.031404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543831, 29.820276, 20.071550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489100, -0.121732, -0.863691,
		-0.773244, 0.397654, -0.493928,
		0.403577, 0.909424, 0.100364,
		46.664906, 30.093103, 20.101660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274670, 29.814301, 19.422300>,  <46.382401, 29.456507, 20.031404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274670, 29.814301, 19.422300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.589272, 29.981138, 19.604486>,  <46.778030, 30.081242, 19.713799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.589272, 29.981138, 19.604486>,  <46.274670, 29.814301, 19.422300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.589272, 29.981138, 19.604486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572359, -0.215236, -0.791251,
		-0.231993, 0.883009, -0.408011,
		0.786501, 0.417094, 0.455465,
		46.825222, 30.106266, 19.741125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939285, 29.103634, 19.374111>,  <46.274670, 29.814301, 19.422300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939285, 29.103634, 19.374111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.573185, 29.153257, 19.220787>,  <45.353523, 29.183031, 19.128792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.573185, 29.153257, 19.220787>,  <45.939285, 29.103634, 19.374111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.573185, 29.153257, 19.220787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376639, 0.074321, 0.923374,
		0.143041, 0.989488, -0.021297,
		-0.915250, 0.124058, -0.383311,
		45.298611, 29.190475, 19.105793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557934, 29.615374, 19.767891>,  <45.939285, 29.103634, 19.374111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557934, 29.615374, 19.767891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.264828, 29.416613, 19.581924>,  <45.088966, 29.297356, 19.470345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.264828, 29.416613, 19.581924>,  <45.557934, 29.615374, 19.767891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264828, 29.416613, 19.581924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560245, 0.052734, 0.826647,
		-0.386247, 0.866202, -0.317029,
		-0.732761, -0.496904, -0.464917,
		45.044998, 29.267542, 19.442450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832737, 30.028727, 19.981916>,  <45.557934, 29.615374, 19.767891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832737, 30.028727, 19.981916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.774475, 29.655104, 19.851490>,  <44.739517, 29.430929, 19.773233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.774475, 29.655104, 19.851490>,  <44.832737, 30.028727, 19.981916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774475, 29.655104, 19.851490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787302, -0.090153, 0.609941,
		-0.599116, 0.345554, -0.722255,
		-0.145655, -0.934058, -0.326068,
		44.730778, 29.374886, 19.753670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166409, 29.957127, 19.860769>,  <44.832737, 30.028727, 19.981916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166409, 29.957127, 19.860769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.247395, 29.569719, 19.918709>,  <44.295986, 29.337275, 19.953472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.247395, 29.569719, 19.918709>,  <44.166409, 29.957127, 19.860769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247395, 29.569719, 19.918709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885447, -0.117864, 0.449546,
		-0.418321, -0.219272, -0.881435,
		0.202462, -0.968519, 0.144849,
		44.308132, 29.279163, 19.962164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458286, 29.656324, 19.808762>,  <44.166409, 29.957127, 19.860769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458286, 29.656324, 19.808762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.697403, 29.401392, 20.003271>,  <43.840874, 29.248432, 20.119976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.697403, 29.401392, 20.003271>,  <43.458286, 29.656324, 19.808762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697403, 29.401392, 20.003271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687158, -0.094965, 0.720275,
		-0.412874, -0.764717, -0.494715,
		0.597787, -0.637330, 0.486272,
		43.876740, 29.210194, 20.149153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021675, 29.207214, 20.197378>,  <43.458286, 29.656324, 19.808762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021675, 29.207214, 20.197378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.357155, 29.118975, 20.396547>,  <43.558441, 29.066031, 20.516048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.357155, 29.118975, 20.396547>,  <43.021675, 29.207214, 20.197378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357155, 29.118975, 20.396547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512751, -0.011774, 0.858457,
		-0.183514, -0.975293, -0.122988,
		0.838695, -0.220601, 0.497921,
		43.608765, 29.052795, 20.545923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796757, 28.676292, 20.687119>,  <43.021675, 29.207214, 20.197378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796757, 28.676292, 20.687119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.142357, 28.830540, 20.816614>,  <43.349716, 28.923088, 20.894312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.142357, 28.830540, 20.816614>,  <42.796757, 28.676292, 20.687119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142357, 28.830540, 20.816614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312233, -0.094069, 0.945337,
		0.394992, -0.917851, 0.039127,
		0.863998, 0.385617, 0.323739,
		43.401558, 28.946224, 20.913736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940025, 28.295172, 21.229948>,  <42.796757, 28.676292, 20.687119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940025, 28.295172, 21.229948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.127094, 28.646774, 21.267113>,  <43.239334, 28.857735, 21.289412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.127094, 28.646774, 21.267113>,  <42.940025, 28.295172, 21.229948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127094, 28.646774, 21.267113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248885, 0.030094, 0.968065,
		0.848138, -0.475862, 0.232846,
		0.467673, 0.879005, 0.092911,
		43.267395, 28.910477, 21.294987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391384, 28.356541, 21.790913>,  <42.940025, 28.295172, 21.229948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391384, 28.356541, 21.790913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.269741, 28.729038, 21.710604>,  <43.196754, 28.952536, 21.662418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.269741, 28.729038, 21.710604>,  <43.391384, 28.356541, 21.790913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269741, 28.729038, 21.710604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254169, 0.123802, 0.959204,
		0.918107, 0.342727, 0.199044,
		-0.304103, 0.931242, -0.200774,
		43.178509, 29.008411, 21.650372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576656, 28.648010, 22.514444>,  <43.391384, 28.356541, 21.790913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576656, 28.648010, 22.514444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.394428, 28.926226, 22.292208>,  <43.285091, 29.093155, 22.158865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.394428, 28.926226, 22.292208>,  <43.576656, 28.648010, 22.514444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394428, 28.926226, 22.292208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231797, 0.509906, 0.828412,
		0.859491, 0.506186, -0.071076,
		-0.455572, 0.695537, -0.555592,
		43.257755, 29.134888, 22.125530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952320, 29.308111, 22.570265>,  <43.576656, 28.648010, 22.514444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952320, 29.308111, 22.570265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.560204, 29.369486, 22.520479>,  <43.324936, 29.406311, 22.490608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.560204, 29.369486, 22.520479>,  <43.952320, 29.308111, 22.570265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560204, 29.369486, 22.520479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011508, 0.584558, 0.811270,
		0.197235, 0.796712, -0.571270,
		-0.980289, 0.153437, -0.124463,
		43.266117, 29.415516, 22.483141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894287, 29.976742, 22.712317>,  <43.952320, 29.308111, 22.570265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894287, 29.976742, 22.712317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.525887, 29.826572, 22.753916>,  <43.304848, 29.736471, 22.778875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.525887, 29.826572, 22.753916>,  <43.894287, 29.976742, 22.712317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525887, 29.826572, 22.753916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056756, 0.393425, 0.917603,
		-0.385404, 0.839211, -0.383653,
		-0.921001, -0.375422, 0.103998,
		43.249588, 29.713945, 22.785114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589485, 30.404087, 23.109516>,  <43.894287, 29.976742, 22.712317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589485, 30.404087, 23.109516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.346561, 30.088942, 23.150398>,  <43.200806, 29.899855, 23.174927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.346561, 30.088942, 23.150398>,  <43.589485, 30.404087, 23.109516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346561, 30.088942, 23.150398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170291, 0.254749, 0.951895,
		-0.776001, 0.560689, -0.288877,
		-0.607309, -0.787865, 0.102205,
		43.164368, 29.852583, 23.181059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046658, 30.751188, 23.368570>,  <43.589485, 30.404087, 23.109516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046658, 30.751188, 23.368570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.955635, 30.370516, 23.451054>,  <42.901024, 30.142113, 23.500544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.955635, 30.370516, 23.451054>,  <43.046658, 30.751188, 23.368570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955635, 30.370516, 23.451054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354626, 0.278210, 0.892659,
		-0.906896, 0.130001, -0.400799,
		-0.227552, -0.951682, 0.206206,
		42.887371, 30.085011, 23.512915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362232, 30.722996, 23.736771>,  <43.046658, 30.751188, 23.368570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362232, 30.722996, 23.736771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.553890, 30.382338, 23.821735>,  <42.668884, 30.177942, 23.872715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.553890, 30.382338, 23.821735>,  <42.362232, 30.722996, 23.736771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553890, 30.382338, 23.821735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239093, 0.106212, 0.965170,
		-0.844544, -0.513243, -0.152732,
		0.479145, -0.851645, 0.212413,
		42.697636, 30.126844, 23.885460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927544, 30.427191, 24.113600>,  <42.362232, 30.722996, 23.736771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927544, 30.427191, 24.113600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.261074, 30.233582, 24.219769>,  <42.461193, 30.117416, 24.283470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.261074, 30.233582, 24.219769>,  <41.927544, 30.427191, 24.113600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261074, 30.233582, 24.219769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292638, 0.020118, 0.956011,
		-0.468072, -0.874824, -0.124869,
		0.833830, -0.484024, 0.265424,
		42.511223, 30.088375, 24.299397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788662, 29.973988, 24.661415>,  <41.927544, 30.427191, 24.113600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788662, 29.973988, 24.661415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.187420, 29.995144, 24.684734>,  <42.426674, 30.007837, 24.698727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.187420, 29.995144, 24.684734>,  <41.788662, 29.973988, 24.661415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187420, 29.995144, 24.684734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069497, 0.243585, 0.967386,
		0.036965, -0.968436, 0.246505,
		0.996897, 0.052891, 0.058300,
		42.486488, 30.011011, 24.702225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062904, 29.456732, 25.232748>,  <41.788662, 29.973988, 24.661415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062904, 29.456732, 25.232748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.332363, 29.747705, 25.180531>,  <42.494038, 29.922289, 25.149200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.332363, 29.747705, 25.180531>,  <42.062904, 29.456732, 25.232748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332363, 29.747705, 25.180531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045519, 0.217136, 0.975080,
		0.737650, -0.650917, 0.179385,
		0.673647, 0.727433, -0.130542,
		42.534458, 29.965935, 25.141369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608292, 29.315710, 25.745882>,  <42.062904, 29.456732, 25.232748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608292, 29.315710, 25.745882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.606106, 29.696009, 25.621916>,  <42.604794, 29.924189, 25.547535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.606106, 29.696009, 25.621916>,  <42.608292, 29.315710, 25.745882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606106, 29.696009, 25.621916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035346, 0.309912, 0.950108,
		0.999360, -0.005766, -0.035298,
		-0.005461, 0.950748, -0.309917,
		42.604469, 29.981234, 25.528940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878838, 29.668434, 26.338207>,  <42.608292, 29.315710, 25.745882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878838, 29.668434, 26.338207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.768959, 29.996239, 26.137033>,  <42.703033, 30.192923, 26.016329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.768959, 29.996239, 26.137033>,  <42.878838, 29.668434, 26.338207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768959, 29.996239, 26.137033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100137, 0.495828, 0.862628,
		0.956303, 0.287321, -0.054138,
		-0.274694, 0.819513, -0.502933,
		42.686550, 30.242092, 25.986153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338223, 30.211376, 26.546478>,  <42.878838, 29.668434, 26.338207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338223, 30.211376, 26.546478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.999714, 30.359278, 26.393063>,  <42.796608, 30.448019, 26.301014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.999714, 30.359278, 26.393063>,  <43.338223, 30.211376, 26.546478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999714, 30.359278, 26.393063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100160, 0.596660, 0.796219,
		0.523246, 0.712236, -0.467904,
		-0.846275, 0.369754, -0.383537,
		42.745831, 30.470203, 26.278002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.508125, 33.576363, 30.199831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.209614, 33.783638, 30.032717>,  <45.030506, 33.908005, 29.932449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.209614, 33.783638, 30.032717>,  <45.508125, 33.576363, 30.199831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209614, 33.783638, 30.032717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035375, 0.657640, 0.752501,
		0.664690, 0.546798, -0.509116,
		-0.746281, 0.518190, -0.417784,
		44.985729, 33.939095, 29.907381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660454, 34.245300, 30.242496>,  <45.508125, 33.576363, 30.199831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660454, 34.245300, 30.242496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261215, 34.239002, 30.218630>,  <45.021671, 34.235222, 30.204309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261215, 34.239002, 30.218630>,  <45.660454, 34.245300, 30.242496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261215, 34.239002, 30.218630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054555, 0.677085, 0.733880,
		0.028843, 0.735736, -0.676654,
		-0.998094, -0.015748, -0.059667,
		44.961788, 34.234280, 30.200729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.391533, 34.924686, 30.143654>,  <45.660454, 34.245300, 30.242496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.391533, 34.924686, 30.143654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095425, 34.710434, 30.306185>,  <44.917759, 34.581882, 30.403704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095425, 34.710434, 30.306185>,  <45.391533, 34.924686, 30.143654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095425, 34.710434, 30.306185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116149, 0.697178, 0.707427,
		-0.662203, 0.476491, -0.578311,
		-0.740268, -0.535630, 0.406329,
		44.873344, 34.549744, 30.428083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231155, 35.459232, 30.430622>,  <45.391533, 34.924686, 30.143654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231155, 35.459232, 30.430622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968102, 35.178215, 30.539396>,  <44.810268, 35.009605, 30.604662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968102, 35.178215, 30.539396>,  <45.231155, 35.459232, 30.430622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968102, 35.178215, 30.539396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414916, 0.639075, 0.647633,
		-0.628779, 0.313074, -0.711774,
		-0.657634, -0.702544, 0.271937,
		44.770813, 34.967453, 30.620977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581146, 35.639938, 30.286081>,  <45.231155, 35.459232, 30.430622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581146, 35.639938, 30.286081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.540176, 35.412437, 30.612524>,  <44.515594, 35.275936, 30.808390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.540176, 35.412437, 30.612524>,  <44.581146, 35.639938, 30.286081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540176, 35.412437, 30.612524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407661, 0.772362, 0.487104,
		-0.907371, -0.282804, -0.310967,
		-0.102424, -0.568753, 0.816106,
		44.509449, 35.241810, 30.857355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002148, 35.909737, 30.569693>,  <44.581146, 35.639938, 30.286081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002148, 35.909737, 30.569693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136036, 35.690639, 30.876402>,  <44.216370, 35.559181, 31.060429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136036, 35.690639, 30.876402>,  <44.002148, 35.909737, 30.569693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136036, 35.690639, 30.876402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454167, 0.619192, 0.640573,
		-0.825650, -0.562654, -0.041513,
		0.334716, -0.547743, 0.766774,
		44.236450, 35.526318, 31.106434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422295, 35.767849, 30.946566>,  <44.002148, 35.909737, 30.569693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422295, 35.767849, 30.946566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746944, 35.738834, 31.178429>,  <43.941734, 35.721428, 31.317547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746944, 35.738834, 31.178429>,  <43.422295, 35.767849, 30.946566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746944, 35.738834, 31.178429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436387, 0.584390, 0.684145,
		-0.388370, -0.808225, 0.442654,
		0.811625, -0.072533, 0.579658,
		43.990433, 35.717075, 31.352325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201340, 35.638130, 31.693748>,  <43.422295, 35.767849, 30.946566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201340, 35.638130, 31.693748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573914, 35.781410, 31.719423>,  <43.797459, 35.867378, 31.734829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573914, 35.781410, 31.719423>,  <43.201340, 35.638130, 31.693748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573914, 35.781410, 31.719423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290015, 0.624135, 0.725498,
		0.219809, -0.694371, 0.685225,
		0.931437, 0.358196, 0.064187,
		43.853344, 35.888870, 31.738680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337009, 35.524235, 32.337746>,  <43.201340, 35.638130, 31.693748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337009, 35.524235, 32.337746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.586510, 35.810493, 32.212025>,  <43.736210, 35.982246, 32.136593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.586510, 35.810493, 32.212025>,  <43.337009, 35.524235, 32.337746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586510, 35.810493, 32.212025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361535, 0.620678, 0.695738,
		0.692984, -0.320334, 0.645878,
		0.623751, 0.715643, -0.314308,
		43.773636, 36.025185, 32.117733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785934, 35.724060, 32.889900>,  <43.337009, 35.524235, 32.337746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785934, 35.724060, 32.889900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758904, 36.026360, 32.629356>,  <43.742687, 36.207741, 32.473030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758904, 36.026360, 32.629356>,  <43.785934, 35.724060, 32.889900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758904, 36.026360, 32.629356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303066, 0.606458, 0.735092,
		0.950571, 0.247080, 0.188061,
		-0.067575, 0.755752, -0.651363,
		43.738632, 36.253086, 32.433949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992077, 36.181385, 33.319221>,  <43.785934, 35.724060, 32.889900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992077, 36.181385, 33.319221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.807343, 36.359894, 33.012615>,  <43.696503, 36.466999, 32.828651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.807343, 36.359894, 33.012615>,  <43.992077, 36.181385, 33.319221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807343, 36.359894, 33.012615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466983, 0.612383, 0.637898,
		0.754077, 0.652556, -0.074421,
		-0.461839, 0.446271, -0.766517,
		43.668793, 36.493774, 32.782661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094345, 36.874660, 33.506664>,  <43.992077, 36.181385, 33.319221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094345, 36.874660, 33.506664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.805931, 36.839951, 33.231689>,  <43.632881, 36.819126, 33.066704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.805931, 36.839951, 33.231689>,  <44.094345, 36.874660, 33.506664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805931, 36.839951, 33.231689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547767, 0.678964, 0.488836,
		0.424330, 0.729026, -0.537090,
		-0.721038, -0.086772, -0.687441,
		43.589619, 36.813919, 33.025455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851192, 37.537701, 33.268673>,  <44.094345, 36.874660, 33.506664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851192, 37.537701, 33.268673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.555405, 37.285976, 33.173046>,  <43.377934, 37.134941, 33.115669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.555405, 37.285976, 33.173046>,  <43.851192, 37.537701, 33.268673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555405, 37.285976, 33.173046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642762, 0.554466, 0.528606,
		-0.200101, 0.544552, -0.814508,
		-0.739471, -0.629309, -0.239068,
		43.333565, 37.097183, 33.101326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398720, 37.908344, 32.904099>,  <43.851192, 37.537701, 33.268673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398720, 37.908344, 32.904099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210014, 37.604839, 33.083752>,  <43.096790, 37.422737, 33.191544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210014, 37.604839, 33.083752>,  <43.398720, 37.908344, 32.904099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210014, 37.604839, 33.083752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461934, 0.646568, 0.607098,
		-0.751036, 0.078938, -0.655525,
		-0.471765, -0.758762, 0.449131,
		43.068485, 37.377213, 33.218491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303799, 38.556347, 32.753693>,  <43.398720, 37.908344, 32.904099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303799, 38.556347, 32.753693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156727, 38.901524, 32.615047>,  <43.068485, 39.108631, 32.531860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156727, 38.901524, 32.615047>,  <43.303799, 38.556347, 32.753693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156727, 38.901524, 32.615047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291379, -0.460856, -0.838278,
		-0.883126, -0.207221, 0.420890,
		-0.367678, 0.862943, -0.346614,
		43.046425, 39.160408, 32.511063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711056, 38.328865, 32.492912>,  <43.303799, 38.556347, 32.753693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711056, 38.328865, 32.492912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.803101, 38.682743, 32.330742>,  <42.858326, 38.895069, 32.233440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.803101, 38.682743, 32.330742>,  <42.711056, 38.328865, 32.492912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.803101, 38.682743, 32.330742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205670, -0.362986, -0.908813,
		-0.951183, 0.292512, 0.098427,
		0.230112, 0.884691, -0.405427,
		42.872135, 38.948151, 32.209114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114017, 38.503437, 31.965771>,  <42.711056, 38.328865, 32.492912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114017, 38.503437, 31.965771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.440254, 38.710960, 31.863276>,  <42.635994, 38.835472, 31.801779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.440254, 38.710960, 31.863276>,  <42.114017, 38.503437, 31.965771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440254, 38.710960, 31.863276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126161, -0.272741, -0.953780,
		-0.564711, 0.810219, -0.156992,
		0.815588, 0.518804, -0.256238,
		42.684929, 38.866600, 31.786404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767075, 38.884808, 31.507547>,  <42.114017, 38.503437, 31.965771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767075, 38.884808, 31.507547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.162472, 38.874294, 31.447958>,  <42.399712, 38.867989, 31.412205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.162472, 38.874294, 31.447958>,  <41.767075, 38.884808, 31.507547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162472, 38.874294, 31.447958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150794, -0.249646, -0.956524,
		-0.012054, 0.967980, -0.250736,
		0.988492, -0.026280, -0.148975,
		42.459019, 38.866409, 31.403265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777500, 38.973434, 30.883747>,  <41.767075, 38.884808, 31.507547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777500, 38.973434, 30.883747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161873, 38.882431, 30.946793>,  <42.392498, 38.827827, 30.984619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161873, 38.882431, 30.946793>,  <41.777500, 38.973434, 30.883747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161873, 38.882431, 30.946793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095427, -0.262206, -0.960282,
		0.259803, 0.937810, -0.230252,
		0.960935, -0.227512, 0.157614,
		42.450153, 38.814178, 30.994078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113869, 39.439693, 30.401384>,  <41.777500, 38.973434, 30.883747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113869, 39.439693, 30.401384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327099, 39.112930, 30.489471>,  <42.455036, 38.916874, 30.542324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327099, 39.112930, 30.489471>,  <42.113869, 39.439693, 30.401384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327099, 39.112930, 30.489471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166071, -0.154190, -0.973985,
		0.829609, 0.555778, 0.053470,
		0.533075, -0.816906, 0.220216,
		42.487022, 38.867859, 30.555536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653225, 39.459404, 29.858772>,  <42.113869, 39.439693, 30.401384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653225, 39.459404, 29.858772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.672287, 39.082561, 29.991541>,  <42.683723, 38.856457, 30.071201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.672287, 39.082561, 29.991541>,  <42.653225, 39.459404, 29.858772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672287, 39.082561, 29.991541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166237, -0.320182, -0.932657,
		0.984934, 0.099623, 0.141354,
		0.047655, -0.942103, 0.331919,
		42.686584, 38.799931, 30.091116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217556, 39.171474, 29.586233>,  <42.653225, 39.459404, 29.858772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217556, 39.171474, 29.586233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038742, 38.835018, 29.707979>,  <42.931454, 38.633144, 29.781027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038742, 38.835018, 29.707979>,  <43.217556, 39.171474, 29.586233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038742, 38.835018, 29.707979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279455, -0.454553, -0.845746,
		0.849742, -0.293026, 0.438264,
		-0.447039, -0.841141, 0.304365,
		42.904629, 38.582676, 29.799288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817684, 38.581631, 29.614723>,  <43.217556, 39.171474, 29.586233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817684, 38.581631, 29.614723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.433949, 38.476994, 29.572327>,  <43.203709, 38.414211, 29.546888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.433949, 38.476994, 29.572327>,  <43.817684, 38.581631, 29.614723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433949, 38.476994, 29.572327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199966, -0.364889, -0.909324,
		0.199198, -0.893546, 0.402363,
		-0.959340, -0.261595, -0.105993,
		43.146145, 38.398514, 29.540529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722454, 37.837517, 29.360039>,  <43.817684, 38.581631, 29.614723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722454, 37.837517, 29.360039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369167, 38.001537, 29.269012>,  <43.157196, 38.099949, 29.214396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369167, 38.001537, 29.269012>,  <43.722454, 37.837517, 29.360039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369167, 38.001537, 29.269012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073253, -0.358668, -0.930586,
		-0.463210, -0.838579, 0.286744,
		-0.883216, 0.410052, -0.227567,
		43.104202, 38.124554, 29.200743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281395, 37.259933, 28.951097>,  <43.722454, 37.837517, 29.360039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281395, 37.259933, 28.951097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119026, 37.615860, 28.867720>,  <43.021603, 37.829418, 28.817694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119026, 37.615860, 28.867720>,  <43.281395, 37.259933, 28.951097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119026, 37.615860, 28.867720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011613, -0.223039, -0.974740,
		-0.913833, -0.398092, 0.080204,
		-0.405925, 0.889818, -0.208443,
		42.997250, 37.882805, 28.805187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822105, 37.104191, 28.537560>,  <43.281395, 37.259933, 28.951097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822105, 37.104191, 28.537560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.873917, 37.495014, 28.469931>,  <42.905003, 37.729507, 28.429354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.873917, 37.495014, 28.469931>,  <42.822105, 37.104191, 28.537560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873917, 37.495014, 28.469931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244505, -0.196716, -0.949484,
		-0.960958, 0.081645, -0.264375,
		0.129527, 0.977055, -0.169073,
		42.912773, 37.788132, 28.419209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407158, 37.229687, 27.974312>,  <42.822105, 37.104191, 28.537560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407158, 37.229687, 27.974312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.668449, 37.532406, 27.983786>,  <42.825222, 37.714035, 27.989470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.668449, 37.532406, 27.983786>,  <42.407158, 37.229687, 27.974312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668449, 37.532406, 27.983786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068477, -0.027896, -0.997263,
		-0.754062, 0.653058, -0.070045,
		0.653224, 0.756794, 0.023684,
		42.864418, 37.759445, 27.990891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134941, 37.695644, 27.489309>,  <42.407158, 37.229687, 27.974312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134941, 37.695644, 27.489309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.530899, 37.745384, 27.516575>,  <42.768475, 37.775227, 27.532934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.530899, 37.745384, 27.516575>,  <42.134941, 37.695644, 27.489309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530899, 37.745384, 27.516575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091828, -0.195816, -0.976332,
		-0.108059, 0.972725, -0.205256,
		0.989894, 0.124350, 0.068164,
		42.827866, 37.782688, 27.537024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587700, 38.163349, 27.467621>,  <42.134941, 37.695644, 27.489309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587700, 38.163349, 27.467621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.228058, 38.178162, 27.293156>,  <41.012272, 38.187050, 27.188477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.228058, 38.178162, 27.293156>,  <41.587700, 38.163349, 27.467621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228058, 38.178162, 27.293156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425716, 0.157903, 0.890973,
		0.101865, 0.986760, -0.126206,
		-0.899105, 0.037031, -0.436164,
		40.958328, 38.189270, 27.162306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181801, 38.778175, 27.831818>,  <41.587700, 38.163349, 27.467621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181801, 38.778175, 27.831818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.909756, 38.528893, 27.677385>,  <40.746529, 38.379322, 27.584726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.909756, 38.528893, 27.677385>,  <41.181801, 38.778175, 27.831818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909756, 38.528893, 27.677385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513257, 0.028736, 0.857754,
		-0.523467, 0.781526, -0.339410,
		-0.680110, -0.623211, -0.386081,
		40.705723, 38.341930, 27.561562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652565, 39.001171, 28.174433>,  <41.181801, 38.778175, 27.831818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652565, 39.001171, 28.174433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510952, 38.649742, 28.046200>,  <40.425983, 38.438885, 27.969259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510952, 38.649742, 28.046200>,  <40.652565, 39.001171, 28.174433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510952, 38.649742, 28.046200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546759, -0.083664, 0.833100,
		-0.758758, 0.470229, -0.450746,
		-0.354036, -0.878570, -0.320582,
		40.404739, 38.386169, 27.950026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868542, 39.021881, 28.296503>,  <40.652565, 39.001171, 28.174433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868542, 39.021881, 28.296503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.005989, 38.646812, 28.275745>,  <40.088459, 38.421772, 28.263290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.005989, 38.646812, 28.275745>,  <39.868542, 39.021881, 28.296503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005989, 38.646812, 28.275745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513022, -0.233713, 0.825946,
		-0.786596, -0.257188, -0.561356,
		0.343619, -0.937674, -0.051894,
		40.109074, 38.365509, 28.260178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303513, 38.646530, 28.571789>,  <39.868542, 39.021881, 28.296503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303513, 38.646530, 28.571789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.593601, 38.371166, 28.567085>,  <39.767654, 38.205948, 28.564262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.593601, 38.371166, 28.567085>,  <39.303513, 38.646530, 28.571789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593601, 38.371166, 28.567085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424042, -0.460044, 0.780095,
		-0.542435, -0.560758, -0.625551,
		0.725226, -0.688411, -0.011759,
		39.811169, 38.164642, 28.563557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024601, 38.047977, 28.553999>,  <39.303513, 38.646530, 28.571789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024601, 38.047977, 28.553999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.380417, 37.968845, 28.718721>,  <39.593906, 37.921368, 28.817554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.380417, 37.968845, 28.718721>,  <39.024601, 38.047977, 28.553999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380417, 37.968845, 28.718721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456622, -0.355860, 0.815389,
		-0.014762, -0.913360, -0.406884,
		0.889538, -0.197829, 0.411808,
		39.647278, 37.909496, 28.842264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906021, 37.460083, 29.042475>,  <39.024601, 38.047977, 28.553999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906021, 37.460083, 29.042475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.242310, 37.638260, 29.165609>,  <39.444084, 37.745167, 29.239491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.242310, 37.638260, 29.165609>,  <38.906021, 37.460083, 29.042475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242310, 37.638260, 29.165609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213932, -0.249011, 0.944578,
		0.497410, -0.859985, -0.114055,
		0.840724, 0.445443, 0.307839,
		39.494526, 37.771893, 29.257961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079796, 37.015335, 29.577448>,  <38.906021, 37.460083, 29.042475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079796, 37.015335, 29.577448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.286140, 37.353786, 29.631048>,  <39.409946, 37.556858, 29.663208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.286140, 37.353786, 29.631048>,  <39.079796, 37.015335, 29.577448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286140, 37.353786, 29.631048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077465, -0.109706, 0.990941,
		0.853160, -0.521573, 0.008952,
		0.515866, 0.846124, 0.134001,
		39.440899, 37.607624, 29.671249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572327, 36.861881, 30.159969>,  <39.079796, 37.015335, 29.577448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572327, 36.861881, 30.159969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540138, 37.260334, 30.145899>,  <39.520824, 37.499405, 30.137457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540138, 37.260334, 30.145899>,  <39.572327, 36.861881, 30.159969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540138, 37.260334, 30.145899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185705, 0.019689, 0.982408,
		0.979305, 0.085591, 0.183403,
		-0.080475, 0.996136, -0.035176,
		39.515995, 37.559174, 30.135345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015865, 37.064552, 30.663677>,  <39.572327, 36.861881, 30.159969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015865, 37.064552, 30.663677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.727169, 37.337986, 30.620213>,  <39.553951, 37.502045, 30.594133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.727169, 37.337986, 30.620213>,  <40.015865, 37.064552, 30.663677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727169, 37.337986, 30.620213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173179, -0.026346, 0.984538,
		0.670150, 0.729398, 0.137397,
		-0.721740, 0.683583, -0.108660,
		39.510647, 37.543060, 30.587614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127396, 37.557648, 31.155891>,  <40.015865, 37.064552, 30.663677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127396, 37.557648, 31.155891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760616, 37.688122, 31.063969>,  <39.540550, 37.766407, 31.008816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760616, 37.688122, 31.063969>,  <40.127396, 37.557648, 31.155891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760616, 37.688122, 31.063969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188565, 0.153326, 0.970018,
		0.351641, 0.932788, -0.079085,
		-0.916947, 0.326185, -0.229807,
		39.485531, 37.785976, 30.995026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967155, 38.149090, 31.570637>,  <40.127396, 37.557648, 31.155891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967155, 38.149090, 31.570637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.606281, 38.023209, 31.452639>,  <39.389755, 37.947681, 31.381840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.606281, 38.023209, 31.452639>,  <39.967155, 38.149090, 31.570637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606281, 38.023209, 31.452639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298566, -0.037995, 0.953632,
		-0.311318, 0.948430, -0.059680,
		-0.902186, -0.314701, -0.294997,
		39.335625, 37.928799, 31.364140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.443485, 37.573029, 23.730200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157616, 37.305519, 23.812157>,  <41.986095, 37.145012, 23.861332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157616, 37.305519, 23.812157>,  <42.443485, 37.573029, 23.730200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157616, 37.305519, 23.812157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438247, 0.656442, 0.614022,
		-0.545144, 0.349031, -0.762230,
		-0.714673, -0.668776, 0.204894,
		41.943214, 37.104885, 23.873625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762474, 37.827995, 23.605282>,  <42.443485, 37.573029, 23.730200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762474, 37.827995, 23.605282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715557, 37.533630, 23.872015>,  <41.687405, 37.357010, 24.032055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715557, 37.533630, 23.872015>,  <41.762474, 37.827995, 23.605282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715557, 37.533630, 23.872015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542151, 0.610034, 0.577868,
		-0.832054, -0.293744, -0.470532,
		-0.117295, -0.735916, 0.666835,
		41.680370, 37.312855, 24.072065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149609, 38.051819, 23.941227>,  <41.762474, 37.827995, 23.605282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149609, 38.051819, 23.941227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264133, 37.764660, 24.195045>,  <41.332848, 37.592365, 24.347338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264133, 37.764660, 24.195045>,  <41.149609, 38.051819, 23.941227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264133, 37.764660, 24.195045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457355, 0.479552, 0.748904,
		-0.841933, -0.504634, -0.191032,
		0.286313, -0.717896, 0.634547,
		41.350029, 37.549290, 24.385410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602104, 37.939671, 24.343317>,  <41.149609, 38.051819, 23.941227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602104, 37.939671, 24.343317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895412, 37.785995, 24.567713>,  <41.071400, 37.693790, 24.702351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895412, 37.785995, 24.567713>,  <40.602104, 37.939671, 24.343317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895412, 37.785995, 24.567713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492117, 0.269452, 0.827778,
		-0.469182, -0.883060, 0.008517,
		0.733273, -0.384188, 0.560990,
		41.115395, 37.670738, 24.736010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278896, 37.732929, 24.958031>,  <40.602104, 37.939671, 24.343317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278896, 37.732929, 24.958031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661152, 37.680370, 25.063467>,  <40.890507, 37.648834, 25.126730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661152, 37.680370, 25.063467>,  <40.278896, 37.732929, 24.958031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661152, 37.680370, 25.063467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253218, 0.090541, 0.963163,
		-0.150428, -0.987186, 0.053251,
		0.955642, -0.131402, 0.263593,
		40.947845, 37.640949, 25.142546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335094, 37.265797, 25.590431>,  <40.278896, 37.732929, 24.958031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335094, 37.265797, 25.590431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658142, 37.501350, 25.578007>,  <40.851971, 37.642681, 25.570553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658142, 37.501350, 25.578007>,  <40.335094, 37.265797, 25.590431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658142, 37.501350, 25.578007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156489, 0.264803, 0.951520,
		0.568558, -0.763607, 0.306015,
		0.807621, 0.588883, -0.031060,
		40.900429, 37.678017, 25.568689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770649, 37.015816, 26.085609>,  <40.335094, 37.265797, 25.590431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770649, 37.015816, 26.085609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856472, 37.402512, 26.029928>,  <40.907967, 37.634529, 25.996519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856472, 37.402512, 26.029928>,  <40.770649, 37.015816, 26.085609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856472, 37.402512, 26.029928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021192, 0.147098, 0.988895,
		0.976482, -0.209221, 0.052047,
		0.214554, 0.966742, -0.139205,
		40.920837, 37.692535, 25.988167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223644, 37.197788, 26.572481>,  <40.770649, 37.015816, 26.085609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223644, 37.197788, 26.572481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081783, 37.550774, 26.448881>,  <40.996666, 37.762566, 26.374722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081783, 37.550774, 26.448881>,  <41.223644, 37.197788, 26.572481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081783, 37.550774, 26.448881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082285, 0.358655, 0.929837,
		0.931370, 0.304343, -0.199811,
		-0.354653, 0.882463, -0.308998,
		40.975388, 37.815514, 26.356182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672016, 37.632484, 26.928722>,  <41.223644, 37.197788, 26.572481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672016, 37.632484, 26.928722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345985, 37.829735, 26.807083>,  <41.150368, 37.948086, 26.734100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345985, 37.829735, 26.807083>,  <41.672016, 37.632484, 26.928722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345985, 37.829735, 26.807083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234261, 0.199543, 0.951475,
		0.529873, 0.846767, -0.047124,
		-0.815080, 0.493122, -0.304097,
		41.101460, 37.977673, 26.715855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351013, 38.120949, 26.833529>,  <41.672016, 37.632484, 26.928722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351013, 38.120949, 26.833529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670834, 37.929737, 26.978966>,  <42.862728, 37.815010, 27.066229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670834, 37.929737, 26.978966>,  <42.351013, 38.120949, 26.833529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670834, 37.929737, 26.978966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294941, -0.214842, -0.931049,
		0.523187, 0.851662, -0.030786,
		0.799553, -0.478032, 0.363593,
		42.910698, 37.786327, 27.088043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790195, 38.277584, 26.336208>,  <42.351013, 38.120949, 26.833529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790195, 38.277584, 26.336208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961418, 37.975494, 26.534763>,  <43.064152, 37.794239, 26.653896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961418, 37.975494, 26.534763>,  <42.790195, 38.277584, 26.336208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961418, 37.975494, 26.534763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391370, -0.340171, -0.855052,
		0.814614, 0.560283, 0.149960,
		0.428059, -0.755226, 0.496386,
		43.089836, 37.748928, 26.683680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458099, 38.301914, 26.241833>,  <42.790195, 38.277584, 26.336208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458099, 38.301914, 26.241833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378483, 37.913631, 26.295671>,  <43.330711, 37.680664, 26.327974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378483, 37.913631, 26.295671>,  <43.458099, 38.301914, 26.241833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378483, 37.913631, 26.295671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585704, -0.227951, -0.777811,
		0.785705, -0.075983, 0.613917,
		-0.199043, -0.970703, 0.134598,
		43.318771, 37.622421, 26.336052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066765, 38.012074, 26.097811>,  <43.458099, 38.301914, 26.241833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066765, 38.012074, 26.097811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832008, 37.689461, 26.069378>,  <43.691154, 37.495892, 26.052319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832008, 37.689461, 26.069378>,  <44.066765, 38.012074, 26.097811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832008, 37.689461, 26.069378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621222, -0.392259, -0.678392,
		0.519266, -0.442302, 0.731254,
		-0.586895, -0.806536, -0.071081,
		43.655941, 37.447498, 26.048054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466911, 37.402920, 26.212622>,  <44.066765, 38.012074, 26.097811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466911, 37.402920, 26.212622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142780, 37.290527, 26.006935>,  <43.948303, 37.223091, 25.883524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142780, 37.290527, 26.006935>,  <44.466911, 37.402920, 26.212622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142780, 37.290527, 26.006935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581656, -0.492073, -0.647719,
		-0.071033, -0.823961, 0.562176,
		-0.810327, -0.280984, -0.514216,
		43.899681, 37.206234, 25.852671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666481, 36.810619, 25.979059>,  <44.466911, 37.402920, 26.212622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666481, 36.810619, 25.979059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343193, 36.907078, 25.764160>,  <44.149220, 36.964954, 25.635221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343193, 36.907078, 25.764160>,  <44.666481, 36.810619, 25.979059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343193, 36.907078, 25.764160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329366, -0.571162, -0.751859,
		-0.488162, -0.784617, 0.382198,
		-0.808218, 0.241146, -0.537245,
		44.100727, 36.979424, 25.602987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383522, 36.201088, 25.740841>,  <44.666481, 36.810619, 25.979059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383522, 36.201088, 25.740841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246658, 36.482044, 25.491180>,  <44.164539, 36.650620, 25.341383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246658, 36.482044, 25.491180>,  <44.383522, 36.201088, 25.740841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246658, 36.482044, 25.491180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466264, -0.449780, -0.761772,
		-0.815795, -0.551670, -0.173604,
		-0.342163, 0.702395, -0.624152,
		44.144009, 36.692764, 25.303934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351654, 35.900295, 25.162558>,  <44.383522, 36.201088, 25.740841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351654, 35.900295, 25.162558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285446, 36.266018, 25.014696>,  <44.245724, 36.485451, 24.925980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285446, 36.266018, 25.014696>,  <44.351654, 35.900295, 25.162558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285446, 36.266018, 25.014696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398152, -0.280970, -0.873230,
		-0.902264, -0.291712, -0.317529,
		-0.165516, 0.914309, -0.369654,
		44.235790, 36.540310, 24.903799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018883, 35.799011, 24.454897>,  <44.351654, 35.900295, 25.162558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018883, 35.799011, 24.454897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203110, 36.151905, 24.493971>,  <44.313644, 36.363640, 24.517416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203110, 36.151905, 24.493971>,  <44.018883, 35.799011, 24.454897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203110, 36.151905, 24.493971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512695, -0.174572, -0.840636,
		-0.724583, 0.437253, -0.532719,
		0.460569, 0.882232, 0.097686,
		44.341282, 36.416576, 24.523277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853619, 36.191971, 23.828831>,  <44.018883, 35.799011, 24.454897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853619, 36.191971, 23.828831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183361, 36.358982, 23.981728>,  <44.381207, 36.459190, 24.073465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183361, 36.358982, 23.981728>,  <43.853619, 36.191971, 23.828831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.183361, 36.358982, 23.981728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491245, -0.192125, -0.849568,
		-0.281279, 0.888121, -0.363487,
		0.824355, 0.417527, 0.382244,
		44.430668, 36.484241, 24.096401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121895, 36.577274, 23.281796>,  <43.853619, 36.191971, 23.828831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121895, 36.577274, 23.281796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430820, 36.529152, 23.531294>,  <44.616177, 36.500278, 23.680994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430820, 36.529152, 23.531294>,  <44.121895, 36.577274, 23.281796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430820, 36.529152, 23.531294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609144, -0.138305, -0.780907,
		0.180214, 0.983056, -0.033532,
		0.772312, -0.120305, 0.623747,
		44.662514, 36.493061, 23.718418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614456, 36.890644, 22.936941>,  <44.121895, 36.577274, 23.281796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614456, 36.890644, 22.936941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.843075, 36.680634, 23.189190>,  <44.980244, 36.554626, 23.340540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.843075, 36.680634, 23.189190>,  <44.614456, 36.890644, 22.936941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843075, 36.680634, 23.189190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569813, -0.299071, -0.765421,
		0.590468, 0.796808, 0.128235,
		0.571542, -0.525027, 0.630623,
		45.014538, 36.523125, 23.378376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439201, 37.057995, 22.757469>,  <44.614456, 36.890644, 22.936941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439201, 37.057995, 22.757469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415382, 36.721836, 22.972942>,  <45.401089, 36.520142, 23.102226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415382, 36.721836, 22.972942>,  <45.439201, 37.057995, 22.757469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415382, 36.721836, 22.972942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472547, -0.499080, -0.726374,
		0.879292, 0.211299, 0.426848,
		-0.059550, -0.840400, 0.538685,
		45.397518, 36.469715, 23.134548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.067265, 36.796078, 22.932615>,  <45.439201, 37.057995, 22.757469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.067265, 36.796078, 22.932615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824745, 36.478035, 22.926794>,  <45.679234, 36.287209, 22.923302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824745, 36.478035, 22.926794>,  <46.067265, 36.796078, 22.932615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824745, 36.478035, 22.926794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544685, -0.401871, -0.736083,
		0.579415, -0.454213, 0.676735,
		-0.606298, -0.795104, -0.014553,
		45.642857, 36.239502, 22.922428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.006065, 29.107700, 24.593277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.985928, 29.456539, 24.398582>,  <39.973846, 29.665842, 24.281765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.985928, 29.456539, 24.398582>,  <40.006065, 29.107700, 24.593277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985928, 29.456539, 24.398582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085711, 0.489328, 0.867877,
		0.995047, 0.001973, -0.099383,
		-0.050344, 0.872097, -0.486736,
		39.970825, 29.718168, 24.252562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317017, 29.423019, 25.030355>,  <40.006065, 29.107700, 24.593277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317017, 29.423019, 25.030355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.169975, 29.711662, 24.795698>,  <40.081749, 29.884848, 24.654903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.169975, 29.711662, 24.795698>,  <40.317017, 29.423019, 25.030355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169975, 29.711662, 24.795698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032569, 0.620435, 0.783582,
		0.929412, 0.307154, -0.204572,
		-0.367604, 0.721607, -0.586643,
		40.059692, 29.928144, 24.619705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796131, 30.041380, 25.131447>,  <40.317017, 29.423019, 25.030355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796131, 30.041380, 25.131447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.426529, 30.147724, 25.021513>,  <40.204769, 30.211531, 24.955553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.426529, 30.147724, 25.021513>,  <40.796131, 30.041380, 25.131447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426529, 30.147724, 25.021513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048071, 0.632279, 0.773248,
		0.379347, 0.727696, -0.571449,
		-0.924005, 0.265860, -0.274834,
		40.149326, 30.227482, 24.939062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760857, 30.704933, 25.123684>,  <40.796131, 30.041380, 25.131447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760857, 30.704933, 25.123684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.372345, 30.612698, 25.147177>,  <40.139240, 30.557356, 25.161272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.372345, 30.612698, 25.147177>,  <40.760857, 30.704933, 25.123684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372345, 30.612698, 25.147177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096021, 0.605645, 0.789921,
		-0.217718, 0.761592, -0.610390,
		-0.971277, -0.230590, 0.058731,
		40.080963, 30.543520, 25.164797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343792, 31.317289, 25.191078>,  <40.760857, 30.704933, 25.123684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343792, 31.317289, 25.191078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.163330, 30.999180, 25.353065>,  <40.055054, 30.808313, 25.450258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.163330, 30.999180, 25.353065>,  <40.343792, 31.317289, 25.191078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163330, 30.999180, 25.353065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001187, 0.454306, 0.890845,
		-0.892445, 0.401428, -0.205906,
		-0.451154, -0.795274, 0.404967,
		40.027985, 30.760597, 25.474556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074043, 31.587444, 25.763166>,  <40.343792, 31.317289, 25.191078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074043, 31.587444, 25.763166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982933, 31.206503, 25.844301>,  <39.928265, 30.977938, 25.892982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982933, 31.206503, 25.844301>,  <40.074043, 31.587444, 25.763166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982933, 31.206503, 25.844301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176845, 0.245309, 0.953179,
		-0.957519, 0.181243, -0.224295,
		-0.227779, -0.952352, 0.202836,
		39.914600, 30.920797, 25.905151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439354, 31.599430, 26.056253>,  <40.074043, 31.587444, 25.763166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439354, 31.599430, 26.056253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.605156, 31.256758, 26.179073>,  <39.704639, 31.051153, 26.252766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.605156, 31.256758, 26.179073>,  <39.439354, 31.599430, 26.056253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605156, 31.256758, 26.179073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223343, 0.231318, 0.946895,
		-0.882214, -0.461073, -0.095450,
		0.414508, -0.856682, 0.307049,
		39.729507, 30.999754, 26.271189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978333, 31.267811, 26.455164>,  <39.439354, 31.599430, 26.056253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978333, 31.267811, 26.455164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.337032, 31.131729, 26.568369>,  <39.552254, 31.050081, 26.636292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.337032, 31.131729, 26.568369>,  <38.978333, 31.267811, 26.455164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337032, 31.131729, 26.568369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172090, 0.321103, 0.931278,
		-0.407700, -0.883829, 0.229405,
		0.896753, -0.340204, 0.283012,
		39.606060, 31.029669, 26.653273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890850, 30.998524, 27.197121>,  <38.978333, 31.267811, 26.455164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890850, 30.998524, 27.197121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.277615, 31.052244, 27.110353>,  <39.509674, 31.084476, 27.058294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.277615, 31.052244, 27.110353>,  <38.890850, 30.998524, 27.197121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277615, 31.052244, 27.110353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161231, 0.337256, 0.927503,
		0.197721, -0.931784, 0.304442,
		0.966908, 0.134301, -0.216915,
		39.567688, 31.092535, 27.045279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192444, 30.786488, 27.821562>,  <38.890850, 30.998524, 27.197121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192444, 30.786488, 27.821562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461617, 31.013407, 27.631683>,  <39.623119, 31.149557, 27.517757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461617, 31.013407, 27.631683>,  <39.192444, 30.786488, 27.821562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461617, 31.013407, 27.631683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325731, 0.348906, 0.878729,
		0.664124, -0.745948, 0.050004,
		0.672933, 0.567297, -0.474695,
		39.663498, 31.183596, 27.489275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801186, 30.637299, 28.154211>,  <39.192444, 30.786488, 27.821562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801186, 30.637299, 28.154211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.862591, 30.997942, 27.992455>,  <39.899433, 31.214329, 27.895401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.862591, 30.997942, 27.992455>,  <39.801186, 30.637299, 28.154211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862591, 30.997942, 27.992455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354184, 0.331847, 0.874318,
		0.922490, -0.277446, -0.268394,
		0.153510, 0.901610, -0.404392,
		39.908646, 31.268425, 27.871138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406399, 30.864613, 28.423279>,  <39.801186, 30.637299, 28.154211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406399, 30.864613, 28.423279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.204952, 31.190090, 28.307161>,  <40.084084, 31.385378, 28.237492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.204952, 31.190090, 28.307161>,  <40.406399, 30.864613, 28.423279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204952, 31.190090, 28.307161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168555, 0.422103, 0.890740,
		0.847326, 0.399660, -0.349730,
		-0.503615, 0.813696, -0.290294,
		40.053867, 31.434198, 28.220074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577503, 31.405521, 28.915222>,  <40.406399, 30.864613, 28.423279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577503, 31.405521, 28.915222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.256535, 31.567179, 28.739594>,  <40.063953, 31.664173, 28.634216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.256535, 31.567179, 28.739594>,  <40.577503, 31.405521, 28.915222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256535, 31.567179, 28.739594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278043, 0.397826, 0.874315,
		0.528020, 0.823653, -0.206857,
		-0.802425, 0.404141, -0.439071,
		40.015808, 31.688421, 28.607872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605740, 32.179947, 29.026785>,  <40.577503, 31.405521, 28.915222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605740, 32.179947, 29.026785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227161, 32.062122, 28.973907>,  <40.000015, 31.991428, 28.942181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227161, 32.062122, 28.973907>,  <40.605740, 32.179947, 29.026785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227161, 32.062122, 28.973907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270249, 0.498746, 0.823540,
		-0.176653, 0.815160, -0.551641,
		-0.946446, -0.294561, -0.132192,
		39.943226, 31.973755, 28.934250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808796, 32.895218, 28.892458>,  <40.605740, 32.179947, 29.026785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808796, 32.895218, 28.892458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.176834, 32.915745, 29.047789>,  <41.397655, 32.928059, 29.140987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.176834, 32.915745, 29.047789>,  <40.808796, 32.895218, 28.892458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176834, 32.915745, 29.047789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352242, -0.542030, -0.762973,
		0.171333, 0.838791, -0.516793,
		0.920092, 0.051313, 0.388326,
		41.452862, 32.931137, 29.164286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258488, 33.120033, 28.368708>,  <40.808796, 32.895218, 28.892458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258488, 33.120033, 28.368708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.473728, 32.915668, 28.636862>,  <41.602871, 32.793049, 28.797754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.473728, 32.915668, 28.636862>,  <41.258488, 33.120033, 28.368708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473728, 32.915668, 28.636862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493768, -0.453518, -0.741967,
		0.683110, 0.730269, 0.008232,
		0.538102, -0.510909, 0.670386,
		41.635159, 32.762394, 28.837978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959023, 33.231499, 28.233404>,  <41.258488, 33.120033, 28.368708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959023, 33.231499, 28.233404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.950432, 32.883121, 28.429768>,  <41.945278, 32.674095, 28.547586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.950432, 32.883121, 28.429768>,  <41.959023, 33.231499, 28.233404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950432, 32.883121, 28.429768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365678, -0.463841, -0.806927,
		0.930493, 0.162189, 0.328446,
		-0.021472, -0.870946, 0.490910,
		41.943989, 32.621838, 28.577040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601719, 32.894398, 28.091656>,  <41.959023, 33.231499, 28.233404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601719, 32.894398, 28.091656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.393120, 32.581318, 28.227545>,  <42.267960, 32.393471, 28.309078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.393120, 32.581318, 28.227545>,  <42.601719, 32.894398, 28.091656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393120, 32.581318, 28.227545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332801, -0.553204, -0.763681,
		0.785671, -0.285202, 0.548982,
		-0.521502, -0.782704, 0.339721,
		42.236668, 32.346508, 28.329460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047253, 32.201984, 27.985046>,  <42.601719, 32.894398, 28.091656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047253, 32.201984, 27.985046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.691002, 32.044075, 28.075323>,  <42.477253, 31.949329, 28.129490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.691002, 32.044075, 28.075323>,  <43.047253, 32.201984, 27.985046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691002, 32.044075, 28.075323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200586, -0.786481, -0.584134,
		0.408105, -0.474975, 0.779647,
		-0.890627, -0.394774, 0.225693,
		42.423813, 31.925642, 28.143030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124218, 31.444502, 28.203930>,  <43.047253, 32.201984, 27.985046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124218, 31.444502, 28.203930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.750031, 31.499413, 28.073671>,  <42.525517, 31.532358, 27.995516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.750031, 31.499413, 28.073671>,  <43.124218, 31.444502, 28.203930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750031, 31.499413, 28.073671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140383, -0.701304, -0.698903,
		-0.324321, -0.699520, 0.636779,
		-0.935473, 0.137276, -0.325648,
		42.469387, 31.540596, 27.975977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885147, 30.683504, 28.022512>,  <43.124218, 31.444502, 28.203930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885147, 30.683504, 28.022512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.603237, 30.897987, 27.836704>,  <42.434093, 31.026678, 27.725220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.603237, 30.897987, 27.836704>,  <42.885147, 30.683504, 28.022512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603237, 30.897987, 27.836704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004718, -0.651217, -0.758877,
		-0.709421, -0.537025, 0.456428,
		-0.704769, 0.536210, -0.464520,
		42.391804, 31.058849, 27.697350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370556, 30.240898, 27.717577>,  <42.885147, 30.683504, 28.022512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370556, 30.240898, 27.717577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.355064, 30.587841, 27.519104>,  <42.345768, 30.796007, 27.400021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.355064, 30.587841, 27.519104>,  <42.370556, 30.240898, 27.717577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355064, 30.587841, 27.519104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105565, -0.497326, -0.861117,
		-0.993658, 0.019027, 0.110825,
		-0.038731, 0.867355, -0.496180,
		42.343445, 30.848047, 27.370251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858624, 30.075470, 27.100988>,  <42.370556, 30.240898, 27.717577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858624, 30.075470, 27.100988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.042103, 30.418732, 27.008760>,  <42.152191, 30.624689, 26.953424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.042103, 30.418732, 27.008760>,  <41.858624, 30.075470, 27.100988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042103, 30.418732, 27.008760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052533, -0.285211, -0.957024,
		-0.887036, 0.426877, -0.175908,
		0.458703, 0.858155, -0.230568,
		42.179714, 30.676178, 26.939590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469414, 30.364691, 26.454403>,  <41.858624, 30.075470, 27.100988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469414, 30.364691, 26.454403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.834446, 30.525148, 26.486084>,  <42.053467, 30.621424, 26.505093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.834446, 30.525148, 26.486084>,  <41.469414, 30.364691, 26.454403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834446, 30.525148, 26.486084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193394, -0.252784, -0.947997,
		-0.360264, 0.880444, -0.308266,
		0.912584, 0.401146, 0.079204,
		42.108223, 30.645493, 26.509846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531960, 30.780050, 25.925489>,  <41.469414, 30.364691, 26.454403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531960, 30.780050, 25.925489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.911812, 30.705101, 26.025963>,  <42.139725, 30.660131, 26.086246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.911812, 30.705101, 26.025963>,  <41.531960, 30.780050, 25.925489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911812, 30.705101, 26.025963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210183, -0.213677, -0.954026,
		0.232431, 0.958767, -0.163531,
		0.949631, -0.187373, 0.251182,
		42.196701, 30.648890, 26.101316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983395, 31.154898, 25.432585>,  <41.531960, 30.780050, 25.925489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983395, 31.154898, 25.432585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.207973, 30.858395, 25.579723>,  <42.342720, 30.680492, 25.668007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.207973, 30.858395, 25.579723>,  <41.983395, 31.154898, 25.432585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207973, 30.858395, 25.579723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350106, -0.190000, -0.917238,
		0.749803, 0.643766, 0.152845,
		0.561446, -0.741260, 0.367848,
		42.376408, 30.636017, 25.690079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706184, 31.241285, 25.164032>,  <41.983395, 31.154898, 25.432585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706184, 31.241285, 25.164032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.671364, 30.859726, 25.278923>,  <42.650471, 30.630791, 25.347858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.671364, 30.859726, 25.278923>,  <42.706184, 31.241285, 25.164032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671364, 30.859726, 25.278923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305245, -0.299994, -0.903786,
		0.948287, 0.009000, 0.317288,
		-0.087050, -0.953899, 0.287227,
		42.645248, 30.573557, 25.365091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325668, 30.975733, 25.059265>,  <42.706184, 31.241285, 25.164032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325668, 30.975733, 25.059265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.075642, 30.663635, 25.050234>,  <42.925625, 30.476377, 25.044815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.075642, 30.663635, 25.050234>,  <43.325668, 30.975733, 25.059265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075642, 30.663635, 25.050234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406552, -0.300731, -0.862714,
		0.666337, -0.548435, 0.505187,
		-0.625068, -0.780244, -0.022579,
		42.888123, 30.429562, 25.043461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921101, 30.773205, 25.369213>,  <43.325668, 30.975733, 25.059265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921101, 30.773205, 25.369213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.319088, 30.799984, 25.399042>,  <44.557880, 30.816051, 25.416939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.319088, 30.799984, 25.399042>,  <43.921101, 30.773205, 25.369213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319088, 30.799984, 25.399042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082510, 0.124905, 0.988732,
		0.056874, -0.989908, 0.129799,
		0.994966, 0.066943, 0.074573,
		44.617577, 30.820068, 25.421413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145214, 30.368626, 25.999676>,  <43.921101, 30.773205, 25.369213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145214, 30.368626, 25.999676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.464523, 30.599169, 25.929741>,  <44.656109, 30.737494, 25.887779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.464523, 30.599169, 25.929741>,  <44.145214, 30.368626, 25.999676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464523, 30.599169, 25.929741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027820, 0.325263, 0.945215,
		0.601649, -0.749678, 0.275684,
		0.798276, 0.576356, -0.174838,
		44.704006, 30.772076, 25.877289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721638, 30.151819, 26.444321>,  <44.145214, 30.368626, 25.999676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721638, 30.151819, 26.444321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.762135, 30.533155, 26.330555>,  <44.786434, 30.761957, 26.262295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.762135, 30.533155, 26.330555>,  <44.721638, 30.151819, 26.444321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762135, 30.533155, 26.330555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074026, 0.277873, 0.957761,
		0.992104, -0.118019, -0.042439,
		0.101242, 0.953340, -0.284415,
		44.792507, 30.819157, 26.245230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277588, 30.413858, 26.751732>,  <44.721638, 30.151819, 26.444321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277588, 30.413858, 26.751732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.062443, 30.737829, 26.658161>,  <44.933357, 30.932213, 26.602018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.062443, 30.737829, 26.658161>,  <45.277588, 30.413858, 26.751732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062443, 30.737829, 26.658161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105652, 0.340054, 0.934452,
		0.836387, 0.477891, -0.268472,
		-0.537861, 0.809928, -0.233927,
		44.901085, 30.980808, 26.587982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537239, 30.920166, 27.205791>,  <45.277588, 30.413858, 26.751732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537239, 30.920166, 27.205791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.221523, 31.121248, 27.064762>,  <45.032093, 31.241898, 26.980145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.221523, 31.121248, 27.064762>,  <45.537239, 30.920166, 27.205791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221523, 31.121248, 27.064762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063571, 0.638020, 0.767392,
		0.610721, 0.583281, -0.535540,
		-0.789290, 0.502707, -0.352572,
		44.984737, 31.272060, 26.958990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763393, 31.580170, 27.111906>,  <45.537239, 30.920166, 27.205791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763393, 31.580170, 27.111906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.364590, 31.598442, 27.136833>,  <45.125309, 31.609406, 27.151789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.364590, 31.598442, 27.136833>,  <45.763393, 31.580170, 27.111906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364590, 31.598442, 27.136833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075737, 0.737476, 0.671114,
		-0.015301, 0.673827, -0.738730,
		-0.997010, 0.045681, 0.062318,
		45.065487, 31.612146, 27.155529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601868, 32.353176, 27.064608>,  <45.763393, 31.580170, 27.111906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601868, 32.353176, 27.064608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.284203, 32.159809, 27.211908>,  <45.093601, 32.043789, 27.300289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.284203, 32.159809, 27.211908>,  <45.601868, 32.353176, 27.064608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284203, 32.159809, 27.211908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169207, 0.757912, 0.630030,
		-0.583668, 0.438039, -0.683706,
		-0.794167, -0.483417, 0.368250,
		45.045952, 32.014786, 27.322384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896347, 32.854176, 27.022135>,  <45.601868, 32.353176, 27.064608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896347, 32.854176, 27.022135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.824448, 32.592812, 27.316277>,  <44.781307, 32.435993, 27.492762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.824448, 32.592812, 27.316277>,  <44.896347, 32.854176, 27.022135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824448, 32.592812, 27.316277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316007, 0.746265, 0.585857,
		-0.931573, -0.127068, -0.340625,
		-0.179753, -0.653409, 0.735355,
		44.770523, 32.396790, 27.536882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334076, 33.120739, 27.340651>,  <44.896347, 32.854176, 27.022135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334076, 33.120739, 27.340651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.494370, 32.880165, 27.617109>,  <44.590546, 32.735821, 27.782984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.494370, 32.880165, 27.617109>,  <44.334076, 33.120739, 27.340651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494370, 32.880165, 27.617109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226343, 0.665997, 0.710786,
		-0.887794, -0.441276, 0.130759,
		0.400738, -0.601435, 0.691148,
		44.614590, 32.699734, 27.824453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796947, 33.067173, 27.870195>,  <44.334076, 33.120739, 27.340651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796947, 33.067173, 27.870195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.160191, 32.982838, 28.014908>,  <44.378136, 32.932236, 28.101736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.160191, 32.982838, 28.014908>,  <43.796947, 33.067173, 27.870195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160191, 32.982838, 28.014908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170793, 0.602352, 0.779745,
		-0.382319, -0.769883, 0.510991,
		0.908109, -0.210838, 0.361781,
		44.432625, 32.919586, 28.123442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616844, 32.899147, 28.481512>,  <43.796947, 33.067173, 27.870195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616844, 32.899147, 28.481512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.002625, 32.994652, 28.526815>,  <44.234093, 33.051952, 28.553997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.002625, 32.994652, 28.526815>,  <43.616844, 32.899147, 28.481512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002625, 32.994652, 28.526815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226397, 0.525476, 0.820134,
		0.136298, -0.816621, 0.560850,
		0.964452, 0.238757, 0.113259,
		44.291962, 33.066280, 28.560793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806393, 32.934055, 29.181282>,  <43.616844, 32.899147, 28.481512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806393, 32.934055, 29.181282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.119663, 33.136658, 29.037018>,  <44.307625, 33.258221, 28.950459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.119663, 33.136658, 29.037018>,  <43.806393, 32.934055, 29.181282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119663, 33.136658, 29.037018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001509, 0.581581, 0.813487,
		0.621796, -0.636561, 0.456246,
		0.783178, 0.506511, -0.360664,
		44.354618, 33.288612, 28.928820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.394897, 32.760311, 29.544390>,  <43.806393, 32.934055, 29.181282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.394897, 32.760311, 29.544390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.493423, 33.112812, 29.383032>,  <44.552540, 33.324310, 29.286217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.493423, 33.112812, 29.383032>,  <44.394897, 32.760311, 29.544390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493423, 33.112812, 29.383032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156431, 0.374614, 0.913889,
		0.956483, -0.288204, -0.045583,
		0.246310, 0.881251, -0.403396,
		44.567318, 33.377186, 29.262012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920815, 32.988739, 29.907516>,  <44.394897, 32.760311, 29.544390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920815, 32.988739, 29.907516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.816975, 33.330593, 29.727650>,  <44.754673, 33.535706, 29.619730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.816975, 33.330593, 29.727650>,  <44.920815, 32.988739, 29.907516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816975, 33.330593, 29.727650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200997, 0.503250, 0.840440,
		0.944569, 0.127793, -0.302422,
		-0.259596, 0.854639, -0.449668,
		44.739098, 33.586987, 29.592749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<46.587387, 36.195381, 22.797501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.216145, 36.050198, 22.764307>,  <45.993401, 35.963085, 22.744390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.216145, 36.050198, 22.764307>,  <46.587387, 36.195381, 22.797501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216145, 36.050198, 22.764307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287975, -0.558508, -0.777907,
		0.236003, -0.745874, 0.622876,
		-0.928102, -0.362961, -0.082984,
		45.937714, 35.941311, 22.739412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.672951, 35.548607, 22.875204>,  <46.587387, 36.195381, 22.797501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.672951, 35.548607, 22.875204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.325897, 35.609379, 22.685835>,  <46.117664, 35.645844, 22.572214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.325897, 35.609379, 22.685835>,  <46.672951, 35.548607, 22.875204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325897, 35.609379, 22.685835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325023, -0.547246, -0.771286,
		-0.376258, -0.823067, 0.425429,
		-0.867635, 0.151929, -0.473421,
		46.065605, 35.654957, 22.543808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.609142, 34.992256, 22.673483>,  <46.672951, 35.548607, 22.875204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.609142, 34.992256, 22.673483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.352291, 35.188431, 22.437807>,  <46.198181, 35.306137, 22.296402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.352291, 35.188431, 22.437807>,  <46.609142, 34.992256, 22.673483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352291, 35.188431, 22.437807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328538, -0.518359, -0.789536,
		-0.692631, -0.700552, 0.171724,
		-0.642126, 0.490439, -0.589189,
		46.159653, 35.335564, 22.261051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048649, 34.426189, 22.467321>,  <46.609142, 34.992256, 22.673483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048649, 34.426189, 22.467321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.101456, 34.739437, 22.224243>,  <46.133141, 34.927387, 22.078396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.101456, 34.739437, 22.224243>,  <46.048649, 34.426189, 22.467321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101456, 34.739437, 22.224243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015390, -0.614605, -0.788684,
		-0.991128, 0.094765, -0.093189,
		0.132014, 0.783122, -0.607694,
		46.141060, 34.974373, 22.041935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610638, 34.184837, 21.979927>,  <46.048649, 34.426189, 22.467321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610638, 34.184837, 21.979927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.816601, 34.466148, 21.783861>,  <45.940178, 34.634937, 21.666222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.816601, 34.466148, 21.783861>,  <45.610638, 34.184837, 21.979927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816601, 34.466148, 21.783861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010405, -0.566622, -0.823912,
		-0.857180, 0.429342, -0.284442,
		0.514911, 0.703281, -0.490165,
		45.971073, 34.677132, 21.636812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286205, 34.392872, 21.364719>,  <45.610638, 34.184837, 21.979927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286205, 34.392872, 21.364719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.680618, 34.446716, 21.325480>,  <45.917267, 34.479023, 21.301935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.680618, 34.446716, 21.325480>,  <45.286205, 34.392872, 21.364719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680618, 34.446716, 21.325480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015548, -0.511999, -0.858845,
		-0.165838, 0.848373, -0.502754,
		0.986030, 0.134612, -0.098100,
		45.976429, 34.487099, 21.296049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383389, 34.431099, 20.715662>,  <45.286205, 34.392872, 21.364719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383389, 34.431099, 20.715662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.772358, 34.407871, 20.806005>,  <46.005741, 34.393936, 20.860210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.772358, 34.407871, 20.806005>,  <45.383389, 34.431099, 20.715662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.772358, 34.407871, 20.806005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140514, -0.627048, -0.766203,
		0.186116, 0.776813, -0.601599,
		0.972428, -0.058070, 0.225857,
		46.064087, 34.390450, 20.873762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641083, 34.450062, 20.112589>,  <45.383389, 34.431099, 20.715662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641083, 34.450062, 20.112589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.920738, 34.283421, 20.345016>,  <46.088531, 34.183434, 20.484472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.920738, 34.283421, 20.345016>,  <45.641083, 34.450062, 20.112589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920738, 34.283421, 20.345016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070096, -0.768848, -0.635578,
		0.711539, 0.485090, -0.508330,
		0.699141, -0.416607, 0.581068,
		46.130482, 34.158440, 20.519337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.184536, 34.251553, 19.603207>,  <45.641083, 34.450062, 20.112589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.184536, 34.251553, 19.603207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.269260, 34.045784, 19.935595>,  <46.320095, 33.922325, 20.135027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.269260, 34.045784, 19.935595>,  <46.184536, 34.251553, 19.603207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.269260, 34.045784, 19.935595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128106, -0.828310, -0.545428,
		0.968877, 0.221982, -0.109548,
		0.211815, -0.514419, 0.830968,
		46.332806, 33.891457, 20.184885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.658482, 33.837227, 19.436607>,  <46.184536, 34.251553, 19.603207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.658482, 33.837227, 19.436607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.531296, 33.661819, 19.772846>,  <46.454987, 33.556576, 19.974588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.531296, 33.661819, 19.772846>,  <46.658482, 33.837227, 19.436607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.531296, 33.661819, 19.772846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206579, -0.897349, -0.389988,
		0.925325, 0.049649, 0.375911,
		-0.317961, -0.438521, 0.840595,
		46.435909, 33.530262, 20.025024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.230682, 33.312958, 19.663591>,  <46.658482, 33.837227, 19.436607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.230682, 33.312958, 19.663591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.886517, 33.202328, 19.834797>,  <46.680019, 33.135952, 19.937521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.886517, 33.202328, 19.834797>,  <47.230682, 33.312958, 19.663591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886517, 33.202328, 19.834797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280822, -0.958203, -0.054647,
		0.425240, 0.073177, 0.902117,
		-0.860413, -0.276573, 0.428016,
		46.628391, 33.119354, 19.963202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.487171, 32.927635, 20.178411>,  <47.230682, 33.312958, 19.663591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.487171, 32.927635, 20.178411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.112381, 32.828289, 20.080120>,  <46.887505, 32.768681, 20.021145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.112381, 32.828289, 20.080120>,  <47.487171, 32.927635, 20.178411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.112381, 32.828289, 20.080120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264288, -0.963861, -0.033527,
		-0.228521, -0.096357, 0.968759,
		-0.936979, -0.248370, -0.245728,
		46.831287, 32.753777, 20.006401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.138596, 32.469070, 20.603231>,  <47.487171, 32.927635, 20.178411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.138596, 32.469070, 20.603231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.971363, 32.399441, 20.246601>,  <46.871025, 32.357662, 20.032623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.971363, 32.399441, 20.246601>,  <47.138596, 32.469070, 20.603231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.971363, 32.399441, 20.246601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091564, -0.984546, 0.149286,
		-0.903783, -0.019223, 0.427559,
		-0.418081, -0.174071, -0.891576,
		46.845940, 32.347221, 19.979128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.956429, 31.778637, 20.777109>,  <47.138596, 32.469070, 20.603231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.956429, 31.778637, 20.777109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.855354, 31.807827, 20.391191>,  <46.794708, 31.825340, 20.159641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.855354, 31.807827, 20.391191>,  <46.956429, 31.778637, 20.777109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.855354, 31.807827, 20.391191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135142, -0.990039, -0.039489,
		-0.958064, 0.120405, 0.260032,
		-0.252687, 0.072974, -0.964792,
		46.779549, 31.829720, 20.101753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.181519, 31.254496, 20.223984>,  <46.956429, 31.778637, 20.777109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.181519, 31.254496, 20.223984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.024452, 30.887201, 20.203390>,  <46.930210, 30.666824, 20.191034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.024452, 30.887201, 20.203390>,  <47.181519, 31.254496, 20.223984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.024452, 30.887201, 20.203390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666798, 0.245697, 0.703572,
		-0.633397, 0.310602, -0.708756,
		-0.392670, -0.918237, -0.051485,
		46.906651, 30.611731, 20.187944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.533710, 31.433701, 20.269398>,  <47.181519, 31.254496, 20.223984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.533710, 31.433701, 20.269398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.559196, 31.040493, 20.338238>,  <46.574490, 30.804569, 20.379541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.559196, 31.040493, 20.338238>,  <46.533710, 31.433701, 20.269398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559196, 31.040493, 20.338238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728189, 0.072128, 0.681570,
		-0.682408, -0.168748, -0.711227,
		0.063714, -0.983016, 0.172101,
		46.578312, 30.745588, 20.389868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776978, 31.150991, 20.392834>,  <46.533710, 31.433701, 20.269398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776978, 31.150991, 20.392834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.035439, 30.896069, 20.560801>,  <46.190514, 30.743114, 20.661581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.035439, 30.896069, 20.560801>,  <45.776978, 31.150991, 20.392834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.035439, 30.896069, 20.560801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632561, -0.139346, 0.761872,
		-0.427035, -0.757905, -0.493175,
		0.646148, -0.637309, 0.419915,
		46.229282, 30.704876, 20.686775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320866, 30.559513, 20.712742>,  <45.776978, 31.150991, 20.392834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320866, 30.559513, 20.712742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.663231, 30.571960, 20.919218>,  <45.868649, 30.579430, 21.043104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.663231, 30.571960, 20.919218>,  <45.320866, 30.559513, 20.712742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663231, 30.571960, 20.919218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503083, -0.180946, 0.845084,
		0.119701, -0.983001, -0.139217,
		0.855909, 0.031119, 0.516190,
		45.920002, 30.581295, 21.074076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234631, 30.050652, 21.251518>,  <45.320866, 30.559513, 20.712742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234631, 30.050652, 21.251518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.548523, 30.254618, 21.392479>,  <45.736858, 30.376997, 21.477055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.548523, 30.254618, 21.392479>,  <45.234631, 30.050652, 21.251518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548523, 30.254618, 21.392479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271892, -0.227742, 0.934991,
		0.557021, -0.829531, -0.040074,
		0.784730, 0.509914, 0.352400,
		45.783943, 30.407593, 21.498199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555965, 29.652281, 21.740850>,  <45.234631, 30.050652, 21.251518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555965, 29.652281, 21.740850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.697304, 30.015179, 21.832113>,  <45.782108, 30.232918, 21.886871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.697304, 30.015179, 21.832113>,  <45.555965, 29.652281, 21.740850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697304, 30.015179, 21.832113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283548, -0.128551, 0.950303,
		0.891485, -0.400480, 0.211824,
		0.353347, 0.907243, 0.228156,
		45.803307, 30.287352, 21.900560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148384, 29.550392, 22.226124>,  <45.555965, 29.652281, 21.740850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148384, 29.550392, 22.226124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.007534, 29.921967, 22.271877>,  <45.923023, 30.144911, 22.299330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.007534, 29.921967, 22.271877>,  <46.148384, 29.550392, 22.226124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007534, 29.921967, 22.271877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118956, -0.165641, 0.978986,
		0.928362, 0.331121, 0.168830,
		-0.352128, 0.928936, 0.114385,
		45.901897, 30.200647, 22.306192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.314655, 29.698128, 22.838285>,  <46.148384, 29.550392, 22.226124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.314655, 29.698128, 22.838285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.040260, 29.986322, 22.797651>,  <45.875622, 30.159239, 22.773272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.040260, 29.986322, 22.797651>,  <46.314655, 29.698128, 22.838285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.040260, 29.986322, 22.797651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253573, -0.105866, 0.961506,
		0.681997, 0.685341, 0.255319,
		-0.685988, 0.720486, -0.101584,
		45.834465, 30.202469, 22.767176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.502140, 30.246834, 23.286751>,  <46.314655, 29.698128, 22.838285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.502140, 30.246834, 23.286751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.108025, 30.298346, 23.241810>,  <45.871555, 30.329252, 23.214846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.108025, 30.298346, 23.241810>,  <46.502140, 30.246834, 23.286751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.108025, 30.298346, 23.241810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098671, 0.108127, 0.989228,
		0.139540, 0.985761, -0.093829,
		-0.985288, 0.128778, -0.112354,
		45.812439, 30.336979, 23.208103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.379475, 30.846786, 23.675341>,  <46.502140, 30.246834, 23.286751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.379475, 30.846786, 23.675341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.019817, 30.677877, 23.629332>,  <45.804024, 30.576532, 23.601727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.019817, 30.677877, 23.629332>,  <46.379475, 30.846786, 23.675341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019817, 30.677877, 23.629332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256916, 0.296504, 0.919826,
		-0.354313, 0.856605, -0.375088,
		-0.899142, -0.422272, -0.115020,
		45.750076, 30.551195, 23.594826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958420, 31.335123, 24.003080>,  <46.379475, 30.846786, 23.675341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958420, 31.335123, 24.003080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.741093, 31.000010, 23.981422>,  <45.610699, 30.798943, 23.968428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.741093, 31.000010, 23.981422>,  <45.958420, 31.335123, 24.003080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741093, 31.000010, 23.981422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530349, 0.292513, 0.795717,
		-0.650799, 0.461040, -0.603243,
		-0.543314, -0.837782, -0.054146,
		45.578098, 30.748674, 23.965179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.273651, 31.494368, 24.127127>,  <45.958420, 31.335123, 24.003080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.273651, 31.494368, 24.127127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.263893, 31.103443, 24.211290>,  <45.258038, 30.868889, 24.261789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.263893, 31.103443, 24.211290>,  <45.273651, 31.494368, 24.127127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263893, 31.103443, 24.211290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694601, 0.167938, 0.699518,
		-0.718981, -0.129088, -0.682936,
		-0.024391, -0.977309, 0.210409,
		45.256577, 30.810251, 24.274414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600372, 31.361944, 24.412903>,  <45.273651, 31.494368, 24.127127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600372, 31.361944, 24.412903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.811287, 31.041321, 24.525669>,  <44.937836, 30.848948, 24.593328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.811287, 31.041321, 24.525669>,  <44.600372, 31.361944, 24.412903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811287, 31.041321, 24.525669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504003, -0.027930, 0.863250,
		-0.684072, -0.597264, -0.418715,
		0.527283, -0.801559, 0.281917,
		44.969471, 30.800854, 24.610245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124210, 30.969837, 24.683805>,  <44.600372, 31.361944, 24.412903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124210, 30.969837, 24.683805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.487774, 30.889408, 24.829927>,  <44.705914, 30.841150, 24.917601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.487774, 30.889408, 24.829927>,  <44.124210, 30.969837, 24.683805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.487774, 30.889408, 24.829927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372611, 0.001625, 0.927986,
		-0.187185, -0.979575, -0.073445,
		0.908913, -0.201072, 0.365304,
		44.760448, 30.829086, 24.939518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680233, 30.289587, 24.717392>,  <44.124210, 30.969837, 24.683805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680233, 30.289587, 24.717392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.301723, 30.161695, 24.736752>,  <43.074619, 30.084961, 24.748367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.301723, 30.161695, 24.736752>,  <43.680233, 30.289587, 24.717392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301723, 30.161695, 24.736752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068749, -0.345156, -0.936024,
		0.315979, -0.882406, 0.348593,
		-0.946272, -0.319730, 0.048397,
		43.017841, 30.065777, 24.751270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602909, 29.510847, 24.543858>,  <43.680233, 30.289587, 24.717392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602909, 29.510847, 24.543858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.239902, 29.660803, 24.468098>,  <43.022099, 29.750776, 24.422642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.239902, 29.660803, 24.468098>,  <43.602909, 29.510847, 24.543858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239902, 29.660803, 24.468098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048242, -0.354911, -0.933655,
		-0.417237, -0.856444, 0.304002,
		-0.907517, 0.374889, -0.189399,
		42.967648, 29.773270, 24.411278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296192, 29.016489, 24.212284>,  <43.602909, 29.510847, 24.543858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296192, 29.016489, 24.212284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.098938, 29.346212, 24.101049>,  <42.980583, 29.544046, 24.034307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.098938, 29.346212, 24.101049>,  <43.296192, 29.016489, 24.212284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098938, 29.346212, 24.101049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047739, -0.344819, -0.937454,
		-0.868640, -0.449020, 0.209396,
		-0.493139, 0.824306, -0.278088,
		42.950996, 29.593504, 24.017624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685368, 28.842567, 23.813030>,  <43.296192, 29.016489, 24.212284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685368, 28.842567, 23.813030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.740982, 29.225256, 23.710775>,  <42.774349, 29.454870, 23.649422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.740982, 29.225256, 23.710775>,  <42.685368, 28.842567, 23.813030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740982, 29.225256, 23.710775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042180, -0.263633, -0.963700,
		-0.989389, 0.123202, -0.077008,
		0.139032, 0.956723, -0.255639,
		42.782692, 29.512274, 23.634085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263687, 28.949389, 23.316843>,  <42.685368, 28.842567, 23.813030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263687, 28.949389, 23.316843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.545677, 29.228514, 23.266153>,  <42.714870, 29.395988, 23.235739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.545677, 29.228514, 23.266153>,  <42.263687, 28.949389, 23.316843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545677, 29.228514, 23.266153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037914, -0.141343, -0.989234,
		-0.708214, 0.702194, -0.073187,
		0.704979, 0.697814, -0.126724,
		42.757172, 29.437859, 23.228136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010651, 29.398912, 22.722874>,  <42.263687, 28.949389, 23.316843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010651, 29.398912, 22.722874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.401588, 29.479956, 22.747368>,  <42.636150, 29.528582, 22.762064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.401588, 29.479956, 22.747368>,  <42.010651, 29.398912, 22.722874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401588, 29.479956, 22.747368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072342, -0.047873, -0.996230,
		-0.198911, 0.978090, -0.061446,
		0.977344, 0.202606, 0.061234,
		42.694790, 29.540737, 22.765738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135761, 29.948416, 22.182333>,  <42.010651, 29.398912, 22.722874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135761, 29.948416, 22.182333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.481770, 29.768698, 22.271660>,  <42.689377, 29.660868, 22.325256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.481770, 29.768698, 22.271660>,  <42.135761, 29.948416, 22.182333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481770, 29.768698, 22.271660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222364, -0.055684, -0.973372,
		0.449765, 0.891647, 0.051739,
		0.865023, -0.449294, 0.223315,
		42.741276, 29.633909, 22.338654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494442, 30.120327, 21.993862>,  <42.135761, 29.948416, 22.182333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494442, 30.120327, 21.993862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.268425, 29.838863, 21.821541>,  <41.132816, 29.669985, 21.718147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.268425, 29.838863, 21.821541>,  <41.494442, 30.120327, 21.993862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268425, 29.838863, 21.821541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511257, -0.111204, 0.852203,
		-0.647566, 0.701783, -0.296915,
		-0.565043, -0.703658, -0.430804,
		41.098911, 29.627766, 21.692299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760078, 30.301134, 21.973289>,  <41.494442, 30.120327, 21.993862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760078, 30.301134, 21.973289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.746143, 29.902660, 21.941284>,  <40.737782, 29.663576, 21.922081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.746143, 29.902660, 21.941284>,  <40.760078, 30.301134, 21.973289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746143, 29.902660, 21.941284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459388, -0.055137, 0.886522,
		-0.887552, 0.067643, -0.455715,
		-0.034840, -0.996185, -0.080011,
		40.735691, 29.603806, 21.917280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063934, 30.249949, 22.194935>,  <40.760078, 30.301134, 21.973289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063934, 30.249949, 22.194935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183567, 29.869076, 22.219912>,  <40.255348, 29.640553, 22.234898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183567, 29.869076, 22.219912>,  <40.063934, 30.249949, 22.194935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183567, 29.869076, 22.219912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514087, -0.105659, 0.851205,
		-0.803904, -0.286682, -0.521105,
		0.299085, -0.952182, 0.062440,
		40.273293, 29.583422, 22.238644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528866, 29.857321, 22.315838>,  <40.063934, 30.249949, 22.194935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528866, 29.857321, 22.315838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839611, 29.659996, 22.472366>,  <40.026058, 29.541601, 22.566282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839611, 29.659996, 22.472366>,  <39.528866, 29.857321, 22.315838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839611, 29.659996, 22.472366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407571, 0.079767, 0.909683,
		-0.479973, -0.866187, -0.139092,
		0.776860, -0.493313, 0.391319,
		40.072670, 29.512003, 22.589762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256428, 29.364908, 22.840094>,  <39.528866, 29.857321, 22.315838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256428, 29.364908, 22.840094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.644329, 29.406765, 22.928297>,  <39.877071, 29.431879, 22.981218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.644329, 29.406765, 22.928297>,  <39.256428, 29.364908, 22.840094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644329, 29.406765, 22.928297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235089, 0.157516, 0.959126,
		0.065630, -0.981957, 0.177352,
		0.969756, 0.104641, 0.220509,
		39.935257, 29.438158, 22.994450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413673, 29.030399, 23.426893>,  <39.256428, 29.364908, 22.840094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413673, 29.030399, 23.426893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.715607, 29.292461, 23.414217>,  <39.896767, 29.449699, 23.406612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.715607, 29.292461, 23.414217>,  <39.413673, 29.030399, 23.426893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715607, 29.292461, 23.414217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135188, 0.202667, 0.969871,
		0.641838, -0.727804, 0.241548,
		0.754830, 0.655155, -0.031689,
		39.942055, 29.489008, 23.404711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576576, 28.955820, 24.046770>,  <39.413673, 29.030399, 23.426893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576576, 28.955820, 24.046770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.772591, 29.282997, 23.926218>,  <39.890202, 29.479303, 23.853888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.772591, 29.282997, 23.926218>,  <39.576576, 28.955820, 24.046770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772591, 29.282997, 23.926218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045411, 0.369221, 0.928231,
		0.870517, -0.441184, 0.218076,
		0.490039, 0.817944, -0.301379,
		39.919601, 29.528379, 23.835804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.089260, 32.100735, 19.139900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.451855, 32.209869, 19.268795>,  <43.669411, 32.275349, 19.346132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.451855, 32.209869, 19.268795>,  <43.089260, 32.100735, 19.139900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451855, 32.209869, 19.268795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368377, 0.138092, 0.919363,
		0.206335, -0.952099, 0.225685,
		0.906490, 0.272834, 0.322238,
		43.723801, 32.291721, 19.365467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114910, 31.832731, 19.872400>,  <43.089260, 32.100735, 19.139900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114910, 31.832731, 19.872400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.402130, 32.110661, 19.856281>,  <43.574463, 32.277416, 19.846609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.402130, 32.110661, 19.856281>,  <43.114910, 31.832731, 19.872400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402130, 32.110661, 19.856281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352655, 0.413142, 0.839612,
		0.600031, -0.588672, 0.541690,
		0.718051, 0.694823, -0.040299,
		43.617546, 32.319107, 19.844193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329041, 31.937891, 20.561037>,  <43.114910, 31.832731, 19.872400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329041, 31.937891, 20.561037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.468910, 32.271393, 20.390120>,  <43.552830, 32.471493, 20.287569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.468910, 32.271393, 20.390120>,  <43.329041, 31.937891, 20.561037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468910, 32.271393, 20.390120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253391, 0.523251, 0.813634,
		0.901955, -0.176232, 0.394232,
		0.349671, 0.833757, -0.427293,
		43.573811, 32.521519, 20.261932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793770, 32.192146, 21.008434>,  <43.329041, 31.937891, 20.561037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793770, 32.192146, 21.008434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.663216, 32.498165, 20.786383>,  <43.584881, 32.681778, 20.653151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.663216, 32.498165, 20.786383>,  <43.793770, 32.192146, 21.008434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663216, 32.498165, 20.786383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235384, 0.503008, 0.831611,
		0.915458, 0.402098, 0.015903,
		-0.326390, 0.765049, -0.555130,
		43.565300, 32.727680, 20.619844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884979, 32.769115, 21.455940>,  <43.793770, 32.192146, 21.008434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884979, 32.769115, 21.455940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.655441, 32.939686, 21.176264>,  <43.517719, 33.042027, 21.008457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.655441, 32.939686, 21.176264>,  <43.884979, 32.769115, 21.455940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655441, 32.939686, 21.176264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175420, 0.769935, 0.613537,
		0.799958, 0.474725, -0.367019,
		-0.573842, 0.426421, -0.699192,
		43.483288, 33.067612, 20.966507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089535, 33.378269, 21.316051>,  <43.884979, 32.769115, 21.455940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089535, 33.378269, 21.316051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.715454, 33.444386, 21.190786>,  <43.491005, 33.484055, 21.115627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.715454, 33.444386, 21.190786>,  <44.089535, 33.378269, 21.316051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715454, 33.444386, 21.190786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081936, 0.759370, 0.645479,
		0.344495, 0.629315, -0.696624,
		-0.935206, 0.165286, -0.313163,
		43.434891, 33.493973, 21.096838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031036, 34.110634, 21.313116>,  <44.089535, 33.378269, 21.316051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031036, 34.110634, 21.313116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.647022, 33.998730, 21.309889>,  <43.416615, 33.931587, 21.307953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.647022, 33.998730, 21.309889>,  <44.031036, 34.110634, 21.313116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647022, 33.998730, 21.309889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217573, 0.727880, 0.650271,
		-0.176046, 0.626040, -0.759659,
		-0.960037, -0.279758, -0.008069,
		43.359013, 33.914803, 21.307468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645065, 34.668980, 21.292141>,  <44.031036, 34.110634, 21.313116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645065, 34.668980, 21.292141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.384628, 34.399384, 21.431749>,  <43.228367, 34.237625, 21.515514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.384628, 34.399384, 21.431749>,  <43.645065, 34.668980, 21.292141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384628, 34.399384, 21.431749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410711, 0.699559, 0.584751,
		-0.638278, 0.237379, -0.732293,
		-0.651090, -0.673994, 0.349019,
		43.189301, 34.197186, 21.536455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018562, 34.953423, 21.154049>,  <43.645065, 34.668980, 21.292141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018562, 34.953423, 21.154049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.926849, 34.688751, 21.439598>,  <42.871822, 34.529949, 21.610928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.926849, 34.688751, 21.439598>,  <43.018562, 34.953423, 21.154049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926849, 34.688751, 21.439598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480145, 0.714856, 0.508371,
		-0.846693, -0.226200, -0.481606,
		-0.229285, -0.661675, 0.713873,
		42.858063, 34.490250, 21.653759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398983, 35.033447, 21.284365>,  <43.018562, 34.953423, 21.154049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398983, 35.033447, 21.284365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.512077, 34.859062, 21.626125>,  <42.579933, 34.754433, 21.831181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.512077, 34.859062, 21.626125>,  <42.398983, 35.033447, 21.284365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512077, 34.859062, 21.626125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554831, 0.652275, 0.516429,
		-0.782448, -0.620058, -0.057468,
		0.282732, -0.435964, 0.854399,
		42.596897, 34.728271, 21.882444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793285, 35.064579, 21.612780>,  <42.398983, 35.033447, 21.284365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793285, 35.064579, 21.612780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.065567, 34.998859, 21.898340>,  <42.228935, 34.959427, 22.069675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.065567, 34.998859, 21.898340>,  <41.793285, 35.064579, 21.612780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065567, 34.998859, 21.898340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540577, 0.545030, 0.640873,
		-0.494392, -0.822161, 0.282186,
		0.680701, -0.164299, 0.713900,
		42.269775, 34.949570, 22.112511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418354, 34.942043, 22.242163>,  <41.793285, 35.064579, 21.612780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418354, 34.942043, 22.242163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.784592, 35.044102, 22.366476>,  <42.004333, 35.105339, 22.441065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.784592, 35.044102, 22.366476>,  <41.418354, 34.942043, 22.242163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784592, 35.044102, 22.366476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400371, 0.650179, 0.645732,
		-0.037307, -0.715657, 0.697454,
		0.915593, 0.255150, 0.310785,
		42.059269, 35.120647, 22.459711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302006, 34.373272, 22.854258>,  <41.418354, 34.942043, 22.242163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302006, 34.373272, 22.854258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.931896, 34.222019, 22.842358>,  <40.709831, 34.131268, 22.835218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.931896, 34.222019, 22.842358>,  <41.302006, 34.373272, 22.854258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931896, 34.222019, 22.842358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117733, -0.211755, -0.970206,
		0.360568, -0.901207, 0.240450,
		-0.925273, -0.378134, -0.029749,
		40.654316, 34.108578, 22.833433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432331, 33.845810, 22.479481>,  <41.302006, 34.373272, 22.854258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432331, 33.845810, 22.479481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.032982, 33.865013, 22.467176>,  <40.793373, 33.876534, 22.459793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.032982, 33.865013, 22.467176>,  <41.432331, 33.845810, 22.479481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032982, 33.865013, 22.467176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021441, -0.183797, -0.982730,
		-0.052832, -0.981791, 0.182469,
		-0.998373, 0.048007, -0.030761,
		40.733471, 33.879417, 22.457949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191055, 33.236912, 22.186729>,  <41.432331, 33.845810, 22.479481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191055, 33.236912, 22.186729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.890400, 33.498215, 22.150299>,  <40.710007, 33.654999, 22.128441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.890400, 33.498215, 22.150299>,  <41.191055, 33.236912, 22.186729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890400, 33.498215, 22.150299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165058, -0.319984, -0.932934,
		-0.638592, -0.686193, 0.348337,
		-0.751635, 0.653261, -0.091077,
		40.664909, 33.694191, 22.122976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695702, 32.835018, 21.899681>,  <41.191055, 33.236912, 22.186729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695702, 32.835018, 21.899681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.571156, 33.202396, 21.802099>,  <40.496426, 33.422821, 21.743549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.571156, 33.202396, 21.802099>,  <40.695702, 32.835018, 21.899681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571156, 33.202396, 21.802099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118406, -0.292213, -0.948995,
		-0.942884, -0.266600, 0.199735,
		-0.311367, 0.918443, -0.243956,
		40.477745, 33.477928, 21.728912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040665, 32.772087, 21.524490>,  <40.695702, 32.835018, 21.899681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040665, 32.772087, 21.524490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.185947, 33.131847, 21.427204>,  <40.273117, 33.347706, 21.368834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.185947, 33.131847, 21.427204>,  <40.040665, 32.772087, 21.524490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185947, 33.131847, 21.427204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139245, -0.205710, -0.968656,
		-0.921245, 0.385687, 0.050523,
		0.363205, 0.899405, -0.243215,
		40.294910, 33.401669, 21.354240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536591, 33.006172, 21.158623>,  <40.040665, 32.772087, 21.524490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536591, 33.006172, 21.158623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.858971, 33.215137, 21.047245>,  <40.052399, 33.340519, 20.980417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.858971, 33.215137, 21.047245>,  <39.536591, 33.006172, 21.158623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858971, 33.215137, 21.047245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235970, -0.147876, -0.960443,
		-0.542926, 0.839770, 0.004095,
		0.805946, 0.522416, -0.278446,
		40.100754, 33.371861, 20.963711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325420, 33.199627, 20.480371>,  <39.536591, 33.006172, 21.158623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325420, 33.199627, 20.480371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.701958, 33.331787, 20.507803>,  <39.927879, 33.411083, 20.524261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.701958, 33.331787, 20.507803>,  <39.325420, 33.199627, 20.480371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701958, 33.331787, 20.507803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103639, -0.089670, -0.990565,
		-0.321130, 0.939573, -0.118652,
		0.941347, 0.330397, 0.068581,
		39.984364, 33.430904, 20.528378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488697, 33.858952, 19.961630>,  <39.325420, 33.199627, 20.480371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488697, 33.858952, 19.961630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.821533, 33.648804, 20.032751>,  <40.021236, 33.522717, 20.075424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.821533, 33.648804, 20.032751>,  <39.488697, 33.858952, 19.961630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821533, 33.648804, 20.032751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140024, -0.111204, -0.983884,
		0.536672, 0.843578, -0.018968,
		0.832092, -0.525367, 0.177801,
		40.071159, 33.491192, 20.086092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076702, 34.046555, 19.420647>,  <39.488697, 33.858952, 19.961630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076702, 34.046555, 19.420647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.195885, 33.693916, 19.567076>,  <40.267395, 33.482334, 19.654934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.195885, 33.693916, 19.567076>,  <40.076702, 34.046555, 19.420647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195885, 33.693916, 19.567076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010881, -0.386604, -0.922182,
		0.954517, 0.270789, -0.124784,
		0.297959, -0.881596, 0.366074,
		40.285271, 33.429440, 19.676897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655697, 33.748524, 19.037079>,  <40.076702, 34.046555, 19.420647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655697, 33.748524, 19.037079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.520996, 33.419395, 19.220192>,  <40.440174, 33.221920, 19.330059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.520996, 33.419395, 19.220192>,  <40.655697, 33.748524, 19.037079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520996, 33.419395, 19.220192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038803, -0.473637, -0.879865,
		0.940794, -0.314059, 0.127569,
		-0.336751, -0.822822, 0.457781,
		40.419971, 33.172550, 19.357527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114624, 33.236748, 18.795052>,  <40.655697, 33.748524, 19.037079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114624, 33.236748, 18.795052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.778065, 33.046925, 18.898466>,  <40.576130, 32.933029, 18.960516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.778065, 33.046925, 18.898466>,  <41.114624, 33.236748, 18.795052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778065, 33.046925, 18.898466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020856, -0.449534, -0.893020,
		0.540014, -0.756776, 0.368340,
		-0.841397, -0.474561, 0.258538,
		40.525646, 32.904556, 18.976027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265114, 32.488586, 18.578314>,  <41.114624, 33.236748, 18.795052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265114, 32.488586, 18.578314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.871510, 32.559048, 18.588812>,  <40.635345, 32.601326, 18.595110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.871510, 32.559048, 18.588812>,  <41.265114, 32.488586, 18.578314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871510, 32.559048, 18.588812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115686, -0.520166, -0.846194,
		-0.135408, -0.835702, 0.532228,
		-0.984013, 0.176153, 0.026245,
		40.576305, 32.611893, 18.596685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988419, 31.804310, 18.710752>,  <41.265114, 32.488586, 18.578314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988419, 31.804310, 18.710752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.792645, 32.082729, 18.500620>,  <40.675182, 32.249783, 18.374540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.792645, 32.082729, 18.500620>,  <40.988419, 31.804310, 18.710752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792645, 32.082729, 18.500620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148338, -0.527184, -0.836703,
		-0.859333, -0.487435, 0.154771,
		-0.489431, 0.696048, -0.525332,
		40.645817, 32.291542, 18.343019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770977, 31.090961, 18.765026>,  <40.988419, 31.804310, 18.710752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770977, 31.090961, 18.765026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.076794, 30.838350, 18.713423>,  <41.260284, 30.686783, 18.682461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.076794, 30.838350, 18.713423>,  <40.770977, 31.090961, 18.765026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076794, 30.838350, 18.713423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359290, -0.583712, 0.728142,
		-0.535146, -0.510346, -0.673176,
		0.764545, -0.631527, -0.129009,
		41.306156, 30.648891, 18.674721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493431, 30.430996, 18.707460>,  <40.770977, 31.090961, 18.765026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493431, 30.430996, 18.707460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.874493, 30.408905, 18.827061>,  <41.103130, 30.395651, 18.898821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.874493, 30.408905, 18.827061>,  <40.493431, 30.430996, 18.707460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874493, 30.408905, 18.827061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281307, -0.533324, 0.797767,
		0.115406, -0.844106, -0.523608,
		0.952653, -0.055227, 0.299002,
		41.160290, 30.392336, 18.916761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681408, 29.692707, 18.890818>,  <40.493431, 30.430996, 18.707460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681408, 29.692707, 18.890818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.976326, 29.872286, 19.092747>,  <41.153275, 29.980034, 19.213903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.976326, 29.872286, 19.092747>,  <40.681408, 29.692707, 18.890818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976326, 29.872286, 19.092747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263745, -0.496672, 0.826896,
		0.621963, -0.742808, -0.247785,
		0.737293, 0.448947, 0.504823,
		41.197514, 30.006969, 19.244194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112801, 29.283741, 19.133862>,  <40.681408, 29.692707, 18.890818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112801, 29.283741, 19.133862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.196564, 29.582481, 19.386326>,  <41.246822, 29.761726, 19.537804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.196564, 29.582481, 19.386326>,  <41.112801, 29.283741, 19.133862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196564, 29.582481, 19.386326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178283, -0.605490, 0.775627,
		0.961439, -0.274946, 0.006357,
		0.209407, 0.746851, 0.631160,
		41.259384, 29.806536, 19.575674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418175, 28.950109, 19.740837>,  <41.112801, 29.283741, 19.133862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418175, 28.950109, 19.740837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.369610, 29.316080, 19.894810>,  <41.340469, 29.535662, 19.987192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.369610, 29.316080, 19.894810>,  <41.418175, 28.950109, 19.740837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369610, 29.316080, 19.894810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109083, -0.397748, 0.910987,
		0.986590, 0.068617, 0.148094,
		-0.121413, 0.914925, 0.384929,
		41.333187, 29.590557, 20.010288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892834, 28.961620, 20.348820>,  <41.418175, 28.950109, 19.740837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892834, 28.961620, 20.348820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.605915, 29.238468, 20.380962>,  <41.433765, 29.404577, 20.400248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.605915, 29.238468, 20.380962>,  <41.892834, 28.961620, 20.348820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605915, 29.238468, 20.380962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129071, -0.245316, 0.960813,
		0.684711, 0.678814, 0.265297,
		-0.717295, 0.692121, 0.080355,
		41.390728, 29.446104, 20.405069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068508, 29.214106, 20.977655>,  <41.892834, 28.961620, 20.348820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068508, 29.214106, 20.977655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.699959, 29.361689, 20.928766>,  <41.478828, 29.450239, 20.899433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.699959, 29.361689, 20.928766>,  <42.068508, 29.214106, 20.977655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699959, 29.361689, 20.928766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138095, -0.016812, 0.990276,
		0.363316, 0.929294, 0.066441,
		-0.921375, 0.368959, -0.122223,
		41.423546, 29.472376, 20.892099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969845, 29.767424, 21.504950>,  <42.068508, 29.214106, 20.977655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969845, 29.767424, 21.504950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.624981, 29.599764, 21.391111>,  <41.418064, 29.499168, 21.322809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.624981, 29.599764, 21.391111>,  <41.969845, 29.767424, 21.504950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624981, 29.599764, 21.391111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304787, -0.019616, 0.952218,
		-0.404706, 0.907705, -0.110840,
		-0.862159, -0.419151, -0.284595,
		41.366333, 29.474018, 21.305733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647678, 30.212484, 21.560930>,  <41.969845, 29.767424, 21.504950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647678, 30.212484, 21.560930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.827080, 29.904533, 21.742537>,  <42.934719, 29.719763, 21.851500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.827080, 29.904533, 21.742537>,  <42.647678, 30.212484, 21.560930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827080, 29.904533, 21.742537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470808, -0.228281, -0.852190,
		0.759726, 0.595965, 0.260081,
		0.448504, -0.769879, 0.454016,
		42.961632, 29.673571, 21.878742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296192, 30.215094, 21.347506>,  <42.647678, 30.212484, 21.560930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296192, 30.215094, 21.347506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.272629, 29.836933, 21.475721>,  <43.258492, 29.610037, 21.552650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.272629, 29.836933, 21.475721>,  <43.296192, 30.215094, 21.347506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272629, 29.836933, 21.475721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686247, -0.271547, -0.674780,
		0.724979, 0.180215, 0.664777,
		-0.058913, -0.945402, 0.320537,
		43.254955, 29.553312, 21.571882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020996, 30.016687, 21.476597>,  <43.296192, 30.215094, 21.347506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020996, 30.016687, 21.476597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.813293, 29.679922, 21.417870>,  <43.688671, 29.477863, 21.382633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.813293, 29.679922, 21.417870>,  <44.020996, 30.016687, 21.476597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813293, 29.679922, 21.417870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722510, -0.340702, -0.601582,
		0.456460, -0.418450, 0.785203,
		-0.519252, -0.841916, -0.146817,
		43.657516, 29.427347, 21.373825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507832, 29.603727, 21.172947>,  <44.020996, 30.016687, 21.476597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507832, 29.603727, 21.172947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.195621, 29.359493, 21.119331>,  <44.008297, 29.212952, 21.087162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.195621, 29.359493, 21.119331>,  <44.507832, 29.603727, 21.172947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195621, 29.359493, 21.119331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507995, -0.494560, -0.705231,
		0.364313, -0.618541, 0.696191,
		-0.780523, -0.610587, -0.134041,
		43.961464, 29.176317, 21.079119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768082, 28.890350, 21.158043>,  <44.507832, 29.603727, 21.172947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768082, 28.890350, 21.158043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.424599, 28.918653, 20.955019>,  <44.218510, 28.935635, 20.833204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.424599, 28.918653, 20.955019>,  <44.768082, 28.890350, 21.158043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424599, 28.918653, 20.955019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478009, -0.246450, -0.843071,
		-0.184741, -0.966569, 0.177806,
		-0.858707, 0.070757, -0.507559,
		44.166988, 28.939880, 20.802752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613213, 28.204790, 20.745901>,  <44.768082, 28.890350, 21.158043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613213, 28.204790, 20.745901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.432346, 28.519180, 20.577240>,  <44.323826, 28.707815, 20.476044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.432346, 28.519180, 20.577240>,  <44.613213, 28.204790, 20.745901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432346, 28.519180, 20.577240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333379, -0.289548, -0.897229,
		-0.827290, -0.546262, -0.131106,
		-0.452161, 0.785977, -0.421652,
		44.296700, 28.754974, 20.450745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400311, 27.986668, 20.064995>,  <44.613213, 28.204790, 20.745901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400311, 27.986668, 20.064995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.376198, 28.384581, 20.032078>,  <44.361729, 28.623329, 20.012327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.376198, 28.384581, 20.032078>,  <44.400311, 27.986668, 20.064995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376198, 28.384581, 20.032078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560019, -0.034539, -0.827759,
		-0.826283, -0.095986, -0.555016,
		-0.060284, 0.994783, -0.082292,
		44.358112, 28.683016, 20.007391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358181, 28.103148, 19.335640>,  <44.400311, 27.986668, 20.064995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358181, 28.103148, 19.335640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.455837, 28.474846, 19.446564>,  <44.514431, 28.697865, 19.513119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.455837, 28.474846, 19.446564>,  <44.358181, 28.103148, 19.335640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455837, 28.474846, 19.446564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702428, 0.027694, -0.711216,
		-0.668573, 0.368428, -0.645966,
		0.244142, 0.929244, 0.277309,
		44.529079, 28.753618, 19.529757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149300, 28.563848, 18.819456>,  <44.358181, 28.103148, 19.335640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149300, 28.563848, 18.819456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.410873, 28.790327, 19.020172>,  <44.567818, 28.926214, 19.140602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.410873, 28.790327, 19.020172>,  <44.149300, 28.563848, 18.819456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410873, 28.790327, 19.020172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598737, 0.018138, -0.800740,
		-0.462479, 0.824070, -0.327142,
		0.653932, 0.566197, 0.501790,
		44.607052, 28.960186, 19.170710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.784550, 35.520584, 32.970230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.047974, 35.801334, 32.861671>,  <40.206028, 35.969784, 32.796535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.047974, 35.801334, 32.861671>,  <39.784550, 35.520584, 32.970230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047974, 35.801334, 32.861671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045050, -0.396776, -0.916809,
		-0.751175, 0.591551, -0.292923,
		0.658564, 0.701880, -0.271399,
		40.245544, 36.011898, 32.780251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584301, 35.859619, 32.299541>,  <39.784550, 35.520584, 32.970230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584301, 35.859619, 32.299541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.978058, 35.852745, 32.369598>,  <40.214314, 35.848621, 32.411633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.978058, 35.852745, 32.369598>,  <39.584301, 35.859619, 32.299541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978058, 35.852745, 32.369598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148626, -0.451741, -0.879682,
		0.094234, 0.891984, -0.442137,
		0.984393, -0.017183, 0.175141,
		40.273376, 35.847591, 32.422142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882504, 35.984577, 31.624966>,  <39.584301, 35.859619, 32.299541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882504, 35.984577, 31.624966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.200489, 35.834492, 31.815649>,  <40.391281, 35.744438, 31.930059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.200489, 35.834492, 31.815649>,  <39.882504, 35.984577, 31.624966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200489, 35.834492, 31.815649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346730, -0.363788, -0.864544,
		0.497813, 0.852567, -0.159097,
		0.794959, -0.375217, 0.476709,
		40.438976, 35.721928, 31.958662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473576, 36.076782, 31.141527>,  <39.882504, 35.984577, 31.624966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473576, 36.076782, 31.141527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.593647, 35.796749, 31.400690>,  <40.665691, 35.628731, 31.556189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.593647, 35.796749, 31.400690>,  <40.473576, 36.076782, 31.141527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593647, 35.796749, 31.400690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410245, -0.518453, -0.750270,
		0.861157, 0.491016, 0.131575,
		0.300179, -0.700078, 0.647907,
		40.683701, 35.586727, 31.595062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163883, 36.034290, 30.979307>,  <40.473576, 36.076782, 31.141527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163883, 36.034290, 30.979307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.046204, 35.693348, 31.152250>,  <40.975594, 35.488781, 31.256016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.046204, 35.693348, 31.152250>,  <41.163883, 36.034290, 30.979307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046204, 35.693348, 31.152250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442399, -0.522447, -0.728925,
		0.847189, -0.023175, 0.530787,
		-0.294201, -0.852357, 0.432359,
		40.957943, 35.437641, 31.281958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639019, 35.576176, 30.738020>,  <41.163883, 36.034290, 30.979307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639019, 35.576176, 30.738020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.360672, 35.327282, 30.881454>,  <41.193665, 35.177944, 30.967516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.360672, 35.327282, 30.881454>,  <41.639019, 35.576176, 30.738020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360672, 35.327282, 30.881454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308150, -0.709708, -0.633528,
		0.648699, -0.330353, 0.685607,
		-0.695868, -0.622239, 0.358589,
		41.151913, 35.140610, 30.989031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005707, 34.983627, 30.872683>,  <41.639019, 35.576176, 30.738020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005707, 34.983627, 30.872683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.633450, 34.838432, 30.854200>,  <41.410095, 34.751316, 30.843111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.633450, 34.838432, 30.854200>,  <42.005707, 34.983627, 30.872683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633450, 34.838432, 30.854200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334001, -0.791088, -0.512467,
		0.149466, -0.492359, 0.857463,
		-0.930647, -0.362990, -0.046207,
		41.354256, 34.729534, 30.840338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120888, 34.271286, 31.014380>,  <42.005707, 34.983627, 30.872683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120888, 34.271286, 31.014380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.748608, 34.267883, 30.868103>,  <41.525242, 34.265842, 30.780338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.748608, 34.267883, 30.868103>,  <42.120888, 34.271286, 31.014380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748608, 34.267883, 30.868103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232107, -0.786415, -0.572431,
		-0.282715, -0.617640, 0.733889,
		-0.930698, -0.008506, -0.365690,
		41.469398, 34.265331, 30.758396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786400, 33.603996, 31.111355>,  <42.120888, 34.271286, 31.014380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786400, 33.603996, 31.111355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.559956, 33.769108, 30.825941>,  <41.424091, 33.868176, 30.654692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.559956, 33.769108, 30.825941>,  <41.786400, 33.603996, 31.111355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559956, 33.769108, 30.825941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161582, -0.793236, -0.587084,
		-0.808340, -0.447647, 0.382359,
		-0.566107, 0.412781, -0.713536,
		41.390121, 33.892941, 30.611879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337460, 33.005493, 30.785412>,  <41.786400, 33.603996, 31.111355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337460, 33.005493, 30.785412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.345562, 33.290211, 30.504574>,  <41.350422, 33.461040, 30.336071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.345562, 33.290211, 30.504574>,  <41.337460, 33.005493, 30.785412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345562, 33.290211, 30.504574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063294, -0.699916, -0.711415,
		-0.997789, 0.058845, 0.030878,
		0.020251, 0.711797, -0.702093,
		41.351639, 33.503750, 30.293945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959053, 32.738644, 30.240129>,  <41.337460, 33.005493, 30.785412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959053, 32.738644, 30.240129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.136581, 33.041958, 30.049124>,  <41.243099, 33.223946, 29.934521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.136581, 33.041958, 30.049124>,  <40.959053, 32.738644, 30.240129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136581, 33.041958, 30.049124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023095, -0.542373, -0.839821,
		-0.895817, 0.361704, -0.258230,
		0.443824, 0.758289, -0.477513,
		41.269730, 33.269444, 29.905870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753571, 32.719791, 29.581663>,  <40.959053, 32.738644, 30.240129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753571, 32.719791, 29.581663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.100304, 32.919205, 29.585062>,  <41.308342, 33.038853, 29.587101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.100304, 32.919205, 29.585062>,  <40.753571, 32.719791, 29.581663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100304, 32.919205, 29.585062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348920, -0.594337, -0.724581,
		-0.356180, 0.631052, -0.689137,
		0.866828, 0.498535, 0.008495,
		41.360352, 33.068764, 29.587610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147194, 32.826385, 29.185726>,  <40.753571, 32.719791, 29.581663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147194, 32.826385, 29.185726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.868156, 32.540298, 29.202818>,  <39.700733, 32.368649, 29.213074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.868156, 32.540298, 29.202818>,  <40.147194, 32.826385, 29.185726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868156, 32.540298, 29.202818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388405, 0.427605, 0.816270,
		-0.602080, 0.552831, -0.576089,
		-0.697597, -0.715215, 0.042730,
		39.658878, 32.325733, 29.215637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522976, 33.174423, 29.175615>,  <40.147194, 32.826385, 29.185726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522976, 33.174423, 29.175615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.420387, 32.821049, 29.332462>,  <39.358833, 32.609024, 29.426571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.420387, 32.821049, 29.332462>,  <39.522976, 33.174423, 29.175615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420387, 32.821049, 29.332462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668161, 0.455195, 0.588523,
		-0.698414, -0.111056, -0.707025,
		-0.256475, -0.883439, 0.392117,
		39.343445, 32.556019, 29.450098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760509, 33.219887, 29.350574>,  <39.522976, 33.174423, 29.175615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760509, 33.219887, 29.350574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.868996, 32.895981, 29.558702>,  <38.934086, 32.701637, 29.683578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.868996, 32.895981, 29.558702>,  <38.760509, 33.219887, 29.350574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868996, 32.895981, 29.558702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703007, 0.202585, 0.681719,
		-0.657438, -0.550680, -0.514323,
		0.271215, -0.809760, 0.520318,
		38.950359, 32.653053, 29.714798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057041, 32.998703, 29.525639>,  <38.760509, 33.219887, 29.350574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057041, 32.998703, 29.525639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.336163, 32.818508, 29.748396>,  <38.503635, 32.710388, 29.882050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.336163, 32.818508, 29.748396>,  <38.057041, 32.998703, 29.525639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336163, 32.818508, 29.748396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488401, 0.269471, 0.829970,
		-0.523961, -0.851142, -0.031984,
		0.697803, -0.450492, 0.556891,
		38.545502, 32.683361, 29.915462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674553, 32.557144, 29.893311>,  <38.057041, 32.998703, 29.525639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674553, 32.557144, 29.893311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.007584, 32.623806, 30.104610>,  <38.207401, 32.663803, 30.231390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.007584, 32.623806, 30.104610>,  <37.674553, 32.557144, 29.893311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007584, 32.623806, 30.104610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550407, 0.141795, 0.822767,
		0.062212, -0.975767, 0.209782,
		0.832575, 0.166652, 0.528248,
		38.257355, 32.673801, 30.263084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583237, 32.130287, 30.525784>,  <37.674553, 32.557144, 29.893311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583237, 32.130287, 30.525784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.876492, 32.393047, 30.596199>,  <38.052444, 32.550705, 30.638449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.876492, 32.393047, 30.596199>,  <37.583237, 32.130287, 30.525784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876492, 32.393047, 30.596199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423860, 0.238928, 0.873645,
		0.531837, -0.715119, 0.453601,
		0.733138, 0.656900, 0.176040,
		38.096432, 32.590118, 30.649012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664803, 32.085041, 31.154024>,  <37.583237, 32.130287, 30.525784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664803, 32.085041, 31.154024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837307, 32.438286, 31.080130>,  <37.940811, 32.650234, 31.035793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837307, 32.438286, 31.080130>,  <37.664803, 32.085041, 31.154024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837307, 32.438286, 31.080130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423464, 0.378928, 0.822856,
		0.796676, -0.276635, 0.537383,
		0.431260, 0.883112, -0.184738,
		37.966686, 32.703220, 31.024708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982826, 32.351357, 31.824436>,  <37.664803, 32.085041, 31.154024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982826, 32.351357, 31.824436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895576, 32.659435, 31.584696>,  <37.843227, 32.844280, 31.440851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895576, 32.659435, 31.584696>,  <37.982826, 32.351357, 31.824436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895576, 32.659435, 31.584696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492934, 0.443090, 0.748790,
		0.842280, 0.458772, 0.283005,
		-0.218128, 0.770194, -0.599351,
		37.830139, 32.890495, 31.404890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100372, 32.874725, 32.280697>,  <37.982826, 32.351357, 31.824436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100372, 32.874725, 32.280697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.891693, 33.066029, 31.998112>,  <37.766487, 33.180813, 31.828560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.891693, 33.066029, 31.998112>,  <38.100372, 32.874725, 32.280697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891693, 33.066029, 31.998112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614340, 0.363981, 0.700074,
		0.591959, 0.799239, 0.103928,
		-0.521699, 0.478263, -0.706467,
		37.735184, 33.209507, 31.786171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930653, 33.453274, 32.551960>,  <38.100372, 32.874725, 32.280697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930653, 33.453274, 32.551960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.678452, 33.459316, 32.241543>,  <37.527130, 33.462944, 32.055294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.678452, 33.459316, 32.241543>,  <37.930653, 33.453274, 32.551960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678452, 33.459316, 32.241543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591120, 0.638618, 0.492691,
		0.503039, 0.769376, -0.393717,
		-0.630499, 0.015109, -0.776043,
		37.489304, 33.463848, 32.008728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799381, 34.195114, 32.385948>,  <37.930653, 33.453274, 32.551960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799381, 34.195114, 32.385948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503162, 33.979847, 32.224968>,  <37.325432, 33.850685, 32.128380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503162, 33.979847, 32.224968>,  <37.799381, 34.195114, 32.385948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503162, 33.979847, 32.224968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668838, 0.532177, 0.519079,
		-0.065181, 0.653573, -0.754051,
		-0.740545, -0.538172, -0.402447,
		37.280998, 33.818394, 32.104233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327538, 34.717010, 32.290085>,  <37.799381, 34.195114, 32.385948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327538, 34.717010, 32.290085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.097710, 34.390511, 32.266068>,  <36.959812, 34.194611, 32.251656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.097710, 34.390511, 32.266068>,  <37.327538, 34.717010, 32.290085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097710, 34.390511, 32.266068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758563, 0.503535, 0.413563,
		-0.307338, 0.283166, -0.908494,
		-0.574566, -0.816253, -0.060044,
		36.925339, 34.145634, 32.248055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678177, 34.939087, 31.969648>,  <37.327538, 34.717010, 32.290085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678177, 34.939087, 31.969648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605862, 34.597786, 32.165314>,  <36.562473, 34.393005, 32.282711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605862, 34.597786, 32.165314>,  <36.678177, 34.939087, 31.969648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605862, 34.597786, 32.165314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842951, 0.390657, 0.369893,
		-0.506707, -0.345469, -0.789873,
		-0.180783, -0.853251, 0.489161,
		36.551628, 34.341812, 32.312061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882710, 34.810871, 32.040279>,  <36.678177, 34.939087, 31.969648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882710, 34.810871, 32.040279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.045830, 34.588898, 32.330311>,  <36.143703, 34.455711, 32.504330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.045830, 34.588898, 32.330311>,  <35.882710, 34.810871, 32.040279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045830, 34.588898, 32.330311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707939, 0.309353, 0.634920,
		-0.576647, -0.772233, -0.266708,
		0.407799, -0.554938, 0.725082,
		36.168171, 34.422417, 32.547836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366478, 35.312763, 31.674181>,  <35.882710, 34.810871, 32.040279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366478, 35.312763, 31.674181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304230, 35.569283, 31.974718>,  <35.266880, 35.723194, 32.155041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304230, 35.569283, 31.974718>,  <35.366478, 35.312763, 31.674181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304230, 35.569283, 31.974718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942158, 0.324931, -0.082204,
		-0.296853, 0.695092, -0.654772,
		-0.155616, 0.641301, 0.751343,
		35.257545, 35.761673, 32.200123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599888, 35.963928, 31.560999>,  <35.366478, 35.312763, 31.674181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599888, 35.963928, 31.560999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630295, 35.884914, 31.951937>,  <35.648540, 35.837505, 32.186501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630295, 35.884914, 31.951937>,  <35.599888, 35.963928, 31.560999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630295, 35.884914, 31.951937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996674, -0.013820, -0.080313,
		0.029372, 0.980198, 0.195831,
		0.076017, -0.197539, 0.977343,
		35.653099, 35.825653, 32.245140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174900, 36.566402, 31.421093>,  <35.599888, 35.963928, 31.560999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174900, 36.566402, 31.421093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.547928, 36.708691, 31.445705>,  <36.771744, 36.794064, 31.460472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.547928, 36.708691, 31.445705>,  <36.174900, 36.566402, 31.421093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547928, 36.708691, 31.445705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261971, -0.549570, -0.793312,
		-0.248379, 0.755935, -0.605698,
		0.932566, 0.355718, 0.061531,
		36.827698, 36.815407, 31.464165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346645, 36.755131, 30.821428>,  <36.174900, 36.566402, 31.421093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346645, 36.755131, 30.821428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702965, 36.698856, 30.994253>,  <36.916756, 36.665092, 31.097948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702965, 36.698856, 30.994253>,  <36.346645, 36.755131, 30.821428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702965, 36.698856, 30.994253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351555, -0.389049, -0.851499,
		0.287889, 0.910411, -0.297106,
		0.890803, -0.140688, 0.432062,
		36.970207, 36.656651, 31.123873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721375, 36.932587, 30.318102>,  <36.346645, 36.755131, 30.821428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721375, 36.932587, 30.318102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921772, 36.695049, 30.569929>,  <37.042011, 36.552525, 30.721025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921772, 36.695049, 30.569929>,  <36.721375, 36.932587, 30.318102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921772, 36.695049, 30.569929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293066, -0.568058, -0.769040,
		0.814322, 0.569786, -0.110556,
		0.500991, -0.593846, 0.629567,
		37.072071, 36.516895, 30.758799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398582, 37.047874, 30.142536>,  <36.721375, 36.932587, 30.318102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398582, 37.047874, 30.142536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369045, 36.692928, 30.324581>,  <37.351322, 36.479961, 30.433807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369045, 36.692928, 30.324581>,  <37.398582, 37.047874, 30.142536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369045, 36.692928, 30.324581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295117, -0.455363, -0.839971,
		0.952603, 0.072284, 0.295503,
		-0.073844, -0.887367, 0.455113,
		37.346893, 36.426720, 30.461115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951042, 36.789719, 29.912521>,  <37.398582, 37.047874, 30.142536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951042, 36.789719, 29.912521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.772663, 36.462917, 30.058744>,  <37.665634, 36.266834, 30.146479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.772663, 36.462917, 30.058744>,  <37.951042, 36.789719, 29.912521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772663, 36.462917, 30.058744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486548, -0.564076, -0.667150,
		0.751268, -0.119653, 0.649061,
		-0.445946, -0.817007, 0.365556,
		37.638878, 36.217815, 30.168411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480312, 36.228867, 30.209644>,  <37.951042, 36.789719, 29.912521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480312, 36.228867, 30.209644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.132072, 36.068642, 30.095373>,  <37.923130, 35.972507, 30.026812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.132072, 36.068642, 30.095373>,  <38.480312, 36.228867, 30.209644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132072, 36.068642, 30.095373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482091, -0.578624, -0.657862,
		0.098213, -0.710455, 0.696855,
		-0.870599, -0.400558, -0.285675,
		37.870892, 35.948475, 30.009670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589272, 35.569366, 30.345184>,  <38.480312, 36.228867, 30.209644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589272, 35.569366, 30.345184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.286232, 35.566406, 30.084112>,  <38.104408, 35.564632, 29.927469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.286232, 35.566406, 30.084112>,  <38.589272, 35.569366, 30.345184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286232, 35.566406, 30.084112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380800, -0.817141, -0.432749,
		-0.530132, -0.576390, 0.621880,
		-0.757596, -0.007399, -0.652682,
		38.058952, 35.564186, 29.888308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575054, 34.877262, 30.187979>,  <38.589272, 35.569366, 30.345184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575054, 34.877262, 30.187979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347652, 35.024529, 29.893698>,  <38.211212, 35.112888, 29.717129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347652, 35.024529, 29.893698>,  <38.575054, 34.877262, 30.187979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347652, 35.024529, 29.893698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308944, -0.733279, -0.605686,
		-0.762467, -0.571626, 0.303130,
		-0.568504, 0.368165, -0.735702,
		38.177101, 35.134979, 29.672987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256317, 34.262585, 29.967178>,  <38.575054, 34.877262, 30.187979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256317, 34.262585, 29.967178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.267498, 34.542484, 29.681643>,  <38.274208, 34.710426, 29.510321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.267498, 34.542484, 29.681643>,  <38.256317, 34.262585, 29.967178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267498, 34.542484, 29.681643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336436, -0.679041, -0.652468,
		-0.941291, -0.221922, -0.254403,
		0.027953, 0.699753, -0.713838,
		38.275883, 34.752411, 29.467491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009068, 33.916534, 29.378483>,  <38.256317, 34.262585, 29.967178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009068, 33.916534, 29.378483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.194088, 34.239914, 29.232901>,  <38.305099, 34.433941, 29.145552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.194088, 34.239914, 29.232901>,  <38.009068, 33.916534, 29.378483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194088, 34.239914, 29.232901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289260, -0.525657, -0.800009,
		-0.838078, 0.264769, -0.476994,
		0.462552, 0.808444, -0.363954,
		38.332855, 34.482449, 29.123714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821709, 33.854691, 28.680532>,  <38.009068, 33.916534, 29.378483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821709, 33.854691, 28.680532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128239, 34.111500, 28.689865>,  <38.312157, 34.265587, 28.695465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128239, 34.111500, 28.689865>,  <37.821709, 33.854691, 28.680532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128239, 34.111500, 28.689865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277927, -0.298552, -0.913030,
		-0.579224, 0.706164, -0.407225,
		0.766326, 0.642027, 0.023333,
		38.358135, 34.304108, 28.696865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733196, 34.203823, 28.118368>,  <37.821709, 33.854691, 28.680532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733196, 34.203823, 28.118368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.122192, 34.234833, 28.206236>,  <38.355591, 34.253437, 28.258957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.122192, 34.234833, 28.206236>,  <37.733196, 34.203823, 28.118368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122192, 34.234833, 28.206236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230739, -0.191023, -0.954080,
		-0.031999, 0.978520, -0.203655,
		0.972489, 0.077520, 0.219670,
		38.413940, 34.258087, 28.272137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958595, 34.504379, 27.516994>,  <37.733196, 34.203823, 28.118368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958595, 34.504379, 27.516994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271606, 34.368069, 27.725428>,  <38.459412, 34.286282, 27.850487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271606, 34.368069, 27.725428>,  <37.958595, 34.504379, 27.516994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271606, 34.368069, 27.725428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392721, -0.379284, -0.837803,
		0.483141, 0.860242, -0.162970,
		0.782525, -0.340775, 0.521082,
		38.506363, 34.265835, 27.881752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577038, 34.709190, 27.217047>,  <37.958595, 34.504379, 27.516994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577038, 34.709190, 27.217047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.717216, 34.385235, 27.405201>,  <38.801323, 34.190861, 27.518093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.717216, 34.385235, 27.405201>,  <38.577038, 34.709190, 27.217047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717216, 34.385235, 27.405201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396417, -0.326765, -0.857950,
		0.848550, 0.487139, 0.206539,
		0.350451, -0.809889, 0.470386,
		38.822353, 34.142269, 27.546316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263729, 34.651558, 27.079071>,  <38.577038, 34.709190, 27.217047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263729, 34.651558, 27.079071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.132000, 34.289444, 27.186411>,  <39.052963, 34.072178, 27.250814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.132000, 34.289444, 27.186411>,  <39.263729, 34.651558, 27.079071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132000, 34.289444, 27.186411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444367, -0.399359, -0.801904,
		0.833116, -0.144841, 0.533796,
		-0.329325, -0.905281, 0.268350,
		39.033203, 34.017860, 27.266916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823990, 34.175903, 27.058498>,  <39.263729, 34.651558, 27.079071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823990, 34.175903, 27.058498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.509132, 33.934116, 27.009472>,  <39.320217, 33.789043, 26.980055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.509132, 33.934116, 27.009472>,  <39.823990, 34.175903, 27.058498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509132, 33.934116, 27.009472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478615, -0.473298, -0.739538,
		0.389017, -0.640785, 0.661862,
		-0.787142, -0.604470, -0.122568,
		39.272991, 33.752777, 26.972702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115921, 33.487381, 26.971853>,  <39.823990, 34.175903, 27.058498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115921, 33.487381, 26.971853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741455, 33.498047, 26.831635>,  <39.516777, 33.504444, 26.747503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741455, 33.498047, 26.831635>,  <40.115921, 33.487381, 26.971853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741455, 33.498047, 26.831635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325450, -0.311369, -0.892822,
		-0.132955, -0.949915, 0.282815,
		-0.936165, 0.026663, -0.350548,
		39.460606, 33.506046, 26.726471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126095, 33.032917, 26.518398>,  <40.115921, 33.487381, 26.971853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126095, 33.032917, 26.518398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.779041, 33.194527, 26.402485>,  <39.570808, 33.291492, 26.332937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.779041, 33.194527, 26.402485>,  <40.126095, 33.032917, 26.518398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779041, 33.194527, 26.402485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251787, -0.145528, -0.956778,
		-0.428733, -0.903098, 0.024538,
		-0.867635, 0.404024, -0.289781,
		39.518749, 33.315735, 26.315550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868443, 32.600449, 25.942606>,  <40.126095, 33.032917, 26.518398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868443, 32.600449, 25.942606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.703087, 32.962914, 25.906891>,  <39.603874, 33.180393, 25.885462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.703087, 32.962914, 25.906891>,  <39.868443, 32.600449, 25.942606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703087, 32.962914, 25.906891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237751, 0.012760, -0.971242,
		-0.878967, -0.422729, -0.220717,
		-0.413389, 0.906166, -0.089289,
		39.579071, 33.234764, 25.880104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753223, 32.645203, 25.227108>,  <39.868443, 32.600449, 25.942606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753223, 32.645203, 25.227108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716740, 33.028290, 25.336260>,  <39.694851, 33.258141, 25.401751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716740, 33.028290, 25.336260>,  <39.753223, 32.645203, 25.227108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716740, 33.028290, 25.336260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349839, 0.287371, -0.891645,
		-0.932360, 0.014142, -0.361255,
		-0.091205, 0.957715, 0.272881,
		39.689377, 33.315605, 25.418123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390747, 32.919743, 24.752419>,  <39.753223, 32.645203, 25.227108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390747, 32.919743, 24.752419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.557056, 33.244350, 24.916643>,  <39.656841, 33.439117, 25.015179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.557056, 33.244350, 24.916643>,  <39.390747, 32.919743, 24.752419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557056, 33.244350, 24.916643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137666, 0.390072, -0.910435,
		-0.898987, 0.435059, 0.050464,
		0.415778, 0.811522, 0.410563,
		39.681789, 33.487808, 25.039812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100452, 33.492741, 24.463444>,  <39.390747, 32.919743, 24.752419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100452, 33.492741, 24.463444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.453537, 33.644463, 24.574398>,  <39.665386, 33.735497, 24.640972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.453537, 33.644463, 24.574398>,  <39.100452, 33.492741, 24.463444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453537, 33.644463, 24.574398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160184, 0.312061, -0.936461,
		-0.441769, 0.871059, 0.214701,
		0.882712, 0.379308, 0.277388,
		39.718349, 33.758255, 24.657614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091045, 34.155140, 24.247332>,  <39.100452, 33.492741, 24.463444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091045, 34.155140, 24.247332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.482685, 34.077042, 24.270123>,  <39.717667, 34.030182, 24.283796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.482685, 34.077042, 24.270123>,  <39.091045, 34.155140, 24.247332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482685, 34.077042, 24.270123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130821, 0.390040, -0.911457,
		0.155737, 0.899859, 0.407429,
		0.979097, -0.195248, 0.056977,
		39.776413, 34.018467, 24.287216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414116, 34.654476, 23.836426>,  <39.091045, 34.155140, 24.247332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414116, 34.654476, 23.836426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716198, 34.396278, 23.882051>,  <39.897446, 34.241360, 23.909428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716198, 34.396278, 23.882051>,  <39.414116, 34.654476, 23.836426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716198, 34.396278, 23.882051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235324, 0.104568, -0.966275,
		0.611795, 0.756575, 0.230870,
		0.755202, -0.645492, 0.114066,
		39.942757, 34.202629, 23.916271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013412, 34.920437, 23.441460>,  <39.414116, 34.654476, 23.836426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013412, 34.920437, 23.441460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.107517, 34.537575, 23.508993>,  <40.163982, 34.307858, 23.549513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.107517, 34.537575, 23.508993>,  <40.013412, 34.920437, 23.441460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107517, 34.537575, 23.508993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337088, -0.082574, -0.937845,
		0.911604, 0.277555, 0.303218,
		0.235266, -0.957155, 0.168835,
		40.178097, 34.250427, 23.559643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680664, 34.899708, 23.178043>,  <40.013412, 34.920437, 23.441460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680664, 34.899708, 23.178043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.499863, 34.543690, 23.201733>,  <40.391380, 34.330078, 23.215946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.499863, 34.543690, 23.201733>,  <40.680664, 34.899708, 23.178043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499863, 34.543690, 23.201733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178591, -0.155343, -0.971583,
		0.873953, -0.428586, 0.229171,
		-0.452007, -0.890046, 0.059221,
		40.364262, 34.276676, 23.219500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333843, 35.137444, 22.937937>,  <40.680664, 34.899708, 23.178043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333843, 35.137444, 22.937937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.682266, 35.295181, 22.820801>,  <41.891319, 35.389824, 22.750519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.682266, 35.295181, 22.820801>,  <41.333843, 35.137444, 22.937937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682266, 35.295181, 22.820801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137239, 0.767836, 0.625775,
		0.471624, -0.504895, 0.722946,
		0.871055, 0.394347, -0.292839,
		41.943584, 35.413486, 22.732948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743999, 35.277424, 23.524523>,  <41.333843, 35.137444, 22.937937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743999, 35.277424, 23.524523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.900173, 35.507915, 23.237324>,  <41.993877, 35.646210, 23.065004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.900173, 35.507915, 23.237324>,  <41.743999, 35.277424, 23.524523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900173, 35.507915, 23.237324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113771, 0.743719, 0.658740,
		0.913573, -0.338883, 0.224817,
		0.390436, 0.576229, -0.717997,
		42.017303, 35.680786, 23.021925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277172, 35.582756, 23.908844>,  <41.743999, 35.277424, 23.524523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277172, 35.582756, 23.908844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.191383, 35.803509, 23.586496>,  <42.139908, 35.935963, 23.393087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.191383, 35.803509, 23.586496>,  <42.277172, 35.582756, 23.908844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191383, 35.803509, 23.586496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019716, 0.827346, 0.561347,
		0.976530, 0.104507, -0.188327,
		-0.214476, 0.551886, -0.805868,
		42.127041, 35.969074, 23.344736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748310, 36.208744, 23.943638>,  <42.277172, 35.582756, 23.908844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748310, 36.208744, 23.943638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.425030, 36.270325, 23.716267>,  <42.231060, 36.307274, 23.579844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.425030, 36.270325, 23.716267>,  <42.748310, 36.208744, 23.943638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425030, 36.270325, 23.716267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138907, 0.888158, 0.438042,
		0.572288, 0.432985, -0.696427,
		-0.808203, 0.153948, -0.568426,
		42.182568, 36.316509, 23.545738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851875, 36.854851, 23.816763>,  <42.748310, 36.208744, 23.943638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851875, 36.854851, 23.816763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.467854, 36.762428, 23.753624>,  <42.237442, 36.706974, 23.715740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.467854, 36.762428, 23.753624>,  <42.851875, 36.854851, 23.816763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467854, 36.762428, 23.753624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279299, 0.825775, 0.489987,
		0.017136, 0.514500, -0.857319,
		-0.960051, -0.231052, -0.157849,
		42.179836, 36.693111, 23.706268>
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
