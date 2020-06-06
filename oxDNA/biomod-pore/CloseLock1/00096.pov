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
	<24.103933, 35.211666, 34.845085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409048, 34.953941, 34.867050>,  <24.592117, 34.799305, 34.880230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409048, 34.953941, 34.867050>,  <24.103933, 35.211666, 34.845085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409048, 34.953941, 34.867050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569330, 0.709425, 0.415426,
		-0.306621, -0.285619, 0.907968,
		0.762789, -0.644312, 0.054913,
		24.637884, 34.760647, 34.883526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.350351, 34.822613, 35.503616>,  <24.103933, 35.211666, 34.845085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.350351, 34.822613, 35.503616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.618986, 34.943676, 35.233101>,  <24.780167, 35.016315, 35.070793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.618986, 34.943676, 35.233101>,  <24.350351, 34.822613, 35.503616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.618986, 34.943676, 35.233101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419092, 0.597544, 0.683595,
		0.611004, -0.742524, 0.274467,
		0.671592, 0.302653, -0.676288,
		24.820463, 35.034473, 35.030212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049023, 34.640461, 35.695545>,  <24.350351, 34.822613, 35.503616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049023, 34.640461, 35.695545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098980, 34.948994, 35.445923>,  <25.128954, 35.134113, 35.296150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098980, 34.948994, 35.445923>,  <25.049023, 34.640461, 35.695545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098980, 34.948994, 35.445923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651265, 0.410773, 0.638060,
		0.748502, -0.486114, -0.451040,
		0.124895, 0.771336, -0.624053,
		25.136448, 35.180393, 35.258705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868080, 34.895317, 35.560867>,  <25.049023, 34.640461, 35.695545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868080, 34.895317, 35.560867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649332, 35.203529, 35.429893>,  <25.518084, 35.388458, 35.351311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649332, 35.203529, 35.429893>,  <25.868080, 34.895317, 35.560867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649332, 35.203529, 35.429893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652040, 0.637306, 0.410712,
		0.525142, 0.011106, -0.850942,
		-0.546872, 0.770531, -0.327434,
		25.485270, 35.434689, 35.331665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512318, 35.173512, 35.351494>,  <25.868080, 34.895317, 35.560867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512318, 35.173512, 35.351494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799234, 35.175251, 35.630199>,  <26.971384, 35.176292, 35.797421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799234, 35.175251, 35.630199>,  <26.512318, 35.173512, 35.351494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799234, 35.175251, 35.630199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169861, 0.968721, -0.180907,
		-0.675753, 0.248116, 0.694116,
		0.717290, 0.004345, 0.696761,
		27.014421, 35.176556, 35.839230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417709, 35.796593, 35.752480>,  <26.512318, 35.173512, 35.351494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417709, 35.796593, 35.752480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798517, 35.674335, 35.746185>,  <27.027002, 35.600983, 35.742409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798517, 35.674335, 35.746185>,  <26.417709, 35.796593, 35.752480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798517, 35.674335, 35.746185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282330, 0.896934, -0.340294,
		0.118123, 0.319522, 0.940188,
		0.952017, -0.305639, -0.015738,
		27.084122, 35.582645, 35.741463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854208, 36.181713, 36.258358>,  <26.417709, 35.796593, 35.752480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854208, 36.181713, 36.258358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058552, 36.091557, 35.926521>,  <27.181158, 36.037464, 35.727421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058552, 36.091557, 35.926521>,  <26.854208, 36.181713, 36.258358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058552, 36.091557, 35.926521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277844, 0.956515, -0.088780,
		0.813526, -0.185142, 0.551270,
		0.510861, -0.225392, -0.829590,
		27.211809, 36.023937, 35.677643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231497, 36.102562, 36.826771>,  <26.854208, 36.181713, 36.258358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231497, 36.102562, 36.826771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380156, 36.002998, 36.469017>,  <27.469351, 35.943260, 36.254364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380156, 36.002998, 36.469017>,  <27.231497, 36.102562, 36.826771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380156, 36.002998, 36.469017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691857, 0.716646, 0.088047,
		0.619041, -0.651508, 0.438550,
		0.371648, -0.248909, -0.894383,
		27.491650, 35.928326, 36.200703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039230, 36.126335, 36.817230>,  <27.231497, 36.102562, 36.826771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039230, 36.126335, 36.817230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952324, 36.151184, 36.427578>,  <27.900179, 36.166096, 36.193787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952324, 36.151184, 36.427578>,  <28.039230, 36.126335, 36.817230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952324, 36.151184, 36.427578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617188, 0.781903, -0.087791,
		0.756223, -0.620297, -0.208225,
		-0.217268, 0.062124, -0.974133,
		27.887144, 36.169823, 36.135338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750887, 36.406727, 36.411453>,  <28.039230, 36.126335, 36.817230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750887, 36.406727, 36.411453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427961, 36.478222, 36.186493>,  <28.234207, 36.521118, 36.051517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427961, 36.478222, 36.186493>,  <28.750887, 36.406727, 36.411453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427961, 36.478222, 36.186493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381470, 0.885205, -0.266255,
		0.450252, -0.429492, -0.782822,
		-0.807312, 0.178741, -0.562404,
		28.185768, 36.531845, 36.017773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110462, 36.649895, 35.896812>,  <28.750887, 36.406727, 36.411453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110462, 36.649895, 35.896812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735287, 36.765518, 35.820168>,  <28.510181, 36.834892, 35.774181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735287, 36.765518, 35.820168>,  <29.110462, 36.649895, 35.896812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735287, 36.765518, 35.820168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346775, 0.775058, -0.528235,
		-0.004176, -0.561900, -0.827195,
		-0.937939, 0.289057, -0.191616,
		28.453905, 36.852234, 35.762684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063061, 36.850876, 35.204544>,  <29.110462, 36.649895, 35.896812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063061, 36.850876, 35.204544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762970, 37.032871, 35.396439>,  <28.582916, 37.142067, 35.511578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762970, 37.032871, 35.396439>,  <29.063061, 36.850876, 35.204544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762970, 37.032871, 35.396439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324849, 0.885611, -0.331912,
		-0.575878, -0.093166, -0.812210,
		-0.750225, 0.454987, 0.479739,
		28.537903, 37.169369, 35.540359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012779, 37.306358, 34.711578>,  <29.063061, 36.850876, 35.204544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012779, 37.306358, 34.711578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810110, 37.430363, 35.033367>,  <28.688509, 37.504765, 35.226440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810110, 37.430363, 35.033367>,  <29.012779, 37.306358, 34.711578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810110, 37.430363, 35.033367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316845, 0.934771, -0.160662,
		-0.801806, 0.173490, -0.571847,
		-0.506673, 0.310007, 0.804474,
		28.658108, 37.523365, 35.274708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740547, 37.977413, 34.580364>,  <29.012779, 37.306358, 34.711578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740547, 37.977413, 34.580364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705940, 37.982639, 34.978828>,  <28.685177, 37.985775, 35.217907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705940, 37.982639, 34.978828>,  <28.740547, 37.977413, 34.580364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705940, 37.982639, 34.978828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230182, 0.973121, 0.007225,
		-0.969294, 0.229924, -0.087201,
		-0.086518, 0.013069, 0.996164,
		28.679985, 37.986561, 35.277679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247200, 38.603184, 34.697964>,  <28.740547, 37.977413, 34.580364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247200, 38.603184, 34.697964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485550, 38.503086, 35.003201>,  <28.628559, 38.443027, 35.186344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485550, 38.503086, 35.003201>,  <28.247200, 38.603184, 34.697964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485550, 38.503086, 35.003201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454213, 0.888644, -0.063267,
		-0.662287, 0.384307, 0.643183,
		0.595874, -0.250241, 0.763094,
		28.664312, 38.428013, 35.232128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213520, 39.155796, 35.029793>,  <28.247200, 38.603184, 34.697964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213520, 39.155796, 35.029793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544119, 38.957653, 35.136768>,  <28.742477, 38.838768, 35.200954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544119, 38.957653, 35.136768>,  <28.213520, 39.155796, 35.029793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544119, 38.957653, 35.136768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493883, 0.866041, 0.077804,
		-0.270151, 0.067777, 0.960429,
		0.826498, -0.495358, 0.267436,
		28.792068, 38.809044, 35.216999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455624, 39.657932, 35.458107>,  <28.213520, 39.155796, 35.029793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455624, 39.657932, 35.458107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749811, 39.409416, 35.349972>,  <28.926323, 39.260307, 35.285091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749811, 39.409416, 35.349972>,  <28.455624, 39.657932, 35.458107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749811, 39.409416, 35.349972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572531, 0.783227, -0.242411,
		0.362346, 0.023507, 0.931747,
		0.735468, -0.621291, -0.270341,
		28.970451, 39.223030, 35.268871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038212, 39.957001, 35.677399>,  <28.455624, 39.657932, 35.458107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038212, 39.957001, 35.677399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196402, 39.688900, 35.426205>,  <29.291315, 39.528042, 35.275486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196402, 39.688900, 35.426205>,  <29.038212, 39.957001, 35.677399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196402, 39.688900, 35.426205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505031, 0.729774, -0.460840,
		0.767165, -0.134902, 0.627104,
		0.395476, -0.670247, -0.627987,
		29.315044, 39.487827, 35.237808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703384, 40.189968, 35.696911>,  <29.038212, 39.957001, 35.677399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703384, 40.189968, 35.696911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676237, 39.993076, 35.349785>,  <29.659948, 39.874943, 35.141510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676237, 39.993076, 35.349785>,  <29.703384, 40.189968, 35.696911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676237, 39.993076, 35.349785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409155, 0.779582, -0.474177,
		0.909938, -0.387253, 0.148487,
		-0.067869, -0.492225, -0.867818,
		29.655876, 39.845409, 35.089439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331270, 40.274891, 35.317646>,  <29.703384, 40.189968, 35.696911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331270, 40.274891, 35.317646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094616, 40.166553, 35.013905>,  <29.952623, 40.101551, 34.831661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094616, 40.166553, 35.013905>,  <30.331270, 40.274891, 35.317646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094616, 40.166553, 35.013905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274094, 0.818200, -0.505392,
		0.758183, -0.507140, -0.409838,
		-0.591634, -0.270846, -0.759350,
		29.917126, 40.085300, 34.786098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745020, 40.339928, 34.650993>,  <30.331270, 40.274891, 35.317646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745020, 40.339928, 34.650993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353651, 40.364571, 34.572105>,  <30.118830, 40.379356, 34.524773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353651, 40.364571, 34.572105>,  <30.745020, 40.339928, 34.650993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353651, 40.364571, 34.572105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174853, 0.755406, -0.631496,
		0.110079, -0.652354, -0.749878,
		-0.978422, 0.061603, -0.197221,
		30.060125, 40.383053, 34.512939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716145, 40.417171, 33.934616>,  <30.745020, 40.339928, 34.650993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716145, 40.417171, 33.934616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379406, 40.551819, 34.103367>,  <30.177362, 40.632607, 34.204617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379406, 40.551819, 34.103367>,  <30.716145, 40.417171, 33.934616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379406, 40.551819, 34.103367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082781, 0.852952, -0.515383,
		-0.533330, -0.398950, -0.745921,
		-0.841847, 0.336617, 0.421880,
		30.126852, 40.652805, 34.229931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451532, 40.738209, 33.439220>,  <30.716145, 40.417171, 33.934616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451532, 40.738209, 33.439220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227633, 40.898216, 33.729507>,  <30.093292, 40.994221, 33.903679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227633, 40.898216, 33.729507>,  <30.451532, 40.738209, 33.439220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227633, 40.898216, 33.729507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052459, 0.856905, -0.512799,
		-0.826999, -0.325110, -0.458667,
		-0.559750, 0.400023, 0.725715,
		30.059708, 41.018223, 33.947224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898952, 41.048267, 33.091274>,  <30.451532, 40.738209, 33.439220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898952, 41.048267, 33.091274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989786, 41.234879, 33.433216>,  <30.044287, 41.346848, 33.638382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989786, 41.234879, 33.433216>,  <29.898952, 41.048267, 33.091274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989786, 41.234879, 33.433216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041156, 0.872409, -0.487041,
		-0.973006, 0.145781, 0.178908,
		0.227082, 0.466530, 0.854859,
		30.057911, 41.374836, 33.689674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533373, 41.579700, 33.003868>,  <29.898952, 41.048267, 33.091274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533373, 41.579700, 33.003868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769575, 41.701389, 33.302868>,  <29.911297, 41.774403, 33.482269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769575, 41.701389, 33.302868>,  <29.533373, 41.579700, 33.003868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769575, 41.701389, 33.302868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038085, 0.935703, -0.350727,
		-0.806136, 0.178637, 0.564122,
		0.590504, 0.304218, 0.747500,
		29.946726, 41.792656, 33.527119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580000, 41.121799, 32.448727>,  <29.533373, 41.579700, 33.003868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580000, 41.121799, 32.448727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217653, 41.118023, 32.279343>,  <29.000246, 41.115757, 32.177711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217653, 41.118023, 32.279343>,  <29.580000, 41.121799, 32.448727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217653, 41.118023, 32.279343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421112, -0.127444, -0.898010,
		-0.045488, -0.991801, 0.119424,
		-0.905867, -0.009442, -0.423457,
		28.945892, 41.115189, 32.152306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494595, 40.497841, 32.100899>,  <29.580000, 41.121799, 32.448727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494595, 40.497841, 32.100899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279457, 40.776581, 31.911110>,  <29.150375, 40.943825, 31.797237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279457, 40.776581, 31.911110>,  <29.494595, 40.497841, 32.100899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279457, 40.776581, 31.911110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342420, -0.333720, -0.878282,
		-0.770373, -0.634846, -0.059126,
		-0.537843, 0.696851, -0.474473,
		29.118105, 40.985638, 31.768768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024759, 40.148521, 31.479275>,  <29.494595, 40.497841, 32.100899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024759, 40.148521, 31.479275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167845, 40.521828, 31.466330>,  <29.253696, 40.745811, 31.458563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167845, 40.521828, 31.466330>,  <29.024759, 40.148521, 31.479275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167845, 40.521828, 31.466330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564073, -0.243564, -0.788985,
		-0.744219, 0.263975, -0.613559,
		0.357713, 0.933270, -0.032364,
		29.275158, 40.801807, 31.456621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816971, 40.396721, 30.817360>,  <29.024759, 40.148521, 31.479275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816971, 40.396721, 30.817360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148869, 40.570683, 30.957293>,  <29.348007, 40.675060, 31.041252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148869, 40.570683, 30.957293>,  <28.816971, 40.396721, 30.817360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148869, 40.570683, 30.957293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403476, -0.034290, -0.914347,
		-0.385661, 0.899822, -0.203927,
		0.829742, 0.434908, 0.349833,
		29.397791, 40.701157, 31.062243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106848, 40.905350, 30.311140>,  <28.816971, 40.396721, 30.817360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106848, 40.905350, 30.311140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418158, 40.794556, 30.536552>,  <29.604944, 40.728081, 30.671801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418158, 40.794556, 30.536552>,  <29.106848, 40.905350, 30.311140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418158, 40.794556, 30.536552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523912, -0.208257, -0.825921,
		0.346126, 0.938035, -0.016966,
		0.778276, -0.276984, 0.563531,
		29.651640, 40.711460, 30.705612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740662, 41.262196, 30.105768>,  <29.106848, 40.905350, 30.311140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740662, 41.262196, 30.105768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778376, 40.893990, 30.257427>,  <29.801004, 40.673065, 30.348423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778376, 40.893990, 30.257427>,  <29.740662, 41.262196, 30.105768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778376, 40.893990, 30.257427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410297, -0.311067, -0.857260,
		0.907065, 0.236391, 0.348357,
		0.094286, -0.920520, 0.379148,
		29.806662, 40.617832, 30.371172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309898, 41.431427, 29.691654>,  <29.740662, 41.262196, 30.105768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309898, 41.431427, 29.691654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699257, 41.340126, 29.699608>,  <30.932873, 41.285343, 29.704380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699257, 41.340126, 29.699608>,  <30.309898, 41.431427, 29.691654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699257, 41.340126, 29.699608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213720, -0.873272, 0.437858,
		-0.082581, -0.430459, -0.898824,
		0.973398, -0.228256, 0.019882,
		30.991276, 41.271648, 29.705572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457504, 40.644489, 29.465361>,  <30.309898, 41.431427, 29.691654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457504, 40.644489, 29.465361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726992, 40.797981, 29.717979>,  <30.888683, 40.890076, 29.869551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726992, 40.797981, 29.717979>,  <30.457504, 40.644489, 29.465361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726992, 40.797981, 29.717979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134779, -0.776471, 0.615570,
		0.726594, -0.499840, -0.471403,
		0.673717, 0.383735, 0.631548,
		30.929108, 40.913101, 29.907444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097363, 40.242733, 29.474792>,  <30.457504, 40.644489, 29.465361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097363, 40.242733, 29.474792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001404, 40.431858, 29.813944>,  <30.943829, 40.545334, 30.017435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001404, 40.431858, 29.813944>,  <31.097363, 40.242733, 29.474792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001404, 40.431858, 29.813944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036235, -0.877136, 0.478873,
		0.970122, 0.084158, 0.227556,
		-0.239898, 0.472810, 0.847879,
		30.929434, 40.573700, 30.068308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476162, 39.843300, 29.708538>,  <31.097363, 40.242733, 29.474792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476162, 39.843300, 29.708538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280050, 39.995750, 30.022064>,  <31.162384, 40.087219, 30.210180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280050, 39.995750, 30.022064>,  <31.476162, 39.843300, 29.708538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280050, 39.995750, 30.022064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185365, -0.833149, 0.521060,
		0.851627, 0.400756, 0.337826,
		-0.490278, 0.381127, 0.783818,
		31.132967, 40.110088, 30.257210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815437, 39.645554, 30.288261>,  <31.476162, 39.843300, 29.708538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815437, 39.645554, 30.288261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429373, 39.710636, 30.370224>,  <31.197733, 39.749687, 30.419401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429373, 39.710636, 30.370224>,  <31.815437, 39.645554, 30.288261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429373, 39.710636, 30.370224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060694, -0.900997, 0.429559,
		0.254512, 0.402158, 0.879484,
		-0.965163, 0.162707, 0.204906,
		31.139824, 39.759449, 30.431696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705784, 39.327652, 30.967947>,  <31.815437, 39.645554, 30.288261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705784, 39.327652, 30.967947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338093, 39.420181, 30.840506>,  <31.117477, 39.475697, 30.764040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338093, 39.420181, 30.840506>,  <31.705784, 39.327652, 30.967947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338093, 39.420181, 30.840506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317318, -0.914309, 0.251691,
		-0.233081, 0.332461, 0.913862,
		-0.919229, 0.231321, -0.318604,
		31.062325, 39.489578, 30.744925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273624, 39.317848, 31.655987>,  <31.705784, 39.327652, 30.967947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273624, 39.317848, 31.655987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075258, 39.230862, 31.319708>,  <30.956238, 39.178669, 31.117941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075258, 39.230862, 31.319708>,  <31.273624, 39.317848, 31.655987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075258, 39.230862, 31.319708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137759, -0.936171, 0.323428,
		-0.857373, 0.276207, 0.434305,
		-0.495917, -0.217469, -0.840698,
		30.926483, 39.165623, 31.067499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571581, 39.262356, 31.807907>,  <31.273624, 39.317848, 31.655987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571581, 39.262356, 31.807907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624422, 39.021812, 31.492714>,  <30.656126, 38.877487, 31.303598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624422, 39.021812, 31.492714>,  <30.571581, 39.262356, 31.807907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624422, 39.021812, 31.492714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159248, -0.797498, 0.581925,
		-0.978360, 0.048611, -0.201118,
		0.132103, -0.601360, -0.787981,
		30.664053, 38.841404, 31.256319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144974, 38.704388, 31.975653>,  <30.571581, 39.262356, 31.807907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144974, 38.704388, 31.975653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371965, 38.591450, 31.666267>,  <30.508162, 38.523685, 31.480637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371965, 38.591450, 31.666267>,  <30.144974, 38.704388, 31.975653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371965, 38.591450, 31.666267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010319, -0.936857, 0.349559,
		-0.823322, -0.206350, -0.528736,
		0.567481, -0.282343, -0.773464,
		30.542210, 38.506748, 31.434229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708279, 38.179459, 31.729164>,  <30.144974, 38.704388, 31.975653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708279, 38.179459, 31.729164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085344, 38.089630, 31.630413>,  <30.311584, 38.035732, 31.571161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085344, 38.089630, 31.630413>,  <29.708279, 38.179459, 31.729164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085344, 38.089630, 31.630413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061943, -0.844617, 0.531776,
		-0.327940, -0.485994, -0.810102,
		0.942665, -0.224571, -0.246880,
		30.368143, 38.022259, 31.556349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613300, 37.600796, 31.430159>,  <29.708279, 38.179459, 31.729164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613300, 37.600796, 31.430159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000090, 37.619450, 31.530386>,  <30.232164, 37.630642, 31.590523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000090, 37.619450, 31.530386>,  <29.613300, 37.600796, 31.430159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000090, 37.619450, 31.530386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079349, -0.879174, 0.469848,
		0.242207, -0.474213, -0.846438,
		0.966975, 0.046637, 0.250570,
		30.290182, 37.633442, 31.605556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883837, 36.820797, 31.423271>,  <29.613300, 37.600796, 31.430159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883837, 36.820797, 31.423271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150198, 37.035610, 31.630409>,  <30.310015, 37.164497, 31.754692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150198, 37.035610, 31.630409>,  <29.883837, 36.820797, 31.423271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150198, 37.035610, 31.630409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005360, -0.690665, 0.723155,
		0.746019, -0.484327, -0.457038,
		0.665903, 0.537038, 0.517845,
		30.349970, 37.196720, 31.785763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376392, 36.284550, 31.670868>,  <29.883837, 36.820797, 31.423271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376392, 36.284550, 31.670868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411098, 36.596283, 31.919100>,  <30.431923, 36.783321, 32.068039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411098, 36.596283, 31.919100>,  <30.376392, 36.284550, 31.670868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411098, 36.596283, 31.919100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079777, -0.626362, 0.775440,
		0.993029, -0.017775, -0.116520,
		0.086767, 0.779330, 0.620577,
		30.437128, 36.830082, 32.105274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883657, 36.140385, 32.082264>,  <30.376392, 36.284550, 31.670868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883657, 36.140385, 32.082264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717285, 36.430546, 32.301643>,  <30.617462, 36.604641, 32.433270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717285, 36.430546, 32.301643>,  <30.883657, 36.140385, 32.082264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717285, 36.430546, 32.301643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029282, -0.613459, 0.789184,
		0.908924, 0.312187, 0.276399,
		-0.415933, 0.725401, 0.548446,
		30.592506, 36.648167, 32.466179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138298, 36.017872, 32.740395>,  <30.883657, 36.140385, 32.082264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138298, 36.017872, 32.740395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823416, 36.253731, 32.812641>,  <30.634485, 36.395245, 32.855991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823416, 36.253731, 32.812641>,  <31.138298, 36.017872, 32.740395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823416, 36.253731, 32.812641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086536, -0.395609, 0.914333,
		0.610587, 0.704140, 0.362451,
		-0.787207, 0.589645, 0.180620,
		30.587254, 36.430626, 32.866829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232231, 36.237320, 33.432915>,  <31.138298, 36.017872, 32.740395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232231, 36.237320, 33.432915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843765, 36.276711, 33.346062>,  <30.610685, 36.300343, 33.293949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843765, 36.276711, 33.346062>,  <31.232231, 36.237320, 33.432915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843765, 36.276711, 33.346062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234824, -0.552556, 0.799712,
		-0.041226, 0.827638, 0.559746,
		-0.971163, 0.098473, -0.217129,
		30.552416, 36.306252, 33.280922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908958, 36.529472, 34.043087>,  <31.232231, 36.237320, 33.432915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908958, 36.529472, 34.043087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642410, 36.340641, 33.812229>,  <30.482481, 36.227341, 33.673714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642410, 36.340641, 33.812229>,  <30.908958, 36.529472, 34.043087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642410, 36.340641, 33.812229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300151, -0.538716, 0.787207,
		-0.682540, 0.697800, 0.217288,
		-0.666369, -0.472081, -0.577140,
		30.442499, 36.199017, 33.639088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432655, 36.443127, 34.551292>,  <30.908958, 36.529472, 34.043087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432655, 36.443127, 34.551292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322636, 36.200542, 34.252884>,  <30.256624, 36.054993, 34.073837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322636, 36.200542, 34.252884>,  <30.432655, 36.443127, 34.551292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322636, 36.200542, 34.252884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413596, -0.625844, 0.661255,
		-0.867920, 0.490430, -0.078692,
		-0.275051, -0.606463, -0.746022,
		30.240120, 36.018604, 34.029076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819866, 36.249275, 34.849335>,  <30.432655, 36.443127, 34.551292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819866, 36.249275, 34.849335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943338, 35.980011, 34.580540>,  <30.017422, 35.818451, 34.419262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943338, 35.980011, 34.580540>,  <29.819866, 36.249275, 34.849335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943338, 35.980011, 34.580540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413771, -0.731175, 0.542380,
		-0.856452, 0.110629, -0.504234,
		0.308681, -0.673160, -0.671991,
		30.035942, 35.778065, 34.378941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244753, 35.698196, 34.801640>,  <29.819866, 36.249275, 34.849335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244753, 35.698196, 34.801640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568239, 35.506306, 34.665497>,  <29.762331, 35.391171, 34.583813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568239, 35.506306, 34.665497>,  <29.244753, 35.698196, 34.801640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568239, 35.506306, 34.665497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270883, -0.817382, 0.508437,
		-0.522109, -0.318986, -0.790980,
		0.808718, -0.479723, -0.340355,
		29.810854, 35.362389, 34.563389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991890, 35.012913, 34.775127>,  <29.244753, 35.698196, 34.801640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991890, 35.012913, 34.775127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391624, 35.010063, 34.760864>,  <29.631466, 35.008354, 34.752304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391624, 35.010063, 34.760864>,  <28.991890, 35.012913, 34.775127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391624, 35.010063, 34.760864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017559, -0.764148, 0.644802,
		-0.031844, -0.645002, -0.763517,
		0.999339, -0.007127, -0.035659,
		29.691425, 35.007927, 34.750168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145699, 34.295490, 34.658405>,  <28.991890, 35.012913, 34.775127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145699, 34.295490, 34.658405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445086, 34.491547, 34.837097>,  <29.624718, 34.609180, 34.944313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445086, 34.491547, 34.837097>,  <29.145699, 34.295490, 34.658405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445086, 34.491547, 34.837097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020567, -0.690449, 0.723088,
		0.662854, -0.532020, -0.526859,
		0.748466, 0.490138, 0.446725,
		29.669626, 34.638588, 34.971115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569674, 33.796761, 34.863178>,  <29.145699, 34.295490, 34.658405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569674, 33.796761, 34.863178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672789, 34.113388, 35.084797>,  <29.734657, 34.303364, 35.217770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672789, 34.113388, 35.084797>,  <29.569674, 33.796761, 34.863178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672789, 34.113388, 35.084797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090012, -0.590611, 0.801920,
		0.962000, -0.156854, -0.223503,
		0.257788, 0.791565, 0.554049,
		29.750126, 34.350857, 35.251011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091728, 33.585533, 35.248241>,  <29.569674, 33.796761, 34.863178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091728, 33.585533, 35.248241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986328, 33.914780, 35.449459>,  <29.923088, 34.112328, 35.570190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986328, 33.914780, 35.449459>,  <30.091728, 33.585533, 35.248241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986328, 33.914780, 35.449459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196856, -0.556377, 0.807274,
		0.944359, 0.113691, 0.308641,
		-0.263501, 0.823115, 0.503039,
		29.907278, 34.161713, 35.600372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405914, 33.509274, 35.881035>,  <30.091728, 33.585533, 35.248241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405914, 33.509274, 35.881035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122513, 33.783005, 35.949989>,  <29.952473, 33.947243, 35.991364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122513, 33.783005, 35.949989>,  <30.405914, 33.509274, 35.881035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122513, 33.783005, 35.949989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215032, -0.442002, 0.870859,
		0.672148, 0.579939, 0.460312,
		-0.708504, 0.684328, 0.172385,
		29.909962, 33.988304, 36.001705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563925, 33.762238, 36.531601>,  <30.405914, 33.509274, 35.881035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563925, 33.762238, 36.531601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181347, 33.846485, 36.450752>,  <29.951799, 33.897034, 36.402245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181347, 33.846485, 36.450752>,  <30.563925, 33.762238, 36.531601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181347, 33.846485, 36.450752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271134, -0.384391, 0.882457,
		0.108168, 0.898823, 0.424755,
		-0.956445, 0.210619, -0.202122,
		29.894413, 33.909672, 36.390114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236326, 34.044167, 37.157417>,  <30.563925, 33.762238, 36.531601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236326, 34.044167, 37.157417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953300, 33.895958, 36.916729>,  <29.783485, 33.807034, 36.772316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953300, 33.895958, 36.916729>,  <30.236326, 34.044167, 37.157417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953300, 33.895958, 36.916729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391487, -0.503360, 0.770303,
		-0.588295, 0.780604, 0.211106,
		-0.707564, -0.370520, -0.601721,
		29.741032, 33.784801, 36.736214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935394, 33.732552, 37.678871>,  <30.236326, 34.044167, 37.157417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935394, 33.732552, 37.678871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326252, 33.737213, 37.593971>,  <30.560766, 33.740009, 37.543030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326252, 33.737213, 37.593971>,  <29.935394, 33.732552, 37.678871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326252, 33.737213, 37.593971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200866, 0.276117, 0.939900,
		0.069555, -0.961054, 0.267467,
		0.977146, 0.011650, -0.212248,
		30.619396, 33.740707, 37.530296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349791, 33.332439, 38.192711>,  <29.935394, 33.732552, 37.678871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349791, 33.332439, 38.192711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523487, 33.647865, 38.018536>,  <30.627705, 33.837120, 37.914032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523487, 33.647865, 38.018536>,  <30.349791, 33.332439, 38.192711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523487, 33.647865, 38.018536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307405, 0.324651, 0.894486,
		0.846722, -0.522277, -0.101432,
		0.434239, 0.788562, -0.435439,
		30.653759, 33.884434, 37.887905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141674, 33.408333, 38.071880>,  <30.349791, 33.332439, 38.192711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141674, 33.408333, 38.071880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946087, 33.750862, 38.138367>,  <30.828735, 33.956379, 38.178257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946087, 33.750862, 38.138367>,  <31.141674, 33.408333, 38.071880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946087, 33.750862, 38.138367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397728, 0.049275, 0.916179,
		0.776352, 0.514090, -0.364676,
		-0.488968, 0.856319, 0.166213,
		30.799397, 34.007759, 38.188232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634096, 33.788399, 38.428562>,  <31.141674, 33.408333, 38.071880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634096, 33.788399, 38.428562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280193, 33.967167, 38.481430>,  <31.067852, 34.074429, 38.513149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280193, 33.967167, 38.481430>,  <31.634096, 33.788399, 38.428562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280193, 33.967167, 38.481430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246512, 0.208090, 0.946536,
		0.395526, 0.870034, -0.294280,
		-0.884755, 0.446923, 0.132169,
		31.014767, 34.101242, 38.521080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202869, 33.439400, 38.258823>,  <31.634096, 33.788399, 38.428562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202869, 33.439400, 38.258823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317394, 33.058502, 38.216381>,  <32.386108, 32.829964, 38.190914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317394, 33.058502, 38.216381>,  <32.202869, 33.439400, 38.258823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317394, 33.058502, 38.216381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210978, -0.170682, 0.962474,
		-0.934619, -0.253183, -0.249771,
		0.286314, -0.952242, -0.106107,
		32.403290, 32.772831, 38.184547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705395, 32.980469, 38.487152>,  <32.202869, 33.439400, 38.258823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705395, 32.980469, 38.487152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062157, 32.828964, 38.585979>,  <32.276215, 32.738060, 38.645275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062157, 32.828964, 38.585979>,  <31.705395, 32.980469, 38.487152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062157, 32.828964, 38.585979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295531, -0.074652, 0.952412,
		-0.342296, -0.922477, -0.178519,
		0.891905, -0.378765, 0.247067,
		32.329727, 32.715336, 38.660099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581177, 32.349339, 38.878922>,  <31.705395, 32.980469, 38.487152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581177, 32.349339, 38.878922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954144, 32.464500, 38.966293>,  <32.177921, 32.533600, 39.018715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954144, 32.464500, 38.966293>,  <31.581177, 32.349339, 38.878922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954144, 32.464500, 38.966293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254730, 0.094853, 0.962349,
		0.256353, -0.952948, 0.161781,
		0.932414, 0.287912, 0.218428,
		32.233868, 32.550873, 39.031822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837215, 31.862478, 39.372967>,  <31.581177, 32.349339, 38.878922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837215, 31.862478, 39.372967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064278, 32.190598, 39.400894>,  <32.200516, 32.387470, 39.417652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064278, 32.190598, 39.400894>,  <31.837215, 31.862478, 39.372967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064278, 32.190598, 39.400894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096006, -0.018272, 0.995213,
		0.817648, -0.571643, 0.068382,
		0.567657, 0.820299, 0.069821,
		32.234573, 32.436687, 39.421841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162189, 31.672276, 40.011173>,  <31.837215, 31.862478, 39.372967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162189, 31.672276, 40.011173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232838, 32.064480, 39.976761>,  <32.275227, 32.299801, 39.956116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232838, 32.064480, 39.976761>,  <32.162189, 31.672276, 40.011173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232838, 32.064480, 39.976761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129084, 0.109723, 0.985544,
		0.975778, -0.162962, 0.145948,
		0.176620, 0.980512, -0.086029,
		32.285824, 32.358635, 39.950951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705406, 31.851923, 40.470367>,  <32.162189, 31.672276, 40.011173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705406, 31.851923, 40.470367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548157, 32.214279, 40.407364>,  <32.453808, 32.431694, 40.369560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548157, 32.214279, 40.407364>,  <32.705406, 31.851923, 40.470367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548157, 32.214279, 40.407364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119032, 0.220002, 0.968210,
		0.911746, 0.361882, -0.194319,
		-0.393128, 0.905892, -0.157510,
		32.430218, 32.486046, 40.360111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138828, 32.252403, 40.839294>,  <32.705406, 31.851923, 40.470367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138828, 32.252403, 40.839294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790245, 32.448437, 40.831478>,  <32.581097, 32.566055, 40.826790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790245, 32.448437, 40.831478>,  <33.138828, 32.252403, 40.839294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790245, 32.448437, 40.831478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066315, 0.157210, 0.985336,
		0.485967, 0.857382, -0.169502,
		-0.871457, 0.490082, -0.019542,
		32.528809, 32.595463, 40.825615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293873, 32.845657, 41.102867>,  <33.138828, 32.252403, 40.839294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293873, 32.845657, 41.102867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898926, 32.800182, 41.147007>,  <32.661957, 32.772896, 41.173492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898926, 32.800182, 41.147007>,  <33.293873, 32.845657, 41.102867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898926, 32.800182, 41.147007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103323, 0.065962, 0.992458,
		-0.120108, 0.991325, -0.053383,
		-0.987370, -0.113686, 0.110349,
		32.602715, 32.766075, 41.180111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059139, 33.400589, 41.505550>,  <33.293873, 32.845657, 41.102867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059139, 33.400589, 41.505550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773586, 33.123676, 41.547722>,  <32.602253, 32.957527, 41.573025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773586, 33.123676, 41.547722>,  <33.059139, 33.400589, 41.505550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773586, 33.123676, 41.547722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007019, 0.157616, 0.987476,
		-0.700231, 0.704200, -0.117378,
		-0.713881, -0.692285, 0.105425,
		32.559422, 32.915989, 41.579350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577217, 33.717693, 41.865654>,  <33.059139, 33.400589, 41.505550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577217, 33.717693, 41.865654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443993, 33.342079, 41.899769>,  <32.364059, 33.116711, 41.920238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443993, 33.342079, 41.899769>,  <32.577217, 33.717693, 41.865654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443993, 33.342079, 41.899769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090721, 0.121948, 0.988382,
		-0.938531, 0.321454, -0.125806,
		-0.333062, -0.939040, 0.085289,
		32.344074, 33.060368, 41.925354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155315, 33.705204, 42.392262>,  <32.577217, 33.717693, 41.865654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155315, 33.705204, 42.392262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227669, 33.312626, 42.366795>,  <32.271080, 33.077080, 42.351513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227669, 33.312626, 42.366795>,  <32.155315, 33.705204, 42.392262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227669, 33.312626, 42.366795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172771, -0.095436, 0.980328,
		-0.968210, -0.166325, -0.186827,
		0.180883, -0.981442, -0.063666,
		32.281933, 33.018192, 42.347694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658140, 33.408592, 42.753654>,  <32.155315, 33.705204, 42.392262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658140, 33.408592, 42.753654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936914, 33.121738, 42.754639>,  <32.104179, 32.949627, 42.755230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936914, 33.121738, 42.754639>,  <31.658140, 33.408592, 42.753654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936914, 33.121738, 42.754639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128080, -0.121098, 0.984343,
		-0.705604, -0.686338, -0.176247,
		0.696935, -0.717130, 0.002459,
		32.145996, 32.906601, 42.755375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297277, 32.882210, 43.086433>,  <31.658140, 33.408592, 42.753654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297277, 32.882210, 43.086433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677460, 32.776249, 43.151501>,  <31.905569, 32.712673, 43.190540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677460, 32.776249, 43.151501>,  <31.297277, 32.882210, 43.086433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677460, 32.776249, 43.151501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197005, -0.108500, 0.974380,
		-0.240466, -0.958151, -0.155312,
		0.950455, -0.264902, 0.162670,
		31.962597, 32.696777, 43.200302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388979, 32.172920, 43.344963>,  <31.297277, 32.882210, 43.086433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388979, 32.172920, 43.344963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703119, 32.385223, 43.472412>,  <31.891603, 32.512604, 43.548882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703119, 32.385223, 43.472412>,  <31.388979, 32.172920, 43.344963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703119, 32.385223, 43.472412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236886, -0.217868, 0.946794,
		0.571933, -0.819044, -0.045375,
		0.785352, 0.530754, 0.318626,
		31.938725, 32.544449, 43.568001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496408, 31.823519, 43.937901>,  <31.388979, 32.172920, 43.344963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496408, 31.823519, 43.937901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734587, 32.143303, 43.969654>,  <31.877495, 32.335175, 43.988708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734587, 32.143303, 43.969654>,  <31.496408, 31.823519, 43.937901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734587, 32.143303, 43.969654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154316, -0.210790, 0.965274,
		0.788434, -0.562520, -0.248884,
		0.595448, 0.799462, 0.079388,
		31.913221, 32.383141, 43.993469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123772, 31.607458, 44.157520>,  <31.496408, 31.823519, 43.937901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123772, 31.607458, 44.157520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104046, 31.992611, 44.263672>,  <32.092209, 32.223701, 44.327362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104046, 31.992611, 44.263672>,  <32.123772, 31.607458, 44.157520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104046, 31.992611, 44.263672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080270, -0.261021, 0.961990,
		0.995552, 0.068743, -0.064419,
		-0.049315, 0.962882, 0.265378,
		32.089252, 32.281475, 44.343285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549400, 31.645817, 44.797066>,  <32.123772, 31.607458, 44.157520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549400, 31.645817, 44.797066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353867, 31.994106, 44.818523>,  <32.236546, 32.203079, 44.831398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353867, 31.994106, 44.818523>,  <32.549400, 31.645817, 44.797066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353867, 31.994106, 44.818523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112027, 0.001674, 0.993704,
		0.865154, 0.491766, -0.098363,
		-0.488834, 0.870726, 0.053642,
		32.207218, 32.255325, 44.834618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798740, 31.997597, 45.426495>,  <32.549400, 31.645817, 44.797066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798740, 31.997597, 45.426495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448002, 32.179455, 45.363960>,  <32.237560, 32.288570, 45.326439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448002, 32.179455, 45.363960>,  <32.798740, 31.997597, 45.426495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448002, 32.179455, 45.363960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130970, 0.086997, 0.987562,
		0.462590, 0.886414, -0.016738,
		-0.876845, 0.454644, -0.156338,
		32.184948, 32.315849, 45.317059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669014, 32.417358, 45.977200>,  <32.798740, 31.997597, 45.426495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669014, 32.417358, 45.977200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285389, 32.396740, 45.865814>,  <32.055214, 32.384369, 45.798985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285389, 32.396740, 45.865814>,  <32.669014, 32.417358, 45.977200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285389, 32.396740, 45.865814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249431, -0.311857, 0.916804,
		-0.134096, 0.948730, 0.286234,
		-0.959063, -0.051544, -0.278461,
		31.997669, 32.381275, 45.782276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340904, 32.867790, 46.399490>,  <32.669014, 32.417358, 45.977200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340904, 32.867790, 46.399490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088623, 32.578247, 46.287598>,  <31.937254, 32.404522, 46.220463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088623, 32.578247, 46.287598>,  <32.340904, 32.867790, 46.399490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088623, 32.578247, 46.287598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184814, -0.209986, 0.960078,
		-0.753695, 0.657223, -0.001339,
		-0.630705, -0.723853, -0.279729,
		31.899412, 32.361092, 46.203678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744778, 32.934212, 46.840290>,  <32.340904, 32.867790, 46.399490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744778, 32.934212, 46.840290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704893, 32.560677, 46.702888>,  <31.680962, 32.336555, 46.620445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704893, 32.560677, 46.702888>,  <31.744778, 32.934212, 46.840290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704893, 32.560677, 46.702888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129851, -0.354486, 0.926001,
		-0.986507, 0.047728, 0.156607,
		-0.099711, -0.933842, -0.343506,
		31.674980, 32.280525, 46.599838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227875, 32.609333, 47.295784>,  <31.744778, 32.934212, 46.840290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227875, 32.609333, 47.295784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439974, 32.317459, 47.123089>,  <31.567234, 32.142334, 47.019470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439974, 32.317459, 47.123089>,  <31.227875, 32.609333, 47.295784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439974, 32.317459, 47.123089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234918, -0.362839, 0.901755,
		-0.814646, -0.579579, -0.020979,
		0.530250, -0.729683, -0.431739,
		31.599049, 32.098553, 46.993568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973137, 32.105457, 47.648392>,  <31.227875, 32.609333, 47.295784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973137, 32.105457, 47.648392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309616, 31.950937, 47.497044>,  <31.511503, 31.858227, 47.406235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309616, 31.950937, 47.497044>,  <30.973137, 32.105457, 47.648392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309616, 31.950937, 47.497044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096513, -0.581237, 0.807991,
		-0.532041, -0.716199, -0.451654,
		0.841200, -0.386294, -0.378364,
		31.561975, 31.835049, 47.383533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918360, 31.372309, 47.709454>,  <30.973137, 32.105457, 47.648392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918360, 31.372309, 47.709454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312559, 31.430899, 47.675182>,  <31.549078, 31.466053, 47.654621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312559, 31.430899, 47.675182>,  <30.918360, 31.372309, 47.709454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312559, 31.430899, 47.675182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147585, -0.490650, 0.858767,
		0.083749, -0.858958, -0.505152,
		0.985497, 0.146474, -0.085678,
		31.608208, 31.474840, 47.649479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362782, 30.672571, 47.743626>,  <30.918360, 31.372309, 47.709454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362782, 30.672571, 47.743626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592712, 30.983517, 47.845825>,  <31.730671, 31.170084, 47.907146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592712, 30.983517, 47.845825>,  <31.362782, 30.672571, 47.743626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592712, 30.983517, 47.845825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322644, -0.502267, 0.802265,
		0.751979, -0.378730, -0.539529,
		0.574829, 0.777362, 0.255499,
		31.765162, 31.216724, 47.922474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872843, 30.228977, 47.999611>,  <31.362782, 30.672571, 47.743626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872843, 30.228977, 47.999611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934179, 30.614897, 48.085072>,  <31.970982, 30.846449, 48.136349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934179, 30.614897, 48.085072>,  <31.872843, 30.228977, 47.999611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934179, 30.614897, 48.085072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424039, -0.259536, 0.867659,
		0.892568, -0.042452, -0.448911,
		0.153342, 0.964800, 0.213652,
		31.980183, 30.904337, 48.149166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541218, 30.390276, 48.160061>,  <31.872843, 30.228977, 47.999611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541218, 30.390276, 48.160061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359070, 30.674923, 48.374065>,  <32.249783, 30.845711, 48.502468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359070, 30.674923, 48.374065>,  <32.541218, 30.390276, 48.160061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359070, 30.674923, 48.374065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454869, -0.330619, 0.826913,
		0.765332, 0.619911, -0.173139,
		-0.455370, 0.711619, 0.535011,
		32.222458, 30.888409, 48.534569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067238, 30.481457, 48.580921>,  <32.541218, 30.390276, 48.160061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067238, 30.481457, 48.580921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744595, 30.657560, 48.738682>,  <32.551006, 30.763222, 48.833336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744595, 30.657560, 48.738682>,  <33.067238, 30.481457, 48.580921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744595, 30.657560, 48.738682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309865, -0.253257, 0.916430,
		0.503350, 0.861414, 0.067860,
		-0.806612, 0.440257, 0.394399,
		32.502609, 30.789639, 48.857002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334393, 30.869797, 49.026432>,  <33.067238, 30.481457, 48.580921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334393, 30.869797, 49.026432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958893, 30.823603, 49.156303>,  <32.733593, 30.795887, 49.234226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958893, 30.823603, 49.156303>,  <33.334393, 30.869797, 49.026432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958893, 30.823603, 49.156303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343910, -0.254210, 0.903938,
		-0.021854, 0.960230, 0.278355,
		-0.938748, -0.115483, 0.324677,
		32.677269, 30.788958, 49.253708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314808, 31.180050, 49.723232>,  <33.334393, 30.869797, 49.026432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314808, 31.180050, 49.723232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015057, 30.919933, 49.673351>,  <32.835205, 30.763863, 49.643425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015057, 30.919933, 49.673351>,  <33.314808, 31.180050, 49.723232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015057, 30.919933, 49.673351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130605, -0.329796, 0.934974,
		-0.649132, 0.684364, 0.332074,
		-0.749380, -0.650292, -0.124700,
		32.790241, 30.724846, 49.635941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856899, 31.341558, 50.264122>,  <33.314808, 31.180050, 49.723232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856899, 31.341558, 50.264122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813343, 30.966770, 50.131321>,  <32.787209, 30.741898, 50.051640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813343, 30.966770, 50.131321>,  <32.856899, 31.341558, 50.264122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813343, 30.966770, 50.131321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061080, -0.339666, 0.938561,
		-0.992175, 0.081921, 0.094217,
		-0.108890, -0.936972, -0.332005,
		32.780678, 30.685678, 50.031719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585766, 31.031345, 50.797577>,  <32.856899, 31.341558, 50.264122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585766, 31.031345, 50.797577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695862, 30.705978, 50.592602>,  <32.761921, 30.510757, 50.469616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695862, 30.705978, 50.592602>,  <32.585766, 31.031345, 50.797577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695862, 30.705978, 50.592602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234950, -0.459948, 0.856298,
		-0.932223, -0.356087, 0.064515,
		0.275243, -0.813419, -0.512436,
		32.778435, 30.461952, 50.438869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351303, 30.592184, 51.254128>,  <32.585766, 31.031345, 50.797577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351303, 30.592184, 51.254128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584717, 30.383791, 51.004948>,  <32.724766, 30.258755, 50.855438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584717, 30.383791, 51.004948>,  <32.351303, 30.592184, 51.254128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584717, 30.383791, 51.004948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295906, -0.577952, 0.760534,
		-0.756258, -0.628133, -0.183094,
		0.583535, -0.520981, -0.622949,
		32.759777, 30.227497, 50.818062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152416, 29.855619, 51.222816>,  <32.351303, 30.592184, 51.254128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152416, 29.855619, 51.222816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539127, 29.875772, 51.122578>,  <32.771152, 29.887863, 51.062435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539127, 29.875772, 51.122578>,  <32.152416, 29.855619, 51.222816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539127, 29.875772, 51.122578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226287, -0.624657, 0.747394,
		-0.118885, -0.779272, -0.615305,
		0.966779, 0.050382, -0.250601,
		32.829163, 29.890886, 51.047398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385117, 29.122908, 51.379017>,  <32.152416, 29.855619, 51.222816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385117, 29.122908, 51.379017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699570, 29.368860, 51.354004>,  <32.888241, 29.516432, 51.338997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699570, 29.368860, 51.354004>,  <32.385117, 29.122908, 51.379017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699570, 29.368860, 51.354004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445060, -0.492995, 0.747581,
		0.428848, -0.615530, -0.661220,
		0.786137, 0.614881, -0.062528,
		32.935410, 29.553324, 51.335247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973011, 28.680475, 51.422531>,  <32.385117, 29.122908, 51.379017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973011, 28.680475, 51.422531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123535, 29.037001, 51.523685>,  <33.213848, 29.250916, 51.584377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123535, 29.037001, 51.523685>,  <32.973011, 28.680475, 51.422531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123535, 29.037001, 51.523685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530972, -0.431149, 0.729506,
		0.759249, -0.140247, -0.635509,
		0.376310, 0.891314, 0.252883,
		33.236427, 29.304396, 51.599548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728901, 28.578001, 51.459766>,  <32.973011, 28.680475, 51.422531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728901, 28.578001, 51.459766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617794, 28.878658, 51.699059>,  <33.551128, 29.059053, 51.842632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617794, 28.878658, 51.699059>,  <33.728901, 28.578001, 51.459766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617794, 28.878658, 51.699059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387364, -0.482223, 0.785754,
		0.879086, 0.449992, -0.157212,
		-0.277772, 0.751644, 0.598226,
		33.534462, 29.104151, 51.878525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376801, 28.816130, 51.885117>,  <33.728901, 28.578001, 51.459766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376801, 28.816130, 51.885117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059612, 28.925053, 52.103127>,  <33.869301, 28.990406, 52.233932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059612, 28.925053, 52.103127>,  <34.376801, 28.816130, 51.885117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059612, 28.925053, 52.103127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468634, -0.299046, 0.831236,
		0.389339, 0.914560, 0.109522,
		-0.792967, 0.272307, 0.545025,
		33.821724, 29.006744, 52.266632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651123, 29.151054, 52.368816>,  <34.376801, 28.816130, 51.885117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651123, 29.151054, 52.368816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293434, 29.030298, 52.501019>,  <34.078823, 28.957844, 52.580341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293434, 29.030298, 52.501019>,  <34.651123, 29.151054, 52.368816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293434, 29.030298, 52.501019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424840, -0.339795, 0.839077,
		-0.141006, 0.890730, 0.432107,
		-0.894219, -0.301892, 0.330505,
		34.025169, 28.939732, 52.600170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675083, 29.420092, 52.926010>,  <34.651123, 29.151054, 52.368816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675083, 29.420092, 52.926010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396843, 29.134531, 52.958214>,  <34.229897, 28.963196, 52.977535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396843, 29.134531, 52.958214>,  <34.675083, 29.420092, 52.926010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396843, 29.134531, 52.958214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399434, -0.291158, 0.869298,
		-0.597150, 0.636847, 0.487686,
		-0.695604, -0.713900, 0.080513,
		34.188164, 28.920361, 52.982368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777397, 29.397867, 53.639641>,  <34.675083, 29.420092, 52.926010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777397, 29.397867, 53.639641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529175, 29.100903, 53.538654>,  <34.380241, 28.922724, 53.478062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529175, 29.100903, 53.538654>,  <34.777397, 29.397867, 53.639641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529175, 29.100903, 53.538654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191691, -0.455809, 0.869191,
		-0.760374, 0.490983, 0.425167,
		-0.620553, -0.742411, -0.252469,
		34.343010, 28.878180, 53.462914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345325, 29.277573, 54.194397>,  <34.777397, 29.397867, 53.639641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345325, 29.277573, 54.194397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343876, 28.921854, 54.011471>,  <34.343006, 28.708422, 53.901714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343876, 28.921854, 54.011471>,  <34.345325, 29.277573, 54.194397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343876, 28.921854, 54.011471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116408, -0.454583, 0.883064,
		-0.993195, -0.050031, 0.105171,
		-0.003629, -0.889298, -0.457314,
		34.342789, 28.655066, 53.874275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800545, 28.866510, 54.452129>,  <34.345325, 29.277573, 54.194397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800545, 28.866510, 54.452129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076569, 28.614910, 54.308918>,  <34.242184, 28.463951, 54.222992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076569, 28.614910, 54.308918>,  <33.800545, 28.866510, 54.452129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076569, 28.614910, 54.308918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006433, -0.489328, 0.872077,
		-0.723728, -0.604085, -0.333617,
		0.690056, -0.629000, -0.358026,
		34.283585, 28.426210, 54.201511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488110, 28.228960, 54.417355>,  <33.800545, 28.866510, 54.452129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488110, 28.228960, 54.417355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878586, 28.212704, 54.502586>,  <34.112873, 28.202950, 54.553726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878586, 28.212704, 54.502586>,  <33.488110, 28.228960, 54.417355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878586, 28.212704, 54.502586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216174, -0.263616, 0.940093,
		0.017967, -0.963771, -0.266124,
		0.976190, -0.040639, 0.213078,
		34.171444, 28.200512, 54.566509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800251, 27.541039, 54.498055>,  <33.488110, 28.228960, 54.417355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800251, 27.541039, 54.498055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988480, 27.818542, 54.716141>,  <34.101418, 27.985044, 54.846992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988480, 27.818542, 54.716141>,  <33.800251, 27.541039, 54.498055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988480, 27.818542, 54.716141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110849, -0.566528, 0.816553,
		0.875369, -0.444686, -0.189692,
		0.470576, 0.693758, 0.545214,
		34.129654, 28.026670, 54.879704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320183, 27.119442, 54.893040>,  <33.800251, 27.541039, 54.498055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320183, 27.119442, 54.893040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199814, 27.443064, 55.094982>,  <34.127594, 27.637238, 55.216148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199814, 27.443064, 55.094982>,  <34.320183, 27.119442, 54.893040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199814, 27.443064, 55.094982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119558, -0.493208, 0.861657,
		0.946124, 0.319652, 0.051689,
		-0.300924, 0.809054, 0.504853,
		34.109535, 27.685780, 55.246437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975620, 26.506496, 54.527901>,  <34.320183, 27.119442, 54.893040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975620, 26.506496, 54.527901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657890, 26.421551, 54.300236>,  <33.467251, 26.370583, 54.163635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657890, 26.421551, 54.300236>,  <33.975620, 26.506496, 54.527901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657890, 26.421551, 54.300236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060802, -0.959995, 0.273337,
		-0.604439, 0.182513, 0.775463,
		-0.794327, -0.212365, -0.569162,
		33.419594, 26.357841, 54.129486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673782, 26.030970, 54.896202>,  <33.975620, 26.506496, 54.527901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673782, 26.030970, 54.896202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570312, 25.995604, 54.511440>,  <33.508228, 25.974384, 54.280582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570312, 25.995604, 54.511440>,  <33.673782, 26.030970, 54.896202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570312, 25.995604, 54.511440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183034, -0.982249, 0.041062,
		-0.948464, -0.165440, 0.270270,
		-0.258679, -0.088414, -0.961909,
		33.492710, 25.969080, 54.222866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393543, 26.279100, 55.066399>,  <33.673782, 26.030970, 54.896202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393543, 26.279100, 55.066399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771881, 26.149275, 55.064049>,  <34.998882, 26.071381, 55.062641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771881, 26.149275, 55.064049>,  <34.393543, 26.279100, 55.066399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771881, 26.149275, 55.064049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186717, 0.558750, -0.808044,
		0.265541, 0.763189, 0.589093,
		0.945846, -0.324562, -0.005871,
		35.055634, 26.051907, 55.062286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088154, 26.732304, 55.039825>,  <34.393543, 26.279100, 55.066399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088154, 26.732304, 55.039825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118587, 26.391180, 54.833164>,  <35.136848, 26.186506, 54.709167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118587, 26.391180, 54.833164>,  <35.088154, 26.732304, 55.039825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118587, 26.391180, 54.833164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302540, 0.513471, -0.803005,
		0.950096, -0.095216, 0.297073,
		0.076080, -0.852808, -0.516653,
		35.141411, 26.135338, 54.678169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795364, 26.791496, 54.664127>,  <35.088154, 26.732304, 55.039825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795364, 26.791496, 54.664127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536724, 26.536442, 54.496639>,  <35.381538, 26.383410, 54.396149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536724, 26.536442, 54.496639>,  <35.795364, 26.791496, 54.664127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536724, 26.536442, 54.496639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238829, 0.352090, -0.904983,
		0.724477, -0.685165, -0.075375,
		-0.646601, -0.637637, -0.418718,
		35.342743, 26.345150, 54.371025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086224, 26.299265, 54.156895>,  <35.795364, 26.791496, 54.664127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086224, 26.299265, 54.156895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707718, 26.345814, 54.036205>,  <35.480614, 26.373743, 53.963791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707718, 26.345814, 54.036205>,  <36.086224, 26.299265, 54.156895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707718, 26.345814, 54.036205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320815, 0.220286, -0.921169,
		-0.040735, -0.968468, -0.245784,
		-0.946266, 0.116375, -0.301726,
		35.423840, 26.380726, 53.945686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044125, 25.794270, 53.550728>,  <36.086224, 26.299265, 54.156895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044125, 25.794270, 53.550728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758736, 26.074516, 53.554428>,  <35.587502, 26.242664, 53.556648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758736, 26.074516, 53.554428>,  <36.044125, 25.794270, 53.550728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758736, 26.074516, 53.554428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174507, 0.190461, -0.966060,
		-0.678601, -0.687647, -0.258152,
		-0.713476, 0.700619, 0.009248,
		35.544693, 26.284702, 53.557201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688702, 25.673384, 53.009125>,  <36.044125, 25.794270, 53.550728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688702, 25.673384, 53.009125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649948, 26.065546, 53.077732>,  <35.626698, 26.300844, 53.118896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649948, 26.065546, 53.077732>,  <35.688702, 25.673384, 53.009125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649948, 26.065546, 53.077732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066966, 0.178359, -0.981684,
		-0.993041, -0.083622, -0.082933,
		-0.096883, 0.980406, 0.171517,
		35.620884, 26.359669, 53.129189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160305, 25.968500, 52.630280>,  <35.688702, 25.673384, 53.009125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160305, 25.968500, 52.630280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377777, 26.297125, 52.698929>,  <35.508259, 26.494299, 52.740116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377777, 26.297125, 52.698929>,  <35.160305, 25.968500, 52.630280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377777, 26.297125, 52.698929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167717, 0.306705, -0.936911,
		-0.822367, 0.480593, 0.304538,
		0.543676, 0.821561, 0.171621,
		35.540878, 26.543592, 52.750416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855522, 26.388975, 52.305752>,  <35.160305, 25.968500, 52.630280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855522, 26.388975, 52.305752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200550, 26.580914, 52.369896>,  <35.407566, 26.696077, 52.408382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200550, 26.580914, 52.369896>,  <34.855522, 26.388975, 52.305752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200550, 26.580914, 52.369896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056661, 0.406582, -0.911855,
		-0.502751, 0.777455, 0.377895,
		0.862572, 0.479848, 0.160358,
		35.459320, 26.724869, 52.418003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714798, 27.028709, 52.088886>,  <34.855522, 26.388975, 52.305752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714798, 27.028709, 52.088886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113483, 26.996513, 52.092358>,  <35.352695, 26.977196, 52.094440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113483, 26.996513, 52.092358>,  <34.714798, 27.028709, 52.088886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113483, 26.996513, 52.092358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044473, 0.454815, -0.889475,
		0.067649, 0.886941, 0.456901,
		0.996717, -0.080492, 0.008677,
		35.412498, 26.972366, 52.094959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991516, 27.638872, 51.779285>,  <34.714798, 27.028709, 52.088886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991516, 27.638872, 51.779285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328133, 27.426254, 51.740780>,  <35.530102, 27.298683, 51.717674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328133, 27.426254, 51.740780>,  <34.991516, 27.638872, 51.779285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328133, 27.426254, 51.740780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206608, 0.481376, -0.851816,
		0.499117, 0.696950, 0.514920,
		0.841543, -0.531542, -0.096267,
		35.580597, 27.266792, 51.711899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755627, 28.043011, 51.717537>,  <34.991516, 27.638872, 51.779285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755627, 28.043011, 51.717537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809666, 27.685265, 51.546955>,  <35.842087, 27.470617, 51.444607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809666, 27.685265, 51.546955>,  <35.755627, 28.043011, 51.717537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809666, 27.685265, 51.546955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382037, 0.444136, -0.810426,
		0.914219, -0.053437, 0.401680,
		0.135094, -0.894364, -0.426453,
		35.850193, 27.416956, 51.419018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377998, 28.118187, 51.386093>,  <35.755627, 28.043011, 51.717537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377998, 28.118187, 51.386093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190601, 27.812250, 51.209217>,  <36.078163, 27.628689, 51.103092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190601, 27.812250, 51.209217>,  <36.377998, 28.118187, 51.386093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190601, 27.812250, 51.209217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269418, 0.352995, -0.895996,
		0.841388, -0.538898, 0.040688,
		-0.468488, -0.764842, -0.442194,
		36.050056, 27.582798, 51.076557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865376, 27.966740, 50.873955>,  <36.377998, 28.118187, 51.386093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865376, 27.966740, 50.873955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549915, 27.749773, 50.758148>,  <36.360641, 27.619593, 50.688663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549915, 27.749773, 50.758148>,  <36.865376, 27.966740, 50.873955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549915, 27.749773, 50.758148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136142, 0.305134, -0.942528,
		0.599584, -0.782737, -0.166797,
		-0.788647, -0.542417, -0.289517,
		36.313320, 27.587048, 50.671291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091343, 27.517372, 50.250767>,  <36.865376, 27.966740, 50.873955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091343, 27.517372, 50.250767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697506, 27.584003, 50.272076>,  <36.461205, 27.623983, 50.284859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697506, 27.584003, 50.272076>,  <37.091343, 27.517372, 50.250767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697506, 27.584003, 50.272076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021892, 0.184799, -0.982533,
		-0.173515, -0.968556, -0.178304,
		-0.984588, 0.166581, 0.053269,
		36.402130, 27.633978, 50.288055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674427, 27.125360, 49.655525>,  <37.091343, 27.517372, 50.250767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674427, 27.125360, 49.655525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426655, 27.421034, 49.761292>,  <36.277992, 27.598438, 49.824749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426655, 27.421034, 49.761292>,  <36.674427, 27.125360, 49.655525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426655, 27.421034, 49.761292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085609, 0.271199, -0.958709,
		-0.780368, -0.616491, -0.104709,
		-0.619432, 0.739182, 0.264412,
		36.240826, 27.642788, 49.840614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145130, 27.150881, 49.196419>,  <36.674427, 27.125360, 49.655525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145130, 27.150881, 49.196419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126976, 27.515064, 49.360859>,  <36.116085, 27.733574, 49.459522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126976, 27.515064, 49.360859>,  <36.145130, 27.150881, 49.196419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126976, 27.515064, 49.360859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046976, 0.409124, -0.911269,
		-0.997864, -0.060671, 0.024201,
		-0.045386, 0.910460, 0.411100,
		36.113361, 27.788202, 49.484188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437534, 27.413809, 48.931133>,  <36.145130, 27.150881, 49.196419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437534, 27.413809, 48.931133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683529, 27.712217, 49.033298>,  <35.831127, 27.891262, 49.094597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683529, 27.712217, 49.033298>,  <35.437534, 27.413809, 48.931133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683529, 27.712217, 49.033298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117165, 0.406770, -0.905986,
		-0.779782, 0.527246, 0.337567,
		0.614990, 0.746022, 0.255418,
		35.868027, 27.936024, 49.109924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068489, 28.081682, 48.727093>,  <35.437534, 27.413809, 48.931133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068489, 28.081682, 48.727093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452023, 28.188065, 48.766903>,  <35.682144, 28.251894, 48.790787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452023, 28.188065, 48.766903>,  <35.068489, 28.081682, 48.727093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452023, 28.188065, 48.766903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027276, 0.262591, -0.964522,
		-0.282652, 0.927531, 0.244527,
		0.958835, 0.265954, 0.099521,
		35.739674, 28.267851, 48.796761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015358, 28.663530, 48.460533>,  <35.068489, 28.081682, 48.727093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015358, 28.663530, 48.460533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410591, 28.707747, 48.503361>,  <35.647732, 28.734276, 48.529057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410591, 28.707747, 48.503361>,  <35.015358, 28.663530, 48.460533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410591, 28.707747, 48.503361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046741, 0.447315, -0.893154,
		-0.146626, 0.887519, 0.436820,
		0.988087, 0.110542, 0.107072,
		35.707016, 28.740910, 48.535480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158470, 29.384621, 48.540073>,  <35.015358, 28.663530, 48.460533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158470, 29.384621, 48.540073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456791, 29.170465, 48.381512>,  <35.635784, 29.041971, 48.286377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456791, 29.170465, 48.381512>,  <35.158470, 29.384621, 48.540073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456791, 29.170465, 48.381512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085161, 0.513543, -0.853827,
		0.660700, 0.670545, 0.337408,
		0.745803, -0.535390, -0.396402,
		35.680531, 29.009848, 48.262592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258583, 29.830359, 48.060505>,  <35.158470, 29.384621, 48.540073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258583, 29.830359, 48.060505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492496, 29.525036, 47.950676>,  <35.632843, 29.341843, 47.884777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492496, 29.525036, 47.950676>,  <35.258583, 29.830359, 48.060505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492496, 29.525036, 47.950676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013096, 0.329558, -0.944045,
		0.811084, 0.555658, 0.182723,
		0.584784, -0.763306, -0.274576,
		35.667931, 29.296043, 47.868301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778130, 30.126093, 47.575424>,  <35.258583, 29.830359, 48.060505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778130, 30.126093, 47.575424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717800, 29.734423, 47.521065>,  <35.681602, 29.499420, 47.488449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717800, 29.734423, 47.521065>,  <35.778130, 30.126093, 47.575424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717800, 29.734423, 47.521065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010591, 0.135867, -0.990671,
		0.988504, -0.150859, -0.010122,
		-0.150826, -0.979174, -0.135903,
		35.672554, 29.440670, 47.480293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222553, 29.937790, 46.950058>,  <35.778130, 30.126093, 47.575424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222553, 29.937790, 46.950058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919994, 29.678114, 46.982094>,  <35.738461, 29.522308, 47.001316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919994, 29.678114, 46.982094>,  <36.222553, 29.937790, 46.950058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919994, 29.678114, 46.982094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161270, 0.066420, -0.984673,
		0.633920, -0.757721, -0.154934,
		-0.756397, -0.649190, 0.080093,
		35.693073, 29.483356, 47.006123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355606, 29.484180, 46.429901>,  <36.222553, 29.937790, 46.950058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355606, 29.484180, 46.429901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969440, 29.406235, 46.499187>,  <35.737740, 29.359467, 46.540760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969440, 29.406235, 46.499187>,  <36.355606, 29.484180, 46.429901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969440, 29.406235, 46.499187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163370, -0.065661, -0.984377,
		0.203196, -0.978629, 0.031555,
		-0.965413, -0.194867, 0.173220,
		35.679817, 29.347775, 46.551155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223515, 28.953911, 45.861843>,  <36.355606, 29.484180, 46.429901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223515, 28.953911, 45.861843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873955, 29.064713, 46.021629>,  <35.664219, 29.131193, 46.117500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873955, 29.064713, 46.021629>,  <36.223515, 28.953911, 45.861843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873955, 29.064713, 46.021629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408544, 0.026814, -0.912345,
		-0.263437, -0.960494, 0.089736,
		-0.873895, 0.277006, 0.399468,
		35.611786, 29.147814, 46.141468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769798, 28.511566, 45.607220>,  <36.223515, 28.953911, 45.861843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769798, 28.511566, 45.607220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565842, 28.840107, 45.709503>,  <35.443466, 29.037231, 45.770874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565842, 28.840107, 45.709503>,  <35.769798, 28.511566, 45.607220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565842, 28.840107, 45.709503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326244, 0.090407, -0.940952,
		-0.795972, -0.563210, 0.221863,
		-0.509895, 0.821354, 0.255705,
		35.412872, 29.086514, 45.786213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142673, 28.478771, 45.311382>,  <35.769798, 28.511566, 45.607220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142673, 28.478771, 45.311382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201996, 28.866312, 45.390713>,  <35.237591, 29.098837, 45.438313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201996, 28.866312, 45.390713>,  <35.142673, 28.478771, 45.311382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201996, 28.866312, 45.390713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330208, 0.237550, -0.913528,
		-0.932184, 0.069995, 0.355153,
		0.148309, 0.968850, 0.198327,
		35.246490, 29.156967, 45.450211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603508, 28.711437, 45.006355>,  <35.142673, 28.478771, 45.311382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603508, 28.711437, 45.006355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854774, 29.018795, 45.055309>,  <35.005535, 29.203211, 45.084682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854774, 29.018795, 45.055309>,  <34.603508, 28.711437, 45.006355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854774, 29.018795, 45.055309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248066, 0.346860, -0.904517,
		-0.737479, 0.537824, 0.408497,
		0.628163, 0.768396, 0.122386,
		35.043224, 29.249313, 45.092026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195068, 29.281317, 44.881359>,  <34.603508, 28.711437, 45.006355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195068, 29.281317, 44.881359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573544, 29.392580, 44.815197>,  <34.800629, 29.459339, 44.775501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573544, 29.392580, 44.815197>,  <34.195068, 29.281317, 44.881359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573544, 29.392580, 44.815197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289566, 0.499465, -0.816508,
		-0.144507, 0.820464, 0.553133,
		0.946187, 0.278160, -0.165402,
		34.857399, 29.476028, 44.765575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112041, 30.022299, 44.713375>,  <34.195068, 29.281317, 44.881359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112041, 30.022299, 44.713375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477482, 29.919371, 44.587448>,  <34.696747, 29.857615, 44.511890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477482, 29.919371, 44.587448>,  <34.112041, 30.022299, 44.713375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477482, 29.919371, 44.587448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175436, 0.449029, -0.876125,
		0.366808, 0.855663, 0.365092,
		0.913605, -0.257319, -0.314822,
		34.751564, 29.842175, 44.493000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406731, 30.579479, 44.374096>,  <34.112041, 30.022299, 44.713375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406731, 30.579479, 44.374096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628376, 30.289818, 44.209873>,  <34.761364, 30.116020, 44.111340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628376, 30.289818, 44.209873>,  <34.406731, 30.579479, 44.374096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628376, 30.289818, 44.209873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087495, 0.439796, -0.893826,
		0.827829, 0.531204, 0.180338,
		0.554116, -0.724156, -0.410553,
		34.794609, 30.072571, 44.086708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767921, 30.880114, 43.848885>,  <34.406731, 30.579479, 44.374096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767921, 30.880114, 43.848885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762016, 30.495930, 43.737671>,  <34.758472, 30.265419, 43.670944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762016, 30.495930, 43.737671>,  <34.767921, 30.880114, 43.848885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762016, 30.495930, 43.737671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000014, 0.278064, -0.960563,
		0.999891, -0.014183, -0.004092,
		-0.014762, -0.960458, -0.278034,
		34.757587, 30.207792, 43.654263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126022, 30.771769, 43.288292>,  <34.767921, 30.880114, 43.848885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126022, 30.771769, 43.288292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962532, 30.409748, 43.241268>,  <34.864437, 30.192535, 43.213055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962532, 30.409748, 43.241268>,  <35.126022, 30.771769, 43.288292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962532, 30.409748, 43.241268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168004, 0.201226, -0.965030,
		0.897059, -0.374685, -0.234299,
		-0.408729, -0.905052, -0.117563,
		34.839912, 30.138233, 43.205997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491688, 30.501244, 42.715168>,  <35.126022, 30.771769, 43.288292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491688, 30.501244, 42.715168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156082, 30.287733, 42.757381>,  <34.954720, 30.159626, 42.782711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156082, 30.287733, 42.757381>,  <35.491688, 30.501244, 42.715168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156082, 30.287733, 42.757381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327162, 0.339915, -0.881716,
		0.434770, -0.774297, -0.459825,
		-0.839011, -0.533781, 0.105536,
		34.904377, 30.127600, 42.789043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551483, 30.045588, 42.138752>,  <35.491688, 30.501244, 42.715168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551483, 30.045588, 42.138752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176384, 30.076612, 42.274174>,  <34.951324, 30.095226, 42.355427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176384, 30.076612, 42.274174>,  <35.551483, 30.045588, 42.138752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176384, 30.076612, 42.274174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304652, 0.284434, -0.909002,
		-0.166800, -0.955553, -0.243097,
		-0.937744, 0.077562, 0.338555,
		34.895061, 30.099880, 42.375740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247490, 29.523460, 41.787682>,  <35.551483, 30.045588, 42.138752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247490, 29.523460, 41.787682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967522, 29.788044, 41.895439>,  <34.799541, 29.946795, 41.960094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967522, 29.788044, 41.895439>,  <35.247490, 29.523460, 41.787682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967522, 29.788044, 41.895439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352252, 0.008418, -0.935867,
		-0.621308, -0.749932, 0.227109,
		-0.699925, 0.661461, 0.269395,
		34.757545, 29.986483, 41.976257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763638, 29.268612, 41.395824>,  <35.247490, 29.523460, 41.787682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763638, 29.268612, 41.395824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646931, 29.640060, 41.487507>,  <34.576908, 29.862930, 41.542519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646931, 29.640060, 41.487507>,  <34.763638, 29.268612, 41.395824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646931, 29.640060, 41.487507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501142, 0.055700, -0.863571,
		-0.814697, -0.366825, 0.449120,
		-0.291764, 0.928621, 0.229210,
		34.559402, 29.918646, 41.556271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068920, 29.328894, 41.179810>,  <34.763638, 29.268612, 41.395824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068920, 29.328894, 41.179810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207676, 29.702009, 41.218948>,  <34.290932, 29.925879, 41.242432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207676, 29.702009, 41.218948>,  <34.068920, 29.328894, 41.179810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207676, 29.702009, 41.218948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510935, 0.275429, -0.814300,
		-0.786518, 0.232481, 0.572138,
		0.346892, 0.932787, 0.097847,
		34.311745, 29.981846, 41.248302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475479, 29.750053, 40.996674>,  <34.068920, 29.328894, 41.179810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475479, 29.750053, 40.996674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829750, 29.932486, 40.961868>,  <34.042313, 30.041945, 40.940987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829750, 29.932486, 40.961868>,  <33.475479, 29.750053, 40.996674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829750, 29.932486, 40.961868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193423, 0.192059, -0.962134,
		-0.422098, 0.868968, 0.258318,
		0.885675, 0.456080, -0.087010,
		34.095451, 30.069309, 40.935764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359234, 30.451124, 40.634014>,  <33.475479, 29.750053, 40.996674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359234, 30.451124, 40.634014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750008, 30.379555, 40.587383>,  <33.984470, 30.336613, 40.559402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750008, 30.379555, 40.587383>,  <33.359234, 30.451124, 40.634014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750008, 30.379555, 40.587383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072217, 0.236955, -0.968833,
		0.200972, 0.954902, 0.218567,
		0.976931, -0.178924, -0.116582,
		34.043087, 30.325878, 40.552410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625561, 31.052479, 40.289761>,  <33.359234, 30.451124, 40.634014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625561, 31.052479, 40.289761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896839, 30.762684, 40.240494>,  <34.059605, 30.588808, 40.210934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896839, 30.762684, 40.240494>,  <33.625561, 31.052479, 40.289761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896839, 30.762684, 40.240494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041080, 0.204713, -0.977960,
		0.733732, 0.658189, 0.168598,
		0.678196, -0.724486, -0.123166,
		34.100300, 30.545338, 40.203545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915455, 31.374525, 39.811913>,  <33.625561, 31.052479, 40.289761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915455, 31.374525, 39.811913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032608, 30.992086, 39.808048>,  <34.102901, 30.762623, 39.805729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032608, 30.992086, 39.808048>,  <33.915455, 31.374525, 39.811913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032608, 30.992086, 39.808048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322293, 0.108236, -0.940432,
		0.900191, 0.272326, 0.339845,
		0.292887, -0.956098, -0.009664,
		34.120476, 30.705257, 39.805149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556641, 31.373529, 39.567566>,  <33.915455, 31.374525, 39.811913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556641, 31.373529, 39.567566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421780, 30.999414, 39.524540>,  <34.340862, 30.774946, 39.498726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421780, 30.999414, 39.524540>,  <34.556641, 31.373529, 39.567566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421780, 30.999414, 39.524540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315190, -0.004473, -0.949018,
		0.887122, -0.353865, 0.296301,
		-0.337149, -0.935286, -0.107566,
		34.320633, 30.718828, 39.492271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012688, 31.163410, 39.059345>,  <34.556641, 31.373529, 39.567566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012688, 31.163410, 39.059345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697311, 30.918106, 39.040241>,  <34.508087, 30.770924, 39.028778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697311, 30.918106, 39.040241>,  <35.012688, 31.163410, 39.059345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697311, 30.918106, 39.040241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055842, 0.005962, -0.998422,
		0.612576, -0.789859, 0.029544,
		-0.788436, -0.613259, -0.047760,
		34.460781, 30.734129, 39.025913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281898, 30.475420, 38.791813>,  <35.012688, 31.163410, 39.059345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281898, 30.475420, 38.791813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893757, 30.553328, 38.734570>,  <34.660873, 30.600071, 38.700222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893757, 30.553328, 38.734570>,  <35.281898, 30.475420, 38.791813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893757, 30.553328, 38.734570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163912, 0.095187, -0.981872,
		-0.177615, -0.976220, -0.124290,
		-0.970354, 0.194768, -0.143108,
		34.602650, 30.611757, 38.691639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963852, 30.700344, 39.068314>,  <35.281898, 30.475420, 38.791813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963852, 30.700344, 39.068314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319592, 30.780258, 38.903801>,  <36.533035, 30.828207, 38.805096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319592, 30.780258, 38.903801>,  <35.963852, 30.700344, 39.068314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319592, 30.780258, 38.903801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454608, -0.290091, 0.842127,
		0.048936, -0.935913, -0.348814,
		0.889346, 0.199784, -0.411278,
		36.586395, 30.840193, 38.780418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444035, 30.024628, 38.988327>,  <35.963852, 30.700344, 39.068314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444035, 30.024628, 38.988327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638062, 30.369020, 39.049549>,  <36.754478, 30.575655, 39.086281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638062, 30.369020, 39.049549>,  <36.444035, 30.024628, 38.988327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638062, 30.369020, 39.049549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379412, -0.364898, 0.850233,
		0.787884, -0.354347, -0.503665,
		0.485063, 0.860981, 0.153054,
		36.783581, 30.627316, 39.095467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066227, 29.819138, 39.263901>,  <36.444035, 30.024628, 38.988327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066227, 29.819138, 39.263901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058064, 30.205881, 39.365696>,  <37.053165, 30.437927, 39.426773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058064, 30.205881, 39.365696>,  <37.066227, 29.819138, 39.263901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058064, 30.205881, 39.365696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533548, -0.204738, 0.820615,
		0.845524, 0.152528, -0.511688,
		-0.020405, 0.966860, 0.254492,
		37.051941, 30.495939, 39.442043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779846, 30.059977, 39.549854>,  <37.066227, 29.819138, 39.263901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779846, 30.059977, 39.549854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521626, 30.327959, 39.696507>,  <37.366692, 30.488749, 39.784496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521626, 30.327959, 39.696507>,  <37.779846, 30.059977, 39.549854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521626, 30.327959, 39.696507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408913, -0.102239, 0.906828,
		0.645018, 0.735328, -0.207953,
		-0.645555, 0.669955, 0.366631,
		37.327957, 30.528946, 39.806496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169037, 30.522270, 39.926163>,  <37.779846, 30.059977, 39.549854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169037, 30.522270, 39.926163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800495, 30.529123, 40.081501>,  <37.579369, 30.533236, 40.174706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800495, 30.529123, 40.081501>,  <38.169037, 30.522270, 39.926163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800495, 30.529123, 40.081501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387628, -0.034432, 0.921173,
		0.029155, 0.999260, 0.025083,
		-0.921355, 0.017134, 0.388345,
		37.524090, 30.534264, 40.198006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254631, 31.003872, 40.429253>,  <38.169037, 30.522270, 39.926163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254631, 31.003872, 40.429253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925732, 30.797758, 40.525902>,  <37.728390, 30.674089, 40.583893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925732, 30.797758, 40.525902>,  <38.254631, 31.003872, 40.429253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925732, 30.797758, 40.525902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230963, 0.085905, 0.969163,
		-0.520153, 0.852702, 0.048376,
		-0.822251, -0.515286, 0.241626,
		37.679058, 30.643173, 40.598389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962048, 31.416485, 40.983082>,  <38.254631, 31.003872, 40.429253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962048, 31.416485, 40.983082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787716, 31.059671, 41.030956>,  <37.683117, 30.845583, 41.059681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787716, 31.059671, 41.030956>,  <37.962048, 31.416485, 40.983082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787716, 31.059671, 41.030956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068664, 0.099642, 0.992652,
		-0.897406, 0.440846, 0.017823,
		-0.435830, -0.892035, 0.119689,
		37.656967, 30.792061, 41.066864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438297, 31.548901, 41.519920>,  <37.962048, 31.416485, 40.983082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438297, 31.548901, 41.519920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492130, 31.153233, 41.496490>,  <37.524429, 30.915833, 41.482433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492130, 31.153233, 41.496490>,  <37.438297, 31.548901, 41.519920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492130, 31.153233, 41.496490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011067, -0.057607, 0.998278,
		-0.990840, -0.135002, 0.003194,
		0.134585, -0.989169, -0.058574,
		37.532505, 30.856482, 41.478920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011017, 31.220808, 41.984833>,  <37.438297, 31.548901, 41.519920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011017, 31.220808, 41.984833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270218, 30.929296, 41.896309>,  <37.425739, 30.754389, 41.843193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270218, 30.929296, 41.896309>,  <37.011017, 31.220808, 41.984833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270218, 30.929296, 41.896309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076948, -0.226445, 0.970980,
		-0.757745, -0.646223, -0.090657,
		0.647998, -0.728779, -0.221313,
		37.464619, 30.710663, 41.829914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782684, 30.607021, 42.418819>,  <37.011017, 31.220808, 41.984833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782684, 30.607021, 42.418819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162853, 30.574810, 42.298683>,  <37.390957, 30.555483, 42.226601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162853, 30.574810, 42.298683>,  <36.782684, 30.607021, 42.418819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162853, 30.574810, 42.298683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227151, -0.479803, 0.847462,
		-0.212349, -0.873673, -0.437725,
		0.950426, -0.080528, -0.300342,
		37.447983, 30.550652, 42.208580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989182, 29.885220, 42.657688>,  <36.782684, 30.607021, 42.418819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989182, 29.885220, 42.657688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330692, 30.079058, 42.581547>,  <37.535599, 30.195360, 42.535862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330692, 30.079058, 42.581547>,  <36.989182, 29.885220, 42.657688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330692, 30.079058, 42.581547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381001, -0.332361, 0.862771,
		0.354831, -0.809136, -0.468394,
		0.853776, 0.484597, -0.190350,
		37.586826, 30.224438, 42.524441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487766, 29.384266, 42.725113>,  <36.989182, 29.885220, 42.657688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487766, 29.384266, 42.725113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660946, 29.739555, 42.786579>,  <37.764854, 29.952730, 42.823460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660946, 29.739555, 42.786579>,  <37.487766, 29.384266, 42.725113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660946, 29.739555, 42.786579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480236, -0.371540, 0.794563,
		0.762843, -0.270210, -0.587415,
		0.432947, 0.888225, 0.153662,
		37.790829, 30.006023, 42.832676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325531, 29.221714, 42.764751>,  <37.487766, 29.384266, 42.725113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325531, 29.221714, 42.764751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234680, 29.572285, 42.934593>,  <38.180168, 29.782627, 43.036499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234680, 29.572285, 42.934593>,  <38.325531, 29.221714, 42.764751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234680, 29.572285, 42.934593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168469, -0.394063, 0.903511,
		0.959183, 0.276744, -0.058149,
		-0.227127, 0.876429, 0.424601,
		38.166542, 29.835213, 43.061974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914349, 29.207096, 43.319054>,  <38.325531, 29.221714, 42.764751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914349, 29.207096, 43.319054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625813, 29.466814, 43.415455>,  <38.452690, 29.622644, 43.473297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625813, 29.466814, 43.415455>,  <38.914349, 29.207096, 43.319054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625813, 29.466814, 43.415455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095974, -0.250908, 0.963241,
		0.685898, 0.717955, 0.118675,
		-0.721341, 0.649296, 0.241003,
		38.409409, 29.661602, 43.487755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206882, 29.725866, 43.707233>,  <38.914349, 29.207096, 43.319054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206882, 29.725866, 43.707233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823082, 29.705528, 43.818069>,  <38.592804, 29.693325, 43.884571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823082, 29.705528, 43.818069>,  <39.206882, 29.725866, 43.707233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823082, 29.705528, 43.818069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280985, -0.101772, 0.954301,
		-0.020323, 0.993507, 0.111937,
		-0.959497, -0.050847, 0.277093,
		38.535233, 29.690273, 43.901196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277390, 30.040459, 44.363392>,  <39.206882, 29.725866, 43.707233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277390, 30.040459, 44.363392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928059, 29.845644, 44.367424>,  <38.718460, 29.728756, 44.369843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928059, 29.845644, 44.367424>,  <39.277390, 30.040459, 44.363392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928059, 29.845644, 44.367424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134367, -0.220954, 0.965984,
		-0.468241, 0.844971, 0.258406,
		-0.873325, -0.487035, 0.010076,
		38.666061, 29.699533, 44.370445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161377, 30.183035, 45.037033>,  <39.277390, 30.040459, 44.363392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161377, 30.183035, 45.037033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909824, 29.891766, 44.928020>,  <38.758892, 29.717005, 44.862614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909824, 29.891766, 44.928020>,  <39.161377, 30.183035, 45.037033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909824, 29.891766, 44.928020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041665, -0.381584, 0.923395,
		-0.776385, 0.569350, 0.270310,
		-0.628880, -0.728172, -0.272534,
		38.721161, 29.673313, 44.846260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732727, 30.178299, 45.593067>,  <39.161377, 30.183035, 45.037033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732727, 30.178299, 45.593067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686691, 29.826361, 45.408623>,  <38.659069, 29.615198, 45.297955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686691, 29.826361, 45.408623>,  <38.732727, 30.178299, 45.593067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686691, 29.826361, 45.408623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136121, -0.445847, 0.884698,
		-0.983984, 0.164591, -0.068451,
		-0.115094, -0.879847, -0.461111,
		38.652164, 29.562407, 45.270290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190613, 29.901775, 45.946812>,  <38.732727, 30.178299, 45.593067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190613, 29.901775, 45.946812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347450, 29.580826, 45.766830>,  <38.441555, 29.388256, 45.658840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347450, 29.580826, 45.766830>,  <38.190613, 29.901775, 45.946812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347450, 29.580826, 45.766830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274626, -0.568913, 0.775190,
		-0.877975, -0.180380, -0.443422,
		0.392097, -0.802372, -0.449954,
		38.465080, 29.340115, 45.631844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687462, 29.382420, 46.062698>,  <38.190613, 29.901775, 45.946812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687462, 29.382420, 46.062698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048294, 29.222506, 45.997673>,  <38.264793, 29.126556, 45.958660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048294, 29.222506, 45.997673>,  <37.687462, 29.382420, 46.062698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048294, 29.222506, 45.997673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014587, -0.404699, 0.914334,
		-0.431334, -0.822426, -0.370900,
		0.902074, -0.399793, -0.162563,
		38.318916, 29.102570, 45.948906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688404, 28.748772, 46.481495>,  <37.687462, 29.382420, 46.062698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688404, 28.748772, 46.481495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074028, 28.793762, 46.385212>,  <38.305401, 28.820757, 46.327442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074028, 28.793762, 46.385212>,  <37.688404, 28.748772, 46.481495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074028, 28.793762, 46.385212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264014, -0.303925, 0.915383,
		0.029801, -0.946033, -0.322696,
		0.964058, 0.112476, -0.240708,
		38.363247, 28.827505, 46.313000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051495, 28.137224, 46.703945>,  <37.688404, 28.748772, 46.481495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051495, 28.137224, 46.703945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309498, 28.442736, 46.694073>,  <38.464298, 28.626043, 46.688148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309498, 28.442736, 46.694073>,  <38.051495, 28.137224, 46.703945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309498, 28.442736, 46.694073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003762, 0.035470, 0.999364,
		0.764170, -0.644500, 0.025752,
		0.645003, 0.763781, -0.024680,
		38.502998, 28.671869, 46.686668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559330, 27.913982, 47.064976>,  <38.051495, 28.137224, 46.703945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559330, 27.913982, 47.064976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553726, 28.312489, 47.099064>,  <38.550365, 28.551592, 47.119514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553726, 28.312489, 47.099064>,  <38.559330, 27.913982, 47.064976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553726, 28.312489, 47.099064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100766, -0.086197, 0.991169,
		0.994812, 0.005295, 0.101597,
		-0.014005, 0.996264, 0.085216,
		38.549526, 28.611368, 47.124630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890152, 27.974730, 47.635815>,  <38.559330, 27.913982, 47.064976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890152, 27.974730, 47.635815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746246, 28.345713, 47.595043>,  <38.659904, 28.568302, 47.570580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746246, 28.345713, 47.595043>,  <38.890152, 27.974730, 47.635815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746246, 28.345713, 47.595043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033723, 0.122094, 0.991946,
		0.932433, 0.353430, -0.075201,
		-0.359765, 0.927459, -0.101926,
		38.638317, 28.623951, 47.564465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371334, 28.469273, 47.993069>,  <38.890152, 27.974730, 47.635815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371334, 28.469273, 47.993069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023884, 28.666309, 47.971752>,  <38.815414, 28.784531, 47.958961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023884, 28.666309, 47.971752>,  <39.371334, 28.469273, 47.993069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023884, 28.666309, 47.971752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084705, -0.041660, 0.995535,
		0.488172, 0.869263, 0.077912,
		-0.868627, 0.492592, -0.053293,
		38.763294, 28.814087, 47.955765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399658, 28.960463, 48.537014>,  <39.371334, 28.469273, 47.993069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399658, 28.960463, 48.537014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013817, 28.954050, 48.431728>,  <38.782310, 28.950203, 48.368557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013817, 28.954050, 48.431728>,  <39.399658, 28.960463, 48.537014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013817, 28.954050, 48.431728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255819, 0.299151, 0.919274,
		0.064002, 0.954071, -0.292664,
		-0.964604, -0.016033, -0.263216,
		38.724434, 28.949240, 48.352764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129074, 29.604855, 48.711716>,  <39.399658, 28.960463, 48.537014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129074, 29.604855, 48.711716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823925, 29.346722, 48.695866>,  <38.640835, 29.191843, 48.686356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823925, 29.346722, 48.695866>,  <39.129074, 29.604855, 48.711716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823925, 29.346722, 48.695866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237301, 0.222462, 0.945621,
		-0.601424, 0.730793, -0.322848,
		-0.762875, -0.645331, -0.039623,
		38.595062, 29.153122, 48.683979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530907, 29.974184, 49.128304>,  <39.129074, 29.604855, 48.711716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530907, 29.974184, 49.128304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470646, 29.578945, 49.115891>,  <38.434490, 29.341801, 49.108444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470646, 29.578945, 49.115891>,  <38.530907, 29.974184, 49.128304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470646, 29.578945, 49.115891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243806, 0.006716, 0.969801,
		-0.958051, 0.153672, -0.241917,
		-0.150656, -0.988099, -0.031032,
		38.425449, 29.282515, 49.106583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798977, 29.868477, 49.365318>,  <38.530907, 29.974184, 49.128304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798977, 29.868477, 49.365318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019226, 29.538500, 49.416355>,  <38.151375, 29.340513, 49.446976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019226, 29.538500, 49.416355>,  <37.798977, 29.868477, 49.365318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019226, 29.538500, 49.416355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232088, -0.004468, 0.972684,
		-0.801839, -0.565198, -0.193920,
		0.550626, -0.824943, 0.127593,
		38.184414, 29.291018, 49.454632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502102, 29.575014, 49.947479>,  <37.798977, 29.868477, 49.365318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502102, 29.575014, 49.947479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826607, 29.341145, 49.946194>,  <38.021309, 29.200823, 49.945423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826607, 29.341145, 49.946194>,  <37.502102, 29.575014, 49.947479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826607, 29.341145, 49.946194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154303, -0.219399, 0.963356,
		-0.563953, -0.781040, -0.268207,
		0.811263, -0.584672, -0.003214,
		38.069984, 29.165743, 49.945229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378448, 29.070768, 50.433311>,  <37.502102, 29.575014, 49.947479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378448, 29.070768, 50.433311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775223, 29.059254, 50.383945>,  <38.013287, 29.052345, 50.354328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775223, 29.059254, 50.383945>,  <37.378448, 29.070768, 50.433311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775223, 29.059254, 50.383945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113770, -0.226662, 0.967306,
		-0.055819, -0.973548, -0.221560,
		0.991938, -0.028787, -0.123413,
		38.072803, 29.050617, 50.346920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461597, 28.466112, 50.711761>,  <37.378448, 29.070768, 50.433311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461597, 28.466112, 50.711761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825630, 28.631811, 50.716579>,  <38.044052, 28.731230, 50.719471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825630, 28.631811, 50.716579>,  <37.461597, 28.466112, 50.711761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825630, 28.631811, 50.716579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087106, -0.219621, 0.971689,
		0.405164, -0.883270, -0.235958,
		0.910085, 0.414247, 0.012045,
		38.098656, 28.756084, 50.720192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910866, 28.025347, 51.056545>,  <37.461597, 28.466112, 50.711761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910866, 28.025347, 51.056545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107788, 28.367598, 51.120468>,  <38.225941, 28.572948, 51.158821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107788, 28.367598, 51.120468>,  <37.910866, 28.025347, 51.056545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107788, 28.367598, 51.120468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204575, -0.292199, 0.934221,
		0.846039, -0.427230, -0.318891,
		0.492307, 0.855625, 0.159811,
		38.255482, 28.624285, 51.168411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333076, 27.809065, 51.577198>,  <37.910866, 28.025347, 51.056545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333076, 27.809065, 51.577198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370075, 28.207151, 51.564629>,  <38.392273, 28.446003, 51.557087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370075, 28.207151, 51.564629>,  <38.333076, 27.809065, 51.577198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370075, 28.207151, 51.564629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182734, 0.014058, 0.983062,
		0.978802, -0.096669, -0.180559,
		0.092493, 0.995218, -0.031425,
		38.397823, 28.505716, 51.555202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932041, 27.940321, 51.935844>,  <38.333076, 27.809065, 51.577198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932041, 27.940321, 51.935844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703373, 28.268513, 51.934673>,  <38.566174, 28.465427, 51.933971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703373, 28.268513, 51.934673>,  <38.932041, 27.940321, 51.935844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703373, 28.268513, 51.934673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203487, 0.145231, 0.968246,
		0.794852, 0.552919, -0.249981,
		-0.571667, 0.820481, -0.002925,
		38.531872, 28.514656, 51.933796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226768, 28.466507, 52.351566>,  <38.932041, 27.940321, 51.935844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226768, 28.466507, 52.351566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837723, 28.557121, 52.372364>,  <38.604294, 28.611490, 52.384842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837723, 28.557121, 52.372364>,  <39.226768, 28.466507, 52.351566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837723, 28.557121, 52.372364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100779, 0.209443, 0.972614,
		0.209443, 0.951217, -0.226538,
		-0.972614, 0.226538, 0.051996,
		38.545940, 28.625082, 52.387962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240231, 29.036976, 52.820370>,  <39.226768, 28.466507, 52.351566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240231, 29.036976, 52.820370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870075, 28.888447, 52.789951>,  <38.647984, 28.799330, 52.771698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870075, 28.888447, 52.789951>,  <39.240231, 29.036976, 52.820370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870075, 28.888447, 52.789951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096982, 0.038002, 0.994560,
		-0.366411, 0.927727, -0.071178,
		-0.925385, -0.371321, -0.076048,
		38.592461, 28.777050, 52.767136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905613, 29.402555, 53.293835>,  <39.240231, 29.036976, 52.820370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905613, 29.402555, 53.293835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670135, 29.085739, 53.229198>,  <38.528847, 28.895649, 53.190414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670135, 29.085739, 53.229198>,  <38.905613, 29.402555, 53.293835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670135, 29.085739, 53.229198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109012, -0.120291, 0.986735,
		-0.800971, 0.598502, -0.015527,
		-0.588695, -0.792039, -0.161593,
		38.493526, 28.848127, 53.180721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507061, 30.007875, 53.548092>,  <38.905613, 29.402555, 53.293835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507061, 30.007875, 53.548092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675953, 30.317274, 53.737167>,  <38.777287, 30.502913, 53.850613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675953, 30.317274, 53.737167>,  <38.507061, 30.007875, 53.548092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675953, 30.317274, 53.737167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049439, 0.540318, -0.840007,
		-0.905142, 0.331303, 0.266376,
		0.422225, 0.773495, 0.472685,
		38.802620, 30.549322, 53.878971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156612, 30.553091, 53.335224>,  <38.507061, 30.007875, 53.548092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156612, 30.553091, 53.335224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497593, 30.726633, 53.451912>,  <38.702179, 30.830759, 53.521923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497593, 30.726633, 53.451912>,  <38.156612, 30.553091, 53.335224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497593, 30.726633, 53.451912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022896, 0.526469, -0.849886,
		-0.522308, 0.731164, 0.438855,
		0.852449, 0.433854, 0.291720,
		38.753326, 30.856789, 53.539429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925678, 31.331610, 53.384960>,  <38.156612, 30.553091, 53.335224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925678, 31.331610, 53.384960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318249, 31.289343, 53.320908>,  <38.553791, 31.263983, 53.282478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318249, 31.289343, 53.320908>,  <37.925678, 31.331610, 53.384960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318249, 31.289343, 53.320908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084389, 0.511791, -0.854955,
		0.172294, 0.852587, 0.493367,
		0.981424, -0.105669, -0.160127,
		38.612675, 31.257643, 53.272869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260689, 31.957870, 53.166679>,  <37.925678, 31.331610, 53.384960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260689, 31.957870, 53.166679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519333, 31.693102, 53.015018>,  <38.674519, 31.534241, 52.924023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519333, 31.693102, 53.015018>,  <38.260689, 31.957870, 53.166679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519333, 31.693102, 53.015018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001262, 0.497965, -0.867196,
		0.762817, 0.560261, 0.322826,
		0.646613, -0.661920, -0.379149,
		38.713318, 31.494526, 52.901272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586056, 32.426197, 52.838081>,  <38.260689, 31.957870, 53.166679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586056, 32.426197, 52.838081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724228, 32.083401, 52.685116>,  <38.807133, 31.877722, 52.593338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724228, 32.083401, 52.685116>,  <38.586056, 32.426197, 52.838081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724228, 32.083401, 52.685116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074170, 0.431152, -0.899226,
		0.935508, 0.282260, 0.212497,
		0.345434, -0.856993, -0.382411,
		38.827858, 31.826303, 52.570393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183563, 32.659580, 52.322220>,  <38.586056, 32.426197, 52.838081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183563, 32.659580, 52.322220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063358, 32.286518, 52.242374>,  <38.991238, 32.062679, 52.194469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063358, 32.286518, 52.242374>,  <39.183563, 32.659580, 52.322220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063358, 32.286518, 52.242374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115315, 0.172221, -0.978286,
		0.946783, -0.317001, 0.055796,
		-0.300508, -0.932658, -0.199611,
		38.973206, 32.006721, 52.182491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727036, 32.316566, 51.878540>,  <39.183563, 32.659580, 52.322220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727036, 32.316566, 51.878540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394394, 32.111732, 51.792553>,  <39.194809, 31.988832, 51.740959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394394, 32.111732, 51.792553>,  <39.727036, 32.316566, 51.878540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394394, 32.111732, 51.792553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336050, -0.155801, -0.928868,
		0.442164, -0.844689, 0.301649,
		-0.831602, -0.512081, -0.214968,
		39.144913, 31.958109, 51.728062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921524, 31.958345, 51.307095>,  <39.727036, 32.316566, 51.878540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921524, 31.958345, 51.307095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531300, 31.870472, 51.305809>,  <39.297165, 31.817747, 51.305038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531300, 31.870472, 51.305809>,  <39.921524, 31.958345, 51.307095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531300, 31.870472, 51.305809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015371, -0.053663, -0.998441,
		0.219169, -0.974094, 0.055729,
		-0.975566, -0.219684, -0.003212,
		39.238628, 31.804567, 51.304844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842720, 31.385754, 50.828369>,  <39.921524, 31.958345, 51.307095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842720, 31.385754, 50.828369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488262, 31.568850, 50.857281>,  <39.275589, 31.678707, 50.874630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488262, 31.568850, 50.857281>,  <39.842720, 31.385754, 50.828369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488262, 31.568850, 50.857281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096756, -0.030213, -0.994850,
		-0.453201, -0.888572, 0.071062,
		-0.886142, 0.457742, 0.072282,
		39.222420, 31.706173, 50.878963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336098, 31.011171, 50.333996>,  <39.842720, 31.385754, 50.828369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336098, 31.011171, 50.333996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168171, 31.367840, 50.401730>,  <39.067413, 31.581841, 50.442368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168171, 31.367840, 50.401730>,  <39.336098, 31.011171, 50.333996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168171, 31.367840, 50.401730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207585, 0.087291, -0.974315,
		-0.883550, -0.444186, 0.148452,
		-0.419818, 0.891672, 0.169333,
		39.042225, 31.635342, 50.452530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740402, 31.009247, 49.944290>,  <39.336098, 31.011171, 50.333996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740402, 31.009247, 49.944290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850529, 31.389505, 50.001522>,  <38.916603, 31.617661, 50.035862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850529, 31.389505, 50.001522>,  <38.740402, 31.009247, 49.944290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850529, 31.389505, 50.001522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119343, 0.181478, -0.976126,
		-0.953918, 0.251666, 0.163417,
		0.275314, 0.950647, 0.143081,
		38.933125, 31.674700, 50.044445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137352, 31.324978, 49.568520>,  <38.740402, 31.009247, 49.944290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137352, 31.324978, 49.568520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444546, 31.579554, 49.597229>,  <38.628860, 31.732300, 49.614452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444546, 31.579554, 49.597229>,  <38.137352, 31.324978, 49.568520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444546, 31.579554, 49.597229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140179, 0.276370, -0.950773,
		-0.624945, 0.720114, 0.301463,
		0.767980, 0.636439, 0.071771,
		38.674938, 31.770485, 49.618759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902481, 31.927288, 49.141109>,  <38.137352, 31.324978, 49.568520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902481, 31.927288, 49.141109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296772, 31.979633, 49.183468>,  <38.533348, 32.011040, 49.208881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296772, 31.979633, 49.183468>,  <37.902481, 31.927288, 49.141109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296772, 31.979633, 49.183468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051997, 0.361618, -0.930875,
		-0.160110, 0.923097, 0.349653,
		0.985729, 0.130861, 0.105897,
		38.592491, 32.018890, 49.215237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960552, 32.538288, 48.830517>,  <37.902481, 31.927288, 49.141109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960552, 32.538288, 48.830517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320999, 32.364880, 48.827663>,  <38.537266, 32.260834, 48.825951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320999, 32.364880, 48.827663>,  <37.960552, 32.538288, 48.830517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320999, 32.364880, 48.827663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176830, 0.382471, -0.906889,
		0.395884, 0.815949, 0.421310,
		0.901114, -0.433523, -0.007130,
		38.591331, 32.234821, 48.825523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395348, 32.951519, 48.469711>,  <37.960552, 32.538288, 48.830517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395348, 32.951519, 48.469711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574696, 32.594795, 48.445595>,  <38.682304, 32.380760, 48.431126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574696, 32.594795, 48.445595>,  <38.395348, 32.951519, 48.469711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574696, 32.594795, 48.445595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115364, 0.124623, -0.985475,
		0.886371, 0.434905, 0.158760,
		0.448373, -0.891811, -0.060290,
		38.709206, 32.327251, 48.427509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756138, 33.151287, 47.915508>,  <38.395348, 32.951519, 48.469711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756138, 33.151287, 47.915508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790440, 32.756897, 47.972778>,  <38.811020, 32.520264, 48.007141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790440, 32.756897, 47.972778>,  <38.756138, 33.151287, 47.915508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790440, 32.756897, 47.972778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063440, -0.138006, -0.988398,
		0.994295, 0.093842, 0.050716,
		0.085754, -0.985976, 0.143172,
		38.816166, 32.461105, 48.015732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368538, 32.919891, 47.658527>,  <38.756138, 33.151287, 47.915508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368538, 32.919891, 47.658527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120434, 32.607262, 47.631947>,  <38.971573, 32.419685, 47.615997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120434, 32.607262, 47.631947>,  <39.368538, 32.919891, 47.658527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120434, 32.607262, 47.631947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150126, -0.035132, -0.988042,
		0.769895, -0.622821, 0.139126,
		-0.620261, -0.781575, -0.066454,
		38.934357, 32.372787, 47.612011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694096, 32.488976, 47.130970>,  <39.368538, 32.919891, 47.658527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694096, 32.488976, 47.130970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325108, 32.336777, 47.157131>,  <39.103714, 32.245457, 47.172829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325108, 32.336777, 47.157131>,  <39.694096, 32.488976, 47.130970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325108, 32.336777, 47.157131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030740, -0.096474, -0.994861,
		0.384851, -0.919736, 0.077298,
		-0.922467, -0.380497, 0.065401,
		39.048367, 32.222630, 47.176750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726868, 31.814165, 46.751926>,  <39.694096, 32.488976, 47.130970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726868, 31.814165, 46.751926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345917, 31.936127, 46.750256>,  <39.117348, 32.009304, 46.749252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345917, 31.936127, 46.750256>,  <39.726868, 31.814165, 46.751926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345917, 31.936127, 46.750256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015121, -0.060900, -0.998029,
		-0.304560, -0.950433, 0.062610,
		-0.952373, 0.304907, -0.004176,
		39.060204, 32.027599, 46.749004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338585, 31.348192, 46.409622>,  <39.726868, 31.814165, 46.751926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338585, 31.348192, 46.409622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113560, 31.676907, 46.373413>,  <38.978546, 31.874136, 46.351688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113560, 31.676907, 46.373413>,  <39.338585, 31.348192, 46.409622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113560, 31.676907, 46.373413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083241, -0.165235, -0.982735,
		-0.822556, -0.545311, 0.161360,
		-0.562559, 0.821787, -0.090523,
		38.944794, 31.923443, 46.346256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752041, 31.219553, 45.914497>,  <39.338585, 31.348192, 46.409622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752041, 31.219553, 45.914497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750191, 31.619467, 45.906418>,  <38.749081, 31.859415, 45.901569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750191, 31.619467, 45.906418>,  <38.752041, 31.219553, 45.914497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750191, 31.619467, 45.906418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008011, -0.020165, -0.999764,
		-0.999957, -0.004784, -0.007916,
		-0.004623, 0.999785, -0.020202,
		38.748802, 31.919403, 45.900356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265202, 31.402332, 45.343437>,  <38.752041, 31.219553, 45.914497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265202, 31.402332, 45.343437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464222, 31.742567, 45.411491>,  <38.583633, 31.946707, 45.452324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464222, 31.742567, 45.411491>,  <38.265202, 31.402332, 45.343437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464222, 31.742567, 45.411491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041387, 0.172632, -0.984117,
		-0.866445, 0.496693, 0.050691,
		0.497554, 0.850585, 0.170133,
		38.613487, 31.997742, 45.462532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806957, 31.935335, 44.980354>,  <38.265202, 31.402332, 45.343437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806957, 31.935335, 44.980354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185246, 32.053692, 45.034103>,  <38.412220, 32.124706, 45.066353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185246, 32.053692, 45.034103>,  <37.806957, 31.935335, 44.980354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185246, 32.053692, 45.034103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014388, 0.451195, -0.892309,
		-0.324652, 0.841945, 0.430963,
		0.945724, 0.295891, 0.134368,
		38.468964, 32.142460, 45.074413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766731, 32.554485, 44.793346>,  <37.806957, 31.935335, 44.980354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766731, 32.554485, 44.793346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156902, 32.466965, 44.783039>,  <38.391006, 32.414452, 44.776855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156902, 32.466965, 44.783039>,  <37.766731, 32.554485, 44.793346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156902, 32.466965, 44.783039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063166, 0.389797, -0.918732,
		0.211062, 0.894531, 0.394040,
		0.975429, -0.218800, -0.025767,
		38.449532, 32.401325, 44.775311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174213, 33.159832, 44.580780>,  <37.766731, 32.554485, 44.793346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174213, 33.159832, 44.580780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390919, 32.835972, 44.490490>,  <38.520943, 32.641655, 44.436314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390919, 32.835972, 44.490490>,  <38.174213, 33.159832, 44.580780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390919, 32.835972, 44.490490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077114, 0.315300, -0.945854,
		0.836986, 0.495022, 0.233253,
		0.541763, -0.809654, -0.225728,
		38.553448, 32.593075, 44.422771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693321, 33.481094, 44.257832>,  <38.174213, 33.159832, 44.580780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693321, 33.481094, 44.257832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707760, 33.095810, 44.151306>,  <38.716423, 32.864639, 44.087391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707760, 33.095810, 44.151306>,  <38.693321, 33.481094, 44.257832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707760, 33.095810, 44.151306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211019, 0.267824, -0.940075,
		0.976815, -0.022264, 0.212923,
		0.036096, -0.963211, -0.266313,
		38.718590, 32.806847, 44.071411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361633, 33.288395, 43.913769>,  <38.693321, 33.481094, 44.257832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361633, 33.288395, 43.913769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086639, 33.020115, 43.802395>,  <38.921642, 32.859146, 43.735569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086639, 33.020115, 43.802395>,  <39.361633, 33.288395, 43.913769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086639, 33.020115, 43.802395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289484, 0.098528, -0.952098,
		0.666011, -0.735151, 0.126422,
		-0.687480, -0.670705, -0.278435,
		38.880394, 32.818905, 43.718864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738922, 32.861679, 43.473103>,  <39.361633, 33.288395, 43.913769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738922, 32.861679, 43.473103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356499, 32.772339, 43.397137>,  <39.127045, 32.718735, 43.351559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356499, 32.772339, 43.397137>,  <39.738922, 32.861679, 43.473103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356499, 32.772339, 43.397137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217629, -0.106637, -0.970189,
		0.196439, -0.968888, 0.150559,
		-0.956059, -0.223349, -0.189910,
		39.069679, 32.705334, 43.340164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821804, 32.291164, 43.048340>,  <39.738922, 32.861679, 43.473103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821804, 32.291164, 43.048340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451317, 32.427559, 42.984024>,  <39.229027, 32.509396, 42.945435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451317, 32.427559, 42.984024>,  <39.821804, 32.291164, 43.048340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451317, 32.427559, 42.984024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267717, 0.294624, -0.917346,
		-0.265428, -0.892708, -0.364173,
		-0.926216, 0.340985, -0.160792,
		39.173450, 32.529854, 42.935787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627888, 31.881346, 42.505684>,  <39.821804, 32.291164, 43.048340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627888, 31.881346, 42.505684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418137, 32.221848, 42.513657>,  <39.292286, 32.426147, 42.518440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418137, 32.221848, 42.513657>,  <39.627888, 31.881346, 42.505684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418137, 32.221848, 42.513657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116233, 0.094748, -0.988692,
		-0.843517, -0.516129, -0.148627,
		-0.524375, 0.851254, 0.019931,
		39.260822, 32.477222, 42.519634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111275, 31.748760, 41.886806>,  <39.627888, 31.881346, 42.505684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111275, 31.748760, 41.886806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119598, 32.140732, 41.966110>,  <39.124592, 32.375916, 42.013695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119598, 32.140732, 41.966110>,  <39.111275, 31.748760, 41.886806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119598, 32.140732, 41.966110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092710, 0.199343, -0.975534,
		-0.995476, 0.001918, 0.094997,
		0.020809, 0.979928, 0.198264,
		39.125839, 32.434711, 42.025589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611786, 32.120243, 41.386181>,  <39.111275, 31.748760, 41.886806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611786, 32.120243, 41.386181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874992, 32.395840, 41.507713>,  <39.032917, 32.561199, 41.580631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874992, 32.395840, 41.507713>,  <38.611786, 32.120243, 41.386181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874992, 32.395840, 41.507713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130940, 0.292649, -0.947212,
		-0.741536, 0.663060, 0.102350,
		0.658012, 0.688990, 0.303830,
		39.072395, 32.602535, 41.598862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527225, 32.573944, 40.870708>,  <38.611786, 32.120243, 41.386181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527225, 32.573944, 40.870708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853168, 32.734493, 41.037994>,  <39.048737, 32.830822, 41.138367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853168, 32.734493, 41.037994>,  <38.527225, 32.573944, 40.870708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853168, 32.734493, 41.037994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178000, 0.513371, -0.839503,
		-0.551651, 0.758520, 0.346882,
		0.814860, 0.401368, 0.418219,
		39.097626, 32.854904, 41.163460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523796, 33.299488, 40.765816>,  <38.527225, 32.573944, 40.870708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523796, 33.299488, 40.765816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904301, 33.211666, 40.852444>,  <39.132603, 33.158974, 40.904423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904301, 33.211666, 40.852444>,  <38.523796, 33.299488, 40.765816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904301, 33.211666, 40.852444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307012, 0.607727, -0.732401,
		0.029185, 0.763193, 0.645511,
		0.951258, -0.219554, 0.216573,
		39.189678, 33.145802, 40.917416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912697, 33.921791, 40.817902>,  <38.523796, 33.299488, 40.765816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912697, 33.921791, 40.817902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165020, 33.628979, 40.714985>,  <39.316414, 33.453289, 40.653233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165020, 33.628979, 40.714985>,  <38.912697, 33.921791, 40.817902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165020, 33.628979, 40.714985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274723, 0.520819, -0.808254,
		0.725674, 0.439172, 0.529646,
		0.630813, -0.732035, -0.257294,
		39.354263, 33.409367, 40.637798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591202, 34.267143, 40.555042>,  <38.912697, 33.921791, 40.817902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591202, 34.267143, 40.555042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621147, 33.887196, 40.433620>,  <39.639114, 33.659225, 40.360767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621147, 33.887196, 40.433620>,  <39.591202, 34.267143, 40.555042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621147, 33.887196, 40.433620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449734, 0.303851, -0.839889,
		0.890019, -0.073640, 0.449936,
		0.074864, -0.949869, -0.303551,
		39.643608, 33.602234, 40.342556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302052, 34.219078, 40.412579>,  <39.591202, 34.267143, 40.555042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302052, 34.219078, 40.412579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091499, 33.937302, 40.222130>,  <39.965168, 33.768238, 40.107861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091499, 33.937302, 40.222130>,  <40.302052, 34.219078, 40.412579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091499, 33.937302, 40.222130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410188, 0.280111, -0.867919,
		0.744763, -0.652154, 0.141507,
		-0.526379, -0.704438, -0.476122,
		39.933586, 33.725971, 40.079292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783901, 33.777111, 39.994072>,  <40.302052, 34.219078, 40.412579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783901, 33.777111, 39.994072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420773, 33.747322, 39.828999>,  <40.202896, 33.729450, 39.729954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420773, 33.747322, 39.828999>,  <40.783901, 33.777111, 39.994072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420773, 33.747322, 39.828999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391089, 0.204826, -0.897272,
		0.151349, -0.975961, -0.156821,
		-0.907824, -0.074470, -0.412688,
		40.148426, 33.724979, 39.705193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874352, 33.250580, 39.432350>,  <40.783901, 33.777111, 39.994072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874352, 33.250580, 39.432350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543915, 33.456676, 39.341049>,  <40.345654, 33.580334, 39.286270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543915, 33.456676, 39.341049>,  <40.874352, 33.250580, 39.432350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543915, 33.456676, 39.341049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312917, 0.082540, -0.946187,
		-0.468677, -0.853060, -0.229414,
		-0.826090, 0.515243, -0.228253,
		40.296089, 33.611248, 39.272572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541317, 32.818588, 38.902016>,  <40.874352, 33.250580, 39.432350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541317, 32.818588, 38.902016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478817, 33.213669, 38.900021>,  <40.441319, 33.450718, 38.898823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478817, 33.213669, 38.900021>,  <40.541317, 32.818588, 38.902016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478817, 33.213669, 38.900021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477868, 0.071179, -0.875543,
		-0.864424, -0.139184, -0.483114,
		-0.156249, 0.987705, -0.004983,
		40.431942, 33.509979, 38.898525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318661, 32.966778, 38.242916>,  <40.541317, 32.818588, 38.902016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318661, 32.966778, 38.242916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499126, 33.283791, 38.407036>,  <40.607407, 33.473999, 38.505508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499126, 33.283791, 38.407036>,  <40.318661, 32.966778, 38.242916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499126, 33.283791, 38.407036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573273, 0.094985, -0.813840,
		-0.683968, 0.602385, -0.411484,
		0.451160, 0.792534, 0.410298,
		40.634476, 33.521549, 38.530125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248444, 33.617138, 37.844532>,  <40.318661, 32.966778, 38.242916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248444, 33.617138, 37.844532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599670, 33.604416, 38.035522>,  <40.810406, 33.596783, 38.150116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599670, 33.604416, 38.035522>,  <40.248444, 33.617138, 37.844532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599670, 33.604416, 38.035522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477992, 0.010991, -0.878295,
		0.022690, 0.999434, 0.024855,
		0.878071, -0.031809, 0.477472,
		40.863091, 33.594872, 38.178764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746357, 34.081120, 37.493477>,  <40.248444, 33.617138, 37.844532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746357, 34.081120, 37.493477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978363, 33.812786, 37.678329>,  <41.117565, 33.651787, 37.789242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978363, 33.812786, 37.678329>,  <40.746357, 34.081120, 37.493477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978363, 33.812786, 37.678329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600124, -0.031740, -0.799277,
		0.550848, 0.740931, 0.384172,
		0.580016, -0.670830, 0.462134,
		41.152367, 33.611538, 37.816971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358852, 34.299343, 37.453110>,  <40.746357, 34.081120, 37.493477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358852, 34.299343, 37.453110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372379, 33.901997, 37.497063>,  <41.380497, 33.663589, 37.523434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372379, 33.901997, 37.497063>,  <41.358852, 34.299343, 37.453110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372379, 33.901997, 37.497063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670639, -0.058960, -0.739437,
		0.741012, 0.098700, 0.664198,
		0.033822, -0.993369, 0.109882,
		41.382526, 33.603985, 37.530029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084419, 34.018036, 37.619366>,  <41.358852, 34.299343, 37.453110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084419, 34.018036, 37.619366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860466, 33.760227, 37.411087>,  <41.726093, 33.605541, 37.286121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860466, 33.760227, 37.411087>,  <42.084419, 34.018036, 37.619366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860466, 33.760227, 37.411087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741298, -0.108910, -0.662281,
		0.370148, -0.756787, 0.538762,
		-0.559882, -0.644525, -0.520692,
		41.692501, 33.566872, 37.254879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507336, 33.539398, 37.466297>,  <42.084419, 34.018036, 37.619366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507336, 33.539398, 37.466297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229511, 33.528759, 37.178719>,  <42.062817, 33.522373, 37.006172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229511, 33.528759, 37.178719>,  <42.507336, 33.539398, 37.466297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229511, 33.528759, 37.178719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717381, -0.101079, -0.689309,
		-0.054333, -0.994523, 0.089289,
		-0.694559, -0.026603, -0.718944,
		42.021145, 33.520779, 36.963036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394234, 33.815632, 36.646301>,  <42.507336, 33.539398, 37.466297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394234, 33.815632, 36.646301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459675, 34.096188, 36.368801>,  <42.498940, 34.264519, 36.202301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459675, 34.096188, 36.368801>,  <42.394234, 33.815632, 36.646301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459675, 34.096188, 36.368801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197756, -0.665637, -0.719597,
		-0.966502, 0.254923, 0.029803,
		0.163604, 0.701386, -0.693752,
		42.508755, 34.306602, 36.160675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770821, 33.872452, 36.267033>,  <42.394234, 33.815632, 36.646301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770821, 33.872452, 36.267033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117462, 33.950661, 36.083397>,  <42.325447, 33.997585, 35.973217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117462, 33.950661, 36.083397>,  <41.770821, 33.872452, 36.267033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117462, 33.950661, 36.083397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195952, -0.712776, -0.673464,
		-0.458907, 0.673587, -0.579382,
		0.866606, 0.195527, -0.459089,
		42.377445, 34.009319, 35.945671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530823, 33.830044, 35.591572>,  <41.770821, 33.872452, 36.267033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530823, 33.830044, 35.591572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930161, 33.811165, 35.604774>,  <42.169762, 33.799839, 35.612698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930161, 33.811165, 35.604774>,  <41.530823, 33.830044, 35.591572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930161, 33.811165, 35.604774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012572, -0.737883, -0.674811,
		0.056207, 0.673276, -0.737252,
		0.998340, -0.047198, 0.033009,
		42.229664, 33.797005, 35.614677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772953, 33.844673, 34.895168>,  <41.530823, 33.830044, 35.591572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772953, 33.844673, 34.895168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065086, 33.670605, 35.105782>,  <42.240364, 33.566162, 35.232151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065086, 33.670605, 35.105782>,  <41.772953, 33.844673, 34.895168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065086, 33.670605, 35.105782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099310, -0.830262, -0.548454,
		0.675837, 0.348262, -0.649583,
		0.730330, -0.435176, 0.526536,
		42.284184, 33.540051, 35.263741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276211, 33.669384, 34.388153>,  <41.772953, 33.844673, 34.895168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276211, 33.669384, 34.388153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333225, 33.445061, 34.714386>,  <42.367435, 33.310467, 34.910126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333225, 33.445061, 34.714386>,  <42.276211, 33.669384, 34.388153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333225, 33.445061, 34.714386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083708, -0.827878, -0.554627,
		0.986243, 0.010783, -0.164947,
		0.142537, -0.560804, 0.815587,
		42.375988, 33.276821, 34.959061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639042, 33.173977, 34.164841>,  <42.276211, 33.669384, 34.388153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639042, 33.173977, 34.164841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524616, 32.999706, 34.506214>,  <42.455959, 32.895145, 34.711037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524616, 32.999706, 34.506214>,  <42.639042, 33.173977, 34.164841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524616, 32.999706, 34.506214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009825, -0.891943, -0.452042,
		0.958160, -0.120929, 0.259435,
		-0.286066, -0.435677, 0.853435,
		42.438797, 32.869003, 34.762245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050831, 32.491970, 34.242844>,  <42.639042, 33.173977, 34.164841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050831, 32.491970, 34.242844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735439, 32.445629, 34.484463>,  <42.546204, 32.417824, 34.629433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735439, 32.445629, 34.484463>,  <43.050831, 32.491970, 34.242844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735439, 32.445629, 34.484463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052726, -0.965754, -0.254044,
		0.612793, -0.232158, 0.755372,
		-0.788482, -0.115848, 0.604049,
		42.498894, 32.410873, 34.665676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126316, 31.756611, 34.522587>,  <43.050831, 32.491970, 34.242844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126316, 31.756611, 34.522587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743641, 31.866461, 34.561237>,  <42.514038, 31.932371, 34.584427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743641, 31.866461, 34.561237>,  <43.126316, 31.756611, 34.522587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743641, 31.866461, 34.561237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289453, -0.932803, -0.214698,
		0.031176, -0.233368, 0.971888,
		-0.956684, 0.274623, 0.096630,
		42.456635, 31.948847, 34.590225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926281, 31.284931, 35.029175>,  <43.126316, 31.756611, 34.522587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926281, 31.284931, 35.029175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596123, 31.404045, 34.837322>,  <42.398029, 31.475513, 34.722210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596123, 31.404045, 34.837322>,  <42.926281, 31.284931, 35.029175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596123, 31.404045, 34.837322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249192, -0.954504, -0.163785,
		-0.506582, -0.015667, 0.862049,
		-0.825396, 0.297786, -0.479630,
		42.348503, 31.493382, 34.693432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456165, 30.841461, 35.178478>,  <42.926281, 31.284931, 35.029175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456165, 30.841461, 35.178478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274246, 31.012770, 34.866135>,  <42.165096, 31.115555, 34.678730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274246, 31.012770, 34.866135>,  <42.456165, 30.841461, 35.178478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274246, 31.012770, 34.866135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389219, -0.884202, -0.258256,
		-0.801041, 0.186471, 0.568825,
		-0.454799, 0.428271, -0.780860,
		42.137806, 31.141251, 34.631878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745945, 30.626839, 35.314140>,  <42.456165, 30.841461, 35.178478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745945, 30.626839, 35.314140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823376, 30.722645, 34.933582>,  <41.869835, 30.780128, 34.705246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823376, 30.722645, 34.933582>,  <41.745945, 30.626839, 35.314140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823376, 30.722645, 34.933582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427416, -0.852289, -0.301528,
		-0.883089, 0.465010, -0.062607,
		0.193573, 0.239517, -0.951400,
		41.881447, 30.794500, 34.648163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182274, 30.496433, 34.954548>,  <41.745945, 30.626839, 35.314140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182274, 30.496433, 34.954548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459183, 30.511427, 34.666283>,  <41.625328, 30.520422, 34.493324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459183, 30.511427, 34.666283>,  <41.182274, 30.496433, 34.954548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459183, 30.511427, 34.666283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296177, -0.895905, -0.331111,
		-0.658053, 0.442663, -0.609112,
		0.692276, 0.037483, -0.720659,
		41.666866, 30.522673, 34.450085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870789, 30.162550, 34.420185>,  <41.182274, 30.496433, 34.954548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870789, 30.162550, 34.420185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264057, 30.147635, 34.348652>,  <41.500019, 30.138685, 34.305733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264057, 30.147635, 34.348652>,  <40.870789, 30.162550, 34.420185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264057, 30.147635, 34.348652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084422, -0.960883, -0.263773,
		-0.162003, 0.274432, -0.947862,
		0.983172, -0.037288, -0.178834,
		41.559010, 30.136448, 34.295002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963608, 29.792368, 33.771908>,  <40.870789, 30.162550, 34.420185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963608, 29.792368, 33.771908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304443, 29.746700, 33.976223>,  <41.508945, 29.719299, 34.098812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304443, 29.746700, 33.976223>,  <40.963608, 29.792368, 33.771908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304443, 29.746700, 33.976223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087444, -0.931148, -0.354001,
		0.516037, 0.346307, -0.783440,
		0.852092, -0.114171, 0.510789,
		41.560070, 29.712450, 34.129459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234352, 29.350639, 33.385860>,  <40.963608, 29.792368, 33.771908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234352, 29.350639, 33.385860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466206, 29.349115, 33.711807>,  <41.605316, 29.348202, 33.907375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466206, 29.349115, 33.711807>,  <41.234352, 29.350639, 33.385860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466206, 29.349115, 33.711807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288189, -0.934406, -0.209362,
		0.762215, 0.356189, -0.540515,
		0.579633, -0.003809, 0.814869,
		41.640095, 29.347973, 33.956268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051506, 29.308619, 33.234653>,  <41.234352, 29.350639, 33.385860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051506, 29.308619, 33.234653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911556, 29.140270, 33.569427>,  <41.827587, 29.039261, 33.770290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911556, 29.140270, 33.569427>,  <42.051506, 29.308619, 33.234653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911556, 29.140270, 33.569427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238273, -0.903996, -0.354988,
		0.905987, 0.075215, 0.416570,
		-0.349877, -0.420872, 0.836931,
		41.806595, 29.014009, 33.820507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337971, 28.663540, 33.190163>,  <42.051506, 29.308619, 33.234653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337971, 28.663540, 33.190163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124474, 28.592960, 33.520977>,  <41.996376, 28.550611, 33.719467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124474, 28.592960, 33.520977>,  <42.337971, 28.663540, 33.190163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124474, 28.592960, 33.520977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066079, -0.983701, -0.167230,
		0.843063, -0.034608, 0.536700,
		-0.533740, -0.176450, 0.827035,
		41.964352, 28.540026, 33.769089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661060, 28.097181, 33.540848>,  <42.337971, 28.663540, 33.190163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661060, 28.097181, 33.540848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297813, 28.106951, 33.708046>,  <42.079865, 28.112812, 33.808365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297813, 28.106951, 33.708046>,  <42.661060, 28.097181, 33.540848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297813, 28.106951, 33.708046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028332, -0.999594, -0.003147,
		0.417749, -0.014700, 0.908443,
		-0.908120, 0.024423, 0.417996,
		42.025375, 28.114277, 33.833447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736954, 27.613832, 34.030945>,  <42.661060, 28.097181, 33.540848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736954, 27.613832, 34.030945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350433, 27.650888, 33.934875>,  <42.118523, 27.673122, 33.877232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350433, 27.650888, 33.934875>,  <42.736954, 27.613832, 34.030945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350433, 27.650888, 33.934875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063948, -0.990141, -0.124624,
		-0.249354, -0.105065, 0.962696,
		-0.966299, 0.092638, -0.240177,
		42.060543, 27.678680, 33.862823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356277, 27.101162, 34.509758>,  <42.736954, 27.613832, 34.030945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356277, 27.101162, 34.509758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082012, 27.203785, 34.237274>,  <41.917454, 27.265358, 34.073784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082012, 27.203785, 34.237274>,  <42.356277, 27.101162, 34.509758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082012, 27.203785, 34.237274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169857, -0.966386, -0.192993,
		-0.707825, -0.016620, 0.706192,
		-0.685662, 0.256557, -0.681209,
		41.876312, 27.280752, 34.032913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877453, 26.679411, 34.664135>,  <42.356277, 27.101162, 34.509758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877453, 26.679411, 34.664135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799137, 26.770052, 34.282494>,  <41.752148, 26.824436, 34.053509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799137, 26.770052, 34.282494>,  <41.877453, 26.679411, 34.664135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799137, 26.770052, 34.282494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109406, -0.971909, -0.208380,
		-0.974524, 0.063588, 0.215078,
		-0.195786, 0.226602, -0.954107,
		41.740398, 26.838034, 33.996262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296619, 26.326199, 34.535007>,  <41.877453, 26.679411, 34.664135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296619, 26.326199, 34.535007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477085, 26.397230, 34.185169>,  <41.585365, 26.439848, 33.975266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477085, 26.397230, 34.185169>,  <41.296619, 26.326199, 34.535007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477085, 26.397230, 34.185169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196914, -0.936042, -0.291632,
		-0.870446, 0.303794, -0.387340,
		0.451163, 0.177578, -0.874596,
		41.612434, 26.450504, 33.922791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015476, 25.787777, 34.089870>,  <41.296619, 26.326199, 34.535007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015476, 25.787777, 34.089870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350098, 25.901604, 33.902599>,  <41.550873, 25.969900, 33.790237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350098, 25.901604, 33.902599>,  <41.015476, 25.787777, 34.089870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350098, 25.901604, 33.902599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114211, -0.926338, -0.358962,
		-0.535843, 0.246821, -0.807435,
		0.836557, 0.284566, -0.468182,
		41.601067, 25.986973, 33.762146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871197, 25.673471, 34.884830>,  <41.015476, 25.787777, 34.089870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871197, 25.673471, 34.884830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088486, 25.367352, 35.022949>,  <41.218857, 25.183680, 35.105820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088486, 25.367352, 35.022949>,  <40.871197, 25.673471, 34.884830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088486, 25.367352, 35.022949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839585, 0.493689, -0.226646,
		0.002984, 0.413023, 0.910716,
		0.543220, -0.765299, 0.345295,
		41.251453, 25.137762, 35.126537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475697, 25.880104, 35.385483>,  <40.871197, 25.673471, 34.884830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475697, 25.880104, 35.385483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575012, 25.568958, 35.154564>,  <41.634602, 25.382271, 35.016010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575012, 25.568958, 35.154564>,  <41.475697, 25.880104, 35.385483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575012, 25.568958, 35.154564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696305, 0.557633, -0.451891,
		0.673432, -0.289777, 0.680087,
		0.248291, -0.777866, -0.577301,
		41.649498, 25.335598, 34.981373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730816, 25.954048, 36.066750>,  <41.475697, 25.880104, 35.385483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730816, 25.954048, 36.066750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504803, 25.652357, 36.200542>,  <41.369194, 25.471342, 36.280819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504803, 25.652357, 36.200542>,  <41.730816, 25.954048, 36.066750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504803, 25.652357, 36.200542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819896, 0.467966, -0.329816,
		0.092232, -0.460595, -0.882805,
		-0.565035, -0.754228, 0.334479,
		41.335293, 25.426088, 36.300884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085464, 26.025667, 36.118198>,  <41.730816, 25.954048, 36.066750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085464, 26.025667, 36.118198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098919, 25.828018, 36.465694>,  <41.106991, 25.709429, 36.674191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098919, 25.828018, 36.465694>,  <41.085464, 26.025667, 36.118198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098919, 25.828018, 36.465694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480558, 0.770150, 0.419443,
		-0.876318, 0.403372, 0.263359,
		0.033634, -0.494124, 0.868740,
		41.109009, 25.679781, 36.726318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726868, 26.407425, 36.752701>,  <41.085464, 26.025667, 36.118198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726868, 26.407425, 36.752701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050114, 26.179998, 36.814266>,  <41.244061, 26.043543, 36.851208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050114, 26.179998, 36.814266>,  <40.726868, 26.407425, 36.752701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050114, 26.179998, 36.814266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506666, 0.804231, 0.310648,
		-0.300409, -0.173054, 0.937980,
		0.808111, -0.568564, 0.153917,
		41.292545, 26.009430, 36.860443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898129, 26.346380, 37.474098>,  <40.726868, 26.407425, 36.752701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898129, 26.346380, 37.474098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211979, 26.306839, 37.229282>,  <41.400291, 26.283115, 37.082394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211979, 26.306839, 37.229282>,  <40.898129, 26.346380, 37.474098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211979, 26.306839, 37.229282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458478, 0.757041, 0.465497,
		0.417321, -0.645847, 0.639316,
		0.784628, -0.098851, -0.612036,
		41.447369, 26.277184, 37.045673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506432, 26.475170, 37.949085>,  <40.898129, 26.346380, 37.474098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506432, 26.475170, 37.949085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593616, 26.541607, 37.564396>,  <41.645927, 26.581469, 37.333584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593616, 26.541607, 37.564396>,  <41.506432, 26.475170, 37.949085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593616, 26.541607, 37.564396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459576, 0.851851, 0.251275,
		0.860977, -0.496752, 0.109340,
		0.217963, 0.166092, -0.961720,
		41.659004, 26.591434, 37.275879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185394, 26.818254, 37.948978>,  <41.506432, 26.475170, 37.949085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185394, 26.818254, 37.948978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011024, 26.929792, 37.606701>,  <41.906403, 26.996716, 37.401333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011024, 26.929792, 37.606701>,  <42.185394, 26.818254, 37.948978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011024, 26.929792, 37.606701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276340, 0.946333, 0.167602,
		0.856507, -0.163400, -0.489588,
		-0.435927, 0.278845, -0.855694,
		41.880245, 27.013447, 37.349991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682335, 27.100786, 37.422657>,  <42.185394, 26.818254, 37.948978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682335, 27.100786, 37.422657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317482, 27.262693, 37.448509>,  <42.098572, 27.359838, 37.464020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317482, 27.262693, 37.448509>,  <42.682335, 27.100786, 37.422657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317482, 27.262693, 37.448509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409591, 0.893985, 0.181730,
		0.015783, 0.192232, -0.981223,
		-0.912133, 0.404768, 0.064627,
		42.043842, 27.384123, 37.467896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558102, 27.618774, 36.846096>,  <42.682335, 27.100786, 37.422657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558102, 27.618774, 36.846096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324093, 27.705288, 37.158756>,  <42.183689, 27.757196, 37.346352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324093, 27.705288, 37.158756>,  <42.558102, 27.618774, 36.846096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324093, 27.705288, 37.158756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298509, 0.953550, -0.040431,
		-0.754086, 0.209677, -0.622407,
		-0.585019, 0.216283, 0.781649,
		42.148586, 27.770172, 37.393250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337872, 28.313162, 36.688725>,  <42.558102, 27.618774, 36.846096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337872, 28.313162, 36.688725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225697, 28.291254, 37.072048>,  <42.158390, 28.278111, 37.302044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225697, 28.291254, 37.072048>,  <42.337872, 28.313162, 36.688725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225697, 28.291254, 37.072048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206632, 0.971519, 0.115991,
		-0.937367, 0.230545, -0.261135,
		-0.280439, -0.054767, 0.958308,
		42.141563, 28.274824, 37.359539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844383, 28.714489, 36.804607>,  <42.337872, 28.313162, 36.688725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844383, 28.714489, 36.804607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033215, 28.679024, 37.155441>,  <42.146515, 28.657745, 37.365944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033215, 28.679024, 37.155441>,  <41.844383, 28.714489, 36.804607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033215, 28.679024, 37.155441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275667, 0.959881, -0.051342,
		-0.837347, 0.266022, 0.477580,
		0.472078, -0.088662, 0.877087,
		42.174839, 28.652426, 37.418568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666489, 29.340866, 37.172001>,  <41.844383, 28.714489, 36.804607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666489, 29.340866, 37.172001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997349, 29.202871, 37.349449>,  <42.195866, 29.120075, 37.455917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997349, 29.202871, 37.349449>,  <41.666489, 29.340866, 37.172001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997349, 29.202871, 37.349449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324268, 0.937722, 0.124613,
		-0.458985, 0.040779, 0.887508,
		0.827154, -0.344986, 0.443623,
		42.245495, 29.099375, 37.482536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788033, 29.824713, 37.683945>,  <41.666489, 29.340866, 37.172001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788033, 29.824713, 37.683945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145870, 29.647902, 37.657673>,  <42.360573, 29.541815, 37.641911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145870, 29.647902, 37.657673>,  <41.788033, 29.824713, 37.683945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145870, 29.647902, 37.657673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445927, 0.892589, 0.066590,
		0.029187, -0.088857, 0.995617,
		0.894594, -0.442028, -0.065676,
		42.414249, 29.515293, 37.637970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115913, 30.186975, 38.151108>,  <41.788033, 29.824713, 37.683945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115913, 30.186975, 38.151108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419270, 30.017120, 37.953312>,  <42.601284, 29.915207, 37.834633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419270, 30.017120, 37.953312>,  <42.115913, 30.186975, 38.151108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419270, 30.017120, 37.953312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599568, 0.752060, 0.273722,
		0.255654, -0.504070, 0.824957,
		0.758392, -0.424639, -0.494492,
		42.646786, 29.889729, 37.804966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662930, 30.421562, 38.570915>,  <42.115913, 30.186975, 38.151108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662930, 30.421562, 38.570915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864407, 30.277447, 38.256847>,  <42.985291, 30.190977, 38.068409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864407, 30.277447, 38.256847>,  <42.662930, 30.421562, 38.570915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864407, 30.277447, 38.256847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775080, 0.589851, 0.226554,
		0.381507, -0.722681, 0.576355,
		0.503690, -0.360289, -0.785168,
		43.015514, 30.169359, 38.021297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370911, 30.576914, 38.763103>,  <42.662930, 30.421562, 38.570915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370911, 30.576914, 38.763103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411583, 30.500969, 38.372490>,  <43.435986, 30.455402, 38.138123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411583, 30.500969, 38.372490>,  <43.370911, 30.576914, 38.763103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411583, 30.500969, 38.372490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635744, 0.767424, -0.083009,
		0.765174, -0.612384, 0.198735,
		0.101680, -0.189861, -0.976532,
		43.442085, 30.444010, 38.079529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102741, 30.550022, 38.564449>,  <43.370911, 30.576914, 38.763103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102741, 30.550022, 38.564449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899731, 30.628418, 38.228828>,  <43.777924, 30.675455, 38.027458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899731, 30.628418, 38.228828>,  <44.102741, 30.550022, 38.564449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899731, 30.628418, 38.228828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600155, 0.779129, -0.181028,
		0.618249, -0.595437, -0.513053,
		-0.507526, 0.195991, -0.839050,
		43.747475, 30.687216, 37.977112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547710, 30.672472, 38.051254>,  <44.102741, 30.550022, 38.564449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547710, 30.672472, 38.051254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224953, 30.848093, 37.893192>,  <44.031296, 30.953465, 37.798355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224953, 30.848093, 37.893192>,  <44.547710, 30.672472, 38.051254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224953, 30.848093, 37.893192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560811, 0.779489, -0.279084,
		0.185489, -0.446801, -0.875193,
		-0.806898, 0.439051, -0.395158,
		43.982883, 30.979809, 37.774647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729027, 30.830048, 37.419201>,  <44.547710, 30.672472, 38.051254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.729027, 30.830048, 37.419201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424423, 31.071802, 37.512856>,  <44.241661, 31.216854, 37.569046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424423, 31.071802, 37.512856>,  <44.729027, 30.830048, 37.419201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424423, 31.071802, 37.512856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510327, 0.781795, -0.358278,
		-0.399582, -0.153348, -0.903780,
		-0.761512, 0.604385, 0.234133,
		44.195969, 31.253119, 37.583096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686703, 31.244259, 36.882526>,  <44.729027, 30.830048, 37.419201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686703, 31.244259, 36.882526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498066, 31.467041, 37.155994>,  <44.384884, 31.600710, 37.320076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498066, 31.467041, 37.155994>,  <44.686703, 31.244259, 36.882526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498066, 31.467041, 37.155994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330663, 0.830414, -0.448413,
		-0.817476, 0.014598, -0.575777,
		-0.471587, 0.556955, 0.683671,
		44.356590, 31.634127, 37.361095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553677, 31.785633, 36.514942>,  <44.686703, 31.244259, 36.882526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553677, 31.785633, 36.514942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466267, 31.926271, 36.879059>,  <44.413822, 32.010654, 37.097530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466267, 31.926271, 36.879059>,  <44.553677, 31.785633, 36.514942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466267, 31.926271, 36.879059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174484, 0.931880, -0.318049,
		-0.960106, 0.089330, -0.264984,
		-0.218522, 0.351596, 0.910290,
		44.400711, 32.031750, 37.152145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050011, 32.303787, 36.315140>,  <44.553677, 31.785633, 36.514942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050011, 32.303787, 36.315140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209530, 32.352482, 36.678707>,  <44.305241, 32.381699, 36.896847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209530, 32.352482, 36.678707>,  <44.050011, 32.303787, 36.315140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209530, 32.352482, 36.678707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211260, 0.952294, -0.220238,
		-0.892371, 0.279850, 0.354059,
		0.398802, 0.121735, 0.908921,
		44.329170, 32.389004, 36.951382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789921, 32.858902, 36.582230>,  <44.050011, 32.303787, 36.315140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789921, 32.858902, 36.582230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133968, 32.833248, 36.784645>,  <44.340397, 32.817856, 36.906094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133968, 32.833248, 36.784645>,  <43.789921, 32.858902, 36.582230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133968, 32.833248, 36.784645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296479, 0.870138, -0.393651,
		-0.415076, 0.488618, 0.767440,
		0.860123, -0.064134, 0.506038,
		44.392006, 32.814007, 36.936455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959438, 33.512974, 36.992134>,  <43.789921, 32.858902, 36.582230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959438, 33.512974, 36.992134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310181, 33.335293, 36.918587>,  <44.520626, 33.228683, 36.874458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310181, 33.335293, 36.918587>,  <43.959438, 33.512974, 36.992134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310181, 33.335293, 36.918587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300841, 0.805311, -0.510851,
		0.374991, 0.392628, 0.839777,
		0.876856, -0.444203, -0.183866,
		44.573238, 33.202030, 36.863426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349270, 34.043671, 37.164932>,  <43.959438, 33.512974, 36.992134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349270, 34.043671, 37.164932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567562, 33.795288, 36.939865>,  <44.698536, 33.646259, 36.804825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567562, 33.795288, 36.939865>,  <44.349270, 34.043671, 37.164932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567562, 33.795288, 36.939865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481701, 0.781906, -0.395711,
		0.685673, -0.055087, 0.725822,
		0.545726, -0.620958, -0.562667,
		44.731281, 33.609001, 36.771065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125813, 34.203232, 37.320301>,  <44.349270, 34.043671, 37.164932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125813, 34.203232, 37.320301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159664, 33.993366, 36.981464>,  <45.179974, 33.867447, 36.778164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159664, 33.993366, 36.981464>,  <45.125813, 34.203232, 37.320301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159664, 33.993366, 36.981464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694755, 0.640470, -0.327281,
		0.714250, -0.560825, 0.418715,
		0.084627, -0.524665, -0.847092,
		45.185051, 33.835968, 36.727337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798122, 34.327927, 37.157284>,  <45.125813, 34.203232, 37.320301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798122, 34.327927, 37.157284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659088, 34.151310, 36.826412>,  <45.575668, 34.045338, 36.627892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659088, 34.151310, 36.826412>,  <45.798122, 34.327927, 37.157284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659088, 34.151310, 36.826412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618428, 0.555145, -0.556203,
		0.704792, -0.704877, 0.080104,
		-0.347585, -0.441545, -0.827177,
		45.554813, 34.018845, 36.578259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288876, 33.930729, 36.868931>,  <45.798122, 34.327927, 37.157284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288876, 33.930729, 36.868931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028397, 34.042873, 36.586842>,  <45.872108, 34.110161, 36.417587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028397, 34.042873, 36.586842>,  <46.288876, 33.930729, 36.868931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.028397, 34.042873, 36.586842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720439, 0.520487, -0.458324,
		0.238561, -0.806529, -0.540925,
		-0.651195, 0.280366, -0.705223,
		45.833038, 34.126984, 36.375275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636230, 33.797539, 36.282009>,  <46.288876, 33.930729, 36.868931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636230, 33.797539, 36.282009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382782, 34.101540, 36.224144>,  <46.230713, 34.283939, 36.189426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382782, 34.101540, 36.224144>,  <46.636230, 33.797539, 36.282009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.382782, 34.101540, 36.224144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705023, 0.490241, -0.512452,
		-0.318543, -0.426691, -0.846443,
		-0.633620, 0.759999, -0.144664,
		46.192696, 34.329540, 36.180744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.379299, 33.940945, 35.600430>,  <46.636230, 33.797539, 36.282009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.379299, 33.940945, 35.600430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.448364, 34.237438, 35.859894>,  <46.489803, 34.415333, 36.015572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.448364, 34.237438, 35.859894>,  <46.379299, 33.940945, 35.600430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.448364, 34.237438, 35.859894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732452, 0.343691, -0.587700,
		-0.658562, 0.576586, -0.483575,
		0.172659, 0.741232, 0.648663,
		46.500160, 34.459808, 36.054493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570923, 34.620792, 35.314785>,  <46.379299, 33.940945, 35.600430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570923, 34.620792, 35.314785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.695412, 34.724701, 35.680443>,  <46.770107, 34.787045, 35.899837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.695412, 34.724701, 35.680443>,  <46.570923, 34.620792, 35.314785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.695412, 34.724701, 35.680443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794082, 0.457363, -0.400317,
		-0.522084, 0.850494, -0.063934,
		0.311226, 0.259768, 0.914144,
		46.788780, 34.802631, 35.954685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.007683, 35.244076, 35.039600>,  <46.570923, 34.620792, 35.314785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.007683, 35.244076, 35.039600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.094345, 35.126644, 35.412025>,  <47.146343, 35.056183, 35.635479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.094345, 35.126644, 35.412025>,  <47.007683, 35.244076, 35.039600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.094345, 35.126644, 35.412025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901788, 0.425501, -0.075672,
		-0.373951, 0.856014, 0.356933,
		0.216652, -0.293581, 0.931060,
		47.159340, 35.038570, 35.691345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.749348, 35.235157, 35.120373>,  <47.007683, 35.244076, 35.039600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.749348, 35.235157, 35.120373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.687267, 34.996643, 34.805321>,  <47.650017, 34.853535, 34.616291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.687267, 34.996643, 34.805321>,  <47.749348, 35.235157, 35.120373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.687267, 34.996643, 34.805321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284390, 0.736569, -0.613668,
		0.946062, -0.319237, 0.055259,
		-0.155204, -0.596283, -0.787628,
		47.640705, 34.817757, 34.569031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.099159, 33.690548, 48.553120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704350, 33.639778, 48.592472>,  <34.467464, 33.609314, 48.616081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704350, 33.639778, 48.592472>,  <35.099159, 33.690548, 48.553120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704350, 33.639778, 48.592472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111426, 0.100150, -0.988714,
		0.115662, -0.986841, -0.112995,
		-0.987019, -0.126948, 0.098376,
		34.408241, 33.601700, 48.621986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896793, 33.196674, 48.015526>,  <35.099159, 33.690548, 48.553120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896793, 33.196674, 48.015526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.565350, 33.412426, 48.075508>,  <34.366486, 33.541878, 48.111496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.565350, 33.412426, 48.075508>,  <34.896793, 33.196674, 48.015526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565350, 33.412426, 48.075508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108801, 0.107591, -0.988224,
		-0.549157, -0.835164, -0.030466,
		-0.828606, 0.539375, 0.149952,
		34.316769, 33.574238, 48.120495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306946, 32.887833, 47.695549>,  <34.896793, 33.196674, 48.015526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306946, 32.887833, 47.695549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.225281, 33.277168, 47.737381>,  <34.176281, 33.510769, 47.762478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.225281, 33.277168, 47.737381>,  <34.306946, 32.887833, 47.695549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225281, 33.277168, 47.737381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259949, 0.049089, -0.964374,
		-0.943793, -0.224073, 0.242995,
		-0.204162, 0.973335, 0.104577,
		34.164032, 33.569168, 47.768753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759438, 32.951881, 47.314999>,  <34.306946, 32.887833, 47.695549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759438, 32.951881, 47.314999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.814087, 33.341137, 47.389126>,  <33.846878, 33.574688, 47.433601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.814087, 33.341137, 47.389126>,  <33.759438, 32.951881, 47.314999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814087, 33.341137, 47.389126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339086, 0.221715, -0.914255,
		-0.930782, 0.062067, 0.360268,
		0.136622, 0.973134, 0.185322,
		33.855072, 33.633076, 47.444721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115238, 33.271469, 47.137112>,  <33.759438, 32.951881, 47.314999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115238, 33.271469, 47.137112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.407707, 33.542179, 47.102795>,  <33.583191, 33.704605, 47.082207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.407707, 33.542179, 47.102795>,  <33.115238, 33.271469, 47.137112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407707, 33.542179, 47.102795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336414, 0.248306, -0.908388,
		-0.593470, 0.693053, 0.409232,
		0.731176, 0.676773, -0.085791,
		33.627060, 33.745213, 47.077057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748932, 33.877071, 46.819927>,  <33.115238, 33.271469, 47.137112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748932, 33.877071, 46.819927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.138123, 33.938374, 46.750832>,  <33.371635, 33.975155, 46.709373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.138123, 33.938374, 46.750832>,  <32.748932, 33.877071, 46.819927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138123, 33.938374, 46.750832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210715, 0.283216, -0.935622,
		-0.094464, 0.946732, 0.307854,
		0.972973, 0.153252, -0.172737,
		33.430016, 33.984348, 46.699009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747246, 34.532871, 46.394760>,  <32.748932, 33.877071, 46.819927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747246, 34.532871, 46.394760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.099480, 34.350376, 46.343517>,  <33.310822, 34.240879, 46.312771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.099480, 34.350376, 46.343517>,  <32.747246, 34.532871, 46.394760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099480, 34.350376, 46.343517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031482, 0.213426, -0.976452,
		0.472833, 0.863886, 0.173577,
		0.880589, -0.456234, -0.128112,
		33.363655, 34.213505, 46.305084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176041, 34.980274, 46.038082>,  <32.747246, 34.532871, 46.394760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176041, 34.980274, 46.038082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.323872, 34.614677, 45.971107>,  <33.412571, 34.395321, 45.930923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.323872, 34.614677, 45.971107>,  <33.176041, 34.980274, 46.038082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323872, 34.614677, 45.971107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046745, 0.198255, -0.979035,
		0.928024, 0.354000, 0.115995,
		0.369575, -0.913991, -0.167438,
		33.434746, 34.340481, 45.920876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517200, 35.137001, 45.434319>,  <33.176041, 34.980274, 46.038082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517200, 35.137001, 45.434319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.513378, 34.737392, 45.417068>,  <33.511086, 34.497627, 45.406719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.513378, 34.737392, 45.417068>,  <33.517200, 35.137001, 45.434319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513378, 34.737392, 45.417068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029063, 0.043388, -0.998635,
		0.999532, -0.008290, -0.029450,
		-0.009557, -0.999024, -0.043127,
		33.510509, 34.437687, 45.404129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213123, 34.872189, 45.105381>,  <33.517200, 35.137001, 45.434319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213123, 34.872189, 45.105381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931736, 34.595486, 45.040138>,  <33.762905, 34.429462, 45.000992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931736, 34.595486, 45.040138>,  <34.213123, 34.872189, 45.105381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931736, 34.595486, 45.040138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298316, -0.079093, -0.951184,
		0.645090, -0.717783, 0.262003,
		-0.703467, -0.691760, -0.163104,
		33.720695, 34.387959, 44.991207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518105, 34.293152, 44.672714>,  <34.213123, 34.872189, 45.105381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518105, 34.293152, 44.672714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.120991, 34.261497, 44.636654>,  <33.882725, 34.242504, 44.615017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.120991, 34.261497, 44.636654>,  <34.518105, 34.293152, 44.672714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120991, 34.261497, 44.636654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095961, -0.073032, -0.992702,
		0.071973, -0.994185, 0.080099,
		-0.992780, -0.079134, -0.090146,
		33.823158, 34.237759, 44.609612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399666, 33.708618, 44.157726>,  <34.518105, 34.293152, 44.672714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399666, 33.708618, 44.157726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.055901, 33.912762, 44.145374>,  <33.849644, 34.035248, 44.137962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.055901, 33.912762, 44.145374>,  <34.399666, 33.708618, 44.157726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055901, 33.912762, 44.145374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033955, -0.117240, -0.992523,
		-0.510160, -0.851934, 0.118087,
		-0.859409, 0.510355, -0.030883,
		33.798077, 34.065868, 44.136108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064125, 33.457077, 43.571873>,  <34.399666, 33.708618, 44.157726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064125, 33.457077, 43.571873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.859394, 33.792473, 43.646671>,  <33.736557, 33.993710, 43.691551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.859394, 33.792473, 43.646671>,  <34.064125, 33.457077, 43.571873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859394, 33.792473, 43.646671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251674, 0.061775, -0.965839,
		-0.821399, -0.541402, 0.179408,
		-0.511824, 0.838491, 0.186998,
		33.705849, 34.044022, 43.702770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602535, 33.429989, 43.071014>,  <34.064125, 33.457077, 43.571873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602535, 33.429989, 43.071014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.591290, 33.810081, 43.195122>,  <33.584541, 34.038136, 43.269588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.591290, 33.810081, 43.195122>,  <33.602535, 33.429989, 43.071014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591290, 33.810081, 43.195122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069226, 0.307799, -0.948929,
		-0.997205, -0.048159, 0.057127,
		-0.028116, 0.950232, 0.310273,
		33.582855, 34.095150, 43.288204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026512, 33.783035, 42.778950>,  <33.602535, 33.429989, 43.071014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026512, 33.783035, 42.778950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.313183, 34.050327, 42.858799>,  <33.485184, 34.210701, 42.906708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.313183, 34.050327, 42.858799>,  <33.026512, 33.783035, 42.778950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313183, 34.050327, 42.858799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091253, 0.373621, -0.923082,
		-0.691410, 0.643335, 0.328743,
		0.716677, 0.668226, 0.199619,
		33.528187, 34.250793, 42.918686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815121, 34.476360, 42.511101>,  <33.026512, 33.783035, 42.778950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815121, 34.476360, 42.511101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.214149, 34.491718, 42.534336>,  <33.453568, 34.500935, 42.548279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.214149, 34.491718, 42.534336>,  <32.815121, 34.476360, 42.511101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214149, 34.491718, 42.534336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030259, 0.512287, -0.858281,
		-0.062714, 0.857956, 0.509881,
		0.997573, 0.038397, 0.058089,
		33.513420, 34.503239, 42.551762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054718, 35.152950, 42.281292>,  <32.815121, 34.476360, 42.511101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054718, 35.152950, 42.281292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.399826, 34.951977, 42.258743>,  <33.606892, 34.831390, 42.245213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.399826, 34.951977, 42.258743>,  <33.054718, 35.152950, 42.281292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399826, 34.951977, 42.258743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284131, 0.574061, -0.767934,
		0.418199, 0.646537, 0.638043,
		0.862774, -0.502438, -0.056371,
		33.658657, 34.801247, 42.241833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508053, 35.679127, 42.215984>,  <33.054718, 35.152950, 42.281292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508053, 35.679127, 42.215984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.723091, 35.369301, 42.082699>,  <33.852116, 35.183403, 42.002728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.723091, 35.369301, 42.082699>,  <33.508053, 35.679127, 42.215984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723091, 35.369301, 42.082699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242188, 0.520366, -0.818880,
		0.807670, 0.359530, 0.467340,
		0.537599, -0.774569, -0.333210,
		33.884373, 35.136929, 41.982735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046753, 35.949936, 41.853657>,  <33.508053, 35.679127, 42.215984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046753, 35.949936, 41.853657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.085285, 35.576019, 41.716904>,  <34.108406, 35.351669, 41.634853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.085285, 35.576019, 41.716904>,  <34.046753, 35.949936, 41.853657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085285, 35.576019, 41.716904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232789, 0.355108, -0.905377,
		0.967745, 0.007630, 0.251817,
		0.096330, -0.934794, -0.341878,
		34.114185, 35.295582, 41.614342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765717, 35.905746, 41.578606>,  <34.046753, 35.949936, 41.853657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765717, 35.905746, 41.578606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525608, 35.638680, 41.402470>,  <34.381542, 35.478439, 41.296787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525608, 35.638680, 41.402470>,  <34.765717, 35.905746, 41.578606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525608, 35.638680, 41.402470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242473, 0.372736, -0.895698,
		0.762157, -0.644431, -0.061851,
		-0.600270, -0.667665, -0.440340,
		34.345528, 35.438381, 41.270367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098625, 35.629173, 40.996689>,  <34.765717, 35.905746, 41.578606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098625, 35.629173, 40.996689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.723270, 35.517673, 40.914970>,  <34.498058, 35.450775, 40.865940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.723270, 35.517673, 40.914970>,  <35.098625, 35.629173, 40.996689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723270, 35.517673, 40.914970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117084, 0.299760, -0.946803,
		0.325166, -0.912381, -0.248651,
		-0.938381, -0.278755, -0.204297,
		34.441757, 35.434048, 40.853683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161419, 35.264221, 40.407093>,  <35.098625, 35.629173, 40.996689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161419, 35.264221, 40.407093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.797363, 35.424438, 40.449448>,  <34.578930, 35.520569, 40.474861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.797363, 35.424438, 40.449448>,  <35.161419, 35.264221, 40.407093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797363, 35.424438, 40.449448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094524, 0.449580, -0.888225,
		-0.403376, -0.798400, -0.447041,
		-0.910139, 0.400544, 0.105882,
		34.524323, 35.544601, 40.481213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546154, 34.991001, 39.919777>,  <35.161419, 35.264221, 40.407093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546154, 34.991001, 39.919777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941658, 35.049801, 39.930706>,  <36.178959, 35.085079, 39.937263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941658, 35.049801, 39.930706>,  <35.546154, 34.991001, 39.919777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941658, 35.049801, 39.930706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050640, -0.501183, 0.863858,
		0.140676, -0.852765, -0.502993,
		0.988760, 0.146996, 0.027320,
		36.238285, 35.093899, 39.938904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831039, 34.349125, 40.138008>,  <35.546154, 34.991001, 39.919777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831039, 34.349125, 40.138008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107922, 34.630733, 40.201519>,  <36.274052, 34.799698, 40.239628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107922, 34.630733, 40.201519>,  <35.831039, 34.349125, 40.138008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107922, 34.630733, 40.201519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073927, -0.288020, 0.954766,
		0.717905, -0.649155, -0.251415,
		0.692204, 0.704018, 0.158781,
		36.315582, 34.841938, 40.249153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434227, 34.022514, 40.663445>,  <35.831039, 34.349125, 40.138008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434227, 34.022514, 40.663445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479885, 34.419640, 40.677834>,  <36.507278, 34.657913, 40.686466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479885, 34.419640, 40.677834>,  <36.434227, 34.022514, 40.663445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479885, 34.419640, 40.677834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206938, -0.059179, 0.976563,
		0.971673, -0.104023, -0.212206,
		0.114143, 0.992813, 0.035976,
		36.514130, 34.717484, 40.688625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011345, 34.150433, 41.045330>,  <36.434227, 34.022514, 40.663445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011345, 34.150433, 41.045330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819538, 34.497246, 41.099457>,  <36.704453, 34.705334, 41.131935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819538, 34.497246, 41.099457>,  <37.011345, 34.150433, 41.045330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819538, 34.497246, 41.099457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158839, -0.065900, 0.985103,
		0.863037, 0.493869, -0.106119,
		-0.479518, 0.867036, 0.135319,
		36.675682, 34.757355, 41.140053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456665, 34.558388, 41.453415>,  <37.011345, 34.150433, 41.045330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456665, 34.558388, 41.453415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093288, 34.723225, 41.481472>,  <36.875263, 34.822128, 41.498306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093288, 34.723225, 41.481472>,  <37.456665, 34.558388, 41.453415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093288, 34.723225, 41.481472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107141, 0.067355, 0.991960,
		0.404058, 0.908648, -0.105340,
		-0.908437, 0.412095, 0.070139,
		36.820759, 34.846851, 41.502514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523117, 34.982853, 41.978989>,  <37.456665, 34.558388, 41.453415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523117, 34.982853, 41.978989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124725, 34.966515, 41.947105>,  <36.885689, 34.956711, 41.927975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124725, 34.966515, 41.947105>,  <37.523117, 34.982853, 41.978989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124725, 34.966515, 41.947105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087021, 0.230743, 0.969116,
		-0.021190, 0.972157, -0.233369,
		-0.995981, -0.040844, -0.079708,
		36.825932, 34.954262, 41.923191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281445, 35.554604, 42.509159>,  <37.523117, 34.982853, 41.978989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281445, 35.554604, 42.509159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.976040, 35.303368, 42.449097>,  <36.792797, 35.152626, 42.413059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.976040, 35.303368, 42.449097>,  <37.281445, 35.554604, 42.509159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976040, 35.303368, 42.449097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198520, 0.007019, 0.980072,
		-0.614519, 0.778109, -0.130047,
		-0.763516, -0.628090, -0.150157,
		36.746986, 35.114941, 42.404049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707523, 35.810871, 42.983456>,  <37.281445, 35.554604, 42.509159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707523, 35.810871, 42.983456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668522, 35.418495, 42.916218>,  <36.645123, 35.183071, 42.875874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668522, 35.418495, 42.916218>,  <36.707523, 35.810871, 42.983456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668522, 35.418495, 42.916218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084076, -0.160181, 0.983501,
		-0.991678, 0.110026, -0.066856,
		-0.097502, -0.980937, -0.168098,
		36.639271, 35.124214, 42.865788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242844, 35.640957, 43.464401>,  <36.707523, 35.810871, 42.983456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242844, 35.640957, 43.464401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360233, 35.275684, 43.351276>,  <36.430668, 35.056522, 43.283401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360233, 35.275684, 43.351276>,  <36.242844, 35.640957, 43.464401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360233, 35.275684, 43.351276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115440, -0.327524, 0.937764,
		-0.948972, -0.242559, -0.201536,
		0.293471, -0.913177, -0.282810,
		36.448277, 35.001732, 43.266434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752064, 35.109058, 43.651749>,  <36.242844, 35.640957, 43.464401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752064, 35.109058, 43.651749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100002, 34.912228, 43.637749>,  <36.308765, 34.794128, 43.629349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100002, 34.912228, 43.637749>,  <35.752064, 35.109058, 43.651749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100002, 34.912228, 43.637749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188986, -0.397918, 0.897745,
		-0.455693, -0.774283, -0.439123,
		0.869843, -0.492084, -0.035000,
		36.360954, 34.764603, 43.627251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602947, 34.492275, 43.999790>,  <35.752064, 35.109058, 43.651749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602947, 34.492275, 43.999790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002449, 34.511414, 43.994122>,  <36.242149, 34.522896, 43.990719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002449, 34.511414, 43.994122>,  <35.602947, 34.492275, 43.999790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002449, 34.511414, 43.994122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035905, -0.491763, 0.869989,
		0.034658, -0.869414, -0.492868,
		0.998754, 0.047849, -0.014173,
		36.302074, 34.525768, 43.989868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948490, 33.744049, 44.231789>,  <35.602947, 34.492275, 43.999790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948490, 33.744049, 44.231789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.219696, 34.032829, 44.287060>,  <36.382420, 34.206097, 44.320221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.219696, 34.032829, 44.287060>,  <35.948490, 33.744049, 44.231789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219696, 34.032829, 44.287060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229346, -0.386377, 0.893372,
		0.698356, -0.574025, -0.427543,
		0.678011, 0.721947, 0.138178,
		36.423100, 34.249413, 44.328514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467510, 33.423191, 44.548290>,  <35.948490, 33.744049, 44.231789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467510, 33.423191, 44.548290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530674, 33.803703, 44.654221>,  <36.568573, 34.032009, 44.717781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530674, 33.803703, 44.654221>,  <36.467510, 33.423191, 44.548290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530674, 33.803703, 44.654221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231313, -0.296367, 0.926639,
		0.959979, -0.085065, -0.266841,
		0.157908, 0.951278, 0.264830,
		36.578045, 34.089088, 44.733669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060402, 33.399872, 44.862389>,  <36.467510, 33.423191, 44.548290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060402, 33.399872, 44.862389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899414, 33.743069, 44.990055>,  <36.802822, 33.948986, 45.066654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899414, 33.743069, 44.990055>,  <37.060402, 33.399872, 44.862389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899414, 33.743069, 44.990055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420532, -0.136401, 0.896966,
		0.813126, 0.495219, -0.305917,
		-0.402467, 0.857994, 0.319166,
		36.778675, 34.000465, 45.085804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487316, 33.558167, 45.421326>,  <37.060402, 33.399872, 44.862389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487316, 33.558167, 45.421326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219833, 33.845634, 45.497578>,  <37.059345, 34.018116, 45.543331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219833, 33.845634, 45.497578>,  <37.487316, 33.558167, 45.421326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219833, 33.845634, 45.497578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370906, 0.100222, 0.923246,
		0.644406, 0.688089, -0.333580,
		-0.668708, 0.718672, 0.190633,
		37.019222, 34.061237, 45.554768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792896, 34.107258, 45.872051>,  <37.487316, 33.558167, 45.421326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792896, 34.107258, 45.872051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394844, 34.120056, 45.909340>,  <37.156013, 34.127735, 45.931713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394844, 34.120056, 45.909340>,  <37.792896, 34.107258, 45.872051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394844, 34.120056, 45.909340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097227, 0.163907, 0.981673,
		0.016131, 0.985957, -0.166220,
		-0.995131, 0.031997, 0.093218,
		37.096306, 34.129654, 45.937305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541439, 34.795059, 46.327393>,  <37.792896, 34.107258, 45.872051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541439, 34.795059, 46.327393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279911, 34.493206, 46.349499>,  <37.122993, 34.312096, 46.362762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279911, 34.493206, 46.349499>,  <37.541439, 34.795059, 46.327393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279911, 34.493206, 46.349499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047756, 0.031741, 0.998355,
		-0.755141, 0.655384, 0.015285,
		-0.653821, -0.754628, 0.055268,
		37.083763, 34.266819, 46.366077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209007, 34.942749, 46.903328>,  <37.541439, 34.795059, 46.327393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209007, 34.942749, 46.903328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052059, 34.576954, 46.863808>,  <36.957890, 34.357475, 46.840096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052059, 34.576954, 46.863808>,  <37.209007, 34.942749, 46.903328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052059, 34.576954, 46.863808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141571, -0.166180, 0.975880,
		-0.908848, 0.368916, 0.194669,
		-0.392368, -0.914486, -0.098805,
		36.934349, 34.302608, 46.834167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.129456, 34.760658, 47.441658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371861, 34.456657, 47.347725>,  <36.517303, 34.274258, 47.291367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371861, 34.456657, 47.347725>,  <36.129456, 34.760658, 47.441658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371861, 34.456657, 47.347725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045590, -0.327919, 0.943605,
		-0.794145, -0.561133, -0.233373,
		0.606016, -0.759999, -0.234834,
		36.553665, 34.228657, 47.277275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759262, 34.250851, 47.567924>,  <36.129456, 34.760658, 47.441658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759262, 34.250851, 47.567924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.133274, 34.109844, 47.583179>,  <36.357681, 34.025238, 47.592335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.133274, 34.109844, 47.583179>,  <35.759262, 34.250851, 47.567924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133274, 34.109844, 47.583179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195512, -0.422840, 0.884863,
		-0.295804, -0.834827, -0.464288,
		0.935027, -0.352519, 0.038141,
		36.413780, 34.004089, 47.594620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701603, 33.551872, 47.700287>,  <35.759262, 34.250851, 47.567924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701603, 33.551872, 47.700287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.071484, 33.652050, 47.814972>,  <36.293411, 33.712154, 47.883781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.071484, 33.652050, 47.814972>,  <35.701603, 33.551872, 47.700287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071484, 33.652050, 47.814972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194291, -0.337198, 0.921167,
		0.327377, -0.907511, -0.263150,
		0.924703, 0.250441, 0.286712,
		36.348896, 33.727180, 47.900986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937790, 33.030762, 48.139820>,  <35.701603, 33.551872, 47.700287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937790, 33.030762, 48.139820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.179649, 33.340351, 48.215054>,  <36.324764, 33.526104, 48.260193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.179649, 33.340351, 48.215054>,  <35.937790, 33.030762, 48.139820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179649, 33.340351, 48.215054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033858, -0.210952, 0.976910,
		0.795776, -0.597051, -0.101346,
		0.604644, 0.773970, 0.188086,
		36.361042, 33.572540, 48.271481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485188, 32.653721, 48.607849>,  <35.937790, 33.030762, 48.139820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485188, 32.653721, 48.607849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551498, 33.043789, 48.666588>,  <36.591286, 33.277828, 48.701832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551498, 33.043789, 48.666588>,  <36.485188, 32.653721, 48.607849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551498, 33.043789, 48.666588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270295, -0.188132, 0.944218,
		0.948398, -0.116835, -0.294771,
		0.165774, 0.975170, 0.146844,
		36.601231, 33.336338, 48.710640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195244, 32.740372, 48.848576>,  <36.485188, 32.653721, 48.607849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195244, 32.740372, 48.848576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.989098, 33.062199, 48.966610>,  <36.865410, 33.255295, 49.037430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.989098, 33.062199, 48.966610>,  <37.195244, 32.740372, 48.848576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989098, 33.062199, 48.966610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179730, -0.235202, 0.955184,
		0.837912, 0.545304, -0.023390,
		-0.515364, 0.804564, 0.295086,
		36.834488, 33.303570, 49.055134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501987, 32.982574, 49.411873>,  <37.195244, 32.740372, 48.848576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501987, 32.982574, 49.411873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.139999, 33.148952, 49.447716>,  <36.922806, 33.248779, 49.469223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.139999, 33.148952, 49.447716>,  <37.501987, 32.982574, 49.411873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139999, 33.148952, 49.447716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103110, 0.010062, 0.994619,
		0.412801, 0.909336, -0.051994,
		-0.904966, 0.415941, 0.089608,
		36.868511, 33.273735, 49.474598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584671, 33.525196, 49.998440>,  <37.501987, 32.982574, 49.411873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584671, 33.525196, 49.998440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.195324, 33.448338, 49.948418>,  <36.961716, 33.402222, 49.918404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.195324, 33.448338, 49.948418>,  <37.584671, 33.525196, 49.998440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195324, 33.448338, 49.948418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143999, 0.087964, 0.985660,
		-0.178392, 0.977416, -0.113291,
		-0.973366, -0.192148, -0.125055,
		36.903313, 33.390694, 49.910900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190136, 34.179482, 50.256725>,  <37.584671, 33.525196, 49.998440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190136, 34.179482, 50.256725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.965443, 33.851070, 50.297451>,  <36.830627, 33.654022, 50.321884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.965443, 33.851070, 50.297451>,  <37.190136, 34.179482, 50.256725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965443, 33.851070, 50.297451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124656, 0.205652, 0.970653,
		-0.817874, 0.532556, -0.217867,
		-0.561732, -0.821030, 0.101811,
		36.796925, 33.604763, 50.327995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749695, 34.369106, 50.811192>,  <37.190136, 34.179482, 50.256725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749695, 34.369106, 50.811192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679859, 33.978420, 50.761314>,  <36.637959, 33.744007, 50.731388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679859, 33.978420, 50.761314>,  <36.749695, 34.369106, 50.811192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679859, 33.978420, 50.761314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126060, -0.103420, 0.986617,
		-0.976538, 0.187974, -0.105068,
		-0.174592, -0.976714, -0.124690,
		36.627480, 33.685406, 50.723907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144817, 34.195061, 51.025135>,  <36.749695, 34.369106, 50.811192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144817, 34.195061, 51.025135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340847, 33.849434, 51.071136>,  <36.458466, 33.642059, 51.098740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340847, 33.849434, 51.071136>,  <36.144817, 34.195061, 51.025135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340847, 33.849434, 51.071136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403371, -0.107839, 0.908660,
		-0.772737, -0.491698, -0.401387,
		0.490072, -0.864063, 0.115006,
		36.487869, 33.590214, 51.105637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703056, 33.954163, 51.538189>,  <36.144817, 34.195061, 51.025135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703056, 33.954163, 51.538189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017906, 33.707455, 51.535992>,  <36.206818, 33.559429, 51.534672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017906, 33.707455, 51.535992>,  <35.703056, 33.954163, 51.538189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017906, 33.707455, 51.535992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267905, -0.349900, 0.897662,
		-0.555570, -0.705103, -0.440650,
		0.787127, -0.616766, -0.005494,
		36.254044, 33.522427, 51.534344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464214, 33.252094, 51.742798>,  <35.703056, 33.954163, 51.538189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464214, 33.252094, 51.742798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.856937, 33.226299, 51.814228>,  <36.092571, 33.210823, 51.857086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.856937, 33.226299, 51.814228>,  <35.464214, 33.252094, 51.742798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856937, 33.226299, 51.814228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189212, -0.409963, 0.892261,
		0.015671, -0.909820, -0.414708,
		0.981811, -0.064485, 0.178573,
		36.151482, 33.206955, 51.867802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514408, 32.649055, 52.196632>,  <35.464214, 33.252094, 51.742798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514408, 32.649055, 52.196632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871811, 32.827732, 52.215057>,  <36.086250, 32.934937, 52.226112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871811, 32.827732, 52.215057>,  <35.514408, 32.649055, 52.196632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871811, 32.827732, 52.215057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144942, -0.383952, 0.911906,
		0.425022, -0.808115, -0.407807,
		0.893503, 0.446688, 0.046058,
		36.139862, 32.961739, 52.228874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989304, 32.120831, 52.432415>,  <35.514408, 32.649055, 52.196632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989304, 32.120831, 52.432415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152607, 32.474167, 52.524529>,  <36.250591, 32.686169, 52.579796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152607, 32.474167, 52.524529>,  <35.989304, 32.120831, 52.432415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152607, 32.474167, 52.524529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307391, -0.370565, 0.876466,
		0.859554, -0.287038, -0.422819,
		0.408261, 0.883340, 0.230288,
		36.275085, 32.739170, 52.593616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555729, 31.882685, 52.672054>,  <35.989304, 32.120831, 52.432415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555729, 31.882685, 52.672054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.507092, 32.261608, 52.790592>,  <36.477909, 32.488964, 52.861713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.507092, 32.261608, 52.790592>,  <36.555729, 31.882685, 52.672054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507092, 32.261608, 52.790592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445698, -0.214660, 0.869065,
		0.886887, 0.237752, -0.396113,
		-0.121592, 0.947309, 0.296345,
		36.470615, 32.545799, 52.879498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206379, 32.166710, 53.092476>,  <36.555729, 31.882685, 52.672054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206379, 32.166710, 53.092476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882729, 32.376472, 53.198544>,  <36.688538, 32.502331, 53.262184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882729, 32.376472, 53.198544>,  <37.206379, 32.166710, 53.092476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882729, 32.376472, 53.198544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264897, -0.077297, 0.961173,
		0.524539, 0.847955, -0.076369,
		-0.809128, 0.524403, 0.265166,
		36.639992, 32.533794, 53.278095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482483, 32.572109, 53.607258>,  <37.206379, 32.166710, 53.092476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482483, 32.572109, 53.607258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090569, 32.589767, 53.685295>,  <36.855419, 32.600365, 53.732117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090569, 32.589767, 53.685295>,  <37.482483, 32.572109, 53.607258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090569, 32.589767, 53.685295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177870, -0.253900, 0.950735,
		0.091507, 0.966222, 0.240916,
		-0.979790, 0.044147, 0.195096,
		36.796631, 32.603012, 53.743824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381580, 32.948902, 54.121025>,  <37.482483, 32.572109, 53.607258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381580, 32.948902, 54.121025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.046925, 32.731094, 54.144783>,  <36.846130, 32.600410, 54.159039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.046925, 32.731094, 54.144783>,  <37.381580, 32.948902, 54.121025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046925, 32.731094, 54.144783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167837, -0.151619, 0.974086,
		-0.521407, 0.824928, 0.218241,
		-0.836639, -0.544524, 0.059398,
		36.795933, 32.567738, 54.162601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088612, 33.120533, 54.715656>,  <37.381580, 32.948902, 54.121025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088612, 33.120533, 54.715656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.883694, 32.781281, 54.661652>,  <36.760742, 32.577728, 54.629250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.883694, 32.781281, 54.661652>,  <37.088612, 33.120533, 54.715656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883694, 32.781281, 54.661652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231921, -0.287991, 0.929125,
		-0.826904, 0.444670, 0.344235,
		-0.512291, -0.848133, -0.135013,
		36.730007, 32.526840, 54.621147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793179, 32.951389, 55.390457>,  <37.088612, 33.120533, 54.715656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793179, 32.951389, 55.390457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798000, 32.608200, 55.185032>,  <36.800896, 32.402287, 55.061779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798000, 32.608200, 55.185032>,  <36.793179, 32.951389, 55.390457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798000, 32.608200, 55.185032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170017, -0.504359, 0.846592,
		-0.985367, -0.097521, 0.139789,
		0.012057, -0.857970, -0.513559,
		36.801617, 32.350807, 55.030964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312214, 32.512302, 55.719578>,  <36.793179, 32.951389, 55.390457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312214, 32.512302, 55.719578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605709, 32.325409, 55.522270>,  <36.781807, 32.213272, 55.403885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605709, 32.325409, 55.522270>,  <36.312214, 32.512302, 55.719578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605709, 32.325409, 55.522270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220702, -0.522721, 0.823440,
		-0.642584, -0.713057, -0.280422,
		0.733741, -0.467240, -0.493265,
		36.825832, 32.185238, 55.374290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065239, 31.855099, 55.944839>,  <36.312214, 32.512302, 55.719578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065239, 31.855099, 55.944839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448769, 31.904585, 55.842587>,  <36.678886, 31.934277, 55.781235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448769, 31.904585, 55.842587>,  <36.065239, 31.855099, 55.944839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448769, 31.904585, 55.842587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283631, -0.462802, 0.839862,
		-0.014406, -0.877787, -0.478835,
		0.958825, 0.123713, -0.255635,
		36.736416, 31.941698, 55.765896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391323, 32.127132, 55.959198>,  <36.065239, 31.855099, 55.944839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391323, 32.127132, 55.959198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050503, 31.957277, 56.081635>,  <34.846008, 31.855366, 56.155098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050503, 31.957277, 56.081635>,  <35.391323, 32.127132, 55.959198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050503, 31.957277, 56.081635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204587, -0.268090, -0.941420,
		0.481820, -0.864762, 0.141552,
		-0.852053, -0.424635, 0.306090,
		34.794888, 31.829887, 56.173462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398300, 31.380203, 55.847404>,  <35.391323, 32.127132, 55.959198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398300, 31.380203, 55.847404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017632, 31.502069, 55.862900>,  <34.789230, 31.575190, 55.872196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017632, 31.502069, 55.862900>,  <35.398300, 31.380203, 55.847404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017632, 31.502069, 55.862900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154702, -0.366591, -0.917431,
		-0.265304, -0.879086, 0.396006,
		-0.951673, 0.304661, 0.038738,
		34.732128, 31.593468, 55.874519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093544, 30.859850, 55.497032>,  <35.398300, 31.380203, 55.847404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093544, 30.859850, 55.497032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801800, 31.133450, 55.502319>,  <34.626751, 31.297609, 55.505493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801800, 31.133450, 55.502319>,  <35.093544, 30.859850, 55.497032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801800, 31.133450, 55.502319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329519, -0.334311, -0.882980,
		-0.599538, -0.648369, 0.469225,
		-0.729364, 0.683999, 0.013217,
		34.582989, 31.338650, 55.506283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554447, 30.454699, 55.209175>,  <35.093544, 30.859850, 55.497032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554447, 30.454699, 55.209175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.462154, 30.842749, 55.179184>,  <34.406776, 31.075579, 55.161190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.462154, 30.842749, 55.179184>,  <34.554447, 30.454699, 55.209175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462154, 30.842749, 55.179184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358887, -0.156474, -0.920172,
		-0.904412, -0.185409, 0.384269,
		-0.230736, 0.970123, -0.074976,
		34.392933, 31.133785, 55.156693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007992, 30.448952, 54.758327>,  <34.554447, 30.454699, 55.209175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007992, 30.448952, 54.758327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092171, 30.839888, 54.767406>,  <34.142677, 31.074450, 54.772854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092171, 30.839888, 54.767406>,  <34.007992, 30.448952, 54.758327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092171, 30.839888, 54.767406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384472, 0.104087, -0.917250,
		-0.898828, 0.184311, 0.397665,
		0.210451, 0.977341, 0.022694,
		34.155308, 31.133089, 54.774216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438374, 30.688498, 54.528137>,  <34.007992, 30.448952, 54.758327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438374, 30.688498, 54.528137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709190, 30.976292, 54.466236>,  <33.871681, 31.148968, 54.429096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709190, 30.976292, 54.466236>,  <33.438374, 30.688498, 54.528137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709190, 30.976292, 54.466236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234882, 0.011976, -0.971950,
		-0.697453, 0.694402, 0.177103,
		0.677045, 0.719487, -0.154750,
		33.912304, 31.192139, 54.419811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123188, 31.215288, 54.118801>,  <33.438374, 30.688498, 54.528137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123188, 31.215288, 54.118801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.519939, 31.245932, 54.078190>,  <33.757992, 31.264318, 54.053822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.519939, 31.245932, 54.078190>,  <33.123188, 31.215288, 54.118801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519939, 31.245932, 54.078190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108935, 0.099610, -0.989046,
		-0.065655, 0.992073, 0.107146,
		0.991878, 0.076608, -0.101531,
		33.817501, 31.268913, 54.047729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291344, 31.756865, 53.653168>,  <33.123188, 31.215288, 54.118801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291344, 31.756865, 53.653168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.619640, 31.528343, 53.653503>,  <33.816616, 31.391232, 53.653706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.619640, 31.528343, 53.653503>,  <33.291344, 31.756865, 53.653168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619640, 31.528343, 53.653503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161338, 0.230379, -0.959633,
		0.548047, 0.787744, 0.281254,
		0.820740, -0.571301, 0.000835,
		33.865864, 31.356953, 53.653755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791191, 32.162853, 53.327049>,  <33.291344, 31.756865, 53.653168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791191, 32.162853, 53.327049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967564, 31.804077, 53.313923>,  <34.073387, 31.588812, 53.306049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967564, 31.804077, 53.313923>,  <33.791191, 32.162853, 53.327049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967564, 31.804077, 53.313923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367631, 0.213835, -0.905054,
		0.818798, 0.387000, 0.424030,
		0.440928, -0.896942, -0.032814,
		34.099842, 31.534994, 53.304077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486233, 32.309765, 53.234772>,  <33.791191, 32.162853, 53.327049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486233, 32.309765, 53.234772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.410728, 31.945574, 53.087585>,  <34.365425, 31.727058, 52.999275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.410728, 31.945574, 53.087585>,  <34.486233, 32.309765, 53.234772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410728, 31.945574, 53.087585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254036, 0.316672, -0.913884,
		0.948597, -0.265980, 0.171520,
		-0.188759, -0.910480, -0.367962,
		34.354099, 31.672430, 52.977196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012623, 32.247662, 52.702282>,  <34.486233, 32.309765, 53.234772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012623, 32.247662, 52.702282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.712582, 31.997427, 52.616501>,  <34.532558, 31.847286, 52.565033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.712582, 31.997427, 52.616501>,  <35.012623, 32.247662, 52.702282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712582, 31.997427, 52.616501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067281, 0.250408, -0.965800,
		0.657892, -0.738876, -0.145741,
		-0.750101, -0.625586, -0.214454,
		34.487553, 31.809752, 52.552166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094810, 32.105209, 52.008831>,  <35.012623, 32.247662, 52.702282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094810, 32.105209, 52.008831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.726398, 31.955629, 52.052410>,  <34.505352, 31.865881, 52.078560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.726398, 31.955629, 52.052410>,  <35.094810, 32.105209, 52.008831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726398, 31.955629, 52.052410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144386, 0.068001, -0.987182,
		0.361751, -0.924952, -0.116625,
		-0.921027, -0.373953, 0.108951,
		34.450092, 31.843443, 52.085094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933937, 31.630177, 51.411537>,  <35.094810, 32.105209, 52.008831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933937, 31.630177, 51.411537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.590263, 31.766420, 51.564270>,  <34.384060, 31.848166, 51.655910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.590263, 31.766420, 51.564270>,  <34.933937, 31.630177, 51.411537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590263, 31.766420, 51.564270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211691, 0.442756, -0.871294,
		-0.465828, -0.829429, -0.308304,
		-0.859181, 0.340608, 0.381831,
		34.332508, 31.868603, 51.678818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506470, 31.513149, 50.932217>,  <34.933937, 31.630177, 51.411537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506470, 31.513149, 50.932217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289162, 31.784773, 51.129700>,  <34.158779, 31.947746, 51.248188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289162, 31.784773, 51.129700>,  <34.506470, 31.513149, 50.932217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289162, 31.784773, 51.129700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143071, 0.504569, -0.851435,
		-0.827280, -0.533190, -0.176962,
		-0.543266, 0.679057, 0.493704,
		34.126183, 31.988489, 51.277809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002300, 31.692610, 50.485783>,  <34.506470, 31.513149, 50.932217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002300, 31.692610, 50.485783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.014469, 32.000557, 50.740772>,  <34.021770, 32.185326, 50.893768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.014469, 32.000557, 50.740772>,  <34.002300, 31.692610, 50.485783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014469, 32.000557, 50.740772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120489, 0.635947, -0.762269,
		-0.992248, -0.053619, 0.112107,
		0.030422, 0.769868, 0.637478,
		34.023594, 32.231518, 50.932014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498814, 32.118855, 50.310070>,  <34.002300, 31.692610, 50.485783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498814, 32.118855, 50.310070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.725834, 32.366489, 50.527184>,  <33.862045, 32.515068, 50.657452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.725834, 32.366489, 50.527184>,  <33.498814, 32.118855, 50.310070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725834, 32.366489, 50.527184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017351, 0.650112, -0.759640,
		-0.823155, 0.440553, 0.358231,
		0.567552, 0.619085, 0.542787,
		33.896099, 32.552216, 50.690022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160469, 32.738316, 50.346924>,  <33.498814, 32.118855, 50.310070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160469, 32.738316, 50.346924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550301, 32.803875, 50.408031>,  <33.784199, 32.843212, 50.444695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550301, 32.803875, 50.408031>,  <33.160469, 32.738316, 50.346924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550301, 32.803875, 50.408031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018234, 0.621543, -0.783168,
		-0.223316, 0.766042, 0.602752,
		0.974576, 0.163903, 0.152769,
		33.842674, 32.853046, 50.453861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242569, 33.483765, 50.411240>,  <33.160469, 32.738316, 50.346924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242569, 33.483765, 50.411240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.587494, 33.314724, 50.299652>,  <33.794449, 33.213299, 50.232700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.587494, 33.314724, 50.299652>,  <33.242569, 33.483765, 50.411240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587494, 33.314724, 50.299652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032540, 0.596027, -0.802305,
		0.505329, 0.682760, 0.527713,
		0.862313, -0.422599, -0.278973,
		33.846188, 33.187943, 50.215961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611694, 34.061188, 50.029224>,  <33.242569, 33.483765, 50.411240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611694, 34.061188, 50.029224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.831238, 33.739521, 49.937946>,  <33.962963, 33.546520, 49.883179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.831238, 33.739521, 49.937946>,  <33.611694, 34.061188, 50.029224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831238, 33.739521, 49.937946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296900, 0.442728, -0.846075,
		0.781411, 0.396626, 0.481752,
		0.548860, -0.804164, -0.228195,
		33.995895, 33.498272, 49.869488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344463, 34.265873, 49.849308>,  <33.611694, 34.061188, 50.029224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344463, 34.265873, 49.849308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.244480, 33.928040, 49.659904>,  <34.184490, 33.725342, 49.546265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.244480, 33.928040, 49.659904>,  <34.344463, 34.265873, 49.849308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244480, 33.928040, 49.659904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050197, 0.477068, -0.877432,
		0.966955, -0.243088, -0.076851,
		-0.249956, -0.844579, -0.473505,
		34.169495, 33.674667, 49.517853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885902, 34.137096, 49.279007>,  <34.344463, 34.265873, 49.849308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885902, 34.137096, 49.279007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583862, 33.899578, 49.167843>,  <34.402637, 33.757069, 49.101147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583862, 33.899578, 49.167843>,  <34.885902, 34.137096, 49.279007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583862, 33.899578, 49.167843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133546, 0.275695, -0.951923,
		0.641868, -0.755908, -0.128878,
		-0.755097, -0.593797, -0.277908,
		34.357334, 33.721439, 49.084469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.992390, 26.684105, 32.713715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.866692, 26.605919, 33.085316>,  <41.791271, 26.559008, 33.308277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.866692, 26.605919, 33.085316>,  <41.992390, 26.684105, 32.713715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866692, 26.605919, 33.085316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014609, 0.977463, 0.210602,
		-0.949229, 0.079753, -0.304310,
		-0.314248, -0.195464, 0.929001,
		41.772419, 26.547279, 33.364017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475296, 27.075056, 32.719711>,  <41.992390, 26.684105, 32.713715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475296, 27.075056, 32.719711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.560089, 27.010714, 33.105289>,  <41.610966, 26.972109, 33.336636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.560089, 27.010714, 33.105289>,  <41.475296, 27.075056, 32.719711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560089, 27.010714, 33.105289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006188, 0.986562, 0.163270,
		-0.977253, -0.028646, 0.210132,
		0.211985, -0.160857, 0.963944,
		41.623684, 26.962456, 33.394474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169586, 27.626617, 32.956059>,  <41.475296, 27.075056, 32.719711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169586, 27.626617, 32.956059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.387783, 27.495720, 33.264694>,  <41.518703, 27.417181, 33.449875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.387783, 27.495720, 33.264694>,  <41.169586, 27.626617, 32.956059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387783, 27.495720, 33.264694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147387, 0.943731, 0.296055,
		-0.825052, -0.047776, 0.563034,
		0.545497, -0.327245, 0.771585,
		41.551434, 27.397547, 33.496170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766598, 27.841667, 33.617611>,  <41.169586, 27.626617, 32.956059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766598, 27.841667, 33.617611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.159714, 27.803610, 33.680958>,  <41.395584, 27.780775, 33.718964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.159714, 27.803610, 33.680958>,  <40.766598, 27.841667, 33.617611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159714, 27.803610, 33.680958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030965, 0.929900, 0.366507,
		-0.182135, -0.355294, 0.916838,
		0.982786, -0.095144, 0.158366,
		41.454548, 27.775066, 33.728466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892277, 28.090557, 34.337326>,  <40.766598, 27.841667, 33.617611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892277, 28.090557, 34.337326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.266937, 28.097561, 34.197395>,  <41.491734, 28.101763, 34.113438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.266937, 28.097561, 34.197395>,  <40.892277, 28.090557, 34.337326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266937, 28.097561, 34.197395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102338, 0.941489, 0.321132,
		0.334984, -0.336589, 0.880053,
		0.936650, 0.017512, -0.349829,
		41.547932, 28.102814, 34.092445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402924, 28.177900, 34.907021>,  <40.892277, 28.090557, 34.337326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402924, 28.177900, 34.907021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.543941, 28.322502, 34.561760>,  <41.628551, 28.409264, 34.354603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.543941, 28.322502, 34.561760>,  <41.402924, 28.177900, 34.907021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543941, 28.322502, 34.561760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200199, 0.871879, 0.446930,
		0.914131, -0.330363, 0.235000,
		0.352541, 0.361506, -0.863150,
		41.649704, 28.430954, 34.302814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692051, 28.743029, 35.112099>,  <41.402924, 28.177900, 34.907021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692051, 28.743029, 35.112099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.748783, 28.787260, 34.718620>,  <41.782822, 28.813799, 34.482533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.748783, 28.787260, 34.718620>,  <41.692051, 28.743029, 35.112099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748783, 28.787260, 34.718620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203083, 0.969353, 0.138246,
		0.968834, -0.219379, 0.115033,
		0.141836, 0.110576, -0.983695,
		41.791332, 28.820433, 34.423512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297428, 29.186409, 35.062260>,  <41.692051, 28.743029, 35.112099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297428, 29.186409, 35.062260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.118050, 29.234497, 34.707985>,  <42.010422, 29.263350, 34.495419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.118050, 29.234497, 34.707985>,  <42.297428, 29.186409, 35.062260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118050, 29.234497, 34.707985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238775, 0.971014, 0.010907,
		0.861328, -0.206589, -0.464150,
		-0.448443, 0.120221, -0.885689,
		41.983517, 29.270563, 34.442280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727100, 29.640905, 34.736523>,  <42.297428, 29.186409, 35.062260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727100, 29.640905, 34.736523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.390209, 29.649734, 34.521057>,  <42.188072, 29.655033, 34.391777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.390209, 29.649734, 34.521057>,  <42.727100, 29.640905, 34.736523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390209, 29.649734, 34.521057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129212, 0.978305, -0.161937,
		0.523406, -0.205990, -0.826810,
		-0.842230, 0.022075, -0.538667,
		42.137539, 29.656357, 34.359459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824947, 30.061949, 34.032639>,  <42.727100, 29.640905, 34.736523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824947, 30.061949, 34.032639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.432537, 30.086119, 34.106323>,  <42.197090, 30.100620, 34.150536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.432537, 30.086119, 34.106323>,  <42.824947, 30.061949, 34.032639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432537, 30.086119, 34.106323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059796, 0.998170, -0.008984,
		-0.184419, 0.002202, -0.982845,
		-0.981027, 0.060427, 0.184213,
		42.138229, 30.104246, 34.161587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541431, 30.526848, 33.484306>,  <42.824947, 30.061949, 34.032639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541431, 30.526848, 33.484306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.284435, 30.526981, 33.790821>,  <42.130238, 30.527061, 33.974731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.284435, 30.526981, 33.790821>,  <42.541431, 30.526848, 33.484306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284435, 30.526981, 33.790821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019260, 0.999677, -0.016583,
		-0.766049, -0.025413, -0.642279,
		-0.642493, 0.000334, 0.766291,
		42.091686, 30.527081, 34.020710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126904, 31.007326, 33.424732>,  <42.541431, 30.526848, 33.484306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126904, 31.007326, 33.424732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.062878, 30.951101, 33.815552>,  <42.024460, 30.917366, 34.050041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.062878, 30.951101, 33.815552>,  <42.126904, 31.007326, 33.424732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062878, 30.951101, 33.815552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081558, 0.988309, 0.128820,
		-0.983731, -0.059066, -0.169662,
		-0.160069, -0.140561, 0.977047,
		42.014858, 30.908934, 34.108665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663372, 31.606014, 33.538395>,  <42.126904, 31.007326, 33.424732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663372, 31.606014, 33.538395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.786900, 31.477261, 33.896393>,  <41.861015, 31.400009, 34.111191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.786900, 31.477261, 33.896393>,  <41.663372, 31.606014, 33.538395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786900, 31.477261, 33.896393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027355, 0.943610, 0.329928,
		-0.950728, -0.077405, 0.300209,
		0.308819, -0.321884, 0.894999,
		41.879543, 31.380695, 34.164894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382179, 32.060734, 34.021473>,  <41.663372, 31.606014, 33.538395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382179, 32.060734, 34.021473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.671127, 31.883713, 34.234009>,  <41.844498, 31.777500, 34.361530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.671127, 31.883713, 34.234009>,  <41.382179, 32.060734, 34.021473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671127, 31.883713, 34.234009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182784, 0.863257, 0.470508,
		-0.666911, -0.242760, 0.704484,
		0.722371, -0.442556, 0.531343,
		41.887840, 31.750946, 34.393410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187599, 32.128765, 34.695389>,  <41.382179, 32.060734, 34.021473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187599, 32.128765, 34.695389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.583023, 32.070293, 34.680508>,  <41.820278, 32.035210, 34.671577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.583023, 32.070293, 34.680508>,  <41.187599, 32.128765, 34.695389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583023, 32.070293, 34.680508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140611, 0.803737, 0.578132,
		-0.054610, -0.576748, 0.815095,
		0.988558, -0.146183, -0.037205,
		41.879589, 32.026440, 34.669346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440559, 32.142426, 35.374264>,  <41.187599, 32.128765, 34.695389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440559, 32.142426, 35.374264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.749393, 32.225510, 35.134018>,  <41.934692, 32.275360, 34.989868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.749393, 32.225510, 35.134018>,  <41.440559, 32.142426, 35.374264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749393, 32.225510, 35.134018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231004, 0.788709, 0.569715,
		0.592048, -0.578613, 0.560968,
		0.772085, 0.207713, -0.600616,
		41.981018, 32.287823, 34.953835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955505, 32.318562, 35.822014>,  <41.440559, 32.142426, 35.374264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955505, 32.318562, 35.822014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132313, 32.480091, 35.501625>,  <42.238396, 32.577007, 35.309391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132313, 32.480091, 35.501625>,  <41.955505, 32.318562, 35.822014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132313, 32.480091, 35.501625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275188, 0.788829, 0.549564,
		0.853753, -0.463333, 0.237547,
		0.442015, 0.403822, -0.800969,
		42.264915, 32.601238, 35.261333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624966, 32.541485, 36.010036>,  <41.955505, 32.318562, 35.822014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624966, 32.541485, 36.010036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.505611, 32.751320, 35.691093>,  <42.433998, 32.877220, 35.499729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.505611, 32.751320, 35.691093>,  <42.624966, 32.541485, 36.010036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505611, 32.751320, 35.691093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078034, 0.846024, 0.527403,
		0.951251, 0.095147, -0.293373,
		-0.298381, 0.524586, -0.797357,
		42.416096, 32.908695, 35.451885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085377, 33.094505, 36.157757>,  <42.624966, 32.541485, 36.010036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085377, 33.094505, 36.157757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852730, 33.219131, 35.857185>,  <42.713142, 33.293907, 35.676842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852730, 33.219131, 35.857185>,  <43.085377, 33.094505, 36.157757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852730, 33.219131, 35.857185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217924, 0.949656, 0.225083,
		0.783729, -0.032843, -0.620234,
		-0.581617, 0.311568, -0.751430,
		42.678246, 33.312603, 35.631756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545956, 33.587509, 35.672028>,  <43.085377, 33.094505, 36.157757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545956, 33.587509, 35.672028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156258, 33.671791, 35.639919>,  <42.922440, 33.722359, 35.620655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156258, 33.671791, 35.639919>,  <43.545956, 33.587509, 35.672028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156258, 33.671791, 35.639919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179280, 0.939787, 0.290962,
		0.136744, 0.269079, -0.953361,
		-0.974248, 0.210706, -0.080270,
		42.863983, 33.735004, 35.615837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511494, 34.292133, 35.400581>,  <43.545956, 33.587509, 35.672028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511494, 34.292133, 35.400581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.146023, 34.208057, 35.539734>,  <42.926743, 34.157612, 35.623226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.146023, 34.208057, 35.539734>,  <43.511494, 34.292133, 35.400581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146023, 34.208057, 35.539734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026095, 0.823807, 0.566269,
		-0.405610, 0.526463, -0.747206,
		-0.913673, -0.210186, 0.347883,
		42.871922, 34.145000, 35.644100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147934, 34.652321, 35.517403>,  <43.511494, 34.292133, 35.400581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147934, 34.652321, 35.517403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116859, 34.372528, 35.233234>,  <44.098213, 34.204655, 35.062733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116859, 34.372528, 35.233234>,  <44.147934, 34.652321, 35.517403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116859, 34.372528, 35.233234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115978, 0.714074, -0.690397,
		0.990209, 0.028756, -0.136600,
		-0.077689, -0.699480, -0.710417,
		44.093552, 34.162685, 35.020111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875462, 34.472225, 35.499744>,  <44.147934, 34.652321, 35.517403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875462, 34.472225, 35.499744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.168034, 34.340462, 35.738579>,  <45.343575, 34.261402, 35.881878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.168034, 34.340462, 35.738579>,  <44.875462, 34.472225, 35.499744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168034, 34.340462, 35.738579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609384, -0.708709, 0.355504,
		0.306051, -0.623877, -0.719103,
		0.731426, -0.329407, 0.597082,
		45.387463, 34.241638, 35.917702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041275, 33.774975, 35.368698>,  <44.875462, 34.472225, 35.499744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041275, 33.774975, 35.368698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.186871, 33.838314, 35.735836>,  <45.274227, 33.876316, 35.956120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.186871, 33.838314, 35.735836>,  <45.041275, 33.774975, 35.368698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.186871, 33.838314, 35.735836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508501, -0.791836, 0.338264,
		0.780345, -0.589850, -0.207701,
		0.363990, 0.158347, 0.917844,
		45.296066, 33.885818, 36.011189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179691, 33.088631, 35.626236>,  <45.041275, 33.774975, 35.368698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179691, 33.088631, 35.626236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.209774, 33.325657, 35.947037>,  <45.227825, 33.467873, 36.139519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.209774, 33.325657, 35.947037>,  <45.179691, 33.088631, 35.626236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209774, 33.325657, 35.947037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329514, -0.744329, 0.580857,
		0.941150, -0.307958, 0.139278,
		0.075211, 0.592568, 0.802002,
		45.232338, 33.503426, 36.187637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464901, 32.729134, 36.091866>,  <45.179691, 33.088631, 35.626236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464901, 32.729134, 36.091866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.244473, 32.996613, 36.291534>,  <45.112217, 33.157101, 36.411335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.244473, 32.996613, 36.291534>,  <45.464901, 32.729134, 36.091866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.244473, 32.996613, 36.291534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395309, -0.736010, 0.549563,
		0.734883, 0.105522, 0.669934,
		-0.551070, 0.668696, 0.499168,
		45.079151, 33.197220, 36.441284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702812, 32.586731, 36.737965>,  <45.464901, 32.729134, 36.091866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702812, 32.586731, 36.737965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.356400, 32.784145, 36.770000>,  <45.148552, 32.902596, 36.789223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.356400, 32.784145, 36.770000>,  <45.702812, 32.586731, 36.737965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356400, 32.784145, 36.770000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297039, -0.636699, 0.711605,
		0.402196, 0.592482, 0.698000,
		-0.866029, 0.493538, 0.080088,
		45.096592, 32.932205, 36.794025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482864, 32.806061, 37.540642>,  <45.702812, 32.586731, 36.737965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482864, 32.806061, 37.540642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.140419, 32.806778, 37.333927>,  <44.934952, 32.807209, 37.209900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.140419, 32.806778, 37.333927>,  <45.482864, 32.806061, 37.540642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.140419, 32.806778, 37.333927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408784, -0.614140, 0.675076,
		-0.316169, 0.789195, 0.526506,
		-0.856115, 0.001789, -0.516782,
		44.883583, 32.807316, 37.178894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959702, 32.673027, 38.111298>,  <45.482864, 32.806061, 37.540642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959702, 32.673027, 38.111298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762794, 32.620350, 37.767128>,  <44.644650, 32.588745, 37.560627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762794, 32.620350, 37.767128>,  <44.959702, 32.673027, 38.111298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762794, 32.620350, 37.767128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446979, -0.809962, 0.379698,
		-0.746913, 0.571505, 0.339857,
		-0.492271, -0.131692, -0.860422,
		44.615112, 32.580841, 37.509003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286713, 32.409718, 38.393673>,  <44.959702, 32.673027, 38.111298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286713, 32.409718, 38.393673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.293262, 32.298428, 38.009521>,  <44.297192, 32.231651, 37.779030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.293262, 32.298428, 38.009521>,  <44.286713, 32.409718, 38.393673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293262, 32.298428, 38.009521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560984, -0.797639, 0.221517,
		-0.827665, 0.535127, -0.169145,
		0.016377, -0.278230, -0.960375,
		44.298176, 32.214958, 37.721409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636887, 32.225735, 38.280632>,  <44.286713, 32.409718, 38.393673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636887, 32.225735, 38.280632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852772, 32.060974, 37.986954>,  <43.982304, 31.962118, 37.810745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852772, 32.060974, 37.986954>,  <43.636887, 32.225735, 38.280632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852772, 32.060974, 37.986954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587146, -0.809173, 0.022347,
		-0.603299, 0.419022, -0.678565,
		0.539713, -0.411899, -0.734200,
		44.014687, 31.937405, 37.766693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134163, 32.008499, 37.853230>,  <43.636887, 32.225735, 38.280632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134163, 32.008499, 37.853230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.460068, 31.796217, 37.759834>,  <43.655609, 31.668846, 37.703796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.460068, 31.796217, 37.759834>,  <43.134163, 32.008499, 37.853230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460068, 31.796217, 37.759834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558628, -0.826371, -0.071031,
		-0.155250, 0.188305, -0.969762,
		0.814759, -0.530709, -0.233486,
		43.704494, 31.637005, 37.689789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955887, 31.593365, 37.300385>,  <43.134163, 32.008499, 37.853230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955887, 31.593365, 37.300385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.267094, 31.406246, 37.468124>,  <43.453819, 31.293976, 37.568768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.267094, 31.406246, 37.468124>,  <42.955887, 31.593365, 37.300385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267094, 31.406246, 37.468124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491793, -0.868857, -0.056805,
		0.390925, -0.162036, -0.906048,
		0.778021, -0.467795, 0.419346,
		43.500500, 31.265907, 37.593929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116898, 30.928015, 36.851891>,  <42.955887, 31.593365, 37.300385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116898, 30.928015, 36.851891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.293018, 30.856071, 37.203751>,  <43.398689, 30.812906, 37.414867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.293018, 30.856071, 37.203751>,  <43.116898, 30.928015, 36.851891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293018, 30.856071, 37.203751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447596, -0.893277, 0.041397,
		0.778327, -0.411955, -0.473815,
		0.440302, -0.179857, 0.879651,
		43.425110, 30.802114, 37.467648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518837, 30.406300, 36.778416>,  <43.116898, 30.928015, 36.851891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518837, 30.406300, 36.778416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.479908, 30.404520, 37.176514>,  <43.456551, 30.403452, 37.415371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.479908, 30.404520, 37.176514>,  <43.518837, 30.406300, 36.778416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479908, 30.404520, 37.176514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418777, -0.906973, -0.045004,
		0.902859, -0.421164, 0.086405,
		-0.097321, -0.004448, 0.995243,
		43.450710, 30.403185, 37.475086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557327, 29.762405, 36.903061>,  <43.518837, 30.406300, 36.778416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557327, 29.762405, 36.903061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.382866, 29.900579, 37.235432>,  <43.278191, 29.983484, 37.434856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.382866, 29.900579, 37.235432>,  <43.557327, 29.762405, 36.903061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382866, 29.900579, 37.235432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559398, -0.827370, 0.050329,
		0.704873, -0.442870, 0.554094,
		-0.436152, 0.345435, 0.830931,
		43.252022, 30.004210, 37.484711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604080, 29.190102, 37.224865>,  <43.557327, 29.762405, 36.903061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604080, 29.190102, 37.224865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.320972, 29.398441, 37.415768>,  <43.151108, 29.523445, 37.530308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.320972, 29.398441, 37.415768>,  <43.604080, 29.190102, 37.224865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320972, 29.398441, 37.415768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530395, -0.838031, 0.128005,
		0.466628, -0.162537, 0.869391,
		-0.707771, 0.520851, 0.477257,
		43.108643, 29.554697, 37.558945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459496, 28.780424, 37.685238>,  <43.604080, 29.190102, 37.224865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459496, 28.780424, 37.685238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151516, 29.035065, 37.667740>,  <42.966728, 29.187849, 37.657242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151516, 29.035065, 37.667740>,  <43.459496, 28.780424, 37.685238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151516, 29.035065, 37.667740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630920, -0.749241, 0.201439,
		0.095464, 0.182696, 0.978524,
		-0.769952, 0.636600, -0.043742,
		42.920528, 29.226046, 37.654617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039078, 28.547136, 38.288940>,  <43.459496, 28.780424, 37.685238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039078, 28.547136, 38.288940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798038, 28.738417, 38.033379>,  <42.653416, 28.853186, 37.880043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798038, 28.738417, 38.033379>,  <43.039078, 28.547136, 38.288940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798038, 28.738417, 38.033379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704254, -0.695214, 0.143885,
		-0.375371, 0.536657, 0.755709,
		-0.602597, 0.478201, -0.638906,
		42.617260, 28.881878, 37.841705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406025, 28.578968, 38.607208>,  <43.039078, 28.547136, 38.288940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406025, 28.578968, 38.607208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361172, 28.564894, 38.209980>,  <42.334259, 28.556450, 37.971642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361172, 28.564894, 38.209980>,  <42.406025, 28.578968, 38.607208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361172, 28.564894, 38.209980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579528, -0.809499, 0.094118,
		-0.807201, 0.586066, 0.070380,
		-0.112132, -0.035185, -0.993070,
		42.327534, 28.554338, 37.912060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922112, 28.067675, 38.616459>,  <42.406025, 28.578968, 38.607208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922112, 28.067675, 38.616459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.981041, 28.124819, 38.224972>,  <42.016399, 28.159105, 37.990078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.981041, 28.124819, 38.224972>,  <41.922112, 28.067675, 38.616459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981041, 28.124819, 38.224972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409649, -0.891843, -0.191842,
		-0.900269, 0.429193, -0.072865,
		0.147321, 0.142860, -0.978717,
		42.025238, 28.167677, 37.931358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309010, 28.141804, 38.257324>,  <41.922112, 28.067675, 38.616459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309010, 28.141804, 38.257324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.594837, 27.989046, 38.022873>,  <41.766335, 27.897390, 37.882202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.594837, 27.989046, 38.022873>,  <41.309010, 28.141804, 38.257324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594837, 27.989046, 38.022873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533444, -0.839497, -0.103358,
		-0.452583, 0.386524, -0.803597,
		0.714567, -0.381896, -0.586131,
		41.809208, 27.874477, 37.847034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.463558, 34.998035, 44.424576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138500, 34.765820, 44.404224>,  <36.943466, 34.626492, 44.392014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138500, 34.765820, 44.404224>,  <37.463558, 34.998035, 44.424576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138500, 34.765820, 44.404224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051791, 0.158907, -0.985934,
		0.580457, -0.798577, -0.159201,
		-0.812643, -0.580537, -0.050880,
		36.894707, 34.591660, 44.388962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594780, 34.434898, 43.966763>,  <37.463558, 34.998035, 44.424576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594780, 34.434898, 43.966763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196754, 34.474495, 43.969471>,  <36.957939, 34.498253, 43.971096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196754, 34.474495, 43.969471>,  <37.594780, 34.434898, 43.966763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196754, 34.474495, 43.969471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002707, 0.095273, -0.995448,
		-0.099189, -0.990517, -0.095070,
		-0.995065, 0.098995, 0.006769,
		36.898235, 34.504192, 43.971500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418446, 34.161259, 43.366638>,  <37.594780, 34.434898, 43.966763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418446, 34.161259, 43.366638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055523, 34.311829, 43.441578>,  <36.837769, 34.402168, 43.486542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055523, 34.311829, 43.441578>,  <37.418446, 34.161259, 43.366638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055523, 34.311829, 43.441578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174348, 0.068654, -0.982288,
		-0.382616, -0.923901, 0.003338,
		-0.907308, 0.376421, 0.187348,
		36.783329, 34.424755, 43.497784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957748, 33.853695, 42.893509>,  <37.418446, 34.161259, 43.366638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957748, 33.853695, 42.893509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788551, 34.195827, 43.013172>,  <36.687035, 34.401108, 43.084969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788551, 34.195827, 43.013172>,  <36.957748, 33.853695, 42.893509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788551, 34.195827, 43.013172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216434, 0.225220, -0.949965,
		-0.879906, -0.466573, 0.089856,
		-0.422991, 0.855328, 0.299155,
		36.661655, 34.452427, 43.102917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181248, 33.926903, 42.555710>,  <36.957748, 33.853695, 42.893509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181248, 33.926903, 42.555710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341373, 34.282261, 42.645607>,  <36.437450, 34.495476, 42.699543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341373, 34.282261, 42.645607>,  <36.181248, 33.926903, 42.555710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341373, 34.282261, 42.645607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274865, 0.350363, -0.895374,
		-0.874184, 0.296658, 0.384443,
		0.400315, 0.888392, 0.224740,
		36.461468, 34.548779, 42.713028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924397, 34.259575, 42.066555>,  <36.181248, 33.926903, 42.555710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924397, 34.259575, 42.066555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153343, 34.558014, 42.202633>,  <36.290710, 34.737076, 42.284279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153343, 34.558014, 42.202633>,  <35.924397, 34.259575, 42.066555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153343, 34.558014, 42.202633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087959, 0.468338, -0.879160,
		-0.815264, 0.473282, 0.333689,
		0.572370, 0.746099, 0.340190,
		36.325054, 34.781845, 42.304691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582062, 34.928108, 41.984341>,  <35.924397, 34.259575, 42.066555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582062, 34.928108, 41.984341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979641, 34.965092, 41.960609>,  <36.218189, 34.987282, 41.946369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979641, 34.965092, 41.960609>,  <35.582062, 34.928108, 41.984341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979641, 34.965092, 41.960609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076437, 0.194133, -0.977993,
		-0.078905, 0.976609, 0.200025,
		0.993947, 0.092458, -0.059331,
		36.277824, 34.992828, 41.942810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665928, 35.473812, 41.559441>,  <35.582062, 34.928108, 41.984341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665928, 35.473812, 41.559441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018223, 35.285019, 41.543736>,  <36.229599, 35.171745, 41.534313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018223, 35.285019, 41.543736>,  <35.665928, 35.473812, 41.559441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018223, 35.285019, 41.543736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059549, 0.192604, -0.979468,
		0.469851, 0.860313, 0.197739,
		0.880735, -0.471980, -0.039264,
		36.282444, 35.143425, 41.531956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896828, 35.777390, 40.988789>,  <35.665928, 35.473812, 41.559441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896828, 35.777390, 40.988789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174847, 35.496140, 41.048813>,  <36.341660, 35.327389, 41.084827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174847, 35.496140, 41.048813>,  <35.896828, 35.777390, 40.988789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174847, 35.496140, 41.048813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340892, 0.138534, -0.929839,
		0.633007, 0.697439, 0.335979,
		0.695050, -0.703127, 0.150058,
		36.383362, 35.285202, 41.093830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652477, 36.019260, 40.729755>,  <35.896828, 35.777390, 40.988789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652477, 36.019260, 40.729755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610340, 35.621597, 40.720337>,  <36.585056, 35.382999, 40.714684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610340, 35.621597, 40.720337>,  <36.652477, 36.019260, 40.729755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610340, 35.621597, 40.720337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204871, 0.001478, -0.978788,
		0.973103, -0.107936, 0.203518,
		-0.105346, -0.994157, -0.023551,
		36.578735, 35.323349, 40.713272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209751, 35.793594, 40.318115>,  <36.652477, 36.019260, 40.729755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209751, 35.793594, 40.318115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932629, 35.505165, 40.321762>,  <36.766357, 35.332108, 40.323948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932629, 35.505165, 40.321762>,  <37.209751, 35.793594, 40.318115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932629, 35.505165, 40.321762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090689, -0.099657, -0.990880,
		0.715401, -0.685659, 0.134436,
		-0.692803, -0.721069, 0.009113,
		36.724789, 35.288845, 40.324497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504734, 35.277184, 39.938744>,  <37.209751, 35.793594, 40.318115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504734, 35.277184, 39.938744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108177, 35.225342, 39.931400>,  <36.870243, 35.194237, 39.926994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108177, 35.225342, 39.931400>,  <37.504734, 35.277184, 39.938744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108177, 35.225342, 39.931400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017683, 0.006387, -0.999823,
		0.129701, -0.991545, -0.004041,
		-0.991395, -0.129606, -0.018362,
		36.810757, 35.186459, 39.925892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291042, 34.770969, 39.499413>,  <37.504734, 35.277184, 39.938744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291042, 34.770969, 39.499413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985870, 35.029068, 39.483395>,  <36.802769, 35.183926, 39.473785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985870, 35.029068, 39.483395>,  <37.291042, 34.770969, 39.499413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985870, 35.029068, 39.483395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042858, -0.112285, -0.992751,
		-0.645063, -0.755680, 0.113319,
		-0.762927, 0.645243, -0.040044,
		36.756992, 35.222641, 39.471382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996426, 34.656570, 39.290726>,  <37.291042, 34.770969, 39.499413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996426, 34.656570, 39.290726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229733, 34.354313, 39.171520>,  <38.369717, 34.172958, 39.099995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229733, 34.354313, 39.171520>,  <37.996426, 34.656570, 39.290726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229733, 34.354313, 39.171520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194037, 0.485878, -0.852216,
		0.788767, 0.439240, 0.430017,
		0.583263, -0.755639, -0.298016,
		38.404713, 34.127621, 39.082115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798618, 34.779610, 39.069233>,  <37.996426, 34.656570, 39.290726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798618, 34.779610, 39.069233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639832, 34.464714, 38.880482>,  <38.544559, 34.275776, 38.767231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639832, 34.464714, 38.880482>,  <38.798618, 34.779610, 39.069233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639832, 34.464714, 38.880482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107230, 0.470828, -0.875684,
		0.911548, -0.398218, -0.102488,
		-0.396967, -0.787238, -0.471883,
		38.520741, 34.228542, 38.738918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180340, 34.162594, 38.950413>,  <38.798618, 34.779610, 39.069233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180340, 34.162594, 38.950413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532608, 33.999763, 39.047333>,  <39.743969, 33.902065, 39.105484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532608, 33.999763, 39.047333>,  <39.180340, 34.162594, 38.950413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532608, 33.999763, 39.047333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416282, -0.420867, 0.805965,
		-0.226107, -0.810657, -0.540102,
		0.880673, -0.407070, 0.242301,
		39.796810, 33.877644, 39.120022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988228, 33.537727, 39.217442>,  <39.180340, 34.162594, 38.950413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988228, 33.537727, 39.217442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360355, 33.587410, 39.355476>,  <39.583630, 33.617218, 39.438297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360355, 33.587410, 39.355476>,  <38.988228, 33.537727, 39.217442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360355, 33.587410, 39.355476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251523, -0.468717, 0.846782,
		0.266925, -0.874573, -0.404814,
		0.930316, 0.124207, 0.345088,
		39.639450, 33.624672, 39.459003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200138, 32.864250, 39.411560>,  <38.988228, 33.537727, 39.217442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200138, 32.864250, 39.411560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436104, 33.109413, 39.621834>,  <39.577682, 33.256512, 39.747997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436104, 33.109413, 39.621834>,  <39.200138, 32.864250, 39.411560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436104, 33.109413, 39.621834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161997, -0.547955, 0.820672,
		0.791050, -0.569283, -0.223956,
		0.589912, 0.612912, 0.525683,
		39.613079, 33.293285, 39.779537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691906, 32.438488, 39.886925>,  <39.200138, 32.864250, 39.411560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691906, 32.438488, 39.886925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708267, 32.811691, 40.029938>,  <39.718082, 33.035614, 40.115746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708267, 32.811691, 40.029938>,  <39.691906, 32.438488, 39.886925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708267, 32.811691, 40.029938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028647, -0.358782, 0.932982,
		0.998752, -0.027918, -0.041403,
		0.040902, 0.933004, 0.357534,
		39.720539, 33.091591, 40.137199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190189, 32.440556, 40.447945>,  <39.691906, 32.438488, 39.886925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190189, 32.440556, 40.447945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930344, 32.737316, 40.514385>,  <39.774437, 32.915371, 40.554249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930344, 32.737316, 40.514385>,  <40.190189, 32.440556, 40.447945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930344, 32.737316, 40.514385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037967, -0.249866, 0.967536,
		0.759318, 0.622215, 0.190484,
		-0.649611, 0.741900, 0.166105,
		39.735462, 32.959885, 40.564217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395096, 32.826183, 41.038681>,  <40.190189, 32.440556, 40.447945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395096, 32.826183, 41.038681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004581, 32.896946, 40.988762>,  <39.770275, 32.939404, 40.958813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004581, 32.896946, 40.988762>,  <40.395096, 32.826183, 41.038681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004581, 32.896946, 40.988762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152269, -0.151330, 0.976685,
		0.153901, 0.972524, 0.174679,
		-0.976283, 0.176911, -0.124795,
		39.711697, 32.950020, 40.951324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238297, 33.137562, 41.641163>,  <40.395096, 32.826183, 41.038681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238297, 33.137562, 41.641163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862923, 33.081470, 41.514877>,  <39.637699, 33.047817, 41.439106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862923, 33.081470, 41.514877>,  <40.238297, 33.137562, 41.641163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862923, 33.081470, 41.514877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270785, -0.268888, 0.924324,
		-0.214503, 0.952909, 0.214364,
		-0.938437, -0.140224, -0.315711,
		39.581390, 33.039402, 41.420162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758347, 33.574757, 42.082916>,  <40.238297, 33.137562, 41.641163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758347, 33.574757, 42.082916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559143, 33.268913, 41.919277>,  <39.439621, 33.085407, 41.821095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559143, 33.268913, 41.919277>,  <39.758347, 33.574757, 42.082916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559143, 33.268913, 41.919277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416600, -0.202799, 0.886181,
		-0.760547, 0.611755, -0.217541,
		-0.498009, -0.764610, -0.409095,
		39.409740, 33.039532, 41.796547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119038, 33.653812, 42.382977>,  <39.758347, 33.574757, 42.082916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119038, 33.653812, 42.382977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122631, 33.275318, 42.253635>,  <39.124786, 33.048222, 42.176033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122631, 33.275318, 42.253635>,  <39.119038, 33.653812, 42.382977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122631, 33.275318, 42.253635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543052, -0.276141, 0.792995,
		-0.839651, 0.168470, -0.516337,
		0.008986, -0.946237, -0.323350,
		39.125328, 32.991447, 42.156631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471706, 33.442215, 42.449566>,  <39.119038, 33.653812, 42.382977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471706, 33.442215, 42.449566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711914, 33.122566, 42.460762>,  <38.856041, 32.930779, 42.467480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711914, 33.122566, 42.460762>,  <38.471706, 33.442215, 42.449566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711914, 33.122566, 42.460762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391260, -0.263137, 0.881858,
		-0.697345, -0.540526, -0.470683,
		0.600521, -0.799118, 0.027989,
		38.892071, 32.882832, 42.469158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988934, 32.937614, 42.846516>,  <38.471706, 33.442215, 42.449566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988934, 32.937614, 42.846516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364132, 32.799393, 42.857540>,  <38.589249, 32.716457, 42.864155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364132, 32.799393, 42.857540>,  <37.988934, 32.937614, 42.846516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364132, 32.799393, 42.857540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107810, -0.215219, 0.970597,
		-0.329466, -0.913384, -0.239129,
		0.937992, -0.345559, 0.027564,
		38.645531, 32.695724, 42.865810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908581, 32.287086, 42.945171>,  <37.988934, 32.937614, 42.846516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908581, 32.287086, 42.945171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244225, 32.451279, 43.087952>,  <38.445610, 32.549793, 43.173618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244225, 32.451279, 43.087952>,  <37.908581, 32.287086, 42.945171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244225, 32.451279, 43.087952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204957, -0.369257, 0.906444,
		0.503879, -0.833762, -0.225716,
		0.839106, 0.410476, 0.356946,
		38.495956, 32.574421, 43.195034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135448, 31.821804, 43.326118>,  <37.908581, 32.287086, 42.945171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135448, 31.821804, 43.326118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378544, 32.119465, 43.437038>,  <38.524399, 32.298061, 43.503590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378544, 32.119465, 43.437038>,  <38.135448, 31.821804, 43.326118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378544, 32.119465, 43.437038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036906, -0.375275, 0.926179,
		0.793281, -0.552638, -0.255531,
		0.607736, 0.744151, 0.277303,
		38.560863, 32.342709, 43.520229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423725, 31.132547, 42.963089>,  <38.135448, 31.821804, 43.326118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423725, 31.132547, 42.963089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247776, 30.775408, 42.924442>,  <38.142208, 30.561125, 42.901257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247776, 30.775408, 42.924442>,  <38.423725, 31.132547, 42.963089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247776, 30.775408, 42.924442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264504, 0.231612, -0.936159,
		0.858225, -0.386236, -0.338042,
		-0.439873, -0.892848, -0.096614,
		38.115814, 30.507553, 42.895458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737549, 30.790508, 42.360027>,  <38.423725, 31.132547, 42.963089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737549, 30.790508, 42.360027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375744, 30.626362, 42.406425>,  <38.158661, 30.527874, 42.434265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375744, 30.626362, 42.406425>,  <38.737549, 30.790508, 42.360027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375744, 30.626362, 42.406425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190754, 0.146062, -0.970710,
		0.381404, -0.900147, -0.210394,
		-0.904513, -0.410367, 0.115998,
		38.104389, 30.503252, 42.441223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655670, 30.307711, 41.881607>,  <38.737549, 30.790508, 42.360027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655670, 30.307711, 41.881607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284145, 30.403969, 41.994324>,  <38.061230, 30.461723, 42.061954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284145, 30.403969, 41.994324>,  <38.655670, 30.307711, 41.881607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284145, 30.403969, 41.994324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318449, -0.129488, -0.939054,
		-0.189491, -0.961937, 0.196903,
		-0.928808, 0.240646, 0.281792,
		38.005505, 30.476162, 42.078861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346920, 29.746920, 41.601105>,  <38.655670, 30.307711, 41.881607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346920, 29.746920, 41.601105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089722, 30.043196, 41.679005>,  <37.935402, 30.220963, 41.725742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089722, 30.043196, 41.679005>,  <38.346920, 29.746920, 41.601105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089722, 30.043196, 41.679005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459533, -0.169707, -0.871797,
		-0.612684, -0.650057, 0.449494,
		-0.642999, 0.740692, 0.194746,
		37.896820, 30.265404, 41.737427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650803, 29.538027, 41.440899>,  <38.346920, 29.746920, 41.601105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650803, 29.538027, 41.440899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618584, 29.936718, 41.443573>,  <37.599251, 30.175932, 41.445179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618584, 29.936718, 41.443573>,  <37.650803, 29.538027, 41.440899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618584, 29.936718, 41.443573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508323, -0.035308, -0.860442,
		-0.857391, -0.072709, 0.509504,
		-0.080551, 0.996728, 0.006687,
		37.594418, 30.235737, 41.445580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975918, 29.699209, 41.255272>,  <37.650803, 29.538027, 41.440899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975918, 29.699209, 41.255272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188026, 30.028782, 41.175323>,  <37.315292, 30.226526, 41.127354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188026, 30.028782, 41.175323>,  <36.975918, 29.699209, 41.255272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188026, 30.028782, 41.175323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345200, -0.005505, -0.938513,
		-0.774372, 0.566660, 0.281503,
		0.530268, 0.823933, -0.199874,
		37.347107, 30.275961, 41.115360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606968, 29.950356, 40.710621>,  <36.975918, 29.699209, 41.255272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606968, 29.950356, 40.710621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906219, 30.214790, 40.687778>,  <37.085770, 30.373451, 40.674072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906219, 30.214790, 40.687778>,  <36.606968, 29.950356, 40.710621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906219, 30.214790, 40.687778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298049, 0.257899, -0.919051,
		-0.592844, 0.704593, 0.389979,
		0.748132, 0.661087, -0.057110,
		37.130661, 30.413116, 40.670647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293968, 30.644609, 40.547260>,  <36.606968, 29.950356, 40.710621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293968, 30.644609, 40.547260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675629, 30.611814, 40.432106>,  <36.904625, 30.592136, 40.363014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675629, 30.611814, 40.432106>,  <36.293968, 30.644609, 40.547260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675629, 30.611814, 40.432106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221410, 0.453918, -0.863097,
		0.201442, 0.887264, 0.414951,
		0.954148, -0.081989, -0.287887,
		36.961872, 30.587217, 40.345741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351032, 31.252329, 40.194210>,  <36.293968, 30.644609, 40.547260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351032, 31.252329, 40.194210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674641, 31.042812, 40.087536>,  <36.868805, 30.917103, 40.023529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674641, 31.042812, 40.087536>,  <36.351032, 31.252329, 40.194210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674641, 31.042812, 40.087536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043468, 0.399166, -0.915848,
		0.586167, 0.752535, 0.300166,
		0.809023, -0.523792, -0.266689,
		36.917347, 30.885675, 40.007530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950165, 31.672808, 39.921135>,  <36.351032, 31.252329, 40.194210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950165, 31.672808, 39.921135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967323, 31.299137, 39.779442>,  <36.977619, 31.074936, 39.694427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967323, 31.299137, 39.779442>,  <36.950165, 31.672808, 39.921135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967323, 31.299137, 39.779442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115239, 0.356815, -0.927040,
		0.992411, -0.001053, 0.122960,
		0.042898, -0.934175, -0.354228,
		36.980194, 31.018885, 39.673172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462624, 31.645823, 39.384247>,  <36.950165, 31.672808, 39.921135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462624, 31.645823, 39.384247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218060, 31.346096, 39.282501>,  <37.071320, 31.166260, 39.221455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218060, 31.346096, 39.282501>,  <37.462624, 31.645823, 39.384247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218060, 31.346096, 39.282501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027106, 0.341094, -0.939639,
		0.790851, -0.567608, -0.228858,
		-0.611409, -0.749317, -0.254369,
		37.034637, 31.121302, 39.206192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698395, 31.344814, 38.761978>,  <37.462624, 31.645823, 39.384247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698395, 31.344814, 38.761978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303848, 31.289949, 38.798344>,  <37.067120, 31.257030, 38.820164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303848, 31.289949, 38.798344>,  <37.698395, 31.344814, 38.761978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303848, 31.289949, 38.798344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129234, 0.303712, -0.943958,
		0.101863, -0.942839, -0.317298,
		-0.986368, -0.137160, 0.090910,
		37.007938, 31.248800, 38.825615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.571369, 29.200518, 46.045322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202301, 29.074755, 46.134613>,  <38.980862, 28.999296, 46.188187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202301, 29.074755, 46.134613>,  <39.571369, 29.200518, 46.045322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202301, 29.074755, 46.134613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202651, -0.097117, -0.974423,
		0.328044, -0.944307, 0.025893,
		-0.922670, -0.314407, 0.223223,
		38.925499, 28.980433, 46.201580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472912, 28.514503, 45.743061>,  <39.571369, 29.200518, 46.045322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472912, 28.514503, 45.743061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.145275, 28.739420, 45.788517>,  <38.948692, 28.874369, 45.815792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.145275, 28.739420, 45.788517>,  <39.472912, 28.514503, 45.743061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145275, 28.739420, 45.788517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068296, 0.101105, -0.992529,
		-0.569578, -0.820736, -0.044413,
		-0.819095, 0.562290, 0.113640,
		38.899548, 28.908108, 45.822609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033379, 28.270239, 45.163254>,  <39.472912, 28.514503, 45.743061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033379, 28.270239, 45.163254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.852222, 28.604345, 45.287975>,  <38.743530, 28.804810, 45.362808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.852222, 28.604345, 45.287975>,  <39.033379, 28.270239, 45.163254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852222, 28.604345, 45.287975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158800, 0.268561, -0.950083,
		-0.877312, -0.479794, 0.011013,
		-0.452886, 0.835268, 0.311803,
		38.716358, 28.854925, 45.381516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380886, 28.382399, 44.779793>,  <39.033379, 28.270239, 45.163254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380886, 28.382399, 44.779793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457752, 28.751390, 44.913719>,  <38.503872, 28.972786, 44.994076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457752, 28.751390, 44.913719>,  <38.380886, 28.382399, 44.779793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457752, 28.751390, 44.913719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295327, 0.379719, -0.876696,
		-0.935870, 0.069593, 0.345403,
		0.192168, 0.922481, 0.334815,
		38.515404, 29.028135, 45.014164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861008, 28.679396, 44.511173>,  <38.380886, 28.382399, 44.779793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861008, 28.679396, 44.511173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.091152, 28.990948, 44.611019>,  <38.229237, 29.177879, 44.670925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.091152, 28.990948, 44.611019>,  <37.861008, 28.679396, 44.511173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091152, 28.990948, 44.611019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339299, 0.504985, -0.793641,
		-0.744203, 0.371935, 0.554821,
		0.575359, 0.778880, 0.249614,
		38.263760, 29.224611, 44.685902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450481, 29.267069, 44.391586>,  <37.861008, 28.679396, 44.511173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450481, 29.267069, 44.391586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.824776, 29.407953, 44.384151>,  <38.049351, 29.492483, 44.379688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.824776, 29.407953, 44.384151>,  <37.450481, 29.267069, 44.391586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824776, 29.407953, 44.384151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252139, 0.631151, -0.733536,
		-0.246626, 0.691083, 0.679397,
		0.935736, 0.352212, -0.018591,
		38.105495, 29.513617, 44.378574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339882, 29.943027, 44.245693>,  <37.450481, 29.267069, 44.391586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339882, 29.943027, 44.245693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711021, 29.839624, 44.138161>,  <37.933704, 29.777582, 44.073643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711021, 29.839624, 44.138161>,  <37.339882, 29.943027, 44.245693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711021, 29.839624, 44.138161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123089, 0.468173, -0.875022,
		0.352057, 0.844978, 0.402575,
		0.927849, -0.258505, -0.268831,
		37.989376, 29.762074, 44.057510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637112, 30.538801, 43.967510>,  <37.339882, 29.943027, 44.245693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637112, 30.538801, 43.967510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.864239, 30.255024, 43.800526>,  <38.000515, 30.084757, 43.700336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.864239, 30.255024, 43.800526>,  <37.637112, 30.538801, 43.967510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864239, 30.255024, 43.800526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002867, 0.508846, -0.860853,
		0.823150, 0.487610, 0.290966,
		0.567818, -0.709445, -0.417458,
		38.034584, 30.042191, 43.675289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130764, 30.964411, 43.630516>,  <37.637112, 30.538801, 43.967510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130764, 30.964411, 43.630516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.121830, 30.606880, 43.451370>,  <38.116470, 30.392363, 43.343884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.121830, 30.606880, 43.451370>,  <38.130764, 30.964411, 43.630516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121830, 30.606880, 43.451370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021135, 0.448294, -0.893636,
		0.999527, -0.010493, -0.028903,
		-0.022334, -0.893824, -0.447861,
		38.115131, 30.338734, 43.317013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682449, 31.523108, 43.737827>,  <38.130764, 30.964411, 43.630516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682449, 31.523108, 43.737827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.697601, 31.908762, 43.842903>,  <38.706692, 32.140156, 43.905949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.697601, 31.908762, 43.842903>,  <38.682449, 31.523108, 43.737827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697601, 31.908762, 43.842903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053049, -0.260569, 0.963997,
		0.997873, -0.050453, 0.041276,
		0.037881, 0.964136, 0.262691,
		38.708965, 32.198002, 43.921711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239254, 31.556715, 44.257145>,  <38.682449, 31.523108, 43.737827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239254, 31.556715, 44.257145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.032761, 31.896830, 44.298172>,  <38.908863, 32.100899, 44.322788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.032761, 31.896830, 44.298172>,  <39.239254, 31.556715, 44.257145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032761, 31.896830, 44.298172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097045, -0.060914, 0.993414,
		0.850933, 0.522786, -0.051071,
		-0.516232, 0.850285, 0.102567,
		38.877892, 32.151917, 44.328941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716816, 32.080929, 44.666092>,  <39.239254, 31.556715, 44.257145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716816, 32.080929, 44.666092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334534, 32.193584, 44.700283>,  <39.105164, 32.261177, 44.720798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334534, 32.193584, 44.700283>,  <39.716816, 32.080929, 44.666092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334534, 32.193584, 44.700283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073356, -0.053312, 0.995880,
		0.285039, 0.958037, 0.030290,
		-0.955705, 0.281643, 0.085474,
		39.047821, 32.278076, 44.725925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710979, 32.644222, 45.166286>,  <39.716816, 32.080929, 44.666092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710979, 32.644222, 45.166286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334568, 32.510040, 45.148693>,  <39.108723, 32.429531, 45.138138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334568, 32.510040, 45.148693>,  <39.710979, 32.644222, 45.166286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334568, 32.510040, 45.148693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127833, 0.232189, 0.964234,
		-0.313244, 0.912995, -0.261379,
		-0.941030, -0.335453, -0.043979,
		39.052258, 32.409405, 45.135498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364498, 32.973373, 45.662025>,  <39.710979, 32.644222, 45.166286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364498, 32.973373, 45.662025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.089352, 32.690155, 45.598145>,  <38.924263, 32.520222, 45.559814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.089352, 32.690155, 45.598145>,  <39.364498, 32.973373, 45.662025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089352, 32.690155, 45.598145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258580, 0.033452, 0.965410,
		-0.678217, 0.705369, -0.206098,
		-0.687865, -0.708050, -0.159706,
		38.882992, 32.477741, 45.550232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772438, 33.222359, 46.049603>,  <39.364498, 32.973373, 45.662025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772438, 33.222359, 46.049603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758556, 32.827362, 45.988079>,  <38.750225, 32.590363, 45.951164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758556, 32.827362, 45.988079>,  <38.772438, 33.222359, 46.049603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758556, 32.827362, 45.988079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242593, -0.140975, 0.959831,
		-0.969507, 0.070627, -0.234665,
		-0.034708, -0.987491, -0.153809,
		38.748142, 32.531116, 45.941936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176697, 33.007210, 46.384892>,  <38.772438, 33.222359, 46.049603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176697, 33.007210, 46.384892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.420097, 32.690464, 46.364201>,  <38.566139, 32.500416, 46.351788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.420097, 32.690464, 46.364201>,  <38.176697, 33.007210, 46.384892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420097, 32.690464, 46.364201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154285, -0.181994, 0.971120,
		-0.778410, -0.582948, -0.232916,
		0.608501, -0.791865, -0.051726,
		38.602646, 32.452904, 46.348682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819569, 32.373447, 46.752167>,  <38.176697, 33.007210, 46.384892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819569, 32.373447, 46.752167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.207890, 32.277596, 46.756584>,  <38.440884, 32.220085, 46.759235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.207890, 32.277596, 46.756584>,  <37.819569, 32.373447, 46.752167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207890, 32.277596, 46.756584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086426, -0.306463, 0.947951,
		-0.223770, -0.921227, -0.318225,
		0.970802, -0.239626, 0.011041,
		38.499130, 32.205708, 46.759895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785847, 31.742325, 47.126484>,  <37.819569, 32.373447, 46.752167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785847, 31.742325, 47.126484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.164104, 31.870117, 47.150806>,  <38.391060, 31.946793, 47.165398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.164104, 31.870117, 47.150806>,  <37.785847, 31.742325, 47.126484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164104, 31.870117, 47.150806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022909, -0.251935, 0.967473,
		0.324407, -0.913488, -0.245558,
		0.945640, 0.319481, 0.060802,
		38.447796, 31.965961, 47.169048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117382, 31.360939, 47.656921>,  <37.785847, 31.742325, 47.126484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117382, 31.360939, 47.656921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.364307, 31.675104, 47.638790>,  <38.512463, 31.863604, 47.627911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.364307, 31.675104, 47.638790>,  <38.117382, 31.360939, 47.656921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364307, 31.675104, 47.638790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109304, -0.028570, 0.993598,
		0.779088, -0.618314, -0.103485,
		0.617312, 0.785412, -0.045326,
		38.549500, 31.910728, 47.625191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776230, 31.138700, 47.963181>,  <38.117382, 31.360939, 47.656921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776230, 31.138700, 47.963181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.782330, 31.537233, 47.996853>,  <38.785992, 31.776354, 48.017056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.782330, 31.537233, 47.996853>,  <38.776230, 31.138700, 47.963181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782330, 31.537233, 47.996853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356431, -0.084077, 0.930531,
		0.934197, 0.015813, -0.356407,
		0.015251, 0.996334, 0.084180,
		38.786903, 31.836134, 48.022106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397266, 31.297989, 48.182236>,  <38.776230, 31.138700, 47.963181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397266, 31.297989, 48.182236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.191551, 31.628178, 48.275276>,  <39.068123, 31.826290, 48.331100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.191551, 31.628178, 48.275276>,  <39.397266, 31.297989, 48.182236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191551, 31.628178, 48.275276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379213, -0.024387, 0.924988,
		0.769223, 0.563918, -0.300487,
		-0.514289, 0.825471, 0.232605,
		39.037266, 31.875818, 48.345058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824753, 31.770271, 48.756084>,  <39.397266, 31.297989, 48.182236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824753, 31.770271, 48.756084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.448971, 31.902899, 48.790688>,  <39.223503, 31.982475, 48.811451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.448971, 31.902899, 48.790688>,  <39.824753, 31.770271, 48.756084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448971, 31.902899, 48.790688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119588, 0.080653, 0.989542,
		0.321123, 0.939978, -0.115421,
		-0.939456, 0.331568, 0.086511,
		39.167133, 32.002369, 48.816643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851395, 32.189266, 49.340714>,  <39.824753, 31.770271, 48.756084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851395, 32.189266, 49.340714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.456051, 32.140572, 49.304199>,  <39.218845, 32.111355, 49.282291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.456051, 32.140572, 49.304199>,  <39.851395, 32.189266, 49.340714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456051, 32.140572, 49.304199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084824, -0.057272, 0.994748,
		-0.126324, 0.990909, 0.046279,
		-0.988356, -0.121735, -0.091288,
		39.159546, 32.104050, 49.276814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.492083, 30.470095, 49.561234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.860552, 30.598856, 49.473766>,  <32.081635, 30.676113, 49.421284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.860552, 30.598856, 49.473766>,  <31.492083, 30.470095, 49.561234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860552, 30.598856, 49.473766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371572, 0.560588, -0.740051,
		-0.115638, 0.762968, 0.636009,
		0.921174, 0.321901, -0.218672,
		32.136906, 30.695427, 49.408165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440178, 31.297852, 49.448318>,  <31.492083, 30.470095, 49.561234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440178, 31.297852, 49.448318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.764441, 31.157553, 49.260780>,  <31.958998, 31.073374, 49.148258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.764441, 31.157553, 49.260780>,  <31.440178, 31.297852, 49.448318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764441, 31.157553, 49.260780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248509, 0.518921, -0.817902,
		0.530169, 0.779549, 0.333503,
		0.810657, -0.350748, -0.468841,
		32.007637, 31.052328, 49.120129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748964, 31.918787, 49.157246>,  <31.440178, 31.297852, 49.448318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748964, 31.918787, 49.157246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900745, 31.598078, 48.972561>,  <31.991814, 31.405651, 48.861752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900745, 31.598078, 48.972561>,  <31.748964, 31.918787, 49.157246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900745, 31.598078, 48.972561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096227, 0.462123, -0.881579,
		0.920194, 0.378945, 0.098201,
		0.379451, -0.801775, -0.461708,
		32.014580, 31.357546, 48.834049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168217, 32.197041, 48.590050>,  <31.748964, 31.918787, 49.157246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168217, 32.197041, 48.590050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.138058, 31.813734, 48.479752>,  <32.119965, 31.583750, 48.413574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.138058, 31.813734, 48.479752>,  <32.168217, 32.197041, 48.590050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138058, 31.813734, 48.479752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091447, 0.282009, -0.955044,
		0.992952, -0.046790, -0.108893,
		-0.075395, -0.958270, -0.275743,
		32.115440, 31.526253, 48.397030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755188, 32.021500, 48.240261>,  <32.168217, 32.197041, 48.590050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755188, 32.021500, 48.240261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.454018, 31.778492, 48.139057>,  <32.273315, 31.632687, 48.078335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.454018, 31.778492, 48.139057>,  <32.755188, 32.021500, 48.240261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454018, 31.778492, 48.139057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123361, 0.247344, -0.961043,
		0.646435, -0.754809, -0.111288,
		-0.752930, -0.607523, -0.253006,
		32.228138, 31.596235, 48.063156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884010, 31.903816, 47.509037>,  <32.755188, 32.021500, 48.240261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884010, 31.903816, 47.509037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509678, 31.768774, 47.549507>,  <32.285076, 31.687748, 47.573788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509678, 31.768774, 47.549507>,  <32.884010, 31.903816, 47.509037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509678, 31.768774, 47.549507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213144, 0.313524, -0.925350,
		0.280680, -0.887540, -0.365365,
		-0.935835, -0.337603, 0.101174,
		32.228928, 31.667492, 47.579861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690617, 31.489958, 46.886917>,  <32.884010, 31.903816, 47.509037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690617, 31.489958, 46.886917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326519, 31.556519, 47.038582>,  <32.108059, 31.596455, 47.129581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326519, 31.556519, 47.038582>,  <32.690617, 31.489958, 46.886917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326519, 31.556519, 47.038582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312813, 0.323597, -0.892991,
		-0.271292, -0.931448, -0.242500,
		-0.910247, 0.166404, 0.379158,
		32.053444, 31.606440, 47.152328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238300, 31.154263, 46.407440>,  <32.690617, 31.489958, 46.886917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238300, 31.154263, 46.407440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.033714, 31.443312, 46.593437>,  <31.910961, 31.616741, 46.705036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.033714, 31.443312, 46.593437>,  <32.238300, 31.154263, 46.407440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033714, 31.443312, 46.593437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269602, 0.378855, -0.885316,
		-0.815914, -0.578173, 0.001049,
		-0.511468, 0.722624, 0.464989,
		31.880274, 31.660099, 46.732933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523012, 31.068356, 46.231712>,  <32.238300, 31.154263, 46.407440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523012, 31.068356, 46.231712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.600466, 31.453735, 46.305759>,  <31.646938, 31.684963, 46.350189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.600466, 31.453735, 46.305759>,  <31.523012, 31.068356, 46.231712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600466, 31.453735, 46.305759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310025, 0.239111, -0.920169,
		-0.930801, 0.120784, 0.344994,
		0.193634, 0.963451, 0.185119,
		31.658556, 31.742771, 46.361294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021620, 31.490444, 45.728123>,  <31.523012, 31.068356, 46.231712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021620, 31.490444, 45.728123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272469, 31.771772, 45.862026>,  <31.422977, 31.940569, 45.942368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272469, 31.771772, 45.862026>,  <31.021620, 31.490444, 45.728123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272469, 31.771772, 45.862026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030289, 0.451464, -0.891775,
		-0.778334, 0.549110, 0.304425,
		0.627120, 0.703319, 0.334758,
		31.460604, 31.982769, 45.962452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774618, 32.179371, 45.480434>,  <31.021620, 31.490444, 45.728123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774618, 32.179371, 45.480434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.155352, 32.259136, 45.573597>,  <31.383791, 32.306995, 45.629494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.155352, 32.259136, 45.573597>,  <30.774618, 32.179371, 45.480434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155352, 32.259136, 45.573597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105131, 0.501304, -0.858860,
		-0.288030, 0.841978, 0.456193,
		0.951833, 0.199418, 0.232909,
		31.440901, 32.318962, 45.643471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969067, 32.857262, 45.236298>,  <30.774618, 32.179371, 45.480434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969067, 32.857262, 45.236298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.332026, 32.689793, 45.250965>,  <31.549801, 32.589310, 45.259766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.332026, 32.689793, 45.250965>,  <30.969067, 32.857262, 45.236298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332026, 32.689793, 45.250965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205757, 0.366467, -0.907395,
		0.366467, 0.830910, 0.418676,
		0.907395, -0.418676, 0.036668,
		31.604244, 32.564190, 45.261967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458952, 33.301369, 44.876671>,  <30.969067, 32.857262, 45.236298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458952, 33.301369, 44.876671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.695276, 32.978733, 44.869064>,  <31.837070, 32.785152, 44.864502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.695276, 32.978733, 44.869064>,  <31.458952, 33.301369, 44.876671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695276, 32.978733, 44.869064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237122, 0.196120, -0.951478,
		0.771179, 0.557634, 0.307129,
		0.590810, -0.806586, -0.019016,
		31.872519, 32.736755, 44.863361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052349, 33.530266, 44.642761>,  <31.458952, 33.301369, 44.876671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052349, 33.530266, 44.642761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.057644, 33.141174, 44.550140>,  <32.060822, 32.907719, 44.494568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.057644, 33.141174, 44.550140>,  <32.052349, 33.530266, 44.642761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057644, 33.141174, 44.550140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316489, 0.223740, -0.921832,
		0.948504, -0.061080, 0.310821,
		0.013237, -0.972733, -0.231550,
		32.061615, 32.849354, 44.480675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791210, 33.462494, 44.840115>,  <32.052349, 33.530266, 44.642761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791210, 33.462494, 44.840115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.059502, 33.754021, 44.895184>,  <33.220474, 33.928936, 44.928226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.059502, 33.754021, 44.895184>,  <32.791210, 33.462494, 44.840115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059502, 33.754021, 44.895184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105466, -0.277449, 0.954934,
		0.734169, -0.625978, -0.262957,
		0.670725, 0.728816, 0.137675,
		33.260719, 33.972664, 44.936485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313839, 33.198395, 45.319630>,  <32.791210, 33.462494, 44.840115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313839, 33.198395, 45.319630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.372746, 33.592884, 45.349766>,  <33.408089, 33.829578, 45.367847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.372746, 33.592884, 45.349766>,  <33.313839, 33.198395, 45.319630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372746, 33.592884, 45.349766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036494, -0.081538, 0.996002,
		0.988423, -0.143932, -0.047999,
		0.147270, 0.986223, 0.075342,
		33.416927, 33.888752, 45.372368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999214, 33.257877, 45.596516>,  <33.313839, 33.198395, 45.319630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999214, 33.257877, 45.596516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.810940, 33.596634, 45.695492>,  <33.697975, 33.799889, 45.754879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.810940, 33.596634, 45.695492>,  <33.999214, 33.257877, 45.596516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810940, 33.596634, 45.695492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101178, -0.226791, 0.968674,
		0.876479, 0.480978, 0.021061,
		-0.470687, 0.846892, 0.247442,
		33.669735, 33.850700, 45.769726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456554, 33.570698, 46.112701>,  <33.999214, 33.257877, 45.596516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456554, 33.570698, 46.112701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121655, 33.784157, 46.160419>,  <33.920715, 33.912231, 46.189049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121655, 33.784157, 46.160419>,  <34.456554, 33.570698, 46.112701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121655, 33.784157, 46.160419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129892, -0.017828, 0.991368,
		0.531170, 0.845518, -0.054391,
		-0.837249, 0.533650, 0.119296,
		33.870480, 33.944252, 46.196209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725082, 34.145611, 46.631672>,  <34.456554, 33.570698, 46.112701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725082, 34.145611, 46.631672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.328930, 34.097683, 46.659355>,  <34.091240, 34.068928, 46.675964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.328930, 34.097683, 46.659355>,  <34.725082, 34.145611, 46.631672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328930, 34.097683, 46.659355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056478, 0.106603, 0.992696,
		-0.126321, 0.987056, -0.098810,
		-0.990380, -0.119818, 0.069213,
		34.031815, 34.061737, 46.680119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495682, 34.646500, 47.002457>,  <34.725082, 34.145611, 46.631672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495682, 34.646500, 47.002457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.210373, 34.367424, 47.029236>,  <34.039188, 34.199978, 47.045303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.210373, 34.367424, 47.029236>,  <34.495682, 34.646500, 47.002457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210373, 34.367424, 47.029236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029046, 0.066009, 0.997396,
		-0.700290, 0.713355, -0.026817,
		-0.713267, -0.697688, 0.066946,
		33.996391, 34.158119, 47.049320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153885, 34.922951, 47.484489>,  <34.495682, 34.646500, 47.002457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153885, 34.922951, 47.484489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053719, 34.535789, 47.476002>,  <33.993618, 34.303493, 47.470909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053719, 34.535789, 47.476002>,  <34.153885, 34.922951, 47.484489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053719, 34.535789, 47.476002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127767, -0.054770, 0.990291,
		-0.959670, 0.245275, 0.137382,
		-0.250418, -0.967905, -0.021223,
		33.978592, 34.245419, 47.469635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935909, 34.783287, 48.079586>,  <34.153885, 34.922951, 47.484489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935909, 34.783287, 48.079586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.960907, 34.400490, 47.966270>,  <33.975906, 34.170811, 47.898281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.960907, 34.400490, 47.966270>,  <33.935909, 34.783287, 48.079586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960907, 34.400490, 47.966270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140696, -0.289460, 0.946793,
		-0.988078, -0.019313, -0.152736,
		0.062497, -0.956995, -0.283292,
		33.979656, 34.113392, 47.881283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346218, 34.351410, 48.422165>,  <33.935909, 34.783287, 48.079586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346218, 34.351410, 48.422165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642254, 34.097229, 48.334106>,  <33.819874, 33.944721, 48.281269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642254, 34.097229, 48.334106>,  <33.346218, 34.351410, 48.422165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642254, 34.097229, 48.334106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080136, -0.408353, 0.909300,
		-0.667718, -0.655321, -0.353140,
		0.740089, -0.635455, -0.220150,
		33.864281, 33.906593, 48.268063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090012, 33.620983, 48.521511>,  <33.346218, 34.351410, 48.422165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090012, 33.620983, 48.521511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486702, 33.582500, 48.555496>,  <33.724716, 33.559410, 48.575886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486702, 33.582500, 48.555496>,  <33.090012, 33.620983, 48.521511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486702, 33.582500, 48.555496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121097, -0.481908, 0.867813,
		-0.042543, -0.870924, -0.489572,
		0.991729, -0.096205, 0.084965,
		33.784222, 33.553638, 48.580986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306561, 32.996540, 48.736992>,  <33.090012, 33.620983, 48.521511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306561, 32.996540, 48.736992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.609161, 33.235294, 48.843899>,  <33.790722, 33.378548, 48.908043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.609161, 33.235294, 48.843899>,  <33.306561, 32.996540, 48.736992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609161, 33.235294, 48.843899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055843, -0.466132, 0.882951,
		0.651597, -0.653033, -0.385964,
		0.756507, 0.596882, 0.267263,
		33.836113, 33.414360, 48.924076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865364, 32.569679, 48.955883>,  <33.306561, 32.996540, 48.736992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865364, 32.569679, 48.955883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925823, 32.919651, 49.139908>,  <33.962101, 33.129635, 49.250324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925823, 32.919651, 49.139908>,  <33.865364, 32.569679, 48.955883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925823, 32.919651, 49.139908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107593, -0.477206, 0.872180,
		0.982638, -0.082333, -0.166267,
		0.151152, 0.874926, 0.460062,
		33.971169, 33.182129, 49.277927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466499, 32.361790, 49.386803>,  <33.865364, 32.569679, 48.955883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466499, 32.361790, 49.386803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.323997, 32.706295, 49.531750>,  <34.238495, 32.912998, 49.618717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.323997, 32.706295, 49.531750>,  <34.466499, 32.361790, 49.386803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323997, 32.706295, 49.531750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084217, -0.356640, 0.930438,
		0.930586, 0.361991, 0.054522,
		-0.356255, 0.861261, 0.362369,
		34.217121, 32.964672, 49.640461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012943, 32.666531, 49.827652>,  <34.466499, 32.361790, 49.386803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012943, 32.666531, 49.827652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665726, 32.821430, 49.951935>,  <34.457397, 32.914371, 50.026505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665726, 32.821430, 49.951935>,  <35.012943, 32.666531, 49.827652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665726, 32.821430, 49.951935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154393, -0.384233, 0.910235,
		0.471874, 0.838093, 0.273741,
		-0.868042, 0.387253, 0.310705,
		34.405312, 32.937607, 50.045147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610943, 33.182247, 49.804539>,  <35.012943, 32.666531, 49.827652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610943, 33.182247, 49.804539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.996864, 33.279736, 49.844055>,  <36.228416, 33.338230, 49.867764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.996864, 33.279736, 49.844055>,  <35.610943, 33.182247, 49.804539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996864, 33.279736, 49.844055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015696, 0.321617, -0.946740,
		-0.262514, 0.914966, 0.306471,
		0.964801, 0.243722, 0.098790,
		36.286304, 33.352852, 49.873692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676781, 33.846199, 49.563587>,  <35.610943, 33.182247, 49.804539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676781, 33.846199, 49.563587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.031113, 33.661972, 49.541042>,  <36.243713, 33.551437, 49.527515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.031113, 33.661972, 49.541042>,  <35.676781, 33.846199, 49.563587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031113, 33.661972, 49.541042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128693, 0.360572, -0.923811,
		0.445800, 0.811089, 0.378679,
		0.885833, -0.460568, -0.056361,
		36.296864, 33.523800, 49.524136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090981, 34.312836, 49.414131>,  <35.676781, 33.846199, 49.563587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090981, 34.312836, 49.414131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.314747, 34.001747, 49.299446>,  <36.449009, 33.815094, 49.230637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.314747, 34.001747, 49.299446>,  <36.090981, 34.312836, 49.414131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314747, 34.001747, 49.299446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018832, 0.357733, -0.933634,
		0.828671, 0.516892, 0.214769,
		0.559418, -0.777721, -0.286708,
		36.482571, 33.768433, 49.213432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757065, 34.656155, 48.946232>,  <36.090981, 34.312836, 49.414131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757065, 34.656155, 48.946232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699211, 34.266735, 48.875481>,  <36.664497, 34.033085, 48.833031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699211, 34.266735, 48.875481>,  <36.757065, 34.656155, 48.946232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699211, 34.266735, 48.875481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012184, 0.176990, -0.984137,
		0.989410, -0.144498, -0.013738,
		-0.144637, -0.973548, -0.176876,
		36.655819, 33.974670, 48.822418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342033, 34.420586, 48.532253>,  <36.757065, 34.656155, 48.946232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342033, 34.420586, 48.532253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.050903, 34.156940, 48.456528>,  <36.876225, 33.998753, 48.411091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.050903, 34.156940, 48.456528>,  <37.342033, 34.420586, 48.532253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050903, 34.156940, 48.456528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157370, 0.108165, -0.981598,
		0.667460, -0.744225, 0.024999,
		-0.727826, -0.659112, -0.189315,
		36.832554, 33.959206, 48.399734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612499, 33.949207, 48.239437>,  <37.342033, 34.420586, 48.532253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612499, 33.949207, 48.239437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.227810, 33.925156, 48.132507>,  <36.996994, 33.910725, 48.068348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.227810, 33.925156, 48.132507>,  <37.612499, 33.949207, 48.239437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227810, 33.925156, 48.132507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261348, 0.091825, -0.960867,
		0.082330, -0.993958, -0.072594,
		-0.961727, -0.060136, -0.267329,
		36.939293, 33.907116, 48.052307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613777, 33.450150, 47.653812>,  <37.612499, 33.949207, 48.239437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613777, 33.450150, 47.653812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.247707, 33.605656, 47.611259>,  <37.028065, 33.698959, 47.585728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.247707, 33.605656, 47.611259>,  <37.613777, 33.450150, 47.653812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247707, 33.605656, 47.611259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174873, 0.145186, -0.973828,
		-0.363147, -0.909825, -0.200856,
		-0.915174, 0.388767, -0.106380,
		36.973156, 33.722286, 47.579346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274136, 33.220444, 46.998974>,  <37.613777, 33.450150, 47.653812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274136, 33.220444, 46.998974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.024895, 33.524872, 47.071102>,  <36.875351, 33.707527, 47.114380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.024895, 33.524872, 47.071102>,  <37.274136, 33.220444, 46.998974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024895, 33.524872, 47.071102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073952, 0.172193, -0.982283,
		-0.778633, -0.625402, -0.051013,
		-0.623106, 0.761066, 0.180325,
		36.837963, 33.753193, 47.125198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554241, 33.059109, 46.623306>,  <37.274136, 33.220444, 46.998974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554241, 33.059109, 46.623306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.645840, 33.443691, 46.684174>,  <36.700798, 33.674442, 46.720692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.645840, 33.443691, 46.684174>,  <36.554241, 33.059109, 46.623306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645840, 33.443691, 46.684174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026748, 0.162475, -0.986350,
		-0.973060, 0.221801, 0.062924,
		0.228997, 0.961461, 0.152165,
		36.714539, 33.732128, 46.729824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106743, 33.428173, 46.324966>,  <36.554241, 33.059109, 46.623306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106743, 33.428173, 46.324966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413361, 33.684307, 46.344452>,  <36.597332, 33.837990, 46.356144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413361, 33.684307, 46.344452>,  <36.106743, 33.428173, 46.324966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413361, 33.684307, 46.344452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154008, 0.256950, -0.954075,
		-0.623448, 0.723840, 0.295581,
		0.766547, 0.640338, 0.048717,
		36.643326, 33.876408, 46.359066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826340, 33.965633, 45.989822>,  <36.106743, 33.428173, 46.324966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826340, 33.965633, 45.989822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.219456, 34.039490, 45.992287>,  <36.455326, 34.083805, 45.993763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.219456, 34.039490, 45.992287>,  <35.826340, 33.965633, 45.989822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219456, 34.039490, 45.992287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074401, 0.426077, -0.901622,
		-0.169101, 0.885644, 0.432481,
		0.982787, 0.184642, 0.006157,
		36.514290, 34.094883, 45.994133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881233, 34.612492, 45.746017>,  <35.826340, 33.965633, 45.989822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881233, 34.612492, 45.746017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249210, 34.464073, 45.695362>,  <36.469997, 34.375023, 45.664967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249210, 34.464073, 45.695362>,  <35.881233, 34.612492, 45.746017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249210, 34.464073, 45.695362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041467, 0.229115, -0.972516,
		0.389863, 0.899906, 0.195386,
		0.919939, -0.371046, -0.126640,
		36.525192, 34.352760, 45.657372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394894, 35.152607, 45.473156>,  <35.881233, 34.612492, 45.746017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394894, 35.152607, 45.473156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505726, 34.785721, 45.358650>,  <36.572227, 34.565590, 45.289948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505726, 34.785721, 45.358650>,  <36.394894, 35.152607, 45.473156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505726, 34.785721, 45.358650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051088, 0.311570, -0.948849,
		0.959487, 0.248285, 0.133189,
		0.277083, -0.917212, -0.286263,
		36.588852, 34.510555, 45.272770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072857, 35.181305, 45.151882>,  <36.394894, 35.152607, 45.473156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072857, 35.181305, 45.151882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.875397, 34.861935, 45.014000>,  <36.756920, 34.670311, 44.931271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.875397, 34.861935, 45.014000>,  <37.072857, 35.181305, 45.151882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875397, 34.861935, 45.014000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142168, 0.316948, -0.937727,
		0.857962, -0.511914, -0.042950,
		-0.493649, -0.798428, -0.344708,
		36.727303, 34.622406, 44.910587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.633612, 42.103146, 34.671608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.445379, 41.995739, 34.335403>,  <30.332439, 41.931293, 34.133682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.445379, 41.995739, 34.335403>,  <30.633612, 42.103146, 34.671608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445379, 41.995739, 34.335403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337961, -0.825077, 0.452803,
		-0.815069, 0.497138, 0.297515,
		-0.470579, -0.268517, -0.840508,
		30.304205, 41.915184, 34.083252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951452, 41.999699, 34.782684>,  <30.633612, 42.103146, 34.671608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951452, 41.999699, 34.782684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.012341, 41.779881, 34.454094>,  <30.048874, 41.647991, 34.256939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.012341, 41.779881, 34.454094>,  <29.951452, 41.999699, 34.782684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012341, 41.779881, 34.454094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308461, -0.816064, 0.488765,
		-0.938978, 0.178993, -0.293737,
		0.152223, -0.549546, -0.821479,
		30.058008, 41.615017, 34.207649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464113, 41.489487, 34.932400>,  <29.951452, 41.999699, 34.782684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464113, 41.489487, 34.932400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.622520, 41.339577, 34.597088>,  <29.717564, 41.249630, 34.395901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.622520, 41.339577, 34.597088>,  <29.464113, 41.489487, 34.932400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622520, 41.339577, 34.597088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162141, -0.927112, 0.337896,
		-0.903813, 0.002106, -0.427922,
		0.396020, -0.374779, -0.838277,
		29.741325, 41.227142, 34.345604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968346, 41.078968, 34.650043>,  <29.464113, 41.489487, 34.932400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968346, 41.078968, 34.650043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318567, 40.940639, 34.515099>,  <29.528700, 40.857643, 34.434132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318567, 40.940639, 34.515099>,  <28.968346, 41.078968, 34.650043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318567, 40.940639, 34.515099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249255, -0.921534, 0.297735,
		-0.413855, -0.176593, -0.893050,
		0.875554, -0.345817, -0.337365,
		29.581234, 40.836895, 34.413891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821110, 40.424606, 34.266911>,  <28.968346, 41.078968, 34.650043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821110, 40.424606, 34.266911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.212042, 40.408482, 34.350048>,  <29.446602, 40.398808, 34.399933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.212042, 40.408482, 34.350048>,  <28.821110, 40.424606, 34.266911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212042, 40.408482, 34.350048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107119, -0.940930, 0.321213,
		0.182624, -0.336195, -0.923916,
		0.977330, -0.040308, 0.207849,
		29.505241, 40.396389, 34.412403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997696, 39.827614, 33.959190>,  <28.821110, 40.424606, 34.266911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997696, 39.827614, 33.959190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304417, 39.900005, 34.205528>,  <29.488449, 39.943439, 34.353333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304417, 39.900005, 34.205528>,  <28.997696, 39.827614, 33.959190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304417, 39.900005, 34.205528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110752, -0.907739, 0.404653,
		0.632257, -0.378495, -0.676012,
		0.766801, 0.180975, 0.615844,
		29.534456, 39.954296, 34.390282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576626, 39.223183, 33.972740>,  <28.997696, 39.827614, 33.959190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576626, 39.223183, 33.972740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.595821, 39.394127, 34.333862>,  <29.607340, 39.496693, 34.550537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.595821, 39.394127, 34.333862>,  <29.576626, 39.223183, 33.972740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595821, 39.394127, 34.333862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290978, -0.858664, 0.421933,
		0.955525, -0.282946, 0.083145,
		0.047991, 0.427361, 0.902806,
		29.610218, 39.522335, 34.604706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835680, 38.743263, 34.367065>,  <29.576626, 39.223183, 33.972740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835680, 38.743263, 34.367065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.650326, 38.975021, 34.635269>,  <29.539114, 39.114075, 34.796192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.650326, 38.975021, 34.635269>,  <29.835680, 38.743263, 34.367065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650326, 38.975021, 34.635269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316743, -0.814952, 0.485310,
		0.827616, 0.012507, 0.561155,
		-0.463385, 0.579393, 0.670506,
		29.511311, 39.148838, 34.836422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101990, 38.582024, 35.056114>,  <29.835680, 38.743263, 34.367065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101990, 38.582024, 35.056114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.751596, 38.761410, 35.127144>,  <29.541361, 38.869041, 35.169762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.751596, 38.761410, 35.127144>,  <30.101990, 38.582024, 35.056114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751596, 38.761410, 35.127144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309849, -0.805339, 0.505394,
		0.369661, 0.387694, 0.844419,
		-0.875982, 0.448467, 0.177576,
		29.488802, 38.895950, 35.180416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880711, 38.347534, 35.702885>,  <30.101990, 38.582024, 35.056114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880711, 38.347534, 35.702885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.540295, 38.481792, 35.541355>,  <29.336044, 38.562347, 35.444435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.540295, 38.481792, 35.541355>,  <29.880711, 38.347534, 35.702885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540295, 38.481792, 35.541355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484033, -0.799585, 0.355493,
		-0.203576, 0.498004, 0.842941,
		-0.851040, 0.335641, -0.403827,
		29.284983, 38.582485, 35.420208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356945, 38.158569, 36.218060>,  <29.880711, 38.347534, 35.702885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356945, 38.158569, 36.218060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134764, 38.231075, 35.893440>,  <29.001455, 38.274578, 35.698669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134764, 38.231075, 35.893440>,  <29.356945, 38.158569, 36.218060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134764, 38.231075, 35.893440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557767, -0.805057, 0.201937,
		-0.616738, 0.564823, 0.548279,
		-0.555454, 0.181269, -0.811549,
		28.968128, 38.285458, 35.649975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737106, 38.010605, 36.540466>,  <29.356945, 38.158569, 36.218060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737106, 38.010605, 36.540466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.717451, 37.989033, 36.141533>,  <28.705658, 37.976089, 35.902172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.717451, 37.989033, 36.141533>,  <28.737106, 38.010605, 36.540466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717451, 37.989033, 36.141533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574686, -0.815166, 0.072394,
		-0.816897, 0.576712, 0.009064,
		-0.049139, -0.053929, -0.997335,
		28.702709, 37.972855, 35.842331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006271, 37.901535, 36.394730>,  <28.737106, 38.010605, 36.540466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006271, 37.901535, 36.394730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.215826, 37.793285, 36.071667>,  <28.341558, 37.728336, 35.877831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.215826, 37.793285, 36.071667>,  <28.006271, 37.901535, 36.394730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215826, 37.793285, 36.071667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577896, -0.809506, -0.103614,
		-0.625761, 0.521023, -0.580481,
		0.523888, -0.270620, -0.807655,
		28.372992, 37.712101, 35.829369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519804, 37.862934, 35.963234>,  <28.006271, 37.901535, 36.394730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519804, 37.862934, 35.963234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.827415, 37.627789, 35.862823>,  <28.011982, 37.486702, 35.802578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.827415, 37.627789, 35.862823>,  <27.519804, 37.862934, 35.963234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827415, 37.627789, 35.862823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623641, -0.776174, -0.092880,
		-0.140243, 0.227980, -0.963513,
		0.769028, -0.587861, -0.251030,
		28.058125, 37.451431, 35.787514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184019, 37.355751, 35.694107>,  <27.519804, 37.862934, 35.963234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184019, 37.355751, 35.694107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.551683, 37.203270, 35.654442>,  <27.772282, 37.111782, 35.630642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.551683, 37.203270, 35.654442>,  <27.184019, 37.355751, 35.694107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551683, 37.203270, 35.654442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389854, -0.916382, -0.090877,
		-0.056225, 0.122188, -0.990913,
		0.919159, -0.381202, -0.099159,
		27.827431, 37.088909, 35.624695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254372, 36.808006, 35.201363>,  <27.184019, 37.355751, 35.694107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254372, 36.808006, 35.201363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552736, 36.735699, 35.457783>,  <27.731754, 36.692314, 35.611633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552736, 36.735699, 35.457783>,  <27.254372, 36.808006, 35.201363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552736, 36.735699, 35.457783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316988, -0.942822, 0.102982,
		0.585778, -0.280020, -0.760561,
		0.745911, -0.180764, 0.641047,
		27.776510, 36.681469, 35.650097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681248, 36.277168, 34.837658>,  <27.254372, 36.808006, 35.201363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681248, 36.277168, 34.837658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.730848, 36.254116, 35.233902>,  <27.760609, 36.240284, 35.471649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.730848, 36.254116, 35.233902>,  <27.681248, 36.277168, 34.837658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730848, 36.254116, 35.233902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307384, -0.951436, -0.016875,
		0.943472, -0.302404, -0.135694,
		0.124001, -0.057632, 0.990607,
		27.768049, 36.236828, 35.531086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166042, 35.706535, 35.008888>,  <27.681248, 36.277168, 34.837658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166042, 35.706535, 35.008888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938681, 35.773460, 35.331112>,  <27.802263, 35.813614, 35.524445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938681, 35.773460, 35.331112>,  <28.166042, 35.706535, 35.008888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938681, 35.773460, 35.331112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211977, -0.975831, 0.053104,
		0.794973, -0.140576, 0.590132,
		-0.568404, 0.167311, 0.805558,
		27.768160, 35.823654, 35.572781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342930, 35.254673, 35.514481>,  <28.166042, 35.706535, 35.008888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342930, 35.254673, 35.514481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962500, 35.352417, 35.590107>,  <27.734241, 35.411064, 35.635483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962500, 35.352417, 35.590107>,  <28.342930, 35.254673, 35.514481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962500, 35.352417, 35.590107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194798, -0.949245, 0.246958,
		0.239814, 0.198046, 0.950404,
		-0.951075, 0.244361, 0.189063,
		27.677177, 35.425724, 35.646824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129995, 34.836258, 36.065041>,  <28.342930, 35.254673, 35.514481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129995, 34.836258, 36.065041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799362, 34.950172, 35.870861>,  <27.600983, 35.018520, 35.754353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799362, 34.950172, 35.870861>,  <28.129995, 34.836258, 36.065041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799362, 34.950172, 35.870861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293901, -0.953999, -0.059228,
		-0.479985, 0.093718, 0.872256,
		-0.826581, 0.284785, -0.485449,
		27.551388, 35.035606, 35.725227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633366, 34.296452, 36.292828>,  <28.129995, 34.836258, 36.065041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633366, 34.296452, 36.292828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018850, 34.197926, 36.333992>,  <29.250141, 34.138809, 36.358692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018850, 34.197926, 36.333992>,  <28.633366, 34.296452, 36.292828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018850, 34.197926, 36.333992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232447, 0.584724, -0.777217,
		0.131265, 0.772934, 0.620760,
		0.963711, -0.246315, 0.102912,
		29.307964, 34.124031, 36.364864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949348, 34.877758, 36.210094>,  <28.633366, 34.296452, 36.292828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949348, 34.877758, 36.210094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248726, 34.615849, 36.167934>,  <29.428352, 34.458702, 36.142639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248726, 34.615849, 36.167934>,  <28.949348, 34.877758, 36.210094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248726, 34.615849, 36.167934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390330, 0.563392, -0.728170,
		0.536167, 0.503852, 0.677243,
		0.748443, -0.654769, -0.105403,
		29.473259, 34.419418, 36.136314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560793, 35.310986, 36.151253>,  <28.949348, 34.877758, 36.210094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560793, 35.310986, 36.151253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658033, 34.957340, 35.991631>,  <29.716377, 34.745152, 35.895859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658033, 34.957340, 35.991631>,  <29.560793, 35.310986, 36.151253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658033, 34.957340, 35.991631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464852, 0.467263, -0.752049,
		0.851361, -0.002678, 0.524574,
		0.243100, -0.884114, -0.399054,
		29.730963, 34.692104, 35.871914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193424, 35.342392, 35.964565>,  <29.560793, 35.310986, 36.151253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193424, 35.342392, 35.964565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.083372, 35.031898, 35.737667>,  <30.017340, 34.845604, 35.601528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.083372, 35.031898, 35.737667>,  <30.193424, 35.342392, 35.964565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083372, 35.031898, 35.737667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322069, 0.481510, -0.815119,
		0.905856, -0.406957, 0.117521,
		-0.275131, -0.776230, -0.567247,
		30.000834, 34.799030, 35.567493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766096, 35.119678, 35.514374>,  <30.193424, 35.342392, 35.964565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766096, 35.119678, 35.514374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.417475, 35.016521, 35.347576>,  <30.208302, 34.954628, 35.247498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.417475, 35.016521, 35.347576>,  <30.766096, 35.119678, 35.514374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417475, 35.016521, 35.347576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313805, 0.360057, -0.878570,
		0.376736, -0.896571, -0.232873,
		-0.871549, -0.257912, -0.416995,
		30.156008, 34.939152, 35.222481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970055, 34.949368, 34.800121>,  <30.766096, 35.119678, 35.514374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970055, 34.949368, 34.800121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.571560, 34.979328, 34.782688>,  <30.332462, 34.997303, 34.772228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.571560, 34.979328, 34.782688>,  <30.970055, 34.949368, 34.800121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571560, 34.979328, 34.782688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069320, 0.386969, -0.919484,
		-0.052003, -0.919046, -0.390705,
		-0.996238, 0.074899, -0.043585,
		30.272688, 35.001797, 34.769611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813578, 34.679783, 34.132492>,  <30.970055, 34.949368, 34.800121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813578, 34.679783, 34.132492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500212, 34.895771, 34.255585>,  <30.312193, 35.025364, 34.329441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500212, 34.895771, 34.255585>,  <30.813578, 34.679783, 34.132492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500212, 34.895771, 34.255585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141097, 0.636731, -0.758067,
		-0.605273, -0.550460, -0.575012,
		-0.783413, 0.539970, 0.307728,
		30.265188, 35.057762, 34.347904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513420, 34.887749, 33.532356>,  <30.813578, 34.679783, 34.132492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513420, 34.887749, 33.532356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.353115, 35.157486, 33.780437>,  <30.256931, 35.319328, 33.929287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.353115, 35.157486, 33.780437>,  <30.513420, 34.887749, 33.532356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353115, 35.157486, 33.780437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046514, 0.691042, -0.721317,
		-0.915000, -0.260231, -0.308311,
		-0.400765, 0.674345, 0.620199,
		30.232885, 35.359791, 33.966496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912786, 35.119839, 33.155113>,  <30.513420, 34.887749, 33.532356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912786, 35.119839, 33.155113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002258, 35.408451, 33.417217>,  <30.055941, 35.581619, 33.574478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002258, 35.408451, 33.417217>,  <29.912786, 35.119839, 33.155113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002258, 35.408451, 33.417217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010367, 0.674018, -0.738642,
		-0.974608, 0.158425, 0.158243,
		0.223678, 0.721527, 0.655261,
		30.069361, 35.624908, 33.613796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436226, 35.669594, 33.031258>,  <29.912786, 35.119839, 33.155113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436226, 35.669594, 33.031258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.751337, 35.841076, 33.208172>,  <29.940403, 35.943966, 33.314320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.751337, 35.841076, 33.208172>,  <29.436226, 35.669594, 33.031258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751337, 35.841076, 33.208172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027242, 0.693094, -0.720332,
		-0.615357, 0.579511, 0.534325,
		0.787778, 0.428705, 0.442287,
		29.987671, 35.969688, 33.340858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305021, 36.354515, 32.841496>,  <29.436226, 35.669594, 33.031258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305021, 36.354515, 32.841496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679596, 36.349232, 32.981731>,  <29.904341, 36.346062, 33.065872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679596, 36.349232, 32.981731>,  <29.305021, 36.354515, 32.841496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679596, 36.349232, 32.981731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249024, 0.728930, -0.637690,
		-0.247131, 0.684461, 0.685886,
		0.936436, -0.013209, 0.350588,
		29.960527, 36.345268, 33.086906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442324, 37.047195, 33.126602>,  <29.305021, 36.354515, 32.841496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442324, 37.047195, 33.126602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.792078, 36.881443, 33.025623>,  <30.001930, 36.781990, 32.965034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.792078, 36.881443, 33.025623>,  <29.442324, 37.047195, 33.126602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792078, 36.881443, 33.025623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159423, 0.736727, -0.657128,
		0.458291, 0.534338, 0.710248,
		0.874388, -0.414386, -0.252449,
		30.054394, 36.757126, 32.949890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986315, 37.553932, 33.195042>,  <29.442324, 37.047195, 33.126602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986315, 37.553932, 33.195042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158937, 37.288464, 32.950649>,  <30.262512, 37.129181, 32.804016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158937, 37.288464, 32.950649>,  <29.986315, 37.553932, 33.195042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158937, 37.288464, 32.950649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247055, 0.738353, -0.627533,
		0.867595, 0.119873, 0.482608,
		0.431559, -0.663675, -0.610976,
		30.288404, 37.089359, 32.767357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660862, 37.772621, 32.996304>,  <29.986315, 37.553932, 33.195042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660862, 37.772621, 32.996304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.591164, 37.507881, 32.704662>,  <30.549345, 37.349037, 32.529678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.591164, 37.507881, 32.704662>,  <30.660862, 37.772621, 32.996304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591164, 37.507881, 32.704662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327586, 0.659296, -0.676769,
		0.928615, -0.356770, 0.101932,
		-0.174247, -0.661849, -0.729105,
		30.538889, 37.309326, 32.485931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227198, 37.755074, 32.590382>,  <30.660862, 37.772621, 32.996304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227198, 37.755074, 32.590382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.976948, 37.571625, 32.337952>,  <30.826797, 37.461555, 32.186493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.976948, 37.571625, 32.337952>,  <31.227198, 37.755074, 32.590382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976948, 37.571625, 32.337952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336018, 0.571636, -0.748549,
		0.704049, -0.680363, -0.203523,
		-0.625626, -0.458627, -0.631073,
		30.789259, 37.434036, 32.148628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518845, 37.774773, 31.960678>,  <31.227198, 37.755074, 32.590382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518845, 37.774773, 31.960678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140984, 37.733082, 31.836248>,  <30.914267, 37.708069, 31.761591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140984, 37.733082, 31.836248>,  <31.518845, 37.774773, 31.960678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140984, 37.733082, 31.836248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189558, 0.600499, -0.776832,
		0.267767, -0.792804, -0.547507,
		-0.944653, -0.104226, -0.311076,
		30.857588, 37.701813, 31.742926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568556, 37.713005, 31.193584>,  <31.518845, 37.774773, 31.960678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568556, 37.713005, 31.193584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.195335, 37.814552, 31.295536>,  <30.971403, 37.875481, 31.356707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.195335, 37.814552, 31.295536>,  <31.568556, 37.713005, 31.193584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195335, 37.814552, 31.295536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007846, 0.722698, -0.691120,
		-0.359656, -0.642851, -0.676307,
		-0.933052, 0.253872, 0.254879,
		30.915421, 37.890713, 31.372000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300091, 37.940712, 30.531408>,  <31.568556, 37.713005, 31.193584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300091, 37.940712, 30.531408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.063271, 38.124187, 30.796461>,  <30.921179, 38.234272, 30.955492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.063271, 38.124187, 30.796461>,  <31.300091, 37.940712, 30.531408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063271, 38.124187, 30.796461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109077, 0.769051, -0.629812,
		-0.798484, -0.445159, -0.405286,
		-0.592052, 0.458687, 0.662632,
		30.885654, 38.261795, 30.995251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761648, 38.222050, 30.093149>,  <31.300091, 37.940712, 30.531408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761648, 38.222050, 30.093149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.726862, 38.402489, 30.448439>,  <30.705990, 38.510754, 30.661613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.726862, 38.402489, 30.448439>,  <30.761648, 38.222050, 30.093149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726862, 38.402489, 30.448439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265321, 0.848913, -0.457113,
		-0.960230, -0.275418, 0.045860,
		-0.086966, 0.451101, 0.888226,
		30.700771, 38.537819, 30.714907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376827, 38.821724, 29.902075>,  <30.761648, 38.222050, 30.093149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376827, 38.821724, 29.902075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.501610, 38.931274, 30.265982>,  <30.576479, 38.997005, 30.484325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.501610, 38.931274, 30.265982>,  <30.376827, 38.821724, 29.902075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501610, 38.931274, 30.265982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075844, 0.961674, -0.263498,
		-0.947065, 0.013199, 0.320771,
		0.311955, 0.273878, 0.909766,
		30.595196, 39.013439, 30.538912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953186, 39.400036, 30.068098>,  <30.376827, 38.821724, 29.902075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953186, 39.400036, 30.068098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.273912, 39.433025, 30.304840>,  <30.466349, 39.452820, 30.446884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.273912, 39.433025, 30.304840>,  <29.953186, 39.400036, 30.068098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273912, 39.433025, 30.304840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121954, 0.946999, -0.297185,
		-0.584996, 0.310466, 0.749259,
		0.801814, 0.082477, 0.591854,
		30.514458, 39.457767, 30.482397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845936, 39.941265, 30.565159>,  <29.953186, 39.400036, 30.068098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845936, 39.941265, 30.565159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.236025, 39.884804, 30.497021>,  <30.470078, 39.850925, 30.456137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.236025, 39.884804, 30.497021>,  <29.845936, 39.941265, 30.565159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236025, 39.884804, 30.497021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082214, 0.946086, -0.313308,
		0.205388, 0.291540, 0.934249,
		0.975221, -0.141158, -0.170346,
		30.528591, 39.842457, 30.445917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.524662, 32.822659, 49.593090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.229919, 32.554703, 49.629505>,  <39.053074, 32.393929, 49.651352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.229919, 32.554703, 49.629505>,  <39.524662, 32.822659, 49.593090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229919, 32.554703, 49.629505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064483, 0.203687, 0.976910,
		-0.672962, 0.713977, -0.193285,
		-0.736861, -0.669887, 0.091034,
		39.008862, 32.353737, 49.656815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008945, 32.982426, 50.110718>,  <39.524662, 32.822659, 49.593090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008945, 32.982426, 50.110718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.936672, 32.589233, 50.097466>,  <38.893307, 32.353317, 50.089516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.936672, 32.589233, 50.097466>,  <39.008945, 32.982426, 50.110718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936672, 32.589233, 50.097466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107023, -0.013831, 0.994161,
		-0.977700, 0.183178, -0.102703,
		-0.180688, -0.982983, -0.033127,
		38.882465, 32.294338, 50.087528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497143, 32.833893, 50.597721>,  <39.008945, 32.982426, 50.110718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497143, 32.833893, 50.597721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.660259, 32.469997, 50.566517>,  <38.758129, 32.251659, 50.547794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.660259, 32.469997, 50.566517>,  <38.497143, 32.833893, 50.597721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660259, 32.469997, 50.566517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059016, -0.111518, 0.992009,
		-0.911166, -0.399930, -0.099165,
		0.407792, -0.909736, -0.078009,
		38.782597, 32.197075, 50.543114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190849, 32.495483, 50.999226>,  <38.497143, 32.833893, 50.597721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190849, 32.495483, 50.999226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.497585, 32.243221, 50.951511>,  <38.681629, 32.091866, 50.922882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.497585, 32.243221, 50.951511>,  <38.190849, 32.495483, 50.999226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497585, 32.243221, 50.951511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031581, -0.222695, 0.974376,
		-0.641058, -0.743426, -0.190689,
		0.766842, -0.630654, -0.119282,
		38.727638, 32.054024, 50.915726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920242, 31.834953, 51.247761>,  <38.190849, 32.495483, 50.999226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920242, 31.834953, 51.247761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.319435, 31.826351, 51.271660>,  <38.558952, 31.821190, 51.285999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.319435, 31.826351, 51.271660>,  <37.920242, 31.834953, 51.247761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319435, 31.826351, 51.271660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062411, -0.158627, 0.985364,
		-0.011709, -0.987104, -0.159649,
		0.997982, -0.021501, 0.059749,
		38.618828, 31.819901, 51.289585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066105, 31.247379, 51.598583>,  <37.920242, 31.834953, 51.247761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066105, 31.247379, 51.598583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.378201, 31.493774, 51.642006>,  <38.565456, 31.641611, 51.668060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.378201, 31.493774, 51.642006>,  <38.066105, 31.247379, 51.598583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378201, 31.493774, 51.642006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017254, -0.194683, 0.980714,
		0.625243, -0.763319, -0.162528,
		0.780240, 0.615989, 0.108554,
		38.612274, 31.678572, 51.674572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533569, 30.826258, 52.051933>,  <38.066105, 31.247379, 51.598583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533569, 30.826258, 52.051933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.664635, 31.203957, 52.064804>,  <38.743275, 31.430576, 52.072525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.664635, 31.203957, 52.064804>,  <38.533569, 30.826258, 52.051933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664635, 31.203957, 52.064804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294927, -0.134577, 0.945995,
		0.897585, -0.300474, -0.322579,
		0.327659, 0.944248, 0.032177,
		38.762932, 31.487230, 52.074455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165112, 30.678177, 52.239494>,  <38.533569, 30.826258, 52.051933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165112, 30.678177, 52.239494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047085, 31.047283, 52.338638>,  <38.976269, 31.268747, 52.398125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047085, 31.047283, 52.338638>,  <39.165112, 30.678177, 52.239494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047085, 31.047283, 52.338638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214171, -0.188936, 0.958350,
		0.931164, 0.335863, -0.141881,
		-0.295068, 0.922767, 0.247862,
		38.958565, 31.324114, 52.412998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790836, 30.870840, 52.573097>,  <39.165112, 30.678177, 52.239494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790836, 30.870840, 52.573097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.455067, 31.061836, 52.676914>,  <39.253605, 31.176434, 52.739204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.455067, 31.061836, 52.676914>,  <39.790836, 30.870840, 52.573097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455067, 31.061836, 52.676914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110526, -0.317604, 0.941760,
		0.532115, 0.819225, 0.213830,
		-0.839427, 0.477491, 0.259547,
		39.203239, 31.205084, 52.754780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897465, 31.207918, 53.212460>,  <39.790836, 30.870840, 52.573097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897465, 31.207918, 53.212460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498550, 31.226713, 53.235138>,  <39.259201, 31.237989, 53.248745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498550, 31.226713, 53.235138>,  <39.897465, 31.207918, 53.212460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498550, 31.226713, 53.235138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055407, -0.028212, 0.998065,
		0.048495, 0.998497, 0.025532,
		-0.997285, 0.046987, 0.056692,
		39.199364, 31.240808, 53.252144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746349, 31.624477, 53.812855>,  <39.897465, 31.207918, 53.212460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746349, 31.624477, 53.812855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.438358, 31.382502, 53.731682>,  <39.253563, 31.237316, 53.682980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.438358, 31.382502, 53.731682>,  <39.746349, 31.624477, 53.812855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438358, 31.382502, 53.731682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002894, -0.321349, 0.946956,
		-0.638061, 0.728550, 0.249183,
		-0.769980, -0.604937, -0.202932,
		39.207363, 31.201021, 53.670803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385586, 31.563343, 54.469326>,  <39.746349, 31.624477, 53.812855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385586, 31.563343, 54.469326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.204586, 31.252403, 54.294525>,  <39.095985, 31.065840, 54.189644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.204586, 31.252403, 54.294525>,  <39.385586, 31.563343, 54.469326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204586, 31.252403, 54.294525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098885, -0.443285, 0.890910,
		-0.886265, 0.446350, 0.123719,
		-0.452500, -0.777348, -0.437005,
		39.068836, 31.019199, 54.163422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758690, 31.417212, 54.894642>,  <39.385586, 31.563343, 54.469326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758690, 31.417212, 54.894642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.856441, 31.080143, 54.702732>,  <38.915092, 30.877901, 54.587585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.856441, 31.080143, 54.702732>,  <38.758690, 31.417212, 54.894642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856441, 31.080143, 54.702732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125805, -0.518145, 0.845990,
		-0.961484, -0.146385, -0.232637,
		0.244380, -0.842672, -0.479772,
		38.929756, 30.827341, 54.558800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176594, 30.941929, 54.946404>,  <38.758690, 31.417212, 54.894642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176594, 30.941929, 54.946404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.538128, 30.772898, 54.919529>,  <38.755047, 30.671478, 54.903404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.538128, 30.772898, 54.919529>,  <38.176594, 30.941929, 54.946404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538128, 30.772898, 54.919529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212248, -0.579115, 0.787132,
		-0.371531, -0.697176, -0.613115,
		0.903834, -0.422576, -0.067186,
		38.809277, 30.646124, 54.899372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603294, 31.432961, 54.666512>,  <38.176594, 30.941929, 54.946404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603294, 31.432961, 54.666512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350098, 31.664024, 54.872669>,  <37.198181, 31.802662, 54.996365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350098, 31.664024, 54.872669>,  <37.603294, 31.432961, 54.666512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350098, 31.664024, 54.872669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588898, 0.072852, -0.804918,
		-0.502517, -0.813019, 0.294068,
		-0.632990, 0.577661, 0.515395,
		37.160202, 31.837322, 55.027287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951550, 31.244114, 54.419315>,  <37.603294, 31.432961, 54.666512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951550, 31.244114, 54.419315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901215, 31.584784, 54.622814>,  <36.871014, 31.789185, 54.744911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901215, 31.584784, 54.622814>,  <36.951550, 31.244114, 54.419315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901215, 31.584784, 54.622814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611091, 0.337430, -0.716037,
		-0.781494, -0.400993, 0.477988,
		-0.125838, 0.851672, 0.508743,
		36.863464, 31.840284, 54.775436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269489, 31.419462, 54.274384>,  <36.951550, 31.244114, 54.419315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269489, 31.419462, 54.274384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.454823, 31.760193, 54.372131>,  <36.566021, 31.964630, 54.430782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.454823, 31.760193, 54.372131>,  <36.269489, 31.419462, 54.274384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454823, 31.760193, 54.372131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460653, 0.467081, -0.754741,
		-0.757049, 0.237124, 0.608809,
		0.463331, 0.851826, 0.244372,
		36.593822, 32.015739, 54.445442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717754, 31.934109, 54.285252>,  <36.269489, 31.419462, 54.274384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717754, 31.934109, 54.285252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068565, 32.119205, 54.233585>,  <36.279053, 32.230263, 54.202587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068565, 32.119205, 54.233585>,  <35.717754, 31.934109, 54.285252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068565, 32.119205, 54.233585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372457, 0.485067, -0.791193,
		-0.303465, 0.742010, 0.597771,
		0.877032, 0.462743, -0.129166,
		36.331676, 32.258030, 54.194836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512268, 32.460754, 53.881306>,  <35.717754, 31.934109, 54.285252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512268, 32.460754, 53.881306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904789, 32.529625, 53.846905>,  <36.140301, 32.570950, 53.826263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904789, 32.529625, 53.846905>,  <35.512268, 32.460754, 53.881306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904789, 32.529625, 53.846905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164728, 0.520315, -0.837936,
		-0.099531, 0.836437, 0.538950,
		0.981304, 0.172181, -0.085998,
		36.199181, 32.581280, 53.821106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676945, 33.195961, 53.748230>,  <35.512268, 32.460754, 53.881306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676945, 33.195961, 53.748230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975597, 32.979290, 53.593761>,  <36.154789, 32.849285, 53.501080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975597, 32.979290, 53.593761>,  <35.676945, 33.195961, 53.748230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975597, 32.979290, 53.593761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231515, 0.332628, -0.914199,
		0.623655, 0.771971, 0.122942,
		0.746629, -0.541682, -0.386168,
		36.199585, 32.816784, 53.477909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058941, 33.707516, 53.327351>,  <35.676945, 33.195961, 53.748230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058941, 33.707516, 53.327351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189632, 33.349461, 53.206043>,  <36.268047, 33.134628, 53.133259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189632, 33.349461, 53.206043>,  <36.058941, 33.707516, 53.327351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189632, 33.349461, 53.206043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078997, 0.345622, -0.935043,
		0.941811, 0.281546, 0.183638,
		0.326727, -0.895141, -0.303269,
		36.287651, 33.080917, 53.115063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807606, 33.850128, 53.004242>,  <36.058941, 33.707516, 53.327351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807606, 33.850128, 53.004242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.627354, 33.516758, 52.876286>,  <36.519203, 33.316734, 52.799511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.627354, 33.516758, 52.876286>,  <36.807606, 33.850128, 53.004242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627354, 33.516758, 52.876286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085890, 0.316197, -0.944798,
		0.888570, -0.453229, -0.070905,
		-0.450630, -0.833429, -0.319891,
		36.492165, 33.266731, 52.780319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215267, 33.653332, 52.468273>,  <36.807606, 33.850128, 53.004242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215267, 33.653332, 52.468273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872597, 33.461849, 52.391384>,  <36.666996, 33.346958, 52.345253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872597, 33.461849, 52.391384>,  <37.215267, 33.653332, 52.468273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872597, 33.461849, 52.391384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201572, 0.032356, -0.978939,
		0.474847, -0.877377, 0.068776,
		-0.856673, -0.478709, -0.192219,
		36.615593, 33.318237, 52.333717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444016, 33.135906, 52.049412>,  <37.215267, 33.653332, 52.468273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444016, 33.135906, 52.049412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.051323, 33.146542, 51.974060>,  <36.815708, 33.152924, 51.928848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.051323, 33.146542, 51.974060>,  <37.444016, 33.135906, 52.049412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051323, 33.146542, 51.974060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190225, 0.153509, -0.969665,
		0.003133, -0.987789, -0.155764,
		-0.981735, 0.026592, -0.188383,
		36.756802, 33.154518, 51.917545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374279, 32.769516, 51.503395>,  <37.444016, 33.135906, 52.049412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374279, 32.769516, 51.503395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050953, 33.005013, 51.504055>,  <36.856956, 33.146313, 51.504452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050953, 33.005013, 51.504055>,  <37.374279, 32.769516, 51.503395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050953, 33.005013, 51.504055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071703, 0.101228, -0.992276,
		-0.584364, -0.801956, -0.124039,
		-0.808318, 0.588744, 0.001652,
		36.808456, 33.181637, 51.504551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914684, 32.417789, 51.020599>,  <37.374279, 32.769516, 51.503395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914684, 32.417789, 51.020599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762562, 32.784763, 51.067402>,  <36.671288, 33.004948, 51.095482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762562, 32.784763, 51.067402>,  <36.914684, 32.417789, 51.020599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762562, 32.784763, 51.067402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135236, 0.069986, -0.988339,
		-0.914922, -0.391690, 0.097454,
		-0.380302, 0.917431, 0.117002,
		36.648472, 33.059994, 51.102501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327038, 32.436916, 50.552238>,  <36.914684, 32.417789, 51.020599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327038, 32.436916, 50.552238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400978, 32.824287, 50.619152>,  <36.445343, 33.056709, 50.659298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400978, 32.824287, 50.619152>,  <36.327038, 32.436916, 50.552238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400978, 32.824287, 50.619152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198257, 0.203463, -0.958800,
		-0.962561, 0.144075, 0.229608,
		0.184855, 0.968424, 0.167281,
		36.456436, 33.114815, 50.669338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758587, 32.824280, 50.413742>,  <36.327038, 32.436916, 50.552238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758587, 32.824280, 50.413742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092964, 33.035885, 50.355309>,  <36.293591, 33.162849, 50.320248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092964, 33.035885, 50.355309>,  <35.758587, 32.824280, 50.413742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092964, 33.035885, 50.355309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274599, 0.172699, -0.945923,
		-0.475180, 0.830853, 0.289633,
		0.835943, 0.529016, -0.146088,
		36.343746, 33.194592, 50.311481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086399, 33.189465, 50.645973>,  <35.758587, 32.824280, 50.413742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086399, 33.189465, 50.645973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.706509, 33.075584, 50.593864>,  <34.478577, 33.007256, 50.562599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.706509, 33.075584, 50.593864>,  <35.086399, 33.189465, 50.645973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706509, 33.075584, 50.593864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070967, -0.601006, 0.796087,
		-0.304941, 0.746818, 0.590994,
		-0.949723, -0.284701, -0.130272,
		34.421593, 32.990173, 50.554783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761051, 33.248711, 51.308125>,  <35.086399, 33.189465, 50.645973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761051, 33.248711, 51.308125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486595, 33.026768, 51.119930>,  <34.321922, 32.893604, 51.007015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486595, 33.026768, 51.119930>,  <34.761051, 33.248711, 51.308125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486595, 33.026768, 51.119930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103322, -0.565853, 0.818007,
		-0.720098, 0.609876, 0.330924,
		-0.686137, -0.554853, -0.470483,
		34.280754, 32.860313, 50.978786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161106, 33.259151, 51.781109>,  <34.761051, 33.248711, 51.308125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161106, 33.259151, 51.781109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.107098, 32.950066, 51.533016>,  <34.074692, 32.764614, 51.384159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.107098, 32.950066, 51.533016>,  <34.161106, 33.259151, 51.781109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107098, 32.950066, 51.533016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247833, -0.579730, 0.776204,
		-0.959347, 0.258519, -0.113226,
		-0.135023, -0.772710, -0.620232,
		34.066589, 32.718254, 51.346947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536671, 32.957542, 51.924110>,  <34.161106, 33.259151, 51.781109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536671, 32.957542, 51.924110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720573, 32.654163, 51.739338>,  <33.830914, 32.472137, 51.628475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720573, 32.654163, 51.739338>,  <33.536671, 32.957542, 51.924110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720573, 32.654163, 51.739338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203057, -0.596170, 0.776755,
		-0.864520, -0.263317, -0.428099,
		0.459753, -0.758449, -0.461933,
		33.858498, 32.426628, 51.600758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207348, 32.348705, 52.151287>,  <33.536671, 32.957542, 51.924110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207348, 32.348705, 52.151287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553253, 32.207722, 52.008202>,  <33.760796, 32.123131, 51.922352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553253, 32.207722, 52.008202>,  <33.207348, 32.348705, 52.151287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553253, 32.207722, 52.008202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052948, -0.644352, 0.762894,
		-0.499382, -0.678662, -0.538549,
		0.864762, -0.352460, -0.357712,
		33.812683, 32.101982, 51.900887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185699, 31.661474, 52.271950>,  <33.207348, 32.348705, 52.151287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185699, 31.661474, 52.271950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576443, 31.739054, 52.235867>,  <33.810886, 31.785601, 52.214218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576443, 31.739054, 52.235867>,  <33.185699, 31.661474, 52.271950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576443, 31.739054, 52.235867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168760, -0.439714, 0.882140,
		0.131425, -0.876947, -0.462268,
		0.976856, 0.193948, -0.090204,
		33.869499, 31.797237, 52.208805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539959, 30.975315, 52.362644>,  <33.185699, 31.661474, 52.271950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539959, 30.975315, 52.362644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835598, 31.239902, 52.413544>,  <34.012981, 31.398655, 52.444084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835598, 31.239902, 52.413544>,  <33.539959, 30.975315, 52.362644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835598, 31.239902, 52.413544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194628, -0.390559, 0.899768,
		0.644868, -0.640250, -0.417402,
		0.739097, 0.661470, 0.127248,
		34.057327, 31.438343, 52.451717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755161, 30.429884, 51.977573>,  <33.539959, 30.975315, 52.362644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755161, 30.429884, 51.977573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585625, 30.089230, 51.854233>,  <33.483902, 29.884838, 51.780228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585625, 30.089230, 51.854233>,  <33.755161, 30.429884, 51.977573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585625, 30.089230, 51.854233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320905, 0.459552, -0.828150,
		0.846984, -0.252051, -0.468070,
		-0.423839, -0.851635, -0.308349,
		33.458473, 29.833738, 51.761726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073273, 30.332613, 51.357334>,  <33.755161, 30.429884, 51.977573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073273, 30.332613, 51.357334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727417, 30.131712, 51.362095>,  <33.519905, 30.011171, 51.364952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727417, 30.131712, 51.362095>,  <34.073273, 30.332613, 51.357334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727417, 30.131712, 51.362095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164068, 0.259897, -0.951596,
		0.474851, -0.824738, -0.307120,
		-0.864637, -0.502255, 0.011901,
		33.468025, 29.981035, 51.365665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029583, 29.935398, 50.726044>,  <34.073273, 30.332613, 51.357334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029583, 29.935398, 50.726044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.644798, 29.925888, 50.834904>,  <33.413929, 29.920181, 50.900219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.644798, 29.925888, 50.834904>,  <34.029583, 29.935398, 50.726044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644798, 29.925888, 50.834904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272622, 0.147476, -0.950751,
		-0.017531, -0.988780, -0.148348,
		-0.961961, -0.023776, 0.272149,
		33.356209, 29.918755, 50.916550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745251, 29.583239, 50.232529>,  <34.029583, 29.935398, 50.726044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745251, 29.583239, 50.232529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434990, 29.779585, 50.391232>,  <33.248833, 29.897392, 50.486454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434990, 29.779585, 50.391232>,  <33.745251, 29.583239, 50.232529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434990, 29.779585, 50.391232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380183, 0.138411, -0.914496,
		-0.503812, -0.860169, 0.079261,
		-0.775651, 0.490868, 0.396754,
		33.202293, 29.926846, 50.510258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110504, 29.289465, 49.972542>,  <33.745251, 29.583239, 50.232529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110504, 29.289465, 49.972542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000805, 29.649782, 50.107216>,  <32.934986, 29.865973, 50.188023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000805, 29.649782, 50.107216>,  <33.110504, 29.289465, 49.972542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000805, 29.649782, 50.107216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409822, 0.207251, -0.888309,
		-0.869962, -0.381598, 0.312328,
		-0.274246, 0.900794, 0.336688,
		32.918530, 29.920021, 50.208221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626019, 29.520002, 49.487129>,  <33.110504, 29.289465, 49.972542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626019, 29.520002, 49.487129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656940, 29.861496, 49.693104>,  <32.675495, 30.066393, 49.816689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656940, 29.861496, 49.693104>,  <32.626019, 29.520002, 49.487129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656940, 29.861496, 49.693104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431947, 0.494174, -0.754463,
		-0.898580, -0.164101, 0.406971,
		0.077307, 0.853735, 0.514938,
		32.680134, 30.117617, 49.847584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981848, 29.741081, 49.428558>,  <32.626019, 29.520002, 49.487129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981848, 29.741081, 49.428558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.227486, 30.046427, 49.508720>,  <32.374870, 30.229635, 49.556816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.227486, 30.046427, 49.508720>,  <31.981848, 29.741081, 49.428558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227486, 30.046427, 49.508720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296744, 0.458618, -0.837623,
		-0.731321, 0.454911, 0.508159,
		0.614095, 0.763365, 0.200405,
		32.411713, 30.275436, 49.568840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.832531, 27.763241, 53.022266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.021080, 28.112404, 53.072613>,  <38.134209, 28.321901, 53.102821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.021080, 28.112404, 53.072613>,  <37.832531, 27.763241, 53.022266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021080, 28.112404, 53.072613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197608, 0.243623, -0.949525,
		-0.859511, 0.422707, 0.287330,
		0.471372, 0.872907, 0.125867,
		38.162491, 28.374275, 53.110374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382935, 28.341368, 52.726704>,  <37.832531, 27.763241, 53.022266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382935, 28.341368, 52.726704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.767147, 28.452620, 52.725006>,  <37.997677, 28.519371, 52.723988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.767147, 28.452620, 52.725006>,  <37.382935, 28.341368, 52.726704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767147, 28.452620, 52.725006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117044, 0.390285, -0.913224,
		-0.252337, 0.877680, 0.407435,
		0.960535, 0.278128, -0.004244,
		38.055309, 28.536058, 52.723732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291317, 28.934940, 52.367275>,  <37.382935, 28.341368, 52.726704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291317, 28.934940, 52.367275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.682327, 28.851515, 52.355030>,  <37.916935, 28.801460, 52.347683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.682327, 28.851515, 52.355030>,  <37.291317, 28.934940, 52.367275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682327, 28.851515, 52.355030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034032, 0.299445, -0.953506,
		0.208031, 0.931040, 0.299814,
		0.977530, -0.208562, -0.030609,
		37.975586, 28.788946, 52.345848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682934, 29.496004, 52.063835>,  <37.291317, 28.934940, 52.367275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682934, 29.496004, 52.063835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.947884, 29.200357, 52.014893>,  <38.106853, 29.022968, 51.985527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.947884, 29.200357, 52.014893>,  <37.682934, 29.496004, 52.063835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947884, 29.200357, 52.014893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003294, 0.166194, -0.986088,
		0.749169, 0.652752, 0.112516,
		0.662370, -0.739117, -0.122357,
		38.146595, 28.978622, 51.978184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227066, 29.773870, 51.649353>,  <37.682934, 29.496004, 52.063835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227066, 29.773870, 51.649353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.257568, 29.377171, 51.608131>,  <38.275871, 29.139151, 51.583397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.257568, 29.377171, 51.608131>,  <38.227066, 29.773870, 51.649353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257568, 29.377171, 51.608131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243524, 0.118750, -0.962598,
		0.966892, 0.048310, 0.250570,
		0.076258, -0.991748, -0.103054,
		38.280445, 29.079645, 51.577217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794422, 29.746750, 51.293327>,  <38.227066, 29.773870, 51.649353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794422, 29.746750, 51.293327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.601780, 29.400927, 51.235935>,  <38.486195, 29.193432, 51.201500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.601780, 29.400927, 51.235935>,  <38.794422, 29.746750, 51.293327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601780, 29.400927, 51.235935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045068, 0.139074, -0.989256,
		0.875226, -0.482902, -0.028015,
		-0.481610, -0.864560, -0.143485,
		38.457298, 29.141560, 51.192890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210636, 29.465246, 50.793705>,  <38.794422, 29.746750, 51.293327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210636, 29.465246, 50.793705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.880833, 29.240076, 50.770710>,  <38.682949, 29.104975, 50.756912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.880833, 29.240076, 50.770710>,  <39.210636, 29.465246, 50.793705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880833, 29.240076, 50.770710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054636, 0.180318, -0.982090,
		0.563207, -0.806599, -0.179429,
		-0.824507, -0.562924, -0.057487,
		38.633480, 29.071199, 50.753464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346741, 29.013186, 50.334393>,  <39.210636, 29.465246, 50.793705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346741, 29.013186, 50.334393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.947842, 28.984140, 50.340336>,  <38.708500, 28.966713, 50.343903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.947842, 28.984140, 50.340336>,  <39.346741, 29.013186, 50.334393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947842, 28.984140, 50.340336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000910, -0.188431, -0.982086,
		0.074113, -0.979398, 0.187847,
		-0.997249, -0.072614, 0.014856,
		38.648666, 28.962357, 50.344791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316639, 28.589437, 49.849140>,  <39.346741, 29.013186, 50.334393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316639, 28.589437, 49.849140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.947144, 28.738323, 49.885265>,  <38.725445, 28.827654, 49.906940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.947144, 28.738323, 49.885265>,  <39.316639, 28.589437, 49.849140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947144, 28.738323, 49.885265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120042, -0.057424, -0.991107,
		-0.363717, -0.926369, 0.097726,
		-0.923742, 0.372214, 0.090317,
		38.670021, 28.849987, 49.912361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782040, 28.117674, 49.588875>,  <39.316639, 28.589437, 49.849140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782040, 28.117674, 49.588875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.603558, 28.472061, 49.538338>,  <38.496468, 28.684694, 49.508015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.603558, 28.472061, 49.538338>,  <38.782040, 28.117674, 49.588875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603558, 28.472061, 49.538338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202034, -0.237258, -0.950206,
		-0.871829, -0.398457, 0.284861,
		-0.446202, 0.885969, -0.126346,
		38.469696, 28.737852, 49.500435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209034, 27.968615, 49.039242>,  <38.782040, 28.117674, 49.588875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209034, 27.968615, 49.039242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.254944, 28.365351, 49.061432>,  <38.282490, 28.603394, 49.074745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.254944, 28.365351, 49.061432>,  <38.209034, 27.968615, 49.039242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254944, 28.365351, 49.061432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076971, 0.064555, -0.994941,
		-0.990405, 0.109923, 0.083752,
		0.114774, 0.991841, 0.055475,
		38.289375, 28.662903, 49.078075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609982, 28.334234, 48.698879>,  <38.209034, 27.968615, 49.039242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609982, 28.334234, 48.698879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.927620, 28.576117, 48.674412>,  <38.118202, 28.721245, 48.659733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.927620, 28.576117, 48.674412>,  <37.609982, 28.334234, 48.698879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927620, 28.576117, 48.674412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236843, 0.215189, -0.947417,
		-0.559745, 0.766828, 0.314101,
		0.794097, 0.604705, -0.061167,
		38.165848, 28.757528, 48.656063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899666, 28.250046, 48.482407>,  <37.609982, 28.334234, 48.698879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899666, 28.250046, 48.482407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.561897, 28.461645, 48.516125>,  <36.359234, 28.588604, 48.536354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.561897, 28.461645, 48.516125>,  <36.899666, 28.250046, 48.482407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561897, 28.461645, 48.516125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060364, -0.062392, 0.996225,
		0.532261, 0.846326, 0.020753,
		-0.844425, 0.528999, 0.084297,
		36.308571, 28.620344, 48.541412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912239, 28.759081, 49.026546>,  <36.899666, 28.250046, 48.482407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912239, 28.759081, 49.026546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.553253, 28.599945, 48.950359>,  <36.337860, 28.504463, 48.904648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.553253, 28.599945, 48.950359>,  <36.912239, 28.759081, 49.026546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553253, 28.599945, 48.950359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118868, -0.197696, 0.973030,
		-0.424767, 0.895901, 0.130135,
		-0.897465, -0.397842, -0.190469,
		36.284012, 28.480593, 48.893219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446327, 29.045969, 49.497536>,  <36.912239, 28.759081, 49.026546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446327, 29.045969, 49.497536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.256527, 28.715681, 49.375530>,  <36.142647, 28.517509, 49.302326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.256527, 28.715681, 49.375530>,  <36.446327, 29.045969, 49.497536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256527, 28.715681, 49.375530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263267, -0.197526, 0.944285,
		-0.839962, 0.528368, -0.123657,
		-0.474504, -0.825718, -0.305016,
		36.114174, 28.467966, 49.284027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760918, 29.008572, 49.850483>,  <36.446327, 29.045969, 49.497536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760918, 29.008572, 49.850483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.882538, 28.644632, 49.737537>,  <35.955509, 28.426270, 49.669769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.882538, 28.644632, 49.737537>,  <35.760918, 29.008572, 49.850483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882538, 28.644632, 49.737537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111774, -0.328416, 0.937896,
		-0.946075, -0.253612, -0.201554,
		0.304055, -0.909848, -0.282359,
		35.973755, 28.371677, 49.652828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502541, 28.606167, 50.387104>,  <35.760918, 29.008572, 49.850483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502541, 28.606167, 50.387104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.712505, 28.324396, 50.196003>,  <35.838486, 28.155333, 50.081341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.712505, 28.324396, 50.196003>,  <35.502541, 28.606167, 50.387104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712505, 28.324396, 50.196003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028405, -0.575484, 0.817320,
		-0.850682, -0.415450, -0.322088,
		0.524912, -0.704428, -0.477753,
		35.869980, 28.113068, 50.052677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124084, 27.911674, 50.318653>,  <35.502541, 28.606167, 50.387104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124084, 27.911674, 50.318653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.510372, 27.809364, 50.300949>,  <35.742146, 27.747978, 50.290325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.510372, 27.809364, 50.300949>,  <35.124084, 27.911674, 50.318653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510372, 27.809364, 50.300949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165860, -0.739186, 0.652759,
		-0.199675, -0.623044, -0.756272,
		0.965723, -0.255775, -0.044259,
		35.800091, 27.732632, 50.287670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163918, 27.143570, 50.188412>,  <35.124084, 27.911674, 50.318653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163918, 27.143570, 50.188412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.497375, 27.276499, 50.364868>,  <35.697449, 27.356256, 50.470741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.497375, 27.276499, 50.364868>,  <35.163918, 27.143570, 50.188412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497375, 27.276499, 50.364868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155818, -0.624768, 0.765106,
		0.529872, -0.706561, -0.469050,
		0.833640, 0.332322, 0.441142,
		35.747467, 27.376196, 50.497211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442127, 26.495071, 50.555786>,  <35.163918, 27.143570, 50.188412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442127, 26.495071, 50.555786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.638451, 26.813786, 50.696774>,  <35.756245, 27.005014, 50.781368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.638451, 26.813786, 50.696774>,  <35.442127, 26.495071, 50.555786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638451, 26.813786, 50.696774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077229, -0.442744, 0.893316,
		0.867838, -0.411226, -0.278838,
		0.490809, 0.796788, 0.352472,
		35.785694, 27.052822, 50.802517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075626, 26.289755, 50.967533>,  <35.442127, 26.495071, 50.555786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075626, 26.289755, 50.967533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.971188, 26.654236, 51.094994>,  <35.908524, 26.872925, 51.171471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.971188, 26.654236, 51.094994>,  <36.075626, 26.289755, 50.967533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971188, 26.654236, 51.094994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104019, -0.301618, 0.947738,
		0.959692, 0.280598, -0.016030,
		-0.261098, 0.911203, 0.318648,
		35.892857, 26.927597, 51.190586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564159, 26.466578, 51.441486>,  <36.075626, 26.289755, 50.967533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564159, 26.466578, 51.441486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.253811, 26.700188, 51.536938>,  <36.067604, 26.840353, 51.594208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.253811, 26.700188, 51.536938>,  <36.564159, 26.466578, 51.441486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253811, 26.700188, 51.536938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142089, -0.206760, 0.968019,
		0.614685, 0.784962, 0.077436,
		-0.775869, 0.584024, 0.238627,
		36.021049, 26.875395, 51.608524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697388, 26.814888, 52.067650>,  <36.564159, 26.466578, 51.441486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697388, 26.814888, 52.067650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.301712, 26.867512, 52.093571>,  <36.064308, 26.899086, 52.109123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.301712, 26.867512, 52.093571>,  <36.697388, 26.814888, 52.067650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301712, 26.867512, 52.093571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048875, -0.120845, 0.991467,
		0.138267, 0.983915, 0.113109,
		-0.989188, 0.131559, 0.064798,
		36.004955, 26.906979, 52.113010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609962, 27.322775, 52.543571>,  <36.697388, 26.814888, 52.067650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609962, 27.322775, 52.543571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.265583, 27.123890, 52.500587>,  <36.058956, 27.004559, 52.474796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.265583, 27.123890, 52.500587>,  <36.609962, 27.322775, 52.543571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265583, 27.123890, 52.500587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102150, -0.037970, 0.994044,
		-0.498330, 0.866798, -0.018100,
		-0.860948, -0.497211, -0.107464,
		36.007298, 26.974726, 52.468349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229607, 27.623873, 53.035030>,  <36.609962, 27.322775, 52.543571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229607, 27.623873, 53.035030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.034870, 27.287127, 52.941864>,  <35.918030, 27.085079, 52.885963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.034870, 27.287127, 52.941864>,  <36.229607, 27.623873, 53.035030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034870, 27.287127, 52.941864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115146, -0.202473, 0.972495,
		-0.865870, 0.500266, 0.001633,
		-0.486837, -0.841866, -0.232919,
		35.888821, 27.034567, 52.871990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709866, 27.545633, 53.601879>,  <36.229607, 27.623873, 53.035030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709866, 27.545633, 53.601879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.690193, 27.177114, 53.447586>,  <35.678391, 26.956003, 53.355011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.690193, 27.177114, 53.447586>,  <35.709866, 27.545633, 53.601879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690193, 27.177114, 53.447586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282534, -0.357597, 0.890112,
		-0.957996, 0.152758, -0.242712,
		-0.049178, -0.921298, -0.385736,
		35.675438, 26.900724, 53.331863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987701, 27.624945, 53.404797>,  <35.709866, 27.545633, 53.601879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987701, 27.624945, 53.404797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.778851, 27.838762, 53.670620>,  <34.653538, 27.967052, 53.830116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.778851, 27.838762, 53.670620>,  <34.987701, 27.624945, 53.404797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778851, 27.838762, 53.670620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458636, 0.480969, -0.747209,
		-0.719049, -0.694933, -0.005968,
		-0.522131, 0.534543, 0.664562,
		34.622211, 27.999125, 53.869987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304653, 27.509260, 53.173031>,  <34.987701, 27.624945, 53.404797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304653, 27.509260, 53.173031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.298485, 27.840960, 53.396500>,  <34.294785, 28.039978, 53.530579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.298485, 27.840960, 53.396500>,  <34.304653, 27.509260, 53.173031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298485, 27.840960, 53.396500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489826, 0.480835, -0.727233,
		-0.871684, -0.284865, 0.398772,
		-0.015419, 0.829247, 0.558671,
		34.293858, 28.089733, 53.564102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735947, 27.747662, 53.236542>,  <34.304653, 27.509260, 53.173031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735947, 27.747662, 53.236542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.896034, 28.108519, 53.300999>,  <33.992088, 28.325033, 53.339672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.896034, 28.108519, 53.300999>,  <33.735947, 27.747662, 53.236542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896034, 28.108519, 53.300999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596986, 0.390066, -0.701039,
		-0.695294, 0.184367, 0.694677,
		0.400218, 0.902141, 0.161146,
		34.016098, 28.379160, 53.349342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138031, 28.177809, 53.143276>,  <33.735947, 27.747662, 53.236542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138031, 28.177809, 53.143276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.445496, 28.433014, 53.124958>,  <33.629974, 28.586138, 53.113968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.445496, 28.433014, 53.124958>,  <33.138031, 28.177809, 53.143276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445496, 28.433014, 53.124958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462222, 0.504523, -0.729251,
		-0.442167, 0.581716, 0.682711,
		0.768661, 0.638015, -0.045799,
		33.676094, 28.624418, 53.111217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774250, 28.878656, 53.170776>,  <33.138031, 28.177809, 53.143276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774250, 28.878656, 53.170776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.144836, 28.916801, 53.025139>,  <33.367188, 28.939688, 52.937756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.144836, 28.916801, 53.025139>,  <32.774250, 28.878656, 53.170776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144836, 28.916801, 53.025139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347367, 0.589045, -0.729631,
		0.144888, 0.802454, 0.578857,
		0.926468, 0.095361, -0.364092,
		33.422775, 28.945410, 52.915913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810982, 29.555897, 52.914085>,  <32.774250, 28.878656, 53.170776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810982, 29.555897, 52.914085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122768, 29.381218, 52.734428>,  <33.309841, 29.276411, 52.626637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122768, 29.381218, 52.734428>,  <32.810982, 29.555897, 52.914085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122768, 29.381218, 52.734428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177241, 0.533934, -0.826740,
		0.600845, 0.724024, 0.338784,
		0.779468, -0.436696, -0.449139,
		33.356609, 29.250210, 52.599686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369091, 30.066851, 52.737202>,  <32.810982, 29.555897, 52.914085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369091, 30.066851, 52.737202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.398258, 29.770350, 52.470303>,  <33.415756, 29.592449, 52.310162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.398258, 29.770350, 52.470303>,  <33.369091, 30.066851, 52.737202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398258, 29.770350, 52.470303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073142, 0.663257, -0.744809,
		0.994653, 0.103111, -0.005856,
		0.072914, -0.741254, -0.667252,
		33.420132, 29.547974, 52.270126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113964, 30.452087, 52.614342>,  <33.369091, 30.066851, 52.737202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113964, 30.452087, 52.614342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.207748, 30.826244, 52.720226>,  <34.264019, 31.050739, 52.783756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.207748, 30.826244, 52.720226>,  <34.113964, 30.452087, 52.614342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207748, 30.826244, 52.720226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081017, -0.290152, 0.953545,
		0.968744, -0.202123, -0.143812,
		0.234461, 0.935392, 0.264707,
		34.278088, 31.106861, 52.799637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698742, 30.433542, 53.014992>,  <34.113964, 30.452087, 52.614342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698742, 30.433542, 53.014992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.482086, 30.750517, 53.127190>,  <34.352093, 30.940701, 53.194508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.482086, 30.750517, 53.127190>,  <34.698742, 30.433542, 53.014992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482086, 30.750517, 53.127190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008966, -0.339105, 0.940706,
		0.840564, 0.507007, 0.190777,
		-0.541637, 0.792434, 0.280493,
		34.319595, 30.988247, 53.211338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055775, 30.772924, 53.586548>,  <34.698742, 30.433542, 53.014992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055775, 30.772924, 53.586548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.688671, 30.926615, 53.626720>,  <34.468407, 31.018829, 53.650822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.688671, 30.926615, 53.626720>,  <35.055775, 30.772924, 53.586548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688671, 30.926615, 53.626720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230174, 0.308562, 0.922935,
		0.323626, 0.870150, -0.371625,
		-0.917761, 0.384224, 0.100427,
		34.413342, 31.041882, 53.656849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121639, 31.311043, 54.027416>,  <35.055775, 30.772924, 53.586548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121639, 31.311043, 54.027416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.721813, 31.307505, 54.016212>,  <34.481918, 31.305382, 54.009491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.721813, 31.307505, 54.016212>,  <35.121639, 31.311043, 54.027416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721813, 31.307505, 54.016212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028570, 0.513741, 0.857469,
		0.006802, 0.857900, -0.513772,
		-0.999569, -0.008846, -0.028005,
		34.421944, 31.304852, 54.007812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953438, 31.952101, 54.127823>,  <35.121639, 31.311043, 54.027416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953438, 31.952101, 54.127823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.633583, 31.731407, 54.222622>,  <34.441669, 31.598991, 54.279499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.633583, 31.731407, 54.222622>,  <34.953438, 31.952101, 54.127823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633583, 31.731407, 54.222622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143670, 0.207423, 0.967644,
		-0.583042, 0.807814, -0.086595,
		-0.799638, -0.551736, 0.236995,
		34.393692, 31.565886, 54.293720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641796, 32.350433, 54.631134>,  <34.953438, 31.952101, 54.127823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641796, 32.350433, 54.631134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.496002, 31.980145, 54.671505>,  <34.408524, 31.757971, 54.695728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.496002, 31.980145, 54.671505>,  <34.641796, 32.350433, 54.631134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496002, 31.980145, 54.671505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022239, 0.117010, 0.992882,
		-0.930943, 0.359647, -0.063236,
		-0.364486, -0.925723, 0.100931,
		34.386658, 31.702427, 54.701786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209267, 32.451809, 55.124229>,  <34.641796, 32.350433, 54.631134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209267, 32.451809, 55.124229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258373, 32.054844, 55.126900>,  <34.287838, 31.816666, 55.128502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258373, 32.054844, 55.126900>,  <34.209267, 32.451809, 55.124229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258373, 32.054844, 55.126900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068113, -0.001710, 0.997676,
		-0.990096, -0.122936, -0.067806,
		0.122766, -0.992413, 0.006680,
		34.295204, 31.757120, 55.128902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705658, 32.259247, 55.595867>,  <34.209267, 32.451809, 55.124229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705658, 32.259247, 55.595867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.973480, 31.964647, 55.557373>,  <34.134174, 31.787888, 55.534275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.973480, 31.964647, 55.557373>,  <33.705658, 32.259247, 55.595867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973480, 31.964647, 55.557373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054425, -0.080575, 0.995262,
		-0.740765, -0.671622, -0.013865,
		0.669556, -0.736500, -0.096240,
		34.174347, 31.743698, 55.528500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426727, 31.785688, 56.038067>,  <33.705658, 32.259247, 55.595867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426727, 31.785688, 56.038067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.821514, 31.757681, 55.980106>,  <34.058384, 31.740877, 55.945328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.821514, 31.757681, 55.980106>,  <33.426727, 31.785688, 56.038067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821514, 31.757681, 55.980106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147634, 0.035510, 0.988404,
		-0.064063, -0.996913, 0.045384,
		0.986965, -0.070020, -0.144904,
		34.117603, 31.736675, 55.936634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.300270, 35.820244, 40.535290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675034, 35.695126, 40.472870>,  <33.899891, 35.620052, 40.435417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675034, 35.695126, 40.472870>,  <33.300270, 35.820244, 40.535290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675034, 35.695126, 40.472870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078056, -0.622347, 0.778840,
		-0.340735, -0.717525, -0.607501,
		0.936914, -0.312797, -0.156049,
		33.956108, 35.601288, 40.426056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221855, 35.089958, 40.617687>,  <33.300270, 35.820244, 40.535290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221855, 35.089958, 40.617687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608795, 35.175362, 40.672306>,  <33.840958, 35.226604, 40.705078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608795, 35.175362, 40.672306>,  <33.221855, 35.089958, 40.617687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608795, 35.175362, 40.672306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014292, -0.583885, 0.811711,
		0.253038, -0.783258, -0.567873,
		0.967351, 0.213510, 0.136550,
		33.899002, 35.239414, 40.713272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639542, 34.475361, 40.757702>,  <33.221855, 35.089958, 40.617687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639542, 34.475361, 40.757702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845074, 34.783493, 40.908737>,  <33.968391, 34.968372, 40.999359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845074, 34.783493, 40.908737>,  <33.639542, 34.475361, 40.757702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845074, 34.783493, 40.908737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074315, -0.478450, 0.874964,
		0.854670, -0.421519, -0.303087,
		0.513826, 0.770329, 0.377592,
		33.999222, 35.014591, 41.022015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213692, 34.111580, 41.145786>,  <33.639542, 34.475361, 40.757702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213692, 34.111580, 41.145786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148174, 34.476486, 41.295952>,  <34.108864, 34.695431, 41.386051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148174, 34.476486, 41.295952>,  <34.213692, 34.111580, 41.145786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148174, 34.476486, 41.295952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017669, -0.377784, 0.925725,
		0.986337, 0.158259, 0.045758,
		-0.163791, 0.912268, 0.375418,
		34.099037, 34.750168, 41.408577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547092, 34.002842, 41.718204>,  <34.213692, 34.111580, 41.145786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547092, 34.002842, 41.718204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355877, 34.346786, 41.789894>,  <34.241146, 34.553154, 41.832909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355877, 34.346786, 41.789894>,  <34.547092, 34.002842, 41.718204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355877, 34.346786, 41.789894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112484, -0.262297, 0.958409,
		0.871105, 0.437999, 0.222109,
		-0.478041, 0.859859, 0.179221,
		34.212463, 34.604744, 41.843658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810825, 34.160656, 42.375309>,  <34.547092, 34.002842, 41.718204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810825, 34.160656, 42.375309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467426, 34.358089, 42.319672>,  <34.261387, 34.476551, 42.286289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467426, 34.358089, 42.319672>,  <34.810825, 34.160656, 42.375309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467426, 34.358089, 42.319672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257245, -0.179866, 0.949459,
		0.443621, 0.850895, 0.281388,
		-0.858502, 0.493585, -0.139096,
		34.209877, 34.506165, 42.277943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846706, 34.757160, 42.807877>,  <34.810825, 34.160656, 42.375309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846706, 34.757160, 42.807877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472130, 34.635361, 42.738171>,  <34.247383, 34.562283, 42.696346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472130, 34.635361, 42.738171>,  <34.846706, 34.757160, 42.807877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472130, 34.635361, 42.738171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121993, -0.183097, 0.975496,
		-0.328943, 0.934750, 0.134312,
		-0.936437, -0.304497, -0.174261,
		34.191200, 34.544010, 42.685894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403191, 35.121780, 43.260658>,  <34.846706, 34.757160, 42.807877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403191, 35.121780, 43.260658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106857, 34.876427, 43.151169>,  <33.929058, 34.729214, 43.085476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106857, 34.876427, 43.151169>,  <34.403191, 35.121780, 43.260658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106857, 34.876427, 43.151169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228638, -0.152889, 0.961431,
		-0.631578, 0.774843, -0.026978,
		-0.740834, -0.613387, -0.273719,
		33.884605, 34.692410, 43.069054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777580, 35.339779, 43.584755>,  <34.403191, 35.121780, 43.260658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777580, 35.339779, 43.584755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709103, 34.954952, 43.499786>,  <33.668015, 34.724056, 43.448807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709103, 34.954952, 43.499786>,  <33.777580, 35.339779, 43.584755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709103, 34.954952, 43.499786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351635, -0.141739, 0.925345,
		-0.920351, 0.233107, -0.314031,
		-0.171194, -0.962066, -0.212418,
		33.657745, 34.666332, 43.436062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113075, 35.216034, 43.885410>,  <33.777580, 35.339779, 43.584755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113075, 35.216034, 43.885410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313766, 34.873650, 43.835438>,  <33.434181, 34.668221, 43.805454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313766, 34.873650, 43.835438>,  <33.113075, 35.216034, 43.885410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313766, 34.873650, 43.835438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375033, -0.345386, 0.860266,
		-0.779502, -0.384763, -0.494302,
		0.501724, -0.855959, -0.124930,
		33.464283, 34.616863, 43.797958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692108, 34.667244, 44.209496>,  <33.113075, 35.216034, 43.885410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692108, 34.667244, 44.209496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040684, 34.473034, 44.181633>,  <33.249828, 34.356506, 44.164917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040684, 34.473034, 44.181633>,  <32.692108, 34.667244, 44.209496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040684, 34.473034, 44.181633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192869, -0.469762, 0.861467,
		-0.450977, -0.737290, -0.503015,
		0.871448, -0.485517, -0.069652,
		33.302116, 34.327377, 44.160736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527088, 34.101604, 44.494526>,  <32.692108, 34.667244, 44.209496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527088, 34.101604, 44.494526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920994, 34.157642, 44.535713>,  <33.157337, 34.191265, 44.560425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920994, 34.157642, 44.535713>,  <32.527088, 34.101604, 44.494526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920994, 34.157642, 44.535713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046263, -0.359753, 0.931900,
		0.167603, -0.922470, -0.347792,
		0.984769, 0.140099, 0.102972,
		33.216423, 34.199673, 44.566605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535469, 33.567291, 44.004555>,  <32.527088, 34.101604, 44.494526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535469, 33.567291, 44.004555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395523, 33.194492, 44.042450>,  <32.311558, 32.970814, 44.065186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395523, 33.194492, 44.042450>,  <32.535469, 33.567291, 44.004555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395523, 33.194492, 44.042450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208977, -0.176222, -0.961912,
		0.913195, -0.316739, 0.256420,
		-0.349862, -0.931999, 0.094734,
		32.290565, 32.914894, 44.070869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068157, 33.092728, 43.830269>,  <32.535469, 33.567291, 44.004555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068157, 33.092728, 43.830269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701977, 32.949837, 43.756138>,  <32.482269, 32.864101, 43.711658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701977, 32.949837, 43.756138>,  <33.068157, 33.092728, 43.830269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701977, 32.949837, 43.756138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272482, -0.211303, -0.938672,
		0.296162, -0.909801, 0.290775,
		-0.915446, -0.357230, -0.185325,
		32.427341, 32.842667, 43.700539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230446, 32.588871, 43.394646>,  <33.068157, 33.092728, 43.830269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230446, 32.588871, 43.394646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836582, 32.605705, 43.326908>,  <32.600266, 32.615807, 43.286266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836582, 32.605705, 43.326908>,  <33.230446, 32.588871, 43.394646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836582, 32.605705, 43.326908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157083, -0.208821, -0.965256,
		-0.075987, -0.977048, 0.199006,
		-0.984658, 0.042086, -0.169345,
		32.541183, 32.618332, 43.276104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064266, 32.049629, 42.951389>,  <33.230446, 32.588871, 43.394646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064266, 32.049629, 42.951389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778637, 32.319435, 42.876419>,  <32.607262, 32.481319, 42.831436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778637, 32.319435, 42.876419>,  <33.064266, 32.049629, 42.951389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778637, 32.319435, 42.876419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006671, -0.274268, -0.961630,
		-0.700043, -0.685420, 0.200346,
		-0.714069, 0.674519, -0.187427,
		32.564415, 32.521790, 42.820190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767864, 31.880196, 42.262657>,  <33.064266, 32.049629, 42.951389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767864, 31.880196, 42.262657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559681, 32.219955, 42.297630>,  <32.434772, 32.423813, 42.318615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559681, 32.219955, 42.297630>,  <32.767864, 31.880196, 42.262657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559681, 32.219955, 42.297630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211248, -0.028873, -0.977006,
		-0.827344, -0.526959, 0.194461,
		-0.520457, 0.849400, 0.087431,
		32.403545, 32.474777, 42.323860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006790, 31.815506, 42.036720>,  <32.767864, 31.880196, 42.262657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006790, 31.815506, 42.036720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096756, 32.204487, 42.012215>,  <32.150734, 32.437874, 41.997513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096756, 32.204487, 42.012215>,  <32.006790, 31.815506, 42.036720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096756, 32.204487, 42.012215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410762, 0.037614, -0.910966,
		-0.883566, 0.230053, 0.407906,
		0.224913, 0.972451, -0.061263,
		32.164230, 32.496223, 41.993835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594936, 32.079449, 41.580307>,  <32.006790, 31.815506, 42.036720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594936, 32.079449, 41.580307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867180, 32.372498, 41.582806>,  <32.030525, 32.548328, 41.584305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867180, 32.372498, 41.582806>,  <31.594936, 32.079449, 41.580307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867180, 32.372498, 41.582806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195779, 0.190087, -0.962049,
		-0.706007, 0.653553, 0.272807,
		0.680607, 0.732623, 0.006250,
		32.071362, 32.592285, 41.584682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316229, 32.775795, 41.326057>,  <31.594936, 32.079449, 41.580307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316229, 32.775795, 41.326057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709641, 32.770058, 41.253983>,  <31.945686, 32.766617, 41.210739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709641, 32.770058, 41.253983>,  <31.316229, 32.775795, 41.326057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709641, 32.770058, 41.253983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180034, 0.011410, -0.983594,
		0.016164, 0.999832, 0.008640,
		0.983528, -0.014343, -0.180188,
		32.004700, 32.765755, 41.199924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388361, 33.236000, 40.783752>,  <31.316229, 32.775795, 41.326057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388361, 33.236000, 40.783752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726522, 33.022408, 40.778809>,  <31.929420, 32.894253, 40.775845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726522, 33.022408, 40.778809>,  <31.388361, 33.236000, 40.783752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726522, 33.022408, 40.778809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057085, -0.067326, -0.996097,
		0.531067, 0.842811, -0.087400,
		0.845405, -0.533983, -0.012357,
		31.980145, 32.862213, 40.775101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800919, 33.604649, 40.181751>,  <31.388361, 33.236000, 40.783752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800919, 33.604649, 40.181751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999458, 33.262646, 40.241890>,  <32.118584, 33.057446, 40.277973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999458, 33.262646, 40.241890>,  <31.800919, 33.604649, 40.181751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999458, 33.262646, 40.241890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291988, 0.001327, -0.956421,
		0.817545, 0.518619, 0.250310,
		0.496350, -0.855005, 0.150345,
		32.148365, 33.006145, 40.286995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577946, 33.628632, 39.878925>,  <31.800919, 33.604649, 40.181751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577946, 33.628632, 39.878925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503834, 33.235657, 39.887810>,  <32.459366, 32.999874, 39.893139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503834, 33.235657, 39.887810>,  <32.577946, 33.628632, 39.878925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503834, 33.235657, 39.887810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385543, -0.093462, -0.917944,
		0.903897, -0.161511, 0.396087,
		-0.185277, -0.982435, 0.022211,
		32.448250, 32.940926, 39.894474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097195, 33.370102, 39.651844>,  <32.577946, 33.628632, 39.878925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097195, 33.370102, 39.651844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833008, 33.076908, 39.586712>,  <32.674496, 32.900993, 39.547634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833008, 33.076908, 39.586712>,  <33.097195, 33.370102, 39.651844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833008, 33.076908, 39.586712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375573, -0.134724, -0.916949,
		0.650174, -0.666769, 0.364270,
		-0.660469, -0.732986, -0.162827,
		32.634869, 32.857014, 39.537865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441696, 32.860622, 39.424118>,  <33.097195, 33.370102, 39.651844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441696, 32.860622, 39.424118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067928, 32.795254, 39.297535>,  <32.843666, 32.756035, 39.221584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067928, 32.795254, 39.297535>,  <33.441696, 32.860622, 39.424118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067928, 32.795254, 39.297535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350759, -0.268025, -0.897291,
		0.061814, -0.949451, 0.307769,
		-0.934423, -0.163418, -0.316460,
		32.787601, 32.746227, 39.202599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492771, 32.219826, 38.993568>,  <33.441696, 32.860622, 39.424118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492771, 32.219826, 38.993568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151703, 32.397343, 38.883297>,  <32.947063, 32.503853, 38.817135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151703, 32.397343, 38.883297>,  <33.492771, 32.219826, 38.993568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151703, 32.397343, 38.883297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174958, -0.254641, -0.951077,
		-0.492281, -0.859189, 0.139480,
		-0.852672, 0.443794, -0.275677,
		32.895901, 32.530479, 38.800594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202293, 31.722376, 38.721786>,  <33.492771, 32.219826, 38.993568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202293, 31.722376, 38.721786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090759, 32.086056, 38.598106>,  <33.023838, 32.304264, 38.523899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090759, 32.086056, 38.598106>,  <33.202293, 31.722376, 38.721786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090759, 32.086056, 38.598106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417707, -0.175092, -0.891551,
		-0.864737, -0.377752, -0.330957,
		-0.278837, 0.909201, -0.309198,
		33.007107, 32.358814, 38.505348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599667, 31.222275, 38.497326>,  <33.202293, 31.722376, 38.721786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599667, 31.222275, 38.497326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878613, 30.967842, 38.365215>,  <34.045982, 30.815184, 38.285950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878613, 30.967842, 38.365215>,  <33.599667, 31.222275, 38.497326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878613, 30.967842, 38.365215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181387, -0.602448, 0.777274,
		-0.693382, -0.482138, -0.535504,
		0.697366, -0.636081, -0.330273,
		34.087822, 30.777018, 38.266132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290707, 30.650064, 38.645248>,  <33.599667, 31.222275, 38.497326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290707, 30.650064, 38.645248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688610, 30.609888, 38.637627>,  <33.927353, 30.585781, 38.633053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688610, 30.609888, 38.637627>,  <33.290707, 30.650064, 38.645248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688610, 30.609888, 38.637627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036235, -0.520692, 0.852976,
		-0.095596, -0.847816, -0.521603,
		0.994761, -0.100441, -0.019056,
		33.987038, 30.579756, 38.631908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367714, 30.072790, 38.896828>,  <33.290707, 30.650064, 38.645248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367714, 30.072790, 38.896828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720314, 30.257496, 38.936279>,  <33.931873, 30.368319, 38.959949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720314, 30.257496, 38.936279>,  <33.367714, 30.072790, 38.896828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720314, 30.257496, 38.936279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081090, -0.353814, 0.931794,
		0.465164, -0.813381, -0.349332,
		0.881502, 0.461765, 0.098624,
		33.984764, 30.396025, 38.965866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904381, 29.552906, 39.124352>,  <33.367714, 30.072790, 38.896828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904381, 29.552906, 39.124352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998806, 29.927029, 39.229778>,  <34.055462, 30.151503, 39.293034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998806, 29.927029, 39.229778>,  <33.904381, 29.552906, 39.124352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998806, 29.927029, 39.229778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199976, -0.312191, 0.928734,
		0.950938, -0.166535, -0.260737,
		0.236067, 0.935309, 0.263571,
		34.069626, 30.207621, 39.308849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449562, 29.459194, 39.561787>,  <33.904381, 29.552906, 39.124352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449562, 29.459194, 39.561787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337646, 29.829649, 39.662971>,  <34.270496, 30.051922, 39.723682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337646, 29.829649, 39.662971>,  <34.449562, 29.459194, 39.561787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337646, 29.829649, 39.662971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335494, -0.152552, 0.929608,
		0.899533, 0.344964, -0.268030,
		-0.279793, 0.926136, 0.252959,
		34.253708, 30.107491, 39.738861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938820, 29.583784, 40.067696>,  <34.449562, 29.459194, 39.561787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938820, 29.583784, 40.067696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682659, 29.889624, 40.096756>,  <34.528965, 30.073128, 40.114193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682659, 29.889624, 40.096756>,  <34.938820, 29.583784, 40.067696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682659, 29.889624, 40.096756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157072, 0.037792, 0.986864,
		0.751809, 0.643398, -0.144299,
		-0.640399, 0.764598, 0.072648,
		34.490540, 30.119003, 40.118549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302197, 30.146339, 40.396328>,  <34.938820, 29.583784, 40.067696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302197, 30.146339, 40.396328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909821, 30.205187, 40.447105>,  <34.674397, 30.240496, 40.477570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909821, 30.205187, 40.447105>,  <35.302197, 30.146339, 40.396328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909821, 30.205187, 40.447105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143585, 0.108643, 0.983656,
		0.130922, 0.983134, -0.127696,
		-0.980940, 0.147118, 0.126940,
		34.615540, 30.249323, 40.485188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210632, 30.679787, 40.850731>,  <35.302197, 30.146339, 40.396328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210632, 30.679787, 40.850731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855507, 30.498899, 40.884888>,  <34.642433, 30.390368, 40.905384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855507, 30.498899, 40.884888>,  <35.210632, 30.679787, 40.850731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855507, 30.498899, 40.884888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030229, 0.242461, 0.969690,
		-0.459216, 0.858319, -0.228930,
		-0.887810, -0.452218, 0.085396,
		34.589165, 30.363234, 40.910507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811169, 31.172649, 41.225391>,  <35.210632, 30.679787, 40.850731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811169, 31.172649, 41.225391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637939, 30.812784, 41.247524>,  <34.534004, 30.596865, 41.260803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637939, 30.812784, 41.247524>,  <34.811169, 31.172649, 41.225391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637939, 30.812784, 41.247524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000898, 0.061823, 0.998087,
		-0.901360, 0.432190, -0.027582,
		-0.433069, -0.899661, 0.055337,
		34.508018, 30.542887, 41.264126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299877, 31.153383, 41.726341>,  <34.811169, 31.172649, 41.225391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299877, 31.153383, 41.726341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371605, 30.761919, 41.686203>,  <34.414642, 30.527040, 41.662121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371605, 30.761919, 41.686203>,  <34.299877, 31.153383, 41.726341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371605, 30.761919, 41.686203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101978, -0.082955, 0.991322,
		-0.978491, -0.187996, 0.084926,
		0.179319, -0.978660, -0.100342,
		34.425400, 30.468321, 41.656101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950985, 30.902269, 42.330776>,  <34.299877, 31.153383, 41.726341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950985, 30.902269, 42.330776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185684, 30.606092, 42.199642>,  <34.326504, 30.428387, 42.120964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185684, 30.606092, 42.199642>,  <33.950985, 30.902269, 42.330776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185684, 30.606092, 42.199642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180206, -0.275300, 0.944318,
		-0.789466, -0.613151, -0.028098,
		0.586745, -0.740443, -0.327833,
		34.361710, 30.383959, 42.101292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675060, 30.312828, 42.738708>,  <33.950985, 30.902269, 42.330776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675060, 30.312828, 42.738708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037888, 30.216476, 42.600609>,  <34.255585, 30.158665, 42.517750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037888, 30.216476, 42.600609>,  <33.675060, 30.312828, 42.738708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037888, 30.216476, 42.600609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242286, -0.371969, 0.896067,
		-0.344264, -0.896447, -0.279042,
		0.907072, -0.240876, -0.345252,
		34.310009, 30.144213, 42.497032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783607, 29.561605, 42.806183>,  <33.675060, 30.312828, 42.738708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783607, 29.561605, 42.806183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129528, 29.762344, 42.812668>,  <34.337082, 29.882788, 42.816559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129528, 29.762344, 42.812668>,  <33.783607, 29.561605, 42.806183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129528, 29.762344, 42.812668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237135, -0.436683, 0.867799,
		0.442584, -0.746631, -0.496650,
		0.864804, 0.501847, 0.016217,
		34.388969, 29.912899, 42.817532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233505, 29.067650, 42.909927>,  <33.783607, 29.561605, 42.806183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233505, 29.067650, 42.909927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418526, 29.403776, 43.023003>,  <34.529537, 29.605452, 43.090847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418526, 29.403776, 43.023003>,  <34.233505, 29.067650, 42.909927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418526, 29.403776, 43.023003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303378, -0.449620, 0.840121,
		0.833073, -0.302834, -0.462905,
		0.462548, 0.840318, 0.282693,
		34.557289, 29.655872, 43.107811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734798, 28.930372, 43.298538>,  <34.233505, 29.067650, 42.909927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734798, 28.930372, 43.298538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746006, 29.316120, 43.403767>,  <34.752731, 29.547569, 43.466904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746006, 29.316120, 43.403767>,  <34.734798, 28.930372, 43.298538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746006, 29.316120, 43.403767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400368, -0.251974, 0.881030,
		0.915926, 0.080640, -0.393163,
		0.028020, 0.964368, 0.263075,
		34.754414, 29.605431, 43.482689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374657, 29.007790, 43.659100>,  <34.734798, 28.930372, 43.298538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374657, 29.007790, 43.659100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183537, 29.335337, 43.786324>,  <35.068863, 29.531864, 43.862656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183537, 29.335337, 43.786324>,  <35.374657, 29.007790, 43.659100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183537, 29.335337, 43.786324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449992, -0.082802, 0.889186,
		0.754461, 0.567979, -0.328920,
		-0.477803, 0.818868, 0.318057,
		35.040195, 29.580997, 43.881741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888386, 29.423435, 44.016510>,  <35.374657, 29.007790, 43.659100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888386, 29.423435, 44.016510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538567, 29.553179, 44.160709>,  <35.328674, 29.631025, 44.247231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538567, 29.553179, 44.160709>,  <35.888386, 29.423435, 44.016510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538567, 29.553179, 44.160709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296963, -0.229502, 0.926899,
		0.383384, 0.917671, 0.104387,
		-0.874545, 0.324359, 0.360502,
		35.276203, 29.650486, 44.268860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046459, 29.883879, 44.514313>,  <35.888386, 29.423435, 44.016510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046459, 29.883879, 44.514313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676350, 29.756601, 44.596882>,  <35.454285, 29.680235, 44.646423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676350, 29.756601, 44.596882>,  <36.046459, 29.883879, 44.514313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676350, 29.756601, 44.596882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254415, -0.117025, 0.959989,
		-0.281306, 0.940775, 0.189234,
		-0.925278, -0.318194, 0.206427,
		35.398766, 29.661142, 44.658810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898849, 30.234280, 45.106167>,  <36.046459, 29.883879, 44.514313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898849, 30.234280, 45.106167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629620, 29.938450, 45.106838>,  <35.468082, 29.760952, 45.107239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629620, 29.938450, 45.106838>,  <35.898849, 30.234280, 45.106167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629620, 29.938450, 45.106838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060537, -0.052837, 0.996767,
		-0.737095, 0.670998, 0.080335,
		-0.673073, -0.739574, 0.001674,
		35.427696, 29.716578, 45.107342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558697, 30.392378, 45.688408>,  <35.898849, 30.234280, 45.106167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558697, 30.392378, 45.688408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456738, 30.009388, 45.634346>,  <35.395561, 29.779594, 45.601910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456738, 30.009388, 45.634346>,  <35.558697, 30.392378, 45.688408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456738, 30.009388, 45.634346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087449, -0.162023, 0.982905,
		-0.963006, 0.238719, 0.125029,
		-0.254895, -0.957477, -0.135153,
		35.380268, 29.722145, 45.593800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905216, 30.203463, 46.168411>,  <35.558697, 30.392378, 45.688408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905216, 30.203463, 46.168411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059418, 29.855038, 46.046669>,  <35.151939, 29.645983, 45.973621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059418, 29.855038, 46.046669>,  <34.905216, 30.203463, 46.168411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059418, 29.855038, 46.046669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036208, -0.315319, 0.948295,
		-0.921994, -0.376595, -0.090019,
		0.385508, -0.871063, -0.304358,
		35.175072, 29.593719, 45.955360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433140, 29.638567, 46.427494>,  <34.905216, 30.203463, 46.168411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433140, 29.638567, 46.427494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805687, 29.503935, 46.371964>,  <35.029213, 29.423155, 46.338646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805687, 29.503935, 46.371964>,  <34.433140, 29.638567, 46.427494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805687, 29.503935, 46.371964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056538, -0.242961, 0.968387,
		-0.359670, -0.909771, -0.207255,
		0.931365, -0.336582, -0.138822,
		35.085098, 29.402960, 46.330318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443756, 29.180269, 46.876137>,  <34.433140, 29.638567, 46.427494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443756, 29.180269, 46.876137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827332, 29.217880, 46.769108>,  <35.057476, 29.240448, 46.704891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827332, 29.217880, 46.769108>,  <34.443756, 29.180269, 46.876137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827332, 29.217880, 46.769108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283511, -0.292386, 0.913308,
		0.007643, -0.951666, -0.307038,
		0.958939, 0.094029, -0.267573,
		35.115013, 29.246088, 46.688835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859093, 28.554823, 47.199982>,  <34.443756, 29.180269, 46.876137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859093, 28.554823, 47.199982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134537, 28.832331, 47.115604>,  <35.299805, 28.998835, 47.064980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134537, 28.832331, 47.115604>,  <34.859093, 28.554823, 47.199982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134537, 28.832331, 47.115604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352538, -0.066096, 0.933460,
		0.633663, -0.717159, -0.290094,
		0.688613, 0.693768, -0.210944,
		35.341122, 29.040461, 47.052322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570160, 28.182016, 47.271595>,  <34.859093, 28.554823, 47.199982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570160, 28.182016, 47.271595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618462, 28.576880, 47.313438>,  <35.647442, 28.813797, 47.338543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618462, 28.576880, 47.313438>,  <35.570160, 28.182016, 47.271595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618462, 28.576880, 47.313438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315676, -0.138090, 0.938765,
		0.941152, -0.080334, -0.328296,
		0.120749, 0.987156, 0.104604,
		35.654686, 28.873026, 47.344818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239891, 28.266754, 47.421478>,  <35.570160, 28.182016, 47.271595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239891, 28.266754, 47.421478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099236, 28.602676, 47.586926>,  <36.014843, 28.804230, 47.686192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099236, 28.602676, 47.586926>,  <36.239891, 28.266754, 47.421478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099236, 28.602676, 47.586926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303774, -0.315558, 0.898968,
		0.885478, 0.441759, -0.144148,
		-0.351640, 0.839805, 0.413615,
		35.993744, 28.854618, 47.711010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790882, 28.506693, 47.828621>,  <36.239891, 28.266754, 47.421478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790882, 28.506693, 47.828621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435375, 28.631659, 47.962780>,  <36.222073, 28.706638, 48.043274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435375, 28.631659, 47.962780>,  <36.790882, 28.506693, 47.828621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435375, 28.631659, 47.962780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200135, -0.393796, 0.897146,
		0.412357, 0.864479, 0.287468,
		-0.888767, 0.312412, 0.335397,
		36.168743, 28.725382, 48.063400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398609, 28.847250, 48.259533>,  <36.790882, 28.506693, 47.828621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398609, 28.847250, 48.259533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796856, 28.884632, 48.258221>,  <38.035805, 28.907061, 48.257435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796856, 28.884632, 48.258221>,  <37.398609, 28.847250, 48.259533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796856, 28.884632, 48.258221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017646, 0.153323, -0.988019,
		-0.091831, 0.983747, 0.154300,
		0.995618, 0.093454, -0.003279,
		38.095543, 28.912668, 48.257236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595284, 29.404478, 47.871552>,  <37.398609, 28.847250, 48.259533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595284, 29.404478, 47.871552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962482, 29.247055, 47.891098>,  <38.182804, 29.152601, 47.902828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962482, 29.247055, 47.891098>,  <37.595284, 29.404478, 47.871552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962482, 29.247055, 47.891098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089455, 0.085438, -0.992320,
		0.386358, 0.915322, 0.113637,
		0.918001, -0.393556, 0.048870,
		38.237885, 29.128988, 47.905758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058357, 29.788870, 47.482918>,  <37.595284, 29.404478, 47.871552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058357, 29.788870, 47.482918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261906, 29.446529, 47.519939>,  <38.384037, 29.241125, 47.542152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261906, 29.446529, 47.519939>,  <38.058357, 29.788870, 47.482918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261906, 29.446529, 47.519939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315271, 0.085244, -0.945166,
		0.801032, 0.510149, 0.313203,
		0.508874, -0.855851, 0.092552,
		38.414566, 29.189774, 47.547707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595673, 29.882515, 47.169872>,  <38.058357, 29.788870, 47.482918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595673, 29.882515, 47.169872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610901, 29.482849, 47.163971>,  <38.620037, 29.243050, 47.160431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610901, 29.482849, 47.163971>,  <38.595673, 29.882515, 47.169872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610901, 29.482849, 47.163971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362384, 0.027566, -0.931621,
		0.931251, 0.030116, 0.363131,
		0.038067, -0.999166, -0.014758,
		38.622322, 29.183100, 47.159542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212826, 29.727715, 46.788063>,  <38.595673, 29.882515, 47.169872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212826, 29.727715, 46.788063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986523, 29.400953, 46.743198>,  <38.850739, 29.204897, 46.716278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986523, 29.400953, 46.743198>,  <39.212826, 29.727715, 46.788063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986523, 29.400953, 46.743198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265281, -0.051528, -0.962793,
		0.780730, -0.574467, 0.245862,
		-0.565762, -0.816904, -0.112165,
		38.816795, 29.155882, 46.709549>
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
