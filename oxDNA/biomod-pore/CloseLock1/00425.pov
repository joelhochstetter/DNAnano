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
	<24.073462, 35.485214, 34.928196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239159, 35.132835, 35.019699>,  <24.338577, 34.921406, 35.074600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239159, 35.132835, 35.019699>,  <24.073462, 35.485214, 34.928196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.239159, 35.132835, 35.019699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860350, 0.296987, -0.414243,
		0.296987, 0.368412, 0.880949,
		0.414243, -0.880949, 0.228762,
		24.363432, 34.868549, 35.088329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751345, 35.748383, 35.105515>,  <24.073462, 35.485214, 34.928196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751345, 35.748383, 35.105515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754158, 35.361416, 35.004272>,  <24.755846, 35.129238, 34.943527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754158, 35.361416, 35.004272>,  <24.751345, 35.748383, 35.105515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754158, 35.361416, 35.004272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813504, 0.152728, -0.561146,
		0.581517, -0.201956, 0.788068,
		0.007033, -0.967413, -0.253106,
		24.756268, 35.071194, 34.928341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329130, 35.308701, 35.365780>,  <24.751345, 35.748383, 35.105515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329130, 35.308701, 35.365780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189899, 35.188950, 35.010429>,  <25.106361, 35.117100, 34.797218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189899, 35.188950, 35.010429>,  <25.329130, 35.308701, 35.365780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189899, 35.188950, 35.010429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808024, 0.384680, -0.446227,
		0.475333, -0.873151, 0.108009,
		-0.348075, -0.299380, -0.888378,
		25.085478, 35.099136, 34.743916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802250, 34.733471, 34.998981>,  <25.329130, 35.308701, 35.365780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802250, 34.733471, 34.998981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.603781, 34.995506, 34.771061>,  <25.484699, 35.152729, 34.634308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.603781, 34.995506, 34.771061>,  <25.802250, 34.733471, 34.998981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603781, 34.995506, 34.771061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868166, 0.381896, -0.316927,
		0.009987, -0.651930, -0.758213,
		-0.496173, 0.655090, -0.569798,
		25.454929, 35.192032, 34.600121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131594, 34.082546, 34.834576>,  <25.802250, 34.733471, 34.998981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131594, 34.082546, 34.834576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366140, 34.115334, 34.512222>,  <26.506868, 34.135006, 34.318810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366140, 34.115334, 34.512222>,  <26.131594, 34.082546, 34.834576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366140, 34.115334, 34.512222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626206, -0.585218, -0.515157,
		-0.513847, 0.806722, -0.291822,
		0.586368, 0.081971, -0.805887,
		26.542051, 34.139923, 34.270454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676514, 34.065536, 34.292770>,  <26.131594, 34.082546, 34.834576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676514, 34.065536, 34.292770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026737, 33.975548, 34.121754>,  <26.236872, 33.921555, 34.019146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026737, 33.975548, 34.121754>,  <25.676514, 34.065536, 34.292770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026737, 33.975548, 34.121754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436327, -0.748162, -0.499872,
		-0.207411, 0.624213, -0.753219,
		0.875557, -0.224971, -0.427538,
		26.289404, 33.908058, 33.993492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648365, 34.084316, 33.592926>,  <25.676514, 34.065536, 34.292770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648365, 34.084316, 33.592926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958038, 33.835148, 33.637836>,  <26.143843, 33.685646, 33.664783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958038, 33.835148, 33.637836>,  <25.648365, 34.084316, 33.592926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958038, 33.835148, 33.637836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453219, -0.669375, -0.588667,
		0.441848, 0.404852, -0.800540,
		0.774186, -0.622921, 0.112275,
		26.190294, 33.648270, 33.671520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803509, 33.941753, 32.938129>,  <25.648365, 34.084316, 33.592926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803509, 33.941753, 32.938129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932213, 33.645229, 33.173729>,  <26.009436, 33.467316, 33.315090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932213, 33.645229, 33.173729>,  <25.803509, 33.941753, 32.938129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932213, 33.645229, 33.173729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190116, -0.660001, -0.726812,
		0.927537, 0.121882, -0.353299,
		0.321763, -0.741313, 0.589003,
		26.028742, 33.422836, 33.350430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200897, 33.601891, 32.502678>,  <25.803509, 33.941753, 32.938129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200897, 33.601891, 32.502678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106525, 33.344860, 32.794277>,  <26.049902, 33.190643, 32.969238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106525, 33.344860, 32.794277>,  <26.200897, 33.601891, 32.502678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106525, 33.344860, 32.794277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193299, -0.704153, -0.683230,
		0.952352, -0.302108, 0.041921,
		-0.235928, -0.642572, 0.728999,
		26.035748, 33.152088, 33.012978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464403, 33.052795, 32.218403>,  <26.200897, 33.601891, 32.502678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464403, 33.052795, 32.218403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239737, 32.896549, 32.510143>,  <26.104937, 32.802803, 32.685188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239737, 32.896549, 32.510143>,  <26.464403, 33.052795, 32.218403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239737, 32.896549, 32.510143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118948, -0.834254, -0.538398,
		0.818769, -0.389154, 0.422109,
		-0.561666, -0.390614, 0.729350,
		26.071238, 32.779366, 32.728947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533602, 32.312332, 32.203701>,  <26.464403, 33.052795, 32.218403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533602, 32.312332, 32.203701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193436, 32.344917, 32.411610>,  <25.989336, 32.364468, 32.536354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193436, 32.344917, 32.411610>,  <26.533602, 32.312332, 32.203701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193436, 32.344917, 32.411610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380195, -0.778033, -0.500117,
		0.363657, -0.622920, 0.692621,
		-0.850414, 0.081460, 0.519768,
		25.938311, 32.369354, 32.567539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476797, 31.777885, 32.553776>,  <26.533602, 32.312332, 32.203701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476797, 31.777885, 32.553776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097429, 31.894768, 32.504601>,  <25.869808, 31.964897, 32.475094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097429, 31.894768, 32.504601>,  <26.476797, 31.777885, 32.553776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097429, 31.894768, 32.504601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215689, -0.878987, -0.425276,
		-0.232328, -0.376824, 0.896675,
		-0.948421, 0.292206, -0.122937,
		25.812902, 31.982430, 32.467720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064348, 31.285255, 32.806213>,  <26.476797, 31.777885, 32.553776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064348, 31.285255, 32.806213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797321, 31.487003, 32.587139>,  <25.637106, 31.608051, 32.455692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797321, 31.487003, 32.587139>,  <26.064348, 31.285255, 32.806213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797321, 31.487003, 32.587139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132963, -0.804533, -0.578833,
		-0.732577, -0.313590, 0.604145,
		-0.667571, 0.504368, -0.547687,
		25.597052, 31.638315, 32.422832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495590, 30.904980, 32.729961>,  <26.064348, 31.285255, 32.806213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495590, 30.904980, 32.729961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433147, 31.168854, 32.435902>,  <25.395681, 31.327177, 32.259464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433147, 31.168854, 32.435902>,  <25.495590, 30.904980, 32.729961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433147, 31.168854, 32.435902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158275, -0.751366, -0.640623,
		-0.974977, 0.016349, 0.221706,
		-0.156109, 0.659683, -0.735152,
		25.386314, 31.366758, 32.215355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.754862, 30.818867, 32.469116>,  <25.495590, 30.904980, 32.729961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.754862, 30.818867, 32.469116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983204, 30.992172, 32.190144>,  <25.120209, 31.096155, 32.022762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983204, 30.992172, 32.190144>,  <24.754862, 30.818867, 32.469116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983204, 30.992172, 32.190144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325742, -0.660209, -0.676769,
		-0.753668, 0.613519, -0.235752,
		0.570856, 0.433264, -0.697427,
		25.154461, 31.122152, 31.980915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.244463, 30.649340, 31.872488>,  <24.754862, 30.818867, 32.469116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.244463, 30.649340, 31.872488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609646, 30.740803, 31.737297>,  <24.828754, 30.795681, 31.656181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609646, 30.740803, 31.737297>,  <24.244463, 30.649340, 31.872488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609646, 30.740803, 31.737297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025020, -0.795332, -0.605657,
		-0.407292, 0.561394, -0.720381,
		0.912955, 0.228656, -0.337979,
		24.883532, 30.809399, 31.635904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.254354, 30.424322, 31.202511>,  <24.244463, 30.649340, 31.872488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.254354, 30.424322, 31.202511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649643, 30.448433, 31.258781>,  <24.886816, 30.462900, 31.292543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649643, 30.448433, 31.258781>,  <24.254354, 30.424322, 31.202511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.649643, 30.448433, 31.258781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129728, -0.817595, -0.560990,
		0.081201, 0.572630, -0.815782,
		0.988219, 0.060277, 0.140675,
		24.946108, 30.466516, 31.300983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.568188, 30.161163, 30.618010>,  <24.254354, 30.424322, 31.202511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.568188, 30.161163, 30.618010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859844, 30.113432, 30.887562>,  <25.034838, 30.084793, 31.049294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859844, 30.113432, 30.887562>,  <24.568188, 30.161163, 30.618010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859844, 30.113432, 30.887562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259330, -0.863069, -0.433429,
		0.633325, 0.490788, -0.598353,
		0.729142, -0.119331, 0.673879,
		25.078587, 30.077633, 31.089725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940519, 29.810438, 30.246191>,  <24.568188, 30.161163, 30.618010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940519, 29.810438, 30.246191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147009, 29.777077, 30.587145>,  <25.270903, 29.757061, 30.791718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147009, 29.777077, 30.587145>,  <24.940519, 29.810438, 30.246191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.147009, 29.777077, 30.587145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501660, -0.777201, -0.379862,
		0.694156, 0.623700, -0.359369,
		0.516223, -0.083403, 0.852384,
		25.301876, 29.752056, 30.842859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700584, 29.748730, 30.030252>,  <24.940519, 29.810438, 30.246191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700584, 29.748730, 30.030252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646854, 29.587725, 30.392454>,  <25.614616, 29.491121, 30.609776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646854, 29.587725, 30.392454>,  <25.700584, 29.748730, 30.030252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646854, 29.587725, 30.392454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552427, -0.789034, -0.268794,
		0.822667, 0.464121, 0.328345,
		-0.134323, -0.402514, 0.905505,
		25.606558, 29.466970, 30.664106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392740, 29.434729, 30.267748>,  <25.700584, 29.748730, 30.030252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392740, 29.434729, 30.267748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.118586, 29.269878, 30.507879>,  <25.954092, 29.170967, 30.651958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.118586, 29.269878, 30.507879>,  <26.392740, 29.434729, 30.267748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.118586, 29.269878, 30.507879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438545, -0.891764, -0.111516,
		0.581311, 0.186840, 0.791939,
		-0.685387, -0.412126, 0.600330,
		25.912970, 29.146240, 30.687979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721807, 29.018589, 30.634518>,  <26.392740, 29.434729, 30.267748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721807, 29.018589, 30.634518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354330, 28.861649, 30.652672>,  <26.133842, 28.767485, 30.663565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354330, 28.861649, 30.652672>,  <26.721807, 29.018589, 30.634518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354330, 28.861649, 30.652672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385441, -0.915685, -0.113828,
		0.086221, -0.087079, 0.992463,
		-0.918695, -0.392350, 0.045387,
		26.078722, 28.743944, 30.666288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766600, 28.482407, 31.163315>,  <26.721807, 29.018589, 30.634518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766600, 28.482407, 31.163315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454479, 28.391142, 30.930395>,  <26.267206, 28.336384, 30.790644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454479, 28.391142, 30.930395>,  <26.766600, 28.482407, 31.163315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454479, 28.391142, 30.930395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225681, -0.971068, 0.078071,
		-0.583265, -0.070495, 0.809217,
		-0.780301, -0.228162, -0.582300,
		26.220388, 28.322693, 30.755705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645733, 27.856714, 31.304209>,  <26.766600, 28.482407, 31.163315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645733, 27.856714, 31.304209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414341, 27.865759, 30.978056>,  <26.275507, 27.871185, 30.782364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414341, 27.865759, 30.978056>,  <26.645733, 27.856714, 31.304209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414341, 27.865759, 30.978056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264260, -0.940509, -0.213563,
		-0.771705, -0.339015, 0.538090,
		-0.578479, 0.022611, -0.815383,
		26.240797, 27.872543, 30.733440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319851, 27.352098, 31.306768>,  <26.645733, 27.856714, 31.304209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319851, 27.352098, 31.306768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278238, 27.426107, 30.915884>,  <26.253271, 27.470512, 30.681353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278238, 27.426107, 30.915884>,  <26.319851, 27.352098, 31.306768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278238, 27.426107, 30.915884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260887, -0.943062, -0.206328,
		-0.959748, -0.276406, 0.049837,
		-0.104030, 0.185021, -0.977213,
		26.247028, 27.481613, 30.622721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860233, 26.849092, 30.901657>,  <26.319851, 27.352098, 31.306768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860233, 26.849092, 30.901657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138163, 26.997282, 30.655090>,  <26.304920, 27.086195, 30.507151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138163, 26.997282, 30.655090>,  <25.860233, 26.849092, 30.901657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138163, 26.997282, 30.655090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361700, -0.920835, -0.145723,
		-0.621605, -0.121706, -0.773819,
		0.694824, 0.370473, -0.616416,
		26.346609, 27.108423, 30.470165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304110, 26.273674, 30.621071>,  <25.860233, 26.849092, 30.901657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304110, 26.273674, 30.621071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456940, 26.555290, 30.381622>,  <26.548637, 26.724260, 30.237953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456940, 26.555290, 30.381622>,  <26.304110, 26.273674, 30.621071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456940, 26.555290, 30.381622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540869, -0.695592, -0.472876,
		-0.749320, -0.143103, -0.646561,
		0.382073, 0.704040, -0.598621,
		26.571562, 26.766502, 30.202036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595188, 25.654686, 30.343983>,  <26.304110, 26.273674, 30.621071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595188, 25.654686, 30.343983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900833, 25.444117, 30.493120>,  <27.084221, 25.317776, 30.582603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900833, 25.444117, 30.493120>,  <26.595188, 25.654686, 30.343983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900833, 25.444117, 30.493120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019506, -0.558860, -0.829033,
		0.644788, 0.640747, -0.416764,
		0.764112, -0.526421, 0.372845,
		27.130066, 25.286190, 30.604973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384275, 25.110113, 30.804993>,  <26.595188, 25.654686, 30.343983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384275, 25.110113, 30.804993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174150, 25.176395, 31.138840>,  <26.048075, 25.216166, 31.339148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174150, 25.176395, 31.138840>,  <26.384275, 25.110113, 30.804993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174150, 25.176395, 31.138840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113965, -0.958316, 0.261995,
		0.843243, 0.232747, 0.484531,
		-0.525313, 0.165706, 0.834619,
		26.016556, 25.226107, 31.389225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935503, 24.902185, 31.322708>,  <26.384275, 25.110113, 30.804993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935503, 24.902185, 31.322708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551552, 24.853050, 31.423538>,  <26.321180, 24.823568, 31.484035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551552, 24.853050, 31.423538>,  <26.935503, 24.902185, 31.322708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551552, 24.853050, 31.423538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158582, -0.979183, 0.126696,
		0.231262, 0.161587, 0.959379,
		-0.959880, -0.122840, 0.252073,
		26.263588, 24.816198, 31.499161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870808, 24.600784, 31.927206>,  <26.935503, 24.902185, 31.322708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870808, 24.600784, 31.927206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550596, 24.469187, 31.726839>,  <26.358469, 24.390228, 31.606619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550596, 24.469187, 31.726839>,  <26.870808, 24.600784, 31.927206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550596, 24.469187, 31.726839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223809, -0.939489, 0.259364,
		-0.555933, 0.095519, 0.825720,
		-0.800530, -0.328992, -0.500915,
		26.310438, 24.370489, 31.576565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465689, 24.084688, 31.971798>,  <26.870808, 24.600784, 31.927206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465689, 24.084688, 31.971798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750763, 24.057793, 32.251099>,  <27.921808, 24.041655, 32.418678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750763, 24.057793, 32.251099>,  <27.465689, 24.084688, 31.971798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750763, 24.057793, 32.251099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164087, 0.983760, -0.072743,
		-0.682022, 0.166417, 0.712145,
		0.712686, -0.067241, 0.698253,
		27.964569, 24.037621, 32.460575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257408, 24.515783, 32.676510>,  <27.465689, 24.084688, 31.971798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257408, 24.515783, 32.676510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639891, 24.483526, 32.563961>,  <27.869379, 24.464172, 32.496433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639891, 24.483526, 32.563961>,  <27.257408, 24.515783, 32.676510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639891, 24.483526, 32.563961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134835, 0.974584, 0.178903,
		0.259792, -0.209007, 0.942775,
		0.956205, -0.080641, -0.281371,
		27.926752, 24.459333, 32.479549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788160, 24.734865, 33.196468>,  <27.257408, 24.515783, 32.676510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788160, 24.734865, 33.196468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919287, 24.799751, 32.824184>,  <27.997963, 24.838682, 32.600815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919287, 24.799751, 32.824184>,  <27.788160, 24.734865, 33.196468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919287, 24.799751, 32.824184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213934, 0.946812, 0.240372,
		0.920200, -0.277910, 0.275680,
		0.327819, 0.162213, -0.930711,
		28.017632, 24.848415, 32.544971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529655, 25.052670, 33.250286>,  <27.788160, 24.734865, 33.196468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529655, 25.052670, 33.250286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334095, 25.136738, 32.911629>,  <28.216759, 25.187180, 32.708435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334095, 25.136738, 32.911629>,  <28.529655, 25.052670, 33.250286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334095, 25.136738, 32.911629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109347, 0.977653, 0.179549,
		0.865459, -0.004796, -0.500956,
		-0.488900, 0.210170, -0.846643,
		28.187426, 25.199789, 32.657635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897058, 25.559919, 32.855415>,  <28.529655, 25.052670, 33.250286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897058, 25.559919, 32.855415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509829, 25.586321, 32.758694>,  <28.277491, 25.602161, 32.700661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509829, 25.586321, 32.758694>,  <28.897058, 25.559919, 32.855415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509829, 25.586321, 32.758694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013517, 0.977051, 0.212576,
		0.250289, 0.202522, -0.946752,
		-0.968077, 0.066002, -0.241808,
		28.219406, 25.606121, 32.686150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729568, 26.187262, 32.352688>,  <28.897058, 25.559919, 32.855415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729568, 26.187262, 32.352688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424507, 26.085613, 32.590607>,  <28.241470, 26.024624, 32.733356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424507, 26.085613, 32.590607>,  <28.729568, 26.187262, 32.352688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424507, 26.085613, 32.590607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141151, 0.962812, 0.230367,
		-0.631217, 0.091735, -0.770162,
		-0.762655, -0.254121, 0.594795,
		28.195711, 26.009377, 32.769047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184196, 26.549957, 32.120453>,  <28.729568, 26.187262, 32.352688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184196, 26.549957, 32.120453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075891, 26.442011, 32.490070>,  <28.010908, 26.377243, 32.711842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075891, 26.442011, 32.490070>,  <28.184196, 26.549957, 32.120453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075891, 26.442011, 32.490070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154166, 0.959668, 0.235098,
		-0.950221, -0.078801, -0.301446,
		-0.270763, -0.269868, 0.924045,
		27.994663, 26.361052, 32.767284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570364, 27.010321, 32.343586>,  <28.184196, 26.549957, 32.120453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570364, 27.010321, 32.343586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735054, 26.851595, 32.671738>,  <27.833868, 26.756359, 32.868629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735054, 26.851595, 32.671738>,  <27.570364, 27.010321, 32.343586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735054, 26.851595, 32.671738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181091, 0.846642, 0.500403,
		-0.893134, -0.354592, 0.276724,
		0.411726, -0.396815, 0.820378,
		27.858572, 26.732550, 32.917850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116982, 27.161297, 32.813457>,  <27.570364, 27.010321, 32.343586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116982, 27.161297, 32.813457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475422, 27.117966, 32.985630>,  <27.690487, 27.091967, 33.088932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475422, 27.117966, 32.985630>,  <27.116982, 27.161297, 32.813457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475422, 27.117966, 32.985630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135222, 0.857026, 0.497213,
		-0.422751, -0.503756, 0.753333,
		0.896101, -0.108330, 0.430428,
		27.744251, 27.085466, 33.114758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968943, 27.445824, 33.438469>,  <27.116982, 27.161297, 32.813457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968943, 27.445824, 33.438469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367952, 27.421640, 33.424080>,  <27.607357, 27.407131, 33.415447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367952, 27.421640, 33.424080>,  <26.968943, 27.445824, 33.438469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367952, 27.421640, 33.424080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067753, 0.963278, 0.259818,
		0.018944, -0.261612, 0.964987,
		0.997522, -0.060459, -0.035974,
		27.667210, 27.403503, 33.413288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259151, 27.917984, 34.000759>,  <26.968943, 27.445824, 33.438469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259151, 27.917984, 34.000759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572393, 27.851482, 33.761055>,  <27.760338, 27.811581, 33.617233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572393, 27.851482, 33.761055>,  <27.259151, 27.917984, 34.000759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572393, 27.851482, 33.761055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281890, 0.953821, 0.103747,
		0.554335, -0.250169, 0.793806,
		0.783103, -0.166255, -0.599257,
		27.807323, 27.801605, 33.581280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760387, 28.302219, 34.322552>,  <27.259151, 27.917984, 34.000759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760387, 28.302219, 34.322552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931765, 28.240587, 33.966419>,  <28.034592, 28.203608, 33.752739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931765, 28.240587, 33.966419>,  <27.760387, 28.302219, 34.322552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931765, 28.240587, 33.966419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344594, 0.938746, 0.003366,
		0.835280, -0.308246, 0.455293,
		0.428442, -0.154080, -0.890335,
		28.060297, 28.194363, 33.699318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400427, 28.579161, 34.371868>,  <27.760387, 28.302219, 34.322552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400427, 28.579161, 34.371868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301271, 28.590143, 33.984509>,  <28.241779, 28.596733, 33.752094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301271, 28.590143, 33.984509>,  <28.400427, 28.579161, 34.371868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301271, 28.590143, 33.984509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335672, 0.940112, -0.059268,
		0.908777, -0.339757, -0.242258,
		-0.247887, 0.027458, -0.968400,
		28.226906, 28.598381, 33.693989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024035, 28.711430, 33.947048>,  <28.400427, 28.579161, 34.371868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024035, 28.711430, 33.947048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696703, 28.806210, 33.737595>,  <28.500303, 28.863077, 33.611923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696703, 28.806210, 33.737595>,  <29.024035, 28.711430, 33.947048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696703, 28.806210, 33.737595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348513, 0.929031, -0.124257,
		0.457031, -0.284176, -0.842833,
		-0.818329, 0.236949, -0.523635,
		28.451204, 28.877295, 33.580505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383469, 29.150204, 33.523045>,  <29.024035, 28.711430, 33.947048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383469, 29.150204, 33.523045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998531, 29.225863, 33.444946>,  <28.767569, 29.271257, 33.398087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998531, 29.225863, 33.444946>,  <29.383469, 29.150204, 33.523045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998531, 29.225863, 33.444946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189764, 0.981704, 0.015723,
		0.194648, -0.021919, -0.980629,
		-0.962342, 0.189149, -0.195246,
		28.709829, 29.282606, 33.386372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444605, 29.635637, 32.965611>,  <29.383469, 29.150204, 33.523045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444605, 29.635637, 32.965611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067728, 29.657835, 33.097790>,  <28.841602, 29.671154, 33.177097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067728, 29.657835, 33.097790>,  <29.444605, 29.635637, 32.965611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067728, 29.657835, 33.097790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008226, 0.989723, -0.142761,
		-0.334970, -0.131790, -0.932966,
		-0.942193, 0.055495, 0.330444,
		28.785070, 29.674484, 33.196922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172771, 30.036758, 32.553360>,  <29.444605, 29.635637, 32.965611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172771, 30.036758, 32.553360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938768, 30.070507, 32.876011>,  <28.798367, 30.090755, 33.069603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938768, 30.070507, 32.876011>,  <29.172771, 30.036758, 32.553360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938768, 30.070507, 32.876011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071974, 0.985249, -0.155254,
		-0.807827, -0.148881, -0.570307,
		-0.585009, 0.084371, 0.806626,
		28.763266, 30.095818, 33.118000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609667, 30.389063, 32.363747>,  <29.172771, 30.036758, 32.553360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609667, 30.389063, 32.363747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644444, 30.452444, 32.757160>,  <28.665310, 30.490473, 32.993206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644444, 30.452444, 32.757160>,  <28.609667, 30.389063, 32.363747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644444, 30.452444, 32.757160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279701, 0.951441, -0.128556,
		-0.956142, -0.263918, 0.127039,
		0.086942, 0.158451, 0.983532,
		28.670527, 30.499979, 33.052219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008793, 30.711760, 32.486717>,  <28.609667, 30.389063, 32.363747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008793, 30.711760, 32.486717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237133, 30.778131, 32.808361>,  <28.374138, 30.817955, 33.001347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237133, 30.778131, 32.808361>,  <28.008793, 30.711760, 32.486717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237133, 30.778131, 32.808361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112311, 0.954381, -0.276666,
		-0.813336, 0.248246, 0.526174,
		0.570851, 0.165928, 0.804112,
		28.408388, 30.827909, 33.049595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694670, 31.354929, 32.765701>,  <28.008793, 30.711760, 32.486717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694670, 31.354929, 32.765701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068253, 31.318462, 32.903927>,  <28.292402, 31.296581, 32.986862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068253, 31.318462, 32.903927>,  <27.694670, 31.354929, 32.765701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068253, 31.318462, 32.903927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115381, 0.992056, -0.050114,
		-0.338247, 0.086676, 0.937057,
		0.933957, -0.091168, 0.345561,
		28.348440, 31.291113, 33.007595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745728, 32.030285, 33.159523>,  <27.694670, 31.354929, 32.765701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745728, 32.030285, 33.159523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115421, 31.880032, 33.132122>,  <28.337236, 31.789879, 33.115681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115421, 31.880032, 33.132122>,  <27.745728, 32.030285, 33.159523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115421, 31.880032, 33.132122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371854, 0.926223, -0.061930,
		0.086714, 0.031763, 0.995727,
		0.924232, -0.375635, -0.068506,
		28.392691, 31.767342, 33.111568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257309, 32.388233, 33.725731>,  <27.745728, 32.030285, 33.159523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257309, 32.388233, 33.725731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469545, 32.253448, 33.414619>,  <28.596888, 32.172577, 33.227955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469545, 32.253448, 33.414619>,  <28.257309, 32.388233, 33.725731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469545, 32.253448, 33.414619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486424, 0.872503, -0.046165,
		0.694166, -0.353833, 0.626846,
		0.530590, -0.336959, -0.777775,
		28.628723, 32.152359, 33.181286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959854, 32.592888, 33.902866>,  <28.257309, 32.388233, 33.725731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959854, 32.592888, 33.902866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957869, 32.522823, 33.509056>,  <28.956678, 32.480785, 33.272770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957869, 32.522823, 33.509056>,  <28.959854, 32.592888, 33.902866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957869, 32.522823, 33.509056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377132, 0.911511, -0.164075,
		0.926146, -0.372110, 0.061538,
		-0.004962, -0.175165, -0.984527,
		28.956381, 32.470272, 33.213699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577909, 32.862312, 33.728622>,  <28.959854, 32.592888, 33.902866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577909, 32.862312, 33.728622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346798, 32.860882, 33.402149>,  <29.208130, 32.860023, 33.206264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346798, 32.860882, 33.402149>,  <29.577909, 32.862312, 33.728622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346798, 32.860882, 33.402149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185097, 0.973363, -0.135294,
		0.794928, -0.229244, -0.561727,
		-0.577780, -0.003574, -0.816185,
		29.173464, 32.859810, 33.157295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915119, 33.254173, 33.313858>,  <29.577909, 32.862312, 33.728622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915119, 33.254173, 33.313858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559481, 33.270191, 33.131470>,  <29.346098, 33.279800, 33.022038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559481, 33.270191, 33.131470>,  <29.915119, 33.254173, 33.313858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559481, 33.270191, 33.131470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049933, 0.998706, -0.009664,
		0.454991, -0.031360, -0.889943,
		-0.889095, 0.040040, -0.455969,
		29.292751, 33.282204, 32.994678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948229, 33.824726, 32.807068>,  <29.915119, 33.254173, 33.313858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948229, 33.824726, 32.807068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569422, 33.753139, 32.913746>,  <29.342138, 33.710186, 32.977753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569422, 33.753139, 32.913746>,  <29.948229, 33.824726, 32.807068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569422, 33.753139, 32.913746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134632, 0.975091, 0.176272,
		-0.291603, 0.131026, -0.947523,
		-0.947017, -0.178969, 0.266699,
		29.285316, 33.699448, 32.993755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679729, 33.975105, 32.920593>,  <29.948229, 33.824726, 32.807068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679729, 33.975105, 32.920593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039148, 33.866005, 33.058125>,  <31.254799, 33.800545, 33.140644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039148, 33.866005, 33.058125>,  <30.679729, 33.975105, 32.920593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039148, 33.866005, 33.058125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438650, -0.583393, 0.683549,
		0.014147, -0.765021, -0.643850,
		0.898547, -0.272754, 0.343830,
		31.308712, 33.784180, 33.161274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681061, 33.159424, 32.903194>,  <30.679729, 33.975105, 32.920593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681061, 33.159424, 32.903194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905302, 33.352406, 33.172405>,  <31.039846, 33.468193, 33.333931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905302, 33.352406, 33.172405>,  <30.681061, 33.159424, 32.903194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905302, 33.352406, 33.172405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525589, -0.420753, 0.739408,
		0.639908, -0.768248, 0.017698,
		0.560602, 0.482455, 0.673025,
		31.073483, 33.497143, 33.374313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458195, 32.801250, 33.493214>,  <30.681061, 33.159424, 32.903194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458195, 32.801250, 33.493214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726425, 33.075474, 33.606586>,  <30.887363, 33.240009, 33.674610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726425, 33.075474, 33.606586>,  <30.458195, 32.801250, 33.493214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726425, 33.075474, 33.606586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056636, -0.333638, 0.940998,
		0.739675, -0.647064, -0.184902,
		0.670576, 0.685561, 0.283431,
		30.927599, 33.281143, 33.691616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171080, 32.591019, 33.737801>,  <30.458195, 32.801250, 33.493214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171080, 32.591019, 33.737801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037981, 32.917778, 33.926254>,  <30.958122, 33.113834, 34.039326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037981, 32.917778, 33.926254>,  <31.171080, 32.591019, 33.737801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037981, 32.917778, 33.926254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041431, -0.486455, 0.872723,
		0.942106, 0.309913, 0.128021,
		-0.332745, 0.816894, 0.471132,
		30.938158, 33.162846, 34.067593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485641, 32.633118, 34.309471>,  <31.171080, 32.591019, 33.737801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485641, 32.633118, 34.309471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162052, 32.859104, 34.374435>,  <30.967899, 32.994698, 34.413414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162052, 32.859104, 34.374435>,  <31.485641, 32.633118, 34.309471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162052, 32.859104, 34.374435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114848, -0.422856, 0.898890,
		0.576519, 0.708524, 0.406964,
		-0.808972, 0.564966, 0.162412,
		30.919361, 33.028595, 34.423161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584211, 33.207417, 34.939121>,  <31.485641, 32.633118, 34.309471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584211, 33.207417, 34.939121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218237, 33.065842, 34.861542>,  <30.998652, 32.980896, 34.814995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218237, 33.065842, 34.861542>,  <31.584211, 33.207417, 34.939121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218237, 33.065842, 34.861542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079243, -0.313668, 0.946220,
		-0.395738, 0.881102, 0.258940,
		-0.914938, -0.353936, -0.193952,
		30.943756, 32.959660, 34.803356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874390, 33.572124, 35.130848>,  <31.584211, 33.207417, 34.939121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874390, 33.572124, 35.130848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953684, 33.180138, 35.123135>,  <31.001261, 32.944946, 35.118507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953684, 33.180138, 35.123135>,  <30.874390, 33.572124, 35.130848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953684, 33.180138, 35.123135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017655, -0.016104, 0.999714,
		-0.979996, -0.198517, 0.014109,
		0.198233, -0.979965, -0.019286,
		31.013153, 32.886147, 35.117348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287474, 33.187080, 35.424122>,  <30.874390, 33.572124, 35.130848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287474, 33.187080, 35.424122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654322, 33.035259, 35.472836>,  <30.874432, 32.944168, 35.502064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654322, 33.035259, 35.472836>,  <30.287474, 33.187080, 35.424122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654322, 33.035259, 35.472836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101619, 0.072805, 0.992156,
		-0.385439, -0.922302, 0.028202,
		0.917121, -0.379550, 0.121785,
		30.929459, 32.921394, 35.509373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232555, 32.726669, 35.957336>,  <30.287474, 33.187080, 35.424122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232555, 32.726669, 35.957336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623974, 32.809071, 35.958801>,  <30.858824, 32.858513, 35.959679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623974, 32.809071, 35.958801>,  <30.232555, 32.726669, 35.957336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623974, 32.809071, 35.958801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008298, -0.057162, 0.998331,
		0.205870, -0.976880, -0.057645,
		0.978544, 0.206005, 0.003661,
		30.917538, 32.870872, 35.959900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502039, 32.242302, 36.414398>,  <30.232555, 32.726669, 35.957336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502039, 32.242302, 36.414398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767393, 32.541611, 36.413948>,  <30.926605, 32.721195, 36.413677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767393, 32.541611, 36.413948>,  <30.502039, 32.242302, 36.414398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767393, 32.541611, 36.413948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151330, -0.132692, 0.979537,
		0.732815, -0.649981, -0.201262,
		0.663386, 0.748276, -0.001123,
		30.966410, 32.766094, 36.413612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138624, 31.928616, 36.652149>,  <30.502039, 32.242302, 36.414398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138624, 31.928616, 36.652149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145266, 32.322922, 36.719074>,  <31.149250, 32.559505, 36.759228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145266, 32.322922, 36.719074>,  <31.138624, 31.928616, 36.652149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145266, 32.322922, 36.719074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329787, -0.163369, 0.929812,
		0.943909, 0.039739, -0.327804,
		0.016603, 0.985764, 0.167311,
		31.150246, 32.618652, 36.769268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759830, 32.056381, 36.912823>,  <31.138624, 31.928616, 36.652149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759830, 32.056381, 36.912823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575733, 32.384666, 37.048241>,  <31.465275, 32.581638, 37.129490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575733, 32.384666, 37.048241>,  <31.759830, 32.056381, 36.912823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575733, 32.384666, 37.048241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453249, -0.110674, 0.884486,
		0.763376, 0.560521, -0.321050,
		-0.460241, 0.820711, 0.338542,
		31.437660, 32.630878, 37.149803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296978, 32.499348, 37.305115>,  <31.759830, 32.056381, 36.912823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296978, 32.499348, 37.305115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935194, 32.604736, 37.439297>,  <31.718122, 32.667969, 37.519806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935194, 32.604736, 37.439297>,  <32.296978, 32.499348, 37.305115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935194, 32.604736, 37.439297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384711, 0.164160, 0.908322,
		0.184247, 0.950597, -0.249836,
		-0.904461, 0.263471, 0.335459,
		31.663857, 32.683777, 37.539936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427902, 32.988670, 37.810032>,  <32.296978, 32.499348, 37.305115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427902, 32.988670, 37.810032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049583, 32.912670, 37.915390>,  <31.822594, 32.867069, 37.978603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049583, 32.912670, 37.915390>,  <32.427902, 32.988670, 37.810032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049583, 32.912670, 37.915390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274033, -0.031607, 0.961201,
		-0.174302, 0.981275, 0.081960,
		-0.945793, -0.189999, 0.263393,
		31.765846, 32.855671, 37.994408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218620, 33.458870, 38.298622>,  <32.427902, 32.988670, 37.810032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218620, 33.458870, 38.298622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960871, 33.160202, 38.364666>,  <31.806219, 32.981003, 38.404293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960871, 33.160202, 38.364666>,  <32.218620, 33.458870, 38.298622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960871, 33.160202, 38.364666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279197, -0.028710, 0.959805,
		-0.711917, 0.664575, 0.226968,
		-0.644378, -0.746670, 0.165108,
		31.767557, 32.936203, 38.414200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843645, 33.605938, 38.844936>,  <32.218620, 33.458870, 38.298622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843645, 33.605938, 38.844936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796684, 33.210392, 38.808334>,  <31.768509, 32.973064, 38.786373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796684, 33.210392, 38.808334>,  <31.843645, 33.605938, 38.844936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796684, 33.210392, 38.808334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319726, -0.124870, 0.939246,
		-0.940209, 0.081013, 0.330824,
		-0.117401, -0.988860, -0.091502,
		31.761463, 32.913734, 38.780884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596649, 33.458076, 39.481457>,  <31.843645, 33.605938, 38.844936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596649, 33.458076, 39.481457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717098, 33.106800, 39.332806>,  <31.789368, 32.896034, 39.243614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717098, 33.106800, 39.332806>,  <31.596649, 33.458076, 39.481457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717098, 33.106800, 39.332806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206984, -0.320229, 0.924452,
		-0.930851, -0.355292, 0.085344,
		0.301120, -0.878192, -0.371625,
		31.807434, 32.843342, 39.221317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245302, 32.894482, 39.795582>,  <31.596649, 33.458076, 39.481457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245302, 32.894482, 39.795582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544662, 32.666039, 39.660686>,  <31.724279, 32.528973, 39.579750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544662, 32.666039, 39.660686>,  <31.245302, 32.894482, 39.795582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544662, 32.666039, 39.660686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063467, -0.444471, 0.893542,
		-0.660203, -0.690132, -0.296396,
		0.748401, -0.571108, -0.337241,
		31.769182, 32.494705, 39.559513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232910, 32.163059, 40.161999>,  <31.245302, 32.894482, 39.795582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232910, 32.163059, 40.161999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615448, 32.202282, 40.051880>,  <31.844971, 32.225815, 39.985809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615448, 32.202282, 40.051880>,  <31.232910, 32.163059, 40.161999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615448, 32.202282, 40.051880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290164, -0.430713, 0.854571,
		-0.034776, -0.897146, -0.440364,
		0.956345, 0.098059, -0.275297,
		31.902351, 32.231701, 39.969292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488682, 31.477150, 40.012241>,  <31.232910, 32.163059, 40.161999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488682, 31.477150, 40.012241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794876, 31.720371, 40.096436>,  <31.978592, 31.866304, 40.146954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794876, 31.720371, 40.096436>,  <31.488682, 31.477150, 40.012241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794876, 31.720371, 40.096436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236303, -0.569912, 0.786995,
		0.598495, -0.552693, -0.579944,
		0.765483, 0.608055, 0.210486,
		32.024521, 31.902788, 40.159580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991228, 31.017365, 40.277885>,  <31.488682, 31.477150, 40.012241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991228, 31.017365, 40.277885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103096, 31.380524, 40.402786>,  <32.170216, 31.598419, 40.477726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103096, 31.380524, 40.402786>,  <31.991228, 31.017365, 40.277885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103096, 31.380524, 40.402786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394921, -0.405227, 0.824517,
		0.875113, -0.107277, -0.471879,
		0.279670, 0.907900, 0.312253,
		32.186996, 31.652893, 40.496464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688473, 30.900343, 40.412727>,  <31.991228, 31.017365, 40.277885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688473, 30.900343, 40.412727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546814, 31.216572, 40.612556>,  <32.461819, 31.406309, 40.732456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546814, 31.216572, 40.612556>,  <32.688473, 30.900343, 40.412727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546814, 31.216572, 40.612556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430620, -0.336340, 0.837521,
		0.830146, 0.511737, -0.221320,
		-0.354151, 0.790570, 0.499576,
		32.440567, 31.453743, 40.762428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198135, 30.922375, 40.874420>,  <32.688473, 30.900343, 40.412727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198135, 30.922375, 40.874420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943462, 31.198101, 41.012680>,  <32.790657, 31.363537, 41.095638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943462, 31.198101, 41.012680>,  <33.198135, 30.922375, 40.874420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943462, 31.198101, 41.012680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196200, -0.288683, 0.937106,
		0.745747, 0.664458, 0.048556,
		-0.636684, 0.689317, 0.345651,
		32.752457, 31.404896, 41.116375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531918, 31.282330, 41.436359>,  <33.198135, 30.922375, 40.874420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531918, 31.282330, 41.436359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137714, 31.325378, 41.488808>,  <32.901192, 31.351208, 41.520275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137714, 31.325378, 41.488808>,  <33.531918, 31.282330, 41.436359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137714, 31.325378, 41.488808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106108, -0.211958, 0.971502,
		0.132348, 0.971335, 0.197466,
		-0.985508, 0.107624, 0.131118,
		32.842064, 31.357666, 41.528145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475544, 31.679808, 42.041168>,  <33.531918, 31.282330, 41.436359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475544, 31.679808, 42.041168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118233, 31.506907, 41.991837>,  <32.903847, 31.403166, 41.962238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118233, 31.506907, 41.991837>,  <33.475544, 31.679808, 42.041168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118233, 31.506907, 41.991837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010762, -0.294856, 0.955481,
		-0.449372, 0.852185, 0.268041,
		-0.893280, -0.432251, -0.123329,
		32.850250, 31.377232, 41.954838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110653, 31.846773, 42.618370>,  <33.475544, 31.679808, 42.041168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110653, 31.846773, 42.618370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866058, 31.559378, 42.485786>,  <32.719303, 31.386940, 42.406239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866058, 31.559378, 42.485786>,  <33.110653, 31.846773, 42.618370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866058, 31.559378, 42.485786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283375, -0.192258, 0.939540,
		-0.738774, 0.668438, -0.086039,
		-0.611483, -0.718489, -0.331454,
		32.682613, 31.343830, 42.386349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450211, 32.006203, 42.930813>,  <33.110653, 31.846773, 42.618370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450211, 32.006203, 42.930813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501369, 31.627756, 42.811817>,  <32.532066, 31.400688, 42.740417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501369, 31.627756, 42.811817>,  <32.450211, 32.006203, 42.930813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501369, 31.627756, 42.811817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093302, -0.310104, 0.946113,
		-0.987389, -0.093250, -0.127937,
		0.127899, -0.946119, -0.297492,
		32.539738, 31.343920, 42.722569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787073, 31.687859, 43.211697>,  <32.450211, 32.006203, 42.930813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787073, 31.687859, 43.211697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086540, 31.427717, 43.160259>,  <32.266220, 31.271633, 43.129395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086540, 31.427717, 43.160259>,  <31.787073, 31.687859, 43.211697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086540, 31.427717, 43.160259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102503, -0.305203, 0.946755,
		-0.654973, -0.695623, -0.295159,
		0.748668, -0.650354, -0.128596,
		32.311142, 31.232611, 43.121681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564707, 31.095285, 43.522129>,  <31.787073, 31.687859, 43.211697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564707, 31.095285, 43.522129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960165, 31.049940, 43.482674>,  <32.197441, 31.022732, 43.459000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960165, 31.049940, 43.482674>,  <31.564707, 31.095285, 43.522129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960165, 31.049940, 43.482674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068630, -0.243330, 0.967512,
		-0.133683, -0.963296, -0.232787,
		0.988645, -0.113364, -0.098640,
		32.256760, 31.015930, 43.453083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704445, 30.536146, 43.978104>,  <31.564707, 31.095285, 43.522129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704445, 30.536146, 43.978104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083351, 30.645515, 43.911263>,  <32.310696, 30.711138, 43.871159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083351, 30.645515, 43.911263>,  <31.704445, 30.536146, 43.978104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083351, 30.645515, 43.911263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224675, -0.194889, 0.954746,
		0.228484, -0.941943, -0.246044,
		0.947268, 0.273424, -0.167102,
		32.367531, 30.727543, 43.861134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072353, 29.954809, 44.010559>,  <31.704445, 30.536146, 43.978104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072353, 29.954809, 44.010559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313042, 30.266373, 44.081257>,  <32.457455, 30.453310, 44.123676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313042, 30.266373, 44.081257>,  <32.072353, 29.954809, 44.010559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313042, 30.266373, 44.081257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117456, -0.305176, 0.945025,
		0.790024, -0.547879, -0.275117,
		0.601719, 0.778907, 0.176745,
		32.493557, 30.500044, 44.134281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580055, 29.584568, 44.454700>,  <32.072353, 29.954809, 44.010559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580055, 29.584568, 44.454700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655930, 29.974194, 44.504051>,  <32.701454, 30.207970, 44.533661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655930, 29.974194, 44.504051>,  <32.580055, 29.584568, 44.454700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655930, 29.974194, 44.504051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339933, -0.183034, 0.922466,
		0.921122, -0.133038, -0.365835,
		0.189683, 0.974063, 0.123373,
		32.712833, 30.266413, 44.541061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269928, 29.644156, 44.717274>,  <32.580055, 29.584568, 44.454700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269928, 29.644156, 44.717274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082779, 29.985548, 44.809071>,  <32.970490, 30.190384, 44.864151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082779, 29.985548, 44.809071>,  <33.269928, 29.644156, 44.717274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082779, 29.985548, 44.809071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270308, -0.109039, 0.956579,
		0.841445, 0.509591, -0.179686,
		-0.467872, 0.853480, 0.229497,
		32.942417, 30.241592, 44.877918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730904, 30.157772, 45.092838>,  <33.269928, 29.644156, 44.717274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730904, 30.157772, 45.092838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363636, 30.289368, 45.181137>,  <33.143276, 30.368324, 45.234116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363636, 30.289368, 45.181137>,  <33.730904, 30.157772, 45.092838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363636, 30.289368, 45.181137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234637, 0.002588, 0.972080,
		0.319233, 0.944330, -0.079570,
		-0.918170, 0.328990, 0.220748,
		33.088184, 30.388065, 45.247360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848534, 30.703259, 45.600250>,  <33.730904, 30.157772, 45.092838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848534, 30.703259, 45.600250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467098, 30.591679, 45.645599>,  <33.238235, 30.524731, 45.672810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467098, 30.591679, 45.645599>,  <33.848534, 30.703259, 45.600250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467098, 30.591679, 45.645599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154395, -0.129719, 0.979456,
		-0.258511, 0.951504, 0.166767,
		-0.953590, -0.278948, 0.113374,
		33.181023, 30.507994, 45.679611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495495, 31.138401, 46.132114>,  <33.848534, 30.703259, 45.600250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495495, 31.138401, 46.132114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305191, 30.786581, 46.129433>,  <33.191010, 30.575489, 46.127823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305191, 30.786581, 46.129433>,  <33.495495, 31.138401, 46.132114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305191, 30.786581, 46.129433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034587, -0.026325, 0.999055,
		-0.878893, 0.475082, 0.042945,
		-0.475764, -0.879548, -0.006705,
		33.162460, 30.522717, 46.127422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953369, 31.111477, 46.771126>,  <33.495495, 31.138401, 46.132114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953369, 31.111477, 46.771126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082375, 30.756052, 46.640621>,  <33.159779, 30.542797, 46.562321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082375, 30.756052, 46.640621>,  <32.953369, 31.111477, 46.771126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082375, 30.756052, 46.640621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120154, -0.303457, 0.945239,
		-0.938907, -0.344057, 0.008894,
		0.322517, -0.888560, -0.326257,
		33.179131, 30.489485, 46.542744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724941, 30.546770, 47.266911>,  <32.953369, 31.111477, 46.771126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724941, 30.546770, 47.266911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941383, 30.291109, 47.048302>,  <33.071247, 30.137712, 46.917137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941383, 30.291109, 47.048302>,  <32.724941, 30.546770, 47.266911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941383, 30.291109, 47.048302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209552, -0.526910, 0.823684,
		-0.814430, -0.560224, -0.151176,
		0.541103, -0.639153, -0.546527,
		33.103714, 30.099363, 46.884342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498043, 29.880560, 47.379108>,  <32.724941, 30.546770, 47.266911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498043, 29.880560, 47.379108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880352, 29.859604, 47.263344>,  <33.109737, 29.847031, 47.193886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880352, 29.859604, 47.263344>,  <32.498043, 29.880560, 47.379108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880352, 29.859604, 47.263344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217251, -0.537561, 0.814758,
		-0.198263, -0.841596, -0.502402,
		0.955769, -0.052389, -0.289416,
		33.167084, 29.843887, 47.176517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713974, 29.308722, 47.707714>,  <32.498043, 29.880560, 47.379108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713974, 29.308722, 47.707714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054543, 29.489035, 47.600471>,  <33.258884, 29.597221, 47.536125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054543, 29.489035, 47.600471>,  <32.713974, 29.308722, 47.707714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054543, 29.489035, 47.600471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457436, -0.388143, 0.800061,
		0.256588, -0.803830, -0.536675,
		0.851419, 0.450781, -0.268108,
		33.309967, 29.624269, 47.520039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224064, 28.826139, 47.872944>,  <32.713974, 29.308722, 47.707714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224064, 28.826139, 47.872944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413757, 29.177935, 47.856949>,  <33.527573, 29.389011, 47.847351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413757, 29.177935, 47.856949>,  <33.224064, 28.826139, 47.872944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413757, 29.177935, 47.856949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604335, -0.292170, 0.741226,
		0.640217, -0.375682, -0.670063,
		0.474238, 0.879488, -0.039986,
		33.556030, 29.441782, 47.844952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955658, 28.676653, 47.936726>,  <33.224064, 28.826139, 47.872944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955658, 28.676653, 47.936726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902779, 29.050230, 48.069557>,  <33.871052, 29.274376, 48.149258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902779, 29.050230, 48.069557>,  <33.955658, 28.676653, 47.936726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902779, 29.050230, 48.069557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399640, -0.256367, 0.880093,
		0.907090, 0.249060, -0.339349,
		-0.132198, 0.933941, 0.332082,
		33.863121, 29.330412, 48.169182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528584, 28.785049, 48.236015>,  <33.955658, 28.676653, 47.936726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528584, 28.785049, 48.236015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292606, 29.060518, 48.404636>,  <34.151020, 29.225800, 48.505810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292606, 29.060518, 48.404636>,  <34.528584, 28.785049, 48.236015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292606, 29.060518, 48.404636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340949, -0.260792, 0.903184,
		0.731933, 0.676551, -0.080950,
		-0.589939, 0.688670, 0.421552,
		34.115623, 29.267118, 48.531101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937096, 29.115896, 48.695057>,  <34.528584, 28.785049, 48.236015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937096, 29.115896, 48.695057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557709, 29.168983, 48.810150>,  <34.330074, 29.200836, 48.879204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557709, 29.168983, 48.810150>,  <34.937096, 29.115896, 48.695057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557709, 29.168983, 48.810150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224897, -0.357716, 0.906345,
		0.223216, 0.924351, 0.309434,
		-0.948470, 0.132720, 0.287731,
		34.273167, 29.208799, 48.896469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925404, 29.399895, 49.344769>,  <34.937096, 29.115896, 48.695057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925404, 29.399895, 49.344769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545677, 29.274210, 49.347897>,  <34.317841, 29.198799, 49.349773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545677, 29.274210, 49.347897>,  <34.925404, 29.399895, 49.344769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545677, 29.274210, 49.347897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088507, -0.243366, 0.965888,
		-0.301591, 0.917629, 0.258842,
		-0.949320, -0.314213, 0.007820,
		34.260880, 29.179947, 49.350243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613907, 29.730574, 49.802788>,  <34.925404, 29.399895, 49.344769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613907, 29.730574, 49.802788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383133, 29.409121, 49.744381>,  <34.244671, 29.216248, 49.709335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383133, 29.409121, 49.744381>,  <34.613907, 29.730574, 49.802788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383133, 29.409121, 49.744381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210109, -0.318770, 0.924251,
		-0.789305, 0.502551, 0.352760,
		-0.576933, -0.803634, -0.146016,
		34.210052, 29.168030, 49.700577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236980, 29.678463, 50.399883>,  <34.613907, 29.730574, 49.802788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236980, 29.678463, 50.399883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179142, 29.317770, 50.236927>,  <34.144440, 29.101353, 50.139153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179142, 29.317770, 50.236927>,  <34.236980, 29.678463, 50.399883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179142, 29.317770, 50.236927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262369, -0.431920, 0.862907,
		-0.954073, 0.017885, 0.299040,
		-0.144594, -0.901735, -0.407390,
		34.135765, 29.047249, 50.114712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842747, 29.384125, 50.842625>,  <34.236980, 29.678463, 50.399883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842747, 29.384125, 50.842625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022392, 29.076561, 50.660599>,  <34.130180, 28.892023, 50.551384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022392, 29.076561, 50.660599>,  <33.842747, 29.384125, 50.842625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022392, 29.076561, 50.660599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315537, -0.340004, 0.885909,
		-0.835904, -0.541460, 0.089919,
		0.449111, -0.768907, -0.455061,
		34.157127, 28.845888, 50.524082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519749, 28.754860, 50.990635>,  <33.842747, 29.384125, 50.842625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519749, 28.754860, 50.990635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913174, 28.685251, 50.971359>,  <34.149227, 28.643486, 50.959793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913174, 28.685251, 50.971359>,  <33.519749, 28.754860, 50.990635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913174, 28.685251, 50.971359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019504, -0.367709, 0.929736,
		-0.179513, -0.913514, -0.365059,
		0.983563, -0.174020, -0.048191,
		34.208241, 28.633045, 50.956902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124409, 28.630512, 51.579205>,  <33.519749, 28.754860, 50.990635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124409, 28.630512, 51.579205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186424, 28.333876, 51.318127>,  <33.223633, 28.155893, 51.161480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186424, 28.333876, 51.318127>,  <33.124409, 28.630512, 51.579205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186424, 28.333876, 51.318127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186427, -0.626848, 0.756510,
		-0.970159, -0.238968, 0.041066,
		0.155039, -0.741591, -0.652692,
		33.232937, 28.111399, 51.122318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814087, 27.946753, 51.873531>,  <33.124409, 28.630512, 51.579205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814087, 27.946753, 51.873531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118034, 27.933681, 51.613827>,  <33.300404, 27.925838, 51.458004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118034, 27.933681, 51.613827>,  <32.814087, 27.946753, 51.873531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118034, 27.933681, 51.613827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534866, -0.536230, 0.652975,
		-0.369487, -0.843439, -0.389986,
		0.759867, -0.032675, -0.649257,
		33.345993, 27.923880, 51.419048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108791, 27.244225, 51.628296>,  <32.814087, 27.946753, 51.873531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108791, 27.244225, 51.628296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378384, 27.538425, 51.655972>,  <33.540138, 27.714947, 51.672577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378384, 27.538425, 51.655972>,  <33.108791, 27.244225, 51.628296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378384, 27.538425, 51.655972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434241, -0.470199, 0.768341,
		0.597650, -0.487801, -0.636290,
		0.673980, 0.735502, 0.069191,
		33.580578, 27.759075, 51.676727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938545, 27.003105, 51.561958>,  <33.108791, 27.244225, 51.628296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938545, 27.003105, 51.561958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892376, 27.334488, 51.781170>,  <33.864674, 27.533318, 51.912697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892376, 27.334488, 51.781170>,  <33.938545, 27.003105, 51.561958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892376, 27.334488, 51.781170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416294, -0.460581, 0.783942,
		0.901874, 0.318628, -0.291719,
		-0.115426, 0.828458, 0.548028,
		33.857750, 27.583025, 51.945580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417580, 27.159826, 52.095921>,  <33.938545, 27.003105, 51.561958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417580, 27.159826, 52.095921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777630, 27.121056, 52.265804>,  <34.993660, 27.097794, 52.367733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777630, 27.121056, 52.265804>,  <34.417580, 27.159826, 52.095921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777630, 27.121056, 52.265804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218999, -0.742099, -0.633505,
		0.376581, 0.663246, -0.646755,
		0.900126, -0.096927, 0.424711,
		35.047668, 27.091978, 52.393219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805420, 27.267281, 51.511055>,  <34.417580, 27.159826, 52.095921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805420, 27.267281, 51.511055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947670, 27.003939, 51.776413>,  <35.033020, 26.845934, 51.935627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947670, 27.003939, 51.776413>,  <34.805420, 27.267281, 51.511055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947670, 27.003939, 51.776413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085640, -0.683857, -0.724572,
		0.930695, 0.314493, -0.186818,
		0.355630, -0.658357, 0.663396,
		35.054359, 26.806431, 51.975433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204914, 27.310858, 50.936218>,  <34.805420, 27.267281, 51.511055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204914, 27.310858, 50.936218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101826, 26.929224, 50.875160>,  <35.039974, 26.700243, 50.838528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101826, 26.929224, 50.875160>,  <35.204914, 27.310858, 50.936218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101826, 26.929224, 50.875160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885204, 0.169821, 0.433098,
		-0.387291, 0.246738, -0.888328,
		-0.257719, -0.954086, -0.152643,
		35.024509, 26.642998, 50.829369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840816, 26.913237, 50.670185>,  <35.204914, 27.310858, 50.936218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840816, 26.913237, 50.670185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780571, 26.519384, 50.705563>,  <35.744423, 26.283073, 50.726788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780571, 26.519384, 50.705563>,  <35.840816, 26.913237, 50.670185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780571, 26.519384, 50.705563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118491, -0.070841, -0.990425,
		0.981466, -0.159652, -0.106000,
		-0.150614, -0.984628, 0.088445,
		35.735386, 26.223995, 50.732098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204491, 26.525274, 50.157269>,  <35.840816, 26.913237, 50.670185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204491, 26.525274, 50.157269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883472, 26.316422, 50.272717>,  <35.690861, 26.191111, 50.341984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883472, 26.316422, 50.272717>,  <36.204491, 26.525274, 50.157269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883472, 26.316422, 50.272717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264140, -0.122795, -0.956635,
		0.534930, -0.843979, -0.039367,
		-0.802546, -0.522131, 0.288615,
		35.642708, 26.159782, 50.359303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132942, 25.793190, 49.839672>,  <36.204491, 26.525274, 50.157269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132942, 25.793190, 49.839672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843620, 26.056789, 49.922192>,  <35.670029, 26.214949, 49.971703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843620, 26.056789, 49.922192>,  <36.132942, 25.793190, 49.839672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843620, 26.056789, 49.922192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107247, 0.187918, -0.976312,
		-0.682153, -0.728293, -0.065246,
		-0.723302, 0.658996, 0.206296,
		35.626629, 26.254488, 49.984081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532070, 25.551411, 49.579769>,  <36.132942, 25.793190, 49.839672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532070, 25.551411, 49.579769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540504, 25.951052, 49.594475>,  <35.545563, 26.190836, 49.603298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540504, 25.951052, 49.594475>,  <35.532070, 25.551411, 49.579769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540504, 25.951052, 49.594475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244416, 0.040809, -0.968811,
		-0.969441, 0.011440, 0.245057,
		0.021084, 0.999102, 0.036766,
		35.546829, 26.250782, 49.605503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910946, 25.681610, 49.174309>,  <35.532070, 25.551411, 49.579769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910946, 25.681610, 49.174309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127300, 26.016161, 49.209888>,  <35.257114, 26.216892, 49.231236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127300, 26.016161, 49.209888>,  <34.910946, 25.681610, 49.174309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127300, 26.016161, 49.209888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085685, 0.159999, -0.983391,
		-0.836720, 0.524281, 0.158206,
		0.540887, 0.836379, 0.088951,
		35.289566, 26.267075, 49.236572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630688, 26.195337, 48.674301>,  <34.910946, 25.681610, 49.174309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630688, 26.195337, 48.674301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996155, 26.332876, 48.760994>,  <35.215435, 26.415400, 48.813011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996155, 26.332876, 48.760994>,  <34.630688, 26.195337, 48.674301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996155, 26.332876, 48.760994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127072, 0.264856, -0.955879,
		-0.386077, 0.900901, 0.198298,
		0.913672, 0.343845, 0.216734,
		35.270256, 26.436029, 48.826015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614620, 26.749763, 48.323891>,  <34.630688, 26.195337, 48.674301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614620, 26.749763, 48.323891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994781, 26.656317, 48.406025>,  <35.222878, 26.600248, 48.455307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994781, 26.656317, 48.406025>,  <34.614620, 26.749763, 48.323891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994781, 26.656317, 48.406025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255794, 0.211486, -0.943315,
		0.176946, 0.949051, 0.260754,
		0.950400, -0.233615, 0.205340,
		35.279900, 26.586233, 48.467628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021439, 27.366026, 48.182652>,  <34.614620, 26.749763, 48.323891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021439, 27.366026, 48.182652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262356, 27.048267, 48.151196>,  <35.406906, 26.857613, 48.132324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262356, 27.048267, 48.151196>,  <35.021439, 27.366026, 48.182652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262356, 27.048267, 48.151196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328968, 0.336748, -0.882259,
		0.727343, 0.505507, 0.464150,
		0.602289, -0.794396, -0.078636,
		35.443043, 26.809948, 48.127605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681683, 27.589066, 48.086960>,  <35.021439, 27.366026, 48.182652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681683, 27.589066, 48.086960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693558, 27.221397, 47.929863>,  <35.700684, 27.000797, 47.835606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693558, 27.221397, 47.929863>,  <35.681683, 27.589066, 48.086960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693558, 27.221397, 47.929863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127830, 0.393181, -0.910532,
		0.991352, -0.023170, 0.129171,
		0.029690, -0.919169, -0.392742,
		35.702465, 26.945646, 47.812038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296673, 27.562370, 47.448742>,  <35.681683, 27.589066, 48.086960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296673, 27.562370, 47.448742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089748, 27.221951, 47.412724>,  <35.965595, 27.017698, 47.391113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089748, 27.221951, 47.412724>,  <36.296673, 27.562370, 47.448742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089748, 27.221951, 47.412724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122670, 0.030394, -0.991982,
		0.846960, -0.524209, 0.088674,
		-0.517311, -0.851047, -0.090047,
		35.934555, 26.966637, 47.385708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614170, 27.200377, 46.869019>,  <36.296673, 27.562370, 47.448742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614170, 27.200377, 46.869019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265419, 27.005091, 46.884399>,  <36.056168, 26.887918, 46.893627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265419, 27.005091, 46.884399>,  <36.614170, 27.200377, 46.869019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265419, 27.005091, 46.884399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000280, -0.079013, -0.996874,
		0.489729, -0.869138, 0.069026,
		-0.871875, -0.488217, 0.038452,
		36.003857, 26.858625, 46.895935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729961, 26.585106, 46.498146>,  <36.614170, 27.200377, 46.869019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729961, 26.585106, 46.498146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349720, 26.709257, 46.496624>,  <36.121574, 26.783749, 46.495708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349720, 26.709257, 46.496624>,  <36.729961, 26.585106, 46.498146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349720, 26.709257, 46.496624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013022, 0.027621, -0.999534,
		-0.310129, -0.950212, -0.030298,
		-0.950605, 0.310379, -0.003807,
		36.064537, 26.802370, 46.495483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373478, 26.181574, 45.996674>,  <36.729961, 26.585106, 46.498146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373478, 26.181574, 45.996674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138042, 26.502615, 46.035454>,  <35.996780, 26.695240, 46.058723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138042, 26.502615, 46.035454>,  <36.373478, 26.181574, 45.996674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138042, 26.502615, 46.035454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025067, 0.101748, -0.994494,
		-0.808046, -0.587775, -0.039769,
		-0.588585, 0.802601, 0.096951,
		35.961468, 26.743395, 46.064541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865482, 26.071684, 45.513264>,  <36.373478, 26.181574, 45.996674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865482, 26.071684, 45.513264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813091, 26.455854, 45.611591>,  <35.781654, 26.686356, 45.670589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813091, 26.455854, 45.611591>,  <35.865482, 26.071684, 45.513264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813091, 26.455854, 45.611591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319505, 0.193832, -0.927548,
		-0.938488, -0.200033, 0.281472,
		-0.130982, 0.960425, 0.245821,
		35.773796, 26.743982, 45.685337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408733, 26.176741, 45.043095>,  <35.865482, 26.071684, 45.513264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408733, 26.176741, 45.043095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508854, 26.548647, 45.151081>,  <35.568928, 26.771791, 45.215874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508854, 26.548647, 45.151081>,  <35.408733, 26.176741, 45.043095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508854, 26.548647, 45.151081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237260, 0.329250, -0.913949,
		-0.938646, 0.164709, 0.303008,
		0.250301, 0.929766, 0.269970,
		35.583942, 26.827578, 45.232071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921791, 26.528090, 44.813900>,  <35.408733, 26.176741, 45.043095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921791, 26.528090, 44.813900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254910, 26.746384, 44.851059>,  <35.454781, 26.877359, 44.873356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254910, 26.746384, 44.851059>,  <34.921791, 26.528090, 44.813900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254910, 26.746384, 44.851059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077965, 0.281767, -0.956310,
		-0.548067, 0.789165, 0.277202,
		0.832793, 0.545734, 0.092900,
		35.504745, 26.910105, 44.878929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688549, 27.209957, 44.683853>,  <34.921791, 26.528090, 44.813900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688549, 27.209957, 44.683853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071861, 27.121235, 44.611736>,  <35.301849, 27.068001, 44.568466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071861, 27.121235, 44.611736>,  <34.688549, 27.209957, 44.683853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071861, 27.121235, 44.611736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067813, 0.436319, -0.897233,
		0.277675, 0.872025, 0.403074,
		0.958279, -0.221805, -0.180290,
		35.359344, 27.054693, 44.557648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901184, 27.814920, 44.338879>,  <34.688549, 27.209957, 44.683853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901184, 27.814920, 44.338879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170902, 27.532473, 44.252426>,  <35.332733, 27.363003, 44.200554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170902, 27.532473, 44.252426>,  <34.901184, 27.814920, 44.338879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170902, 27.532473, 44.252426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040343, 0.257022, -0.965563,
		0.737356, 0.659798, 0.144823,
		0.674299, -0.706121, -0.216135,
		35.373192, 27.320637, 44.187584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350689, 28.013027, 43.867916>,  <34.901184, 27.814920, 44.338879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350689, 28.013027, 43.867916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446041, 27.631603, 43.794273>,  <35.503254, 27.402748, 43.750088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446041, 27.631603, 43.794273>,  <35.350689, 28.013027, 43.867916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446041, 27.631603, 43.794273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162505, 0.147739, -0.975585,
		0.957479, 0.262481, -0.119740,
		0.238382, -0.953560, -0.184111,
		35.517555, 27.345535, 43.739040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629410, 28.071690, 43.238449>,  <35.350689, 28.013027, 43.867916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629410, 28.071690, 43.238449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559357, 27.678778, 43.265148>,  <35.517323, 27.443031, 43.281170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559357, 27.678778, 43.265148>,  <35.629410, 28.071690, 43.238449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559357, 27.678778, 43.265148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248858, -0.021430, -0.968303,
		0.952574, -0.186194, -0.240695,
		-0.175134, -0.982279, 0.066750,
		35.506817, 27.384094, 43.285172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932041, 27.780441, 42.658794>,  <35.629410, 28.071690, 43.238449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932041, 27.780441, 42.658794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672245, 27.509556, 42.797092>,  <35.516365, 27.347025, 42.880070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672245, 27.509556, 42.797092>,  <35.932041, 27.780441, 42.658794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672245, 27.509556, 42.797092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364314, -0.121958, -0.923256,
		0.667409, -0.725607, -0.167508,
		-0.649492, -0.677215, 0.345745,
		35.477398, 27.306391, 42.900814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985958, 27.240730, 42.199219>,  <35.932041, 27.780441, 42.658794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985958, 27.240730, 42.199219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635849, 27.180540, 42.383072>,  <35.425785, 27.144426, 42.493382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635849, 27.180540, 42.383072>,  <35.985958, 27.240730, 42.199219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635849, 27.180540, 42.383072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440559, -0.144007, -0.886098,
		0.199526, -0.978069, 0.059751,
		-0.875269, -0.150476, 0.459630,
		35.373268, 27.135397, 42.520962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559265, 26.849167, 41.690018>,  <35.985958, 27.240730, 42.199219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559265, 26.849167, 41.690018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283188, 26.981064, 41.947670>,  <35.117542, 27.060202, 42.102261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283188, 26.981064, 41.947670>,  <35.559265, 26.849167, 41.690018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283188, 26.981064, 41.947670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646971, 0.117527, -0.753403,
		-0.324132, -0.936727, 0.132218,
		-0.690193, 0.329743, 0.644130,
		35.076130, 27.079987, 42.140907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926918, 26.487759, 41.545681>,  <35.559265, 26.849167, 41.690018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926918, 26.487759, 41.545681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823059, 26.825090, 41.733887>,  <34.760742, 27.027489, 41.846809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823059, 26.825090, 41.733887>,  <34.926918, 26.487759, 41.545681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823059, 26.825090, 41.733887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546421, 0.273426, -0.791620,
		-0.796245, -0.462641, 0.389818,
		-0.259649, 0.843328, 0.470511,
		34.745163, 27.078089, 41.875038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269211, 26.576815, 41.222179>,  <34.926918, 26.487759, 41.545681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269211, 26.576815, 41.222179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360306, 26.926741, 41.393219>,  <34.414963, 27.136696, 41.495842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360306, 26.926741, 41.393219>,  <34.269211, 26.576815, 41.222179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360306, 26.926741, 41.393219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476295, 0.483095, -0.734685,
		-0.849281, -0.036345, 0.526688,
		0.227738, 0.874813, 0.427595,
		34.428627, 27.189184, 41.521496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755344, 26.976240, 40.962170>,  <34.269211, 26.576815, 41.222179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755344, 26.976240, 40.962170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017410, 27.249245, 41.091747>,  <34.174648, 27.413048, 41.169495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017410, 27.249245, 41.091747>,  <33.755344, 26.976240, 40.962170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017410, 27.249245, 41.091747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327426, 0.642941, -0.692401,
		-0.680847, 0.347570, 0.644704,
		0.655164, 0.682512, 0.323940,
		34.213959, 27.453999, 41.188931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439251, 27.635963, 40.999836>,  <33.755344, 26.976240, 40.962170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439251, 27.635963, 40.999836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825836, 27.734974, 41.027203>,  <34.057789, 27.794380, 41.043621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825836, 27.734974, 41.027203>,  <33.439251, 27.635963, 40.999836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825836, 27.734974, 41.027203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136464, 0.720681, -0.679704,
		-0.217548, 0.647573, 0.730289,
		0.966463, 0.247526, 0.068413,
		34.115776, 27.809233, 41.047726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469921, 28.346966, 40.986252>,  <33.439251, 27.635963, 40.999836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469921, 28.346966, 40.986252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842960, 28.244762, 40.884289>,  <34.066784, 28.183441, 40.823112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842960, 28.244762, 40.884289>,  <33.469921, 28.346966, 40.986252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842960, 28.244762, 40.884289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044809, 0.782771, -0.620694,
		0.358124, 0.567436, 0.741460,
		0.932598, -0.255509, -0.254903,
		34.122742, 28.168110, 40.807819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972816, 28.959076, 41.092964>,  <33.469921, 28.346966, 40.986252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972816, 28.959076, 41.092964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085537, 28.701941, 40.808052>,  <34.153172, 28.547659, 40.637104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085537, 28.701941, 40.808052>,  <33.972816, 28.959076, 41.092964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085537, 28.701941, 40.808052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121464, 0.712495, -0.691084,
		0.951752, 0.281267, 0.122702,
		0.281804, -0.642837, -0.712283,
		34.170078, 28.509089, 40.594368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143948, 29.402222, 40.591488>,  <33.972816, 28.959076, 41.092964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143948, 29.402222, 40.591488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139004, 29.068504, 40.371017>,  <34.136040, 28.868273, 40.238735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139004, 29.068504, 40.371017>,  <34.143948, 29.402222, 40.591488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139004, 29.068504, 40.371017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282992, 0.531604, -0.798319,
		0.959043, 0.146114, -0.242668,
		-0.012357, -0.834295, -0.551180,
		34.135296, 28.818216, 40.205662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576031, 29.489481, 40.006977>,  <34.143948, 29.402222, 40.591488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576031, 29.489481, 40.006977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316669, 29.201839, 39.907005>,  <34.161053, 29.029255, 39.847023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316669, 29.201839, 39.907005>,  <34.576031, 29.489481, 40.006977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316669, 29.201839, 39.907005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281677, 0.531610, -0.798780,
		0.707273, -0.447528, -0.547251,
		-0.648400, -0.719104, -0.249935,
		34.122150, 28.986109, 39.832024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677059, 29.251692, 39.217575>,  <34.576031, 29.489481, 40.006977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677059, 29.251692, 39.217575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294785, 29.172848, 39.305042>,  <34.065418, 29.125542, 39.357521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294785, 29.172848, 39.305042>,  <34.677059, 29.251692, 39.217575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294785, 29.172848, 39.305042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286386, 0.450454, -0.845620,
		0.068181, -0.870769, -0.486942,
		-0.955685, -0.197109, 0.218664,
		34.008080, 29.113714, 39.370640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537651, 28.793619, 38.711967>,  <34.677059, 29.251692, 39.217575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537651, 28.793619, 38.711967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204136, 28.945961, 38.871838>,  <34.004025, 29.037367, 38.967758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204136, 28.945961, 38.871838>,  <34.537651, 28.793619, 38.711967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204136, 28.945961, 38.871838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390660, 0.104523, -0.914582,
		-0.390098, -0.918708, 0.061634,
		-0.833791, 0.380854, 0.399677,
		33.953999, 29.060217, 38.991741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914135, 28.365175, 38.365334>,  <34.537651, 28.793619, 38.711967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914135, 28.365175, 38.365334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794910, 28.712757, 38.523357>,  <33.723373, 28.921307, 38.618172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794910, 28.712757, 38.523357>,  <33.914135, 28.365175, 38.365334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794910, 28.712757, 38.523357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400839, 0.261675, -0.877983,
		-0.866306, -0.420052, 0.270315,
		-0.298064, 0.868955, 0.395064,
		33.705490, 28.973444, 38.641876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251156, 28.503611, 38.060349>,  <33.914135, 28.365175, 38.365334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251156, 28.503611, 38.060349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408150, 28.856411, 38.164680>,  <33.502346, 29.068090, 38.227280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408150, 28.856411, 38.164680>,  <33.251156, 28.503611, 38.060349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408150, 28.856411, 38.164680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321907, 0.397375, -0.859342,
		-0.861586, 0.253318, 0.439887,
		0.392487, 0.881999, 0.260828,
		33.525894, 29.121012, 38.242928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904423, 28.936428, 37.613144>,  <33.251156, 28.503611, 38.060349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904423, 28.936428, 37.613144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162350, 29.192793, 37.779728>,  <33.317104, 29.346611, 37.879681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162350, 29.192793, 37.779728>,  <32.904423, 28.936428, 37.613144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162350, 29.192793, 37.779728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011115, 0.552674, -0.833324,
		-0.764255, 0.532713, 0.363498,
		0.644818, 0.640912, 0.416463,
		33.355797, 29.385067, 37.904667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662251, 29.671833, 37.550404>,  <32.904423, 28.936428, 37.613144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662251, 29.671833, 37.550404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060577, 29.695320, 37.578407>,  <33.299572, 29.709412, 37.595211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060577, 29.695320, 37.578407>,  <32.662251, 29.671833, 37.550404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060577, 29.695320, 37.578407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020825, 0.600191, -0.799586,
		-0.088970, 0.797699, 0.596457,
		0.995817, 0.058718, 0.070011,
		33.359322, 29.712936, 37.599411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879692, 30.347395, 37.328514>,  <32.662251, 29.671833, 37.550404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879692, 30.347395, 37.328514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240150, 30.173992, 37.328533>,  <33.456425, 30.069950, 37.328545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240150, 30.173992, 37.328533>,  <32.879692, 30.347395, 37.328514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240150, 30.173992, 37.328533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295163, 0.613482, -0.732474,
		0.317503, 0.660083, 0.680795,
		0.901149, -0.433509, 0.000050,
		33.510494, 30.043940, 37.328548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380249, 30.916695, 37.373322>,  <32.879692, 30.347395, 37.328514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380249, 30.916695, 37.373322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573387, 30.604525, 37.214424>,  <33.689270, 30.417223, 37.119087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573387, 30.604525, 37.214424>,  <33.380249, 30.916695, 37.373322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573387, 30.604525, 37.214424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409868, 0.602273, -0.685037,
		0.773867, 0.167948, 0.610674,
		0.482843, -0.780423, -0.397243,
		33.718239, 30.370398, 37.095253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902103, 31.172924, 37.009865>,  <33.380249, 30.916695, 37.373322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902103, 31.172924, 37.009865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938385, 30.830540, 36.806255>,  <33.960155, 30.625109, 36.684090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938385, 30.830540, 36.806255>,  <33.902103, 31.172924, 37.009865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938385, 30.830540, 36.806255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363460, 0.504323, -0.783297,
		0.927184, -0.113958, 0.356853,
		0.090706, -0.855962, -0.509019,
		33.965595, 30.573751, 36.653549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654491, 30.984596, 36.779602>,  <33.902103, 31.172924, 37.009865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654491, 30.984596, 36.779602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346359, 30.876699, 36.548492>,  <34.161480, 30.811962, 36.409824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346359, 30.876699, 36.548492>,  <34.654491, 30.984596, 36.779602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346359, 30.876699, 36.548492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262070, 0.692115, -0.672530,
		0.581297, -0.669490, -0.462469,
		-0.770333, -0.269740, -0.577777,
		34.115261, 30.795776, 36.375160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743927, 30.372774, 37.260670>,  <34.654491, 30.984596, 36.779602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743927, 30.372774, 37.260670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127762, 30.447311, 37.176319>,  <35.358063, 30.492033, 37.125710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127762, 30.447311, 37.176319>,  <34.743927, 30.372774, 37.260670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127762, 30.447311, 37.176319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281384, 0.624338, -0.728715,
		-0.004129, 0.758603, 0.651540,
		0.959587, 0.186341, -0.210881,
		35.415638, 30.503214, 37.113056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202545, 30.290331, 36.670341>,  <34.743927, 30.372774, 37.260670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202545, 30.290331, 36.670341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444340, 30.283773, 36.351761>,  <35.589417, 30.279839, 36.160614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444340, 30.283773, 36.351761>,  <35.202545, 30.290331, 36.670341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444340, 30.283773, 36.351761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795209, 0.071837, 0.602065,
		0.047344, -0.997282, 0.056462,
		0.604484, -0.016395, -0.796448,
		35.625687, 30.278856, 36.112827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777035, 29.781649, 36.765400>,  <35.202545, 30.290331, 36.670341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777035, 29.781649, 36.765400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916748, 30.091490, 36.554501>,  <36.000576, 30.277393, 36.427959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916748, 30.091490, 36.554501>,  <35.777035, 29.781649, 36.765400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916748, 30.091490, 36.554501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900124, -0.121035, 0.418482,
		0.260342, -0.620760, -0.739513,
		0.349284, 0.774602, -0.527250,
		36.021534, 30.323870, 36.396324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463940, 29.684196, 36.517689>,  <35.777035, 29.781649, 36.765400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463940, 29.684196, 36.517689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427635, 30.082529, 36.514069>,  <36.405853, 30.321529, 36.511898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427635, 30.082529, 36.514069>,  <36.463940, 29.684196, 36.517689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427635, 30.082529, 36.514069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764168, 0.075473, 0.640586,
		0.638599, 0.051226, -0.767833,
		-0.090765, 0.995831, -0.009052,
		36.400406, 30.381279, 36.511353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206360, 30.003054, 36.749630>,  <36.463940, 29.684196, 36.517689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206360, 30.003054, 36.749630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931953, 30.293242, 36.771839>,  <36.767311, 30.467354, 36.785164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931953, 30.293242, 36.771839>,  <37.206360, 30.003054, 36.749630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931953, 30.293242, 36.771839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439293, 0.352146, 0.826447,
		0.580007, 0.591346, -0.560269,
		-0.686013, 0.725468, 0.055527,
		36.726151, 30.510881, 36.788498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580956, 30.530169, 36.911949>,  <37.206360, 30.003054, 36.749630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580956, 30.530169, 36.911949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216190, 30.647337, 37.026917>,  <36.997330, 30.717638, 37.095898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216190, 30.647337, 37.026917>,  <37.580956, 30.530169, 36.911949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216190, 30.647337, 37.026917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367391, 0.270666, 0.889811,
		0.182849, 0.917027, -0.354440,
		-0.911916, 0.292919, 0.287416,
		36.942616, 30.735212, 37.113140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672161, 31.247135, 37.122379>,  <37.580956, 30.530169, 36.911949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672161, 31.247135, 37.122379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349506, 31.084503, 37.293972>,  <37.155914, 30.986923, 37.396927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349506, 31.084503, 37.293972>,  <37.672161, 31.247135, 37.122379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349506, 31.084503, 37.293972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388794, 0.181648, 0.903241,
		-0.445164, 0.895375, 0.011552,
		-0.806640, -0.406581, 0.428979,
		37.107513, 30.962528, 37.422665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555138, 31.605152, 37.828308>,  <37.672161, 31.247135, 37.122379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555138, 31.605152, 37.828308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263050, 31.333179, 37.855083>,  <37.087799, 31.169996, 37.871151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263050, 31.333179, 37.855083>,  <37.555138, 31.605152, 37.828308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263050, 31.333179, 37.855083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298249, -0.229080, 0.926590,
		-0.614681, 0.696576, 0.370066,
		-0.730215, -0.679930, 0.066941,
		37.043987, 31.129200, 37.875164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162064, 31.830484, 38.400948>,  <37.555138, 31.605152, 37.828308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162064, 31.830484, 38.400948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138054, 31.435955, 38.339550>,  <37.123650, 31.199238, 38.302711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138054, 31.435955, 38.339550>,  <37.162064, 31.830484, 38.400948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138054, 31.435955, 38.339550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145374, -0.160765, 0.976228,
		-0.987555, 0.036281, 0.153035,
		-0.060021, -0.986326, -0.153490,
		37.120049, 31.140057, 38.293503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724724, 31.634920, 38.936829>,  <37.162064, 31.830484, 38.400948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724724, 31.634920, 38.936829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943027, 31.332605, 38.792091>,  <37.074009, 31.151217, 38.705250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943027, 31.332605, 38.792091>,  <36.724724, 31.634920, 38.936829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943027, 31.332605, 38.792091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300236, -0.226780, 0.926514,
		-0.782306, -0.614295, 0.103147,
		0.545761, -0.755786, -0.361845,
		37.106754, 31.105869, 38.683537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572372, 31.063978, 39.278931>,  <36.724724, 31.634920, 38.936829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572372, 31.063978, 39.278931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938988, 30.978844, 39.143482>,  <37.158955, 30.927763, 39.062214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938988, 30.978844, 39.143482>,  <36.572372, 31.063978, 39.278931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938988, 30.978844, 39.143482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295182, -0.211323, 0.931778,
		-0.269877, -0.953961, -0.130859,
		0.916534, -0.212838, -0.338623,
		37.213947, 30.914993, 39.041897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881195, 30.369835, 39.547363>,  <36.572372, 31.063978, 39.278931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881195, 30.369835, 39.547363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193283, 30.594477, 39.437199>,  <37.380535, 30.729261, 39.371098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193283, 30.594477, 39.437199>,  <36.881195, 30.369835, 39.547363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193283, 30.594477, 39.437199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419692, -0.143544, 0.896244,
		0.463801, -0.814859, -0.347698,
		0.780222, 0.561605, -0.275414,
		37.427349, 30.762959, 39.354576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456665, 30.002316, 39.662472>,  <36.881195, 30.369835, 39.547363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456665, 30.002316, 39.662472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600945, 30.374210, 39.632851>,  <37.687511, 30.597347, 39.615078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600945, 30.374210, 39.632851>,  <37.456665, 30.002316, 39.662472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600945, 30.374210, 39.632851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478925, -0.116500, 0.870091,
		0.800330, -0.349306, -0.487296,
		0.360698, 0.929738, -0.074053,
		37.709152, 30.653131, 39.610634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219826, 30.015491, 39.704338>,  <37.456665, 30.002316, 39.662472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219826, 30.015491, 39.704338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060249, 30.351955, 39.850376>,  <37.964504, 30.553835, 39.938000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060249, 30.351955, 39.850376>,  <38.219826, 30.015491, 39.704338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060249, 30.351955, 39.850376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450704, -0.166867, 0.876939,
		0.798570, 0.514395, -0.312545,
		-0.398939, 0.841162, 0.365095,
		37.940567, 30.604303, 39.959904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725407, 30.295668, 40.127609>,  <38.219826, 30.015491, 39.704338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725407, 30.295668, 40.127609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374508, 30.444128, 40.249382>,  <38.163967, 30.533205, 40.322445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374508, 30.444128, 40.249382>,  <38.725407, 30.295668, 40.127609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374508, 30.444128, 40.249382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254751, -0.177558, 0.950566,
		0.406858, 0.911438, 0.061212,
		-0.877251, 0.371151, 0.304431,
		38.111332, 30.555473, 40.340710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950813, 30.519909, 40.759857>,  <38.725407, 30.295668, 40.127609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950813, 30.519909, 40.759857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551022, 30.519587, 40.772804>,  <38.311146, 30.519394, 40.780571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551022, 30.519587, 40.772804>,  <38.950813, 30.519909, 40.759857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551022, 30.519587, 40.772804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031718, -0.224790, 0.973891,
		0.006490, 0.974407, 0.224698,
		-0.999476, -0.000806, 0.032366,
		38.251179, 30.519344, 40.782513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828094, 30.833008, 41.464806>,  <38.950813, 30.519909, 40.759857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828094, 30.833008, 41.464806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496399, 30.644880, 41.344036>,  <38.297382, 30.532003, 41.271576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496399, 30.644880, 41.344036>,  <38.828094, 30.833008, 41.464806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496399, 30.644880, 41.344036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211280, -0.236329, 0.948425,
		-0.517413, 0.850265, 0.096606,
		-0.829243, -0.470317, -0.301923,
		38.247627, 30.503786, 41.253460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324833, 30.930552, 41.951801>,  <38.828094, 30.833008, 41.464806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324833, 30.930552, 41.951801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191624, 30.606731, 41.758423>,  <38.111698, 30.412439, 41.642395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191624, 30.606731, 41.758423>,  <38.324833, 30.930552, 41.951801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191624, 30.606731, 41.758423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204724, -0.438402, 0.875152,
		-0.920425, 0.390421, -0.019736,
		-0.333025, -0.809553, -0.483445,
		38.091717, 30.363865, 41.613388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683144, 30.667793, 42.358871>,  <38.324833, 30.930552, 41.951801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683144, 30.667793, 42.358871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807159, 30.353308, 42.145050>,  <37.881569, 30.164618, 42.016758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807159, 30.353308, 42.145050>,  <37.683144, 30.667793, 42.358871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807159, 30.353308, 42.145050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344229, -0.616941, 0.707736,
		-0.886217, -0.035420, -0.461915,
		0.310042, -0.786212, -0.534551,
		37.900173, 30.117445, 41.984684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167984, 30.106140, 42.389511>,  <37.683144, 30.667793, 42.358871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167984, 30.106140, 42.389511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491493, 29.898600, 42.278744>,  <37.685596, 29.774076, 42.212284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491493, 29.898600, 42.278744>,  <37.167984, 30.106140, 42.389511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491493, 29.898600, 42.278744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263362, -0.740515, 0.618286,
		-0.525864, -0.427120, -0.735551,
		0.808770, -0.518850, -0.276923,
		37.734123, 29.742945, 42.195667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926605, 29.448277, 42.293758>,  <37.167984, 30.106140, 42.389511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926605, 29.448277, 42.293758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322842, 29.420034, 42.340652>,  <37.560585, 29.403090, 42.368790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322842, 29.420034, 42.340652>,  <36.926605, 29.448277, 42.293758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322842, 29.420034, 42.340652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134495, -0.660530, 0.738654,
		0.025282, -0.747472, -0.663812,
		0.990592, -0.070605, 0.117231,
		37.620018, 29.398853, 42.375820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112652, 28.666748, 42.371342>,  <36.926605, 29.448277, 42.293758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112652, 28.666748, 42.371342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404148, 28.884829, 42.537086>,  <37.579044, 29.015676, 42.636532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404148, 28.884829, 42.537086>,  <37.112652, 28.666748, 42.371342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404148, 28.884829, 42.537086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015534, -0.618096, 0.785949,
		0.684615, -0.566315, -0.458900,
		0.728739, 0.545202, 0.414360,
		37.622768, 29.048389, 42.661396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618759, 28.130493, 42.629513>,  <37.112652, 28.666748, 42.371342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618759, 28.130493, 42.629513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660686, 28.487741, 42.804485>,  <37.685844, 28.702091, 42.909470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660686, 28.487741, 42.804485>,  <37.618759, 28.130493, 42.629513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660686, 28.487741, 42.804485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007339, -0.439150, 0.898384,
		0.994464, -0.097378, -0.039476,
		0.104819, 0.893121, 0.437434,
		37.692131, 28.755678, 42.935715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104050, 28.022158, 43.081211>,  <37.618759, 28.130493, 42.629513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104050, 28.022158, 43.081211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983612, 28.378340, 43.217701>,  <37.911350, 28.592049, 43.299595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983612, 28.378340, 43.217701>,  <38.104050, 28.022158, 43.081211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983612, 28.378340, 43.217701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180823, -0.298020, 0.937276,
		0.936292, 0.343912, -0.071282,
		-0.301097, 0.890454, 0.341221,
		37.893284, 28.645475, 43.320068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607628, 28.174503, 43.611313>,  <38.104050, 28.022158, 43.081211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607628, 28.174503, 43.611313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275562, 28.384964, 43.685066>,  <38.076324, 28.511240, 43.729317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275562, 28.384964, 43.685066>,  <38.607628, 28.174503, 43.611313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275562, 28.384964, 43.685066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068423, -0.232065, 0.970291,
		0.553310, 0.818113, 0.156650,
		-0.830160, 0.526153, 0.184381,
		38.026516, 28.542810, 43.740379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770908, 28.479498, 44.270252>,  <38.607628, 28.174503, 43.611313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770908, 28.479498, 44.270252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375355, 28.525162, 44.232140>,  <38.138023, 28.552561, 44.209274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375355, 28.525162, 44.232140>,  <38.770908, 28.479498, 44.270252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375355, 28.525162, 44.232140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114421, -0.174993, 0.977898,
		0.094966, 0.977929, 0.186110,
		-0.988883, 0.114162, -0.095277,
		38.078690, 28.559410, 44.203556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583225, 28.942984, 44.702568>,  <38.770908, 28.479498, 44.270252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583225, 28.942984, 44.702568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225796, 28.766277, 44.670643>,  <38.011337, 28.660254, 44.651485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225796, 28.766277, 44.670643>,  <38.583225, 28.942984, 44.702568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225796, 28.766277, 44.670643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074783, -0.028828, 0.996783,
		-0.442645, 0.896667, -0.007277,
		-0.893573, -0.441765, -0.079816,
		37.957726, 28.633747, 44.646698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208134, 29.284626, 45.095608>,  <38.583225, 28.942984, 44.702568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208134, 29.284626, 45.095608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033779, 28.927725, 45.048470>,  <37.929165, 28.713585, 45.020187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033779, 28.927725, 45.048470>,  <38.208134, 29.284626, 45.095608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033779, 28.927725, 45.048470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231764, -0.015237, 0.972653,
		-0.869648, 0.451278, -0.200151,
		-0.435887, -0.892253, -0.117841,
		37.903011, 28.660049, 45.013119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640057, 29.418158, 45.486767>,  <38.208134, 29.284626, 45.095608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640057, 29.418158, 45.486767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645054, 29.021645, 45.434296>,  <37.648052, 28.783737, 45.402813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645054, 29.021645, 45.434296>,  <37.640057, 29.418158, 45.486767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645054, 29.021645, 45.434296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110498, -0.131753, 0.985105,
		-0.993798, 0.002184, -0.111181,
		0.012497, -0.991280, -0.131177,
		37.648804, 28.724260, 45.394943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064510, 29.193304, 45.801300>,  <37.640057, 29.418158, 45.486767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064510, 29.193304, 45.801300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313477, 28.880255, 45.805283>,  <37.462856, 28.692425, 45.807674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313477, 28.880255, 45.805283>,  <37.064510, 29.193304, 45.801300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313477, 28.880255, 45.805283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052428, -0.028994, 0.998204,
		-0.780931, -0.621817, -0.059078,
		0.622413, -0.782626, 0.009959,
		37.500202, 28.645468, 45.808270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755875, 28.692539, 46.382187>,  <37.064510, 29.193304, 45.801300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755875, 28.692539, 46.382187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146908, 28.623354, 46.334175>,  <37.381527, 28.581842, 46.305367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146908, 28.623354, 46.334175>,  <36.755875, 28.692539, 46.382187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146908, 28.623354, 46.334175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111989, -0.055582, 0.992154,
		-0.178278, -0.983359, -0.034966,
		0.977587, -0.172963, -0.120034,
		37.440186, 28.571465, 46.298164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843407, 28.082447, 46.800980>,  <36.755875, 28.692539, 46.382187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843407, 28.082447, 46.800980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206512, 28.245966, 46.763367>,  <37.424377, 28.344078, 46.740799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206512, 28.245966, 46.763367>,  <36.843407, 28.082447, 46.800980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206512, 28.245966, 46.763367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120783, -0.040060, 0.991870,
		0.401708, -0.911745, -0.085741,
		0.907768, 0.408798, -0.094031,
		37.478844, 28.368605, 46.735157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236233, 27.854918, 47.382492>,  <36.843407, 28.082447, 46.800980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236233, 27.854918, 47.382492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464661, 28.166386, 47.278530>,  <37.601719, 28.353266, 47.216152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464661, 28.166386, 47.278530>,  <37.236233, 27.854918, 47.382492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464661, 28.166386, 47.278530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211597, 0.166285, 0.963107,
		0.793161, -0.604999, -0.069804,
		0.571071, 0.778669, -0.259907,
		37.635983, 28.399986, 47.200558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854279, 27.823389, 47.824974>,  <37.236233, 27.854918, 47.382492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854279, 27.823389, 47.824974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823528, 28.197882, 47.687824>,  <37.805080, 28.422577, 47.605534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823528, 28.197882, 47.687824>,  <37.854279, 27.823389, 47.824974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823528, 28.197882, 47.687824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139116, 0.350602, 0.926134,
		0.987288, 0.023495, -0.157197,
		-0.076873, 0.936230, -0.342877,
		37.800465, 28.478750, 47.584961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419502, 28.207378, 48.128311>,  <37.854279, 27.823389, 47.824974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419502, 28.207378, 48.128311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154350, 28.490084, 48.029461>,  <37.995258, 28.659708, 47.970150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154350, 28.490084, 48.029461>,  <38.419502, 28.207378, 48.128311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154350, 28.490084, 48.029461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096759, 0.408165, 0.907766,
		0.742447, 0.577828, -0.338950,
		-0.662880, 0.706765, -0.247130,
		37.955486, 28.702112, 47.955322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609379, 28.848557, 48.478458>,  <38.419502, 28.207378, 48.128311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609379, 28.848557, 48.478458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231770, 28.920404, 48.367779>,  <38.005203, 28.963512, 48.301369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231770, 28.920404, 48.367779>,  <38.609379, 28.848557, 48.478458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231770, 28.920404, 48.367779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148948, 0.516335, 0.843335,
		0.294351, 0.837338, -0.460676,
		-0.944019, 0.179620, -0.276703,
		37.948563, 28.974291, 48.284767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608303, 29.455345, 48.647205>,  <38.609379, 28.848557, 48.478458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608303, 29.455345, 48.647205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236423, 29.308577, 48.634418>,  <38.013294, 29.220514, 48.626747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236423, 29.308577, 48.634418>,  <38.608303, 29.455345, 48.647205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236423, 29.308577, 48.634418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131260, 0.248995, 0.959569,
		-0.344129, 0.896309, -0.279653,
		-0.929702, -0.366922, -0.031963,
		37.957512, 29.198500, 48.624828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244495, 29.939520, 48.992722>,  <38.608303, 29.455345, 48.647205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244495, 29.939520, 48.992722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015297, 29.611702, 48.994656>,  <37.877777, 29.415010, 48.995815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015297, 29.611702, 48.994656>,  <38.244495, 29.939520, 48.992722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015297, 29.611702, 48.994656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185173, 0.135206, 0.973360,
		-0.798367, 0.556834, -0.229230,
		-0.572994, -0.819546, 0.004833,
		37.843399, 29.365839, 48.996105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746006, 30.170370, 49.410938>,  <38.244495, 29.939520, 48.992722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746006, 30.170370, 49.410938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721817, 29.771559, 49.391865>,  <37.707302, 29.532272, 49.380421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721817, 29.771559, 49.391865>,  <37.746006, 30.170370, 49.410938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721817, 29.771559, 49.391865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002373, -0.047631, 0.998862,
		-0.998167, 0.060521, 0.000515,
		-0.060476, -0.997030, -0.047688,
		37.703674, 29.472450, 49.377560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445770, 30.688616, 49.915485>,  <37.746006, 30.170370, 49.410938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445770, 30.688616, 49.915485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688091, 31.006849, 49.912868>,  <37.833485, 31.197790, 49.911297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688091, 31.006849, 49.912868>,  <37.445770, 30.688616, 49.915485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688091, 31.006849, 49.912868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179520, 0.128679, -0.975302,
		-0.775094, 0.592019, 0.220778,
		0.605807, 0.795585, -0.006541,
		37.869835, 31.245525, 49.910908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087498, 31.273355, 49.493126>,  <37.445770, 30.688616, 49.915485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087498, 31.273355, 49.493126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472397, 31.382109, 49.498203>,  <37.703335, 31.447361, 49.501251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472397, 31.382109, 49.498203>,  <37.087498, 31.273355, 49.493126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472397, 31.382109, 49.498203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095024, 0.379291, -0.920385,
		-0.255054, 0.884430, 0.390807,
		0.962246, 0.271884, 0.012698,
		37.761070, 31.463675, 49.502014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034599, 31.866980, 49.028934>,  <37.087498, 31.273355, 49.493126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034599, 31.866980, 49.028934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422482, 31.782780, 49.078503>,  <37.655212, 31.732260, 49.108242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422482, 31.782780, 49.078503>,  <37.034599, 31.866980, 49.028934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422482, 31.782780, 49.078503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173097, 0.234250, -0.956642,
		0.172345, 0.949114, 0.263590,
		0.969709, -0.210499, 0.123917,
		37.713394, 31.719629, 49.115677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445259, 32.457558, 48.844742>,  <37.034599, 31.866980, 49.028934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445259, 32.457558, 48.844742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687977, 32.144783, 48.787647>,  <37.833607, 31.957117, 48.753391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687977, 32.144783, 48.787647>,  <37.445259, 32.457558, 48.844742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687977, 32.144783, 48.787647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191147, 0.317853, -0.928672,
		0.771536, 0.536226, 0.342336,
		0.606791, -0.781940, -0.142737,
		37.870014, 31.910200, 48.744827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911121, 32.768589, 48.410858>,  <37.445259, 32.457558, 48.844742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911121, 32.768589, 48.410858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967766, 32.376175, 48.357914>,  <38.001755, 32.140728, 48.326149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967766, 32.376175, 48.357914>,  <37.911121, 32.768589, 48.410858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967766, 32.376175, 48.357914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184309, 0.157496, -0.970168,
		0.972613, 0.112996, 0.203117,
		0.141615, -0.981034, -0.132357,
		38.010250, 32.081863, 48.318207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609783, 32.742836, 48.128929>,  <37.911121, 32.768589, 48.410858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609783, 32.742836, 48.128929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423340, 32.407066, 48.017143>,  <38.311474, 32.205605, 47.950069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423340, 32.407066, 48.017143>,  <38.609783, 32.742836, 48.128929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423340, 32.407066, 48.017143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425704, 0.064115, -0.902588,
		0.775577, -0.539674, 0.327463,
		-0.466108, -0.839429, -0.279468,
		38.283508, 32.155239, 47.933304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115669, 32.460709, 47.604866>,  <38.609783, 32.742836, 48.128929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115669, 32.460709, 47.604866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766045, 32.278091, 47.538441>,  <38.556271, 32.168522, 47.498585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766045, 32.278091, 47.538441>,  <39.115669, 32.460709, 47.604866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766045, 32.278091, 47.538441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145617, 0.079910, -0.986109,
		0.463471, -0.886105, -0.003367,
		-0.874065, -0.456543, -0.166068,
		38.503826, 32.141129, 47.488621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252110, 31.854652, 47.145905>,  <39.115669, 32.460709, 47.604866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252110, 31.854652, 47.145905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868420, 31.954865, 47.093559>,  <38.638206, 32.014992, 47.062153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868420, 31.954865, 47.093559>,  <39.252110, 31.854652, 47.145905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868420, 31.954865, 47.093559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131656, -0.013673, -0.991201,
		-0.250118, -0.968011, -0.019869,
		-0.959223, 0.250533, -0.130864,
		38.580654, 32.030025, 47.054298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030350, 31.382212, 46.593357>,  <39.252110, 31.854652, 47.145905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030350, 31.382212, 46.593357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755188, 31.671621, 46.616356>,  <38.590092, 31.845266, 46.630157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755188, 31.671621, 46.616356>,  <39.030350, 31.382212, 46.593357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755188, 31.671621, 46.616356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036304, 0.044823, -0.998335,
		-0.724895, -0.688844, -0.004567,
		-0.687902, 0.723522, 0.057500,
		38.548817, 31.888678, 46.633606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388393, 31.202665, 46.115700>,  <39.030350, 31.382212, 46.593357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388393, 31.202665, 46.115700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438423, 31.594095, 46.181118>,  <38.468441, 31.828953, 46.220367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438423, 31.594095, 46.181118>,  <38.388393, 31.202665, 46.115700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438423, 31.594095, 46.181118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157643, 0.182347, -0.970514,
		-0.979544, 0.095601, 0.177072,
		0.125070, 0.978575, 0.163546,
		38.475945, 31.887669, 46.230183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953056, 31.485569, 45.561180>,  <38.388393, 31.202665, 46.115700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953056, 31.485569, 45.561180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151123, 31.806498, 45.694504>,  <38.269962, 31.999054, 45.774498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151123, 31.806498, 45.694504>,  <37.953056, 31.485569, 45.561180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151123, 31.806498, 45.694504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111574, 0.439192, -0.891438,
		-0.861605, 0.404219, 0.306990,
		0.495164, 0.802320, 0.333309,
		38.299671, 32.047195, 45.794498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455154, 32.067581, 45.492313>,  <37.953056, 31.485569, 45.561180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455154, 32.067581, 45.492313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842865, 32.165966, 45.493019>,  <38.075493, 32.224998, 45.493443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842865, 32.165966, 45.493019>,  <37.455154, 32.067581, 45.492313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842865, 32.165966, 45.493019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082998, 0.333823, -0.938975,
		-0.231542, 0.909981, 0.343982,
		0.969278, 0.245962, 0.001768,
		38.133648, 32.239754, 45.493549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515427, 32.738434, 45.139919>,  <37.455154, 32.067581, 45.492313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515427, 32.738434, 45.139919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897507, 32.621544, 45.121189>,  <38.126755, 32.551411, 45.109951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897507, 32.621544, 45.121189>,  <37.515427, 32.738434, 45.139919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897507, 32.621544, 45.121189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086525, 0.427038, -0.900084,
		0.283024, 0.855711, 0.433193,
		0.955202, -0.292227, -0.046821,
		38.184067, 32.533875, 45.107143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859737, 33.312016, 44.774616>,  <37.515427, 32.738434, 45.139919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859737, 33.312016, 44.774616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102020, 32.994961, 44.746750>,  <38.247391, 32.804729, 44.730030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102020, 32.994961, 44.746750>,  <37.859737, 33.312016, 44.774616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102020, 32.994961, 44.746750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305340, 0.312397, -0.899542,
		0.734771, 0.523584, 0.431243,
		0.605705, -0.792634, -0.069669,
		38.283733, 32.757172, 44.725849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506634, 33.535278, 44.511749>,  <37.859737, 33.312016, 44.774616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506634, 33.535278, 44.511749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516197, 33.146740, 44.417164>,  <38.521935, 32.913616, 44.360413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516197, 33.146740, 44.417164>,  <38.506634, 33.535278, 44.511749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516197, 33.146740, 44.417164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201820, 0.236351, -0.950477,
		0.979131, -0.025000, 0.201688,
		0.023907, -0.971346, -0.236464,
		38.523369, 32.855335, 44.346226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932976, 33.402096, 43.975082>,  <38.506634, 33.535278, 44.511749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932976, 33.402096, 43.975082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776207, 33.036442, 43.933613>,  <38.682148, 32.817047, 43.908730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776207, 33.036442, 43.933613>,  <38.932976, 33.402096, 43.975082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776207, 33.036442, 43.933613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096256, 0.071328, -0.992798,
		0.914951, -0.399075, 0.060036,
		-0.391919, -0.914140, -0.103675,
		38.658630, 32.762199, 43.902512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218529, 33.090843, 43.399471>,  <38.932976, 33.402096, 43.975082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218529, 33.090843, 43.399471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879669, 32.882011, 43.439003>,  <38.676353, 32.756710, 43.462723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879669, 32.882011, 43.439003>,  <39.218529, 33.090843, 43.399471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879669, 32.882011, 43.439003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159038, 0.071659, -0.984668,
		0.506997, -0.849878, -0.143737,
		-0.847149, -0.522084, 0.098832,
		38.625526, 32.725388, 43.468655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234089, 32.648121, 42.915718>,  <39.218529, 33.090843, 43.399471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234089, 32.648121, 42.915718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840286, 32.640987, 42.985493>,  <38.604004, 32.636707, 43.027359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840286, 32.640987, 42.985493>,  <39.234089, 32.648121, 42.915718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840286, 32.640987, 42.985493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174779, 0.019630, -0.984412,
		0.014147, -0.999648, -0.022446,
		-0.984506, -0.017850, 0.174440,
		38.544933, 32.635639, 43.037827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843750, 32.095200, 42.432781>,  <39.234089, 32.648121, 42.915718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843750, 32.095200, 42.432781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588943, 32.383293, 42.542671>,  <38.436062, 32.556149, 42.608604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588943, 32.383293, 42.542671>,  <38.843750, 32.095200, 42.432781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588943, 32.383293, 42.542671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288145, 0.108071, -0.951469,
		-0.714973, -0.685259, 0.138690,
		-0.637014, 0.720237, 0.274721,
		38.397839, 32.599365, 42.625088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247116, 31.945747, 42.088093>,  <38.843750, 32.095200, 42.432781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247116, 31.945747, 42.088093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206348, 32.326008, 42.205311>,  <38.181889, 32.554165, 42.275642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206348, 32.326008, 42.205311>,  <38.247116, 31.945747, 42.088093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206348, 32.326008, 42.205311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415335, 0.227013, -0.880887,
		-0.903941, -0.211488, 0.371703,
		-0.101915, 0.950651, 0.293045,
		38.175774, 32.611202, 42.293224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578751, 32.167706, 41.960690>,  <38.247116, 31.945747, 42.088093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578751, 32.167706, 41.960690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786789, 32.509315, 41.965324>,  <37.911613, 32.714283, 41.968105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786789, 32.509315, 41.965324>,  <37.578751, 32.167706, 41.960690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786789, 32.509315, 41.965324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371995, 0.238712, -0.897015,
		-0.768840, 0.462228, 0.441848,
		0.520100, 0.854026, 0.011585,
		37.942818, 32.765522, 41.968800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133965, 32.740993, 41.719944>,  <37.578751, 32.167706, 41.960690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133965, 32.740993, 41.719944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514717, 32.829979, 41.635624>,  <37.743168, 32.883369, 41.585033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514717, 32.829979, 41.635624>,  <37.133965, 32.740993, 41.719944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514717, 32.829979, 41.635624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242938, 0.128391, -0.961507,
		-0.186837, 0.966450, 0.176258,
		0.951879, 0.222465, -0.210799,
		37.800282, 32.896717, 41.572384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117119, 33.081856, 41.217995>,  <37.133965, 32.740993, 41.719944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117119, 33.081856, 41.217995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514557, 33.044033, 41.193233>,  <37.753017, 33.021339, 41.178375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514557, 33.044033, 41.193233>,  <37.117119, 33.081856, 41.217995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514557, 33.044033, 41.193233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059206, 0.031113, -0.997761,
		0.096267, 0.995033, 0.025316,
		0.993593, -0.094553, -0.061907,
		37.812634, 33.015667, 41.174660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313557, 33.589867, 40.710968>,  <37.117119, 33.081856, 41.217995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313557, 33.589867, 40.710968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616386, 33.331425, 40.749725>,  <37.798084, 33.176361, 40.772980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616386, 33.331425, 40.749725>,  <37.313557, 33.589867, 40.710968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616386, 33.331425, 40.749725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248676, 0.147833, -0.957238,
		0.604150, 0.748797, 0.272591,
		0.757075, -0.646103, 0.096895,
		37.843510, 33.137592, 40.778793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780140, 33.741081, 40.181160>,  <37.313557, 33.589867, 40.710968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780140, 33.741081, 40.181160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952568, 33.398434, 40.294563>,  <38.056023, 33.192844, 40.362606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952568, 33.398434, 40.294563>,  <37.780140, 33.741081, 40.181160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952568, 33.398434, 40.294563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468244, -0.056218, -0.881809,
		0.771316, 0.512872, 0.376875,
		0.431068, -0.856622, 0.283511,
		38.081890, 33.141445, 40.379616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574886, 33.849991, 40.297947>,  <37.780140, 33.741081, 40.181160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574886, 33.849991, 40.297947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466221, 33.476379, 40.205177>,  <38.401020, 33.252213, 40.149513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466221, 33.476379, 40.205177>,  <38.574886, 33.849991, 40.297947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466221, 33.476379, 40.205177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661671, -0.006274, -0.749768,
		0.698849, -0.357145, 0.619724,
		-0.271664, -0.934028, -0.231928,
		38.384720, 33.196171, 40.135597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159874, 33.544693, 39.989964>,  <38.574886, 33.849991, 40.297947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159874, 33.544693, 39.989964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892960, 33.279480, 39.854248>,  <38.732811, 33.120350, 39.772820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892960, 33.279480, 39.854248>,  <39.159874, 33.544693, 39.989964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892960, 33.279480, 39.854248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489400, -0.046940, -0.870795,
		0.561441, -0.747116, 0.355811,
		-0.667287, -0.663034, -0.339285,
		38.692772, 33.080570, 39.752464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517315, 33.012600, 39.637417>,  <39.159874, 33.544693, 39.989964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517315, 33.012600, 39.637417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143906, 33.015701, 39.494041>,  <38.919861, 33.017563, 39.408016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143906, 33.015701, 39.494041>,  <39.517315, 33.012600, 39.637417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143906, 33.015701, 39.494041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357923, 0.077890, -0.930497,
		0.020706, -0.996932, -0.075487,
		-0.933522, 0.007752, -0.358438,
		38.863850, 33.018024, 39.386509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577957, 32.663307, 39.006557>,  <39.517315, 33.012600, 39.637417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577957, 32.663307, 39.006557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216774, 32.832840, 38.978165>,  <39.000065, 32.934559, 38.961128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216774, 32.832840, 38.978165>,  <39.577957, 32.663307, 39.006557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216774, 32.832840, 38.978165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160763, 0.179976, -0.970445,
		-0.398530, -0.887680, -0.230647,
		-0.902956, 0.423831, -0.070980,
		38.945889, 32.959988, 38.956871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332973, 32.454487, 38.407867>,  <39.577957, 32.663307, 39.006557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332973, 32.454487, 38.407867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074528, 32.754875, 38.462372>,  <38.919460, 32.935108, 38.495075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074528, 32.754875, 38.462372>,  <39.332973, 32.454487, 38.407867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074528, 32.754875, 38.462372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056457, 0.225065, -0.972707,
		-0.761146, -0.620791, -0.187817,
		-0.646119, 0.750975, 0.136259,
		38.880692, 32.980167, 38.503250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681911, 32.428947, 37.830177>,  <39.332973, 32.454487, 38.407867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681911, 32.428947, 37.830177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727360, 32.805958, 37.955872>,  <38.754627, 33.032162, 38.031288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727360, 32.805958, 37.955872>,  <38.681911, 32.428947, 37.830177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727360, 32.805958, 37.955872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078441, 0.306782, -0.948542,
		-0.990423, 0.132420, -0.039077,
		0.113618, 0.942523, 0.314231,
		38.761444, 33.088715, 38.050140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188442, 32.739365, 37.537987>,  <38.681911, 32.428947, 37.830177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188442, 32.739365, 37.537987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442924, 33.036282, 37.622116>,  <38.595615, 33.214432, 37.672592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442924, 33.036282, 37.622116>,  <38.188442, 32.739365, 37.537987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442924, 33.036282, 37.622116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032974, 0.298520, -0.953834,
		-0.770813, 0.599901, 0.214397,
		0.636207, 0.742297, 0.210322,
		38.633785, 33.258972, 37.685211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877995, 33.354652, 37.296116>,  <38.188442, 32.739365, 37.537987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877995, 33.354652, 37.296116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276424, 33.388153, 37.307636>,  <38.515480, 33.408253, 37.314548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276424, 33.388153, 37.307636>,  <37.877995, 33.354652, 37.296116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276424, 33.388153, 37.307636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008766, 0.230368, -0.973064,
		-0.088135, 0.969492, 0.228729,
		0.996070, 0.083756, 0.028802,
		38.575245, 33.413280, 37.316277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998299, 34.031040, 37.093903>,  <37.877995, 33.354652, 37.296116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998299, 34.031040, 37.093903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330788, 33.820251, 37.023060>,  <38.530281, 33.693779, 36.980556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330788, 33.820251, 37.023060>,  <37.998299, 34.031040, 37.093903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330788, 33.820251, 37.023060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053796, 0.393315, -0.917829,
		0.553331, 0.753392, 0.355282,
		0.831223, -0.526976, -0.177104,
		38.580154, 33.662159, 36.969929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394588, 34.505928, 36.792496>,  <37.998299, 34.031040, 37.093903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394588, 34.505928, 36.792496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602844, 34.175262, 36.707119>,  <38.727798, 33.976864, 36.655891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602844, 34.175262, 36.707119>,  <38.394588, 34.505928, 36.792496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602844, 34.175262, 36.707119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502517, 0.498821, -0.706155,
		0.690222, 0.260396, 0.675120,
		0.520644, -0.826663, -0.213443,
		38.759037, 33.927265, 36.643085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126217, 34.646385, 36.840176>,  <38.394588, 34.505928, 36.792496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126217, 34.646385, 36.840176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107132, 34.338348, 36.585716>,  <39.095680, 34.153526, 36.433041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107132, 34.338348, 36.585716>,  <39.126217, 34.646385, 36.840176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107132, 34.338348, 36.585716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443987, 0.554151, -0.704125,
		0.894762, -0.316035, 0.315472,
		-0.047708, -0.770090, -0.636149,
		39.092819, 34.107323, 36.394871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796158, 34.616188, 36.434315>,  <39.126217, 34.646385, 36.840176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796158, 34.616188, 36.434315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513969, 34.422951, 36.226883>,  <39.344654, 34.307007, 36.102425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513969, 34.422951, 36.226883>,  <39.796158, 34.616188, 36.434315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513969, 34.422951, 36.226883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253967, 0.510790, -0.821337,
		0.661672, -0.711132, -0.237657,
		-0.705472, -0.483098, -0.518580,
		39.302326, 34.278023, 36.071308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157692, 34.505634, 35.753197>,  <39.796158, 34.616188, 36.434315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157692, 34.505634, 35.753197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765499, 34.448952, 35.698689>,  <39.530182, 34.414944, 35.665985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765499, 34.448952, 35.698689>,  <40.157692, 34.505634, 35.753197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765499, 34.448952, 35.698689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004796, 0.675704, -0.737158,
		0.196539, -0.723425, -0.661837,
		-0.980484, -0.141706, -0.136272,
		39.471355, 34.406441, 35.657806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214500, 34.577156, 35.071407>,  <40.157692, 34.505634, 35.753197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214500, 34.577156, 35.071407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820889, 34.591076, 35.141232>,  <39.584721, 34.599426, 35.183128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820889, 34.591076, 35.141232>,  <40.214500, 34.577156, 35.071407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820889, 34.591076, 35.141232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117853, 0.607569, -0.785474,
		-0.133393, -0.793504, -0.593766,
		-0.984031, 0.034799, 0.174562,
		39.525681, 34.601517, 35.193600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806244, 34.747795, 35.311363>,  <40.214500, 34.577156, 35.071407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806244, 34.747795, 35.311363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699936, 34.416313, 35.114334>,  <40.636150, 34.217426, 34.996117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699936, 34.416313, 35.114334>,  <40.806244, 34.747795, 35.311363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699936, 34.416313, 35.114334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789235, 0.480444, -0.382468,
		0.553604, 0.287107, -0.781724,
		-0.265765, -0.828700, -0.492570,
		40.620205, 34.167702, 34.966564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582909, 34.542675, 35.181583>,  <40.806244, 34.747795, 35.311363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582909, 34.542675, 35.181583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937626, 34.364334, 35.230274>,  <42.150455, 34.257328, 35.259487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937626, 34.364334, 35.230274>,  <41.582909, 34.542675, 35.181583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937626, 34.364334, 35.230274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086229, -0.418357, -0.904180,
		0.454056, 0.791323, -0.409441,
		0.886791, -0.445854, 0.121723,
		42.203663, 34.230579, 35.266792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930679, 34.625774, 34.543213>,  <41.582909, 34.542675, 35.181583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930679, 34.625774, 34.543213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039921, 34.294083, 34.738266>,  <42.105465, 34.095066, 34.855297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039921, 34.294083, 34.738266>,  <41.930679, 34.625774, 34.543213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039921, 34.294083, 34.738266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131817, -0.534383, -0.834900,
		0.952911, 0.163733, -0.255247,
		0.273101, -0.829232, 0.487637,
		42.121853, 34.045315, 34.884556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412247, 34.124317, 34.114883>,  <41.930679, 34.625774, 34.543213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412247, 34.124317, 34.114883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206875, 33.938389, 34.403419>,  <42.083652, 33.826832, 34.576542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206875, 33.938389, 34.403419>,  <42.412247, 34.124317, 34.114883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206875, 33.938389, 34.403419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276368, -0.706241, -0.651801,
		0.812409, -0.534010, 0.234145,
		-0.513431, -0.464819, 0.721340,
		42.052845, 33.798943, 34.619820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695576, 33.520733, 34.156597>,  <42.412247, 34.124317, 34.114883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695576, 33.520733, 34.156597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299667, 33.521381, 34.213665>,  <42.062122, 33.521770, 34.247906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299667, 33.521381, 34.213665>,  <42.695576, 33.520733, 34.156597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299667, 33.521381, 34.213665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107938, -0.662413, -0.741322,
		0.093303, -0.749137, 0.655811,
		-0.989770, 0.001620, 0.142666,
		42.002735, 33.521866, 34.256466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300953, 32.960068, 34.452133>,  <42.695576, 33.520733, 34.156597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300953, 32.960068, 34.452133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101902, 33.130814, 34.150097>,  <41.982471, 33.233261, 33.968876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101902, 33.130814, 34.150097>,  <42.300953, 32.960068, 34.452133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101902, 33.130814, 34.150097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128414, -0.824678, -0.550832,
		-0.857836, -0.371070, 0.355562,
		-0.497622, 0.426864, -0.755089,
		41.952614, 33.258873, 33.923569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876770, 32.441383, 34.140778>,  <42.300953, 32.960068, 34.452133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876770, 32.441383, 34.140778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945221, 32.737270, 33.880459>,  <41.986290, 32.914803, 33.724266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945221, 32.737270, 33.880459>,  <41.876770, 32.441383, 34.140778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945221, 32.737270, 33.880459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270540, -0.670429, -0.690893,
		-0.947378, -0.057838, -0.314849,
		0.171124, 0.739716, -0.650797,
		41.996559, 32.959187, 33.685219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719009, 32.029552, 33.569542>,  <41.876770, 32.441383, 34.140778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719009, 32.029552, 33.569542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927895, 32.349113, 33.450176>,  <42.053226, 32.540848, 33.378555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927895, 32.349113, 33.450176>,  <41.719009, 32.029552, 33.569542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927895, 32.349113, 33.450176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316614, -0.506528, -0.801988,
		-0.791865, 0.324325, -0.517458,
		0.522212, 0.798901, -0.298416,
		42.084557, 32.588783, 33.360653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566139, 32.101254, 32.871017>,  <41.719009, 32.029552, 33.569542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566139, 32.101254, 32.871017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923172, 32.216370, 33.009853>,  <42.137390, 32.285439, 33.093155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923172, 32.216370, 33.009853>,  <41.566139, 32.101254, 32.871017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923172, 32.216370, 33.009853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448253, -0.649483, -0.614200,
		0.048670, 0.703809, -0.708720,
		0.892581, 0.287793, 0.347094,
		42.190945, 32.302708, 33.113983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002151, 32.357193, 32.359959>,  <41.566139, 32.101254, 32.871017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002151, 32.357193, 32.359959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288235, 32.255775, 32.620476>,  <42.459885, 32.194923, 32.776787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288235, 32.255775, 32.620476>,  <42.002151, 32.357193, 32.359959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288235, 32.255775, 32.620476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453298, -0.541015, -0.708395,
		0.531973, 0.801883, -0.272007,
		0.715211, -0.253547, 0.651297,
		42.502796, 32.179710, 32.815865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633099, 32.403454, 31.924753>,  <42.002151, 32.357193, 32.359959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633099, 32.403454, 31.924753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733997, 32.213558, 32.262035>,  <42.794537, 32.099621, 32.464405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733997, 32.213558, 32.262035>,  <42.633099, 32.403454, 31.924753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733997, 32.213558, 32.262035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657018, -0.555711, -0.509425,
		0.710422, 0.682500, 0.171737,
		0.252246, -0.474741, 0.843204,
		42.809669, 32.071136, 32.514996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370625, 32.411678, 31.955692>,  <42.633099, 32.403454, 31.924753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370625, 32.411678, 31.955692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270248, 32.123775, 32.214607>,  <43.210022, 31.951035, 32.369957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270248, 32.123775, 32.214607>,  <43.370625, 32.411678, 31.955692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270248, 32.123775, 32.214607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761233, -0.559793, -0.327347,
		0.597956, 0.410590, 0.688377,
		-0.250943, -0.719755, 0.647287,
		43.194965, 31.907848, 32.408794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.043743, 32.190792, 32.296383>,  <43.370625, 32.411678, 31.955692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.043743, 32.190792, 32.296383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772022, 31.899574, 32.333244>,  <43.608990, 31.724842, 32.355362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772022, 31.899574, 32.333244>,  <44.043743, 32.190792, 32.296383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772022, 31.899574, 32.333244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687600, -0.675323, -0.266730,
		0.256426, -0.117826, 0.959355,
		-0.679303, -0.728049, 0.092153,
		43.568230, 31.681160, 32.360889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398426, 31.669876, 32.714283>,  <44.043743, 32.190792, 32.296383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398426, 31.669876, 32.714283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097767, 31.489023, 32.522202>,  <43.917370, 31.380510, 32.406952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097767, 31.489023, 32.522202>,  <44.398426, 31.669876, 32.714283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097767, 31.489023, 32.522202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603699, -0.764861, -0.224800,
		-0.265652, -0.458871, 0.847860,
		-0.751649, -0.452134, -0.480206,
		43.872272, 31.353384, 32.378139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389236, 30.922888, 33.048782>,  <44.398426, 31.669876, 32.714283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389236, 30.922888, 33.048782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182053, 30.912079, 32.706791>,  <44.057743, 30.905594, 32.501595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182053, 30.912079, 32.706791>,  <44.389236, 30.922888, 33.048782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182053, 30.912079, 32.706791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503912, -0.817304, -0.279441,
		-0.691227, -0.575573, 0.436945,
		-0.517956, -0.027025, -0.854980,
		44.026665, 30.903971, 32.450298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142830, 30.279242, 32.975563>,  <44.389236, 30.922888, 33.048782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142830, 30.279242, 32.975563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158318, 30.415100, 32.599659>,  <44.167610, 30.496614, 32.374119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158318, 30.415100, 32.599659>,  <44.142830, 30.279242, 32.975563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158318, 30.415100, 32.599659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455063, -0.843272, -0.286025,
		-0.889617, -0.416572, -0.187215,
		0.038723, 0.339647, -0.939756,
		44.169933, 30.516994, 32.317734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060059, 29.668627, 32.493298>,  <44.142830, 30.279242, 32.975563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060059, 29.668627, 32.493298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201546, 29.929962, 32.225555>,  <44.286438, 30.086763, 32.064911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201546, 29.929962, 32.225555>,  <44.060059, 29.668627, 32.493298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201546, 29.929962, 32.225555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315757, -0.757013, -0.572039,
		-0.880442, -0.009010, -0.474068,
		0.353722, 0.653337, -0.669351,
		44.307663, 30.125963, 32.024750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067200, 29.307226, 31.897583>,  <44.060059, 29.668627, 32.493298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067200, 29.307226, 31.897583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313427, 29.616018, 31.834171>,  <44.461163, 29.801292, 31.796125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313427, 29.616018, 31.834171>,  <44.067200, 29.307226, 31.897583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313427, 29.616018, 31.834171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590668, -0.585098, -0.555672,
		-0.521721, 0.248415, -0.816148,
		0.615564, 0.771978, -0.158527,
		44.498096, 29.847612, 31.786613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224003, 29.351067, 31.200323>,  <44.067200, 29.307226, 31.897583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224003, 29.351067, 31.200323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538162, 29.513599, 31.387104>,  <44.726658, 29.611118, 31.499172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538162, 29.513599, 31.387104>,  <44.224003, 29.351067, 31.200323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538162, 29.513599, 31.387104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617542, -0.565955, -0.546202,
		0.042337, 0.717349, -0.695426,
		0.785397, 0.406331, 0.466954,
		44.773781, 29.635498, 31.527191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638889, 29.435183, 30.666891>,  <44.224003, 29.351067, 31.200323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638889, 29.435183, 30.666891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874302, 29.439459, 30.990253>,  <45.015549, 29.442024, 31.184271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874302, 29.439459, 30.990253>,  <44.638889, 29.435183, 30.666891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874302, 29.439459, 30.990253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686865, -0.534028, -0.492981,
		0.426441, 0.845399, -0.321635,
		0.588527, 0.010693, 0.808407,
		45.050861, 29.442667, 31.232775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181984, 29.486443, 30.403149>,  <44.638889, 29.435183, 30.666891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181984, 29.486443, 30.403149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295784, 29.360977, 30.765514>,  <45.364063, 29.285698, 30.982933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295784, 29.360977, 30.765514>,  <45.181984, 29.486443, 30.403149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295784, 29.360977, 30.765514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725560, -0.547184, -0.417315,
		0.626598, 0.776018, 0.071910,
		0.284496, -0.313664, 0.905912,
		45.381134, 29.266878, 31.037289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945515, 29.448578, 30.442389>,  <45.181984, 29.486443, 30.403149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945515, 29.448578, 30.442389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.826832, 29.206177, 30.737610>,  <45.755623, 29.060736, 30.914743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.826832, 29.206177, 30.737610>,  <45.945515, 29.448578, 30.442389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826832, 29.206177, 30.737610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682162, -0.675351, -0.280280,
		0.668295, 0.420309, 0.613776,
		-0.296710, -0.606005, 0.738053,
		45.737820, 29.024376, 30.959026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.628384, 29.137182, 30.773577>,  <45.945515, 29.448578, 30.442389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.628384, 29.137182, 30.773577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318966, 28.906599, 30.878897>,  <46.133316, 28.768250, 30.942089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318966, 28.906599, 30.878897>,  <46.628384, 29.137182, 30.773577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318966, 28.906599, 30.878897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579821, -0.811455, -0.073125,
		0.255810, 0.096102, 0.961938,
		-0.773543, -0.576459, 0.263301,
		46.086903, 28.733662, 30.957888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.910889, 28.649633, 31.184231>,  <46.628384, 29.137182, 30.773577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.910889, 28.649633, 31.184231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.561108, 28.473902, 31.101950>,  <46.351238, 28.368462, 31.052580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.561108, 28.473902, 31.101950>,  <46.910889, 28.649633, 31.184231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.561108, 28.473902, 31.101950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482048, -0.834479, -0.266972,
		-0.054366, -0.332615, 0.941494,
		-0.874457, -0.439331, -0.205704,
		46.298771, 28.342102, 31.040239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.840649, 28.132324, 31.670387>,  <46.910889, 28.649633, 31.184231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.840649, 28.132324, 31.670387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633465, 28.037632, 31.341591>,  <46.509155, 27.980818, 31.144312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633465, 28.037632, 31.341591>,  <46.840649, 28.132324, 31.670387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633465, 28.037632, 31.341591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295029, -0.951418, 0.088095,
		-0.802914, -0.196882, 0.562642,
		-0.517964, -0.236729, -0.821993,
		46.478077, 27.966614, 31.094994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.479553, 27.543858, 31.800322>,  <46.840649, 28.132324, 31.670387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.479553, 27.543858, 31.800322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.498718, 27.567778, 31.401497>,  <46.510216, 27.582130, 31.162203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.498718, 27.567778, 31.401497>,  <46.479553, 27.543858, 31.800322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.498718, 27.567778, 31.401497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298202, -0.953540, -0.042861,
		-0.953300, -0.295271, -0.063517,
		0.047910, 0.059801, -0.997060,
		46.513092, 27.585718, 31.102379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121399, 26.856874, 31.615507>,  <46.479553, 27.543858, 31.800322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.121399, 26.856874, 31.615507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333805, 26.988886, 31.303328>,  <46.461250, 27.068092, 31.116020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333805, 26.988886, 31.303328>,  <46.121399, 26.856874, 31.615507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.333805, 26.988886, 31.303328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429413, -0.898819, -0.087913,
		-0.730495, -0.288451, -0.619009,
		0.531019, 0.330031, -0.780448,
		46.493111, 27.087894, 31.069193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097618, 26.287102, 31.042807>,  <46.121399, 26.856874, 31.615507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097618, 26.287102, 31.042807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406654, 26.522354, 30.947140>,  <46.592075, 26.663506, 30.889740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406654, 26.522354, 30.947140>,  <46.097618, 26.287102, 31.042807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.406654, 26.522354, 30.947140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583921, -0.806111, -0.096026,
		-0.249272, -0.065466, -0.966218,
		0.772593, 0.588132, -0.239168,
		46.638432, 26.698793, 30.875389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.309437, 26.007647, 30.450914>,  <46.097618, 26.287102, 31.042807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.309437, 26.007647, 30.450914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.629307, 26.205006, 30.587778>,  <46.821228, 26.323421, 30.669895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.629307, 26.205006, 30.587778>,  <46.309437, 26.007647, 30.450914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.629307, 26.205006, 30.587778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542239, -0.838176, -0.058633,
		0.257858, 0.232418, -0.937812,
		0.799678, 0.493399, 0.342157,
		46.869209, 26.353025, 30.690426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.807571, 25.709936, 30.074663>,  <46.309437, 26.007647, 30.450914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.807571, 25.709936, 30.074663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983322, 25.845953, 30.407246>,  <47.088772, 25.927563, 30.606794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983322, 25.845953, 30.407246>,  <46.807571, 25.709936, 30.074663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983322, 25.845953, 30.407246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485919, -0.868449, 0.098386,
		0.755531, 0.360791, -0.546811,
		0.439380, 0.340040, 0.831455,
		47.115135, 25.947966, 30.656683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.526978, 25.542513, 30.054430>,  <46.807571, 25.709936, 30.074663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.526978, 25.542513, 30.054430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395195, 25.564260, 30.431471>,  <47.316124, 25.577309, 30.657696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395195, 25.564260, 30.431471>,  <47.526978, 25.542513, 30.054430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.395195, 25.564260, 30.431471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266977, -0.952233, 0.148239,
		0.905637, 0.300492, 0.299208,
		-0.329460, 0.054369, 0.942603,
		47.296356, 25.580572, 30.714252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.072556, 25.309135, 30.520029>,  <47.526978, 25.542513, 30.054430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.072556, 25.309135, 30.520029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691628, 25.268948, 30.635265>,  <47.463070, 25.244835, 30.704407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691628, 25.268948, 30.635265>,  <48.072556, 25.309135, 30.520029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.691628, 25.268948, 30.635265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197198, -0.923190, 0.329900,
		0.232816, 0.370980, 0.898983,
		-0.952318, -0.100472, 0.288090,
		47.405933, 25.238806, 30.721693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.008507, 25.051443, 31.178871>,  <48.072556, 25.309135, 30.520029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.008507, 25.051443, 31.178871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.670574, 24.968224, 30.981703>,  <47.467815, 24.918291, 30.863401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.670574, 24.968224, 30.981703>,  <48.008507, 25.051443, 31.178871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.670574, 24.968224, 30.981703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007993, -0.916287, 0.400441,
		-0.534970, 0.342246, 0.772447,
		-0.844833, -0.208050, -0.492921,
		47.417126, 24.905809, 30.833826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.511578, 24.701027, 31.583790>,  <48.008507, 25.051443, 31.178871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.511578, 24.701027, 31.583790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.549248, 24.589474, 31.201511>,  <47.571850, 24.522543, 30.972145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.549248, 24.589474, 31.201511>,  <47.511578, 24.701027, 31.583790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.549248, 24.589474, 31.201511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498748, -0.817595, 0.287729,
		-0.861616, -0.503749, 0.062095,
		0.094175, -0.278882, -0.955697,
		47.577499, 24.505810, 30.914803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.527512, 24.478308, 32.293983>,  <47.511578, 24.701027, 31.583790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.527512, 24.478308, 32.293983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349461, 24.349844, 32.628342>,  <47.242630, 24.272766, 32.828957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349461, 24.349844, 32.628342>,  <47.527512, 24.478308, 32.293983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.349461, 24.349844, 32.628342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511080, 0.675385, 0.531651,
		-0.735294, 0.663861, -0.136495,
		-0.445129, -0.321160, 0.835893,
		47.215923, 24.253496, 32.879108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.146336, 25.001818, 32.771610>,  <47.527512, 24.478308, 32.293983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.146336, 25.001818, 32.771610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289734, 24.685953, 32.970772>,  <47.375774, 24.496435, 33.090271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289734, 24.685953, 32.970772>,  <47.146336, 25.001818, 32.771610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.289734, 24.685953, 32.970772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473886, 0.613469, 0.631733,
		-0.804307, 0.009476, 0.594139,
		0.358500, -0.789661, 0.497908,
		47.397285, 24.449055, 33.120144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845264, 24.804306, 33.439953>,  <47.146336, 25.001818, 32.771610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845264, 24.804306, 33.439953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229370, 24.694693, 33.461143>,  <47.459831, 24.628925, 33.473858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229370, 24.694693, 33.461143>,  <46.845264, 24.804306, 33.439953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.229370, 24.694693, 33.461143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167867, 0.718687, 0.674766,
		-0.222982, -0.639058, 0.736127,
		0.960260, -0.274033, 0.052977,
		47.517448, 24.612482, 33.477036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.077938, 24.994352, 34.166336>,  <46.845264, 24.804306, 33.439953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.077938, 24.994352, 34.166336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386890, 24.972754, 33.913189>,  <47.572262, 24.959795, 33.761303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386890, 24.972754, 33.913189>,  <47.077938, 24.994352, 34.166336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.386890, 24.972754, 33.913189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390886, 0.825761, 0.406604,
		0.500639, -0.561429, 0.658906,
		0.772379, -0.053996, -0.632863,
		47.618603, 24.956554, 33.723331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.618408, 25.265863, 34.461006>,  <47.077938, 24.994352, 34.166336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.618408, 25.265863, 34.461006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.724815, 25.277719, 34.075600>,  <47.788658, 25.284834, 33.844357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.724815, 25.277719, 34.075600>,  <47.618408, 25.265863, 34.461006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.724815, 25.277719, 34.075600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528715, 0.831284, 0.171547,
		0.806037, -0.555058, 0.205462,
		0.266016, 0.029642, -0.963513,
		47.804619, 25.286612, 33.786545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.064671, 25.212210, 34.943821>,  <47.618408, 25.265863, 34.461006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.064671, 25.212210, 34.943821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.727455, 25.309555, 35.135677>,  <46.525124, 25.367962, 35.250790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.727455, 25.309555, 35.135677>,  <47.064671, 25.212210, 34.943821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.727455, 25.309555, 35.135677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035067, 0.865011, -0.500526,
		-0.536705, -0.438784, -0.720706,
		-0.843041, 0.243361, 0.479642,
		46.474545, 25.382563, 35.279572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.840672, 25.752327, 34.546486>,  <47.064671, 25.212210, 34.943821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.840672, 25.752327, 34.546486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.611446, 25.799080, 34.870941>,  <46.473911, 25.827131, 35.065613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.611446, 25.799080, 34.870941>,  <46.840672, 25.752327, 34.546486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.611446, 25.799080, 34.870941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129078, 0.964550, -0.230180,
		-0.809285, -0.236607, -0.537658,
		-0.573060, 0.116882, 0.811136,
		46.439529, 25.834145, 35.114281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.215675, 26.073549, 34.342163>,  <46.840672, 25.752327, 34.546486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.215675, 26.073549, 34.342163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.251175, 26.165058, 34.729935>,  <46.272476, 26.219963, 34.962597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.251175, 26.165058, 34.729935>,  <46.215675, 26.073549, 34.342163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.251175, 26.165058, 34.729935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191626, 0.959007, -0.208771,
		-0.977447, -0.167239, 0.128949,
		0.088748, 0.228773, 0.969426,
		46.277798, 26.233690, 35.020763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640499, 26.508402, 34.454258>,  <46.215675, 26.073549, 34.342163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640499, 26.508402, 34.454258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.904327, 26.574972, 34.747452>,  <46.062626, 26.614914, 34.923370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.904327, 26.574972, 34.747452>,  <45.640499, 26.508402, 34.454258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.904327, 26.574972, 34.747452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051221, 0.982864, -0.177071,
		-0.749896, 0.079246, 0.656793,
		0.659570, 0.166426, 0.732987,
		46.102200, 26.624901, 34.967346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346340, 27.031895, 34.754261>,  <45.640499, 26.508402, 34.454258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346340, 27.031895, 34.754261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720200, 27.043312, 34.896027>,  <45.944515, 27.050163, 34.981087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720200, 27.043312, 34.896027>,  <45.346340, 27.031895, 34.754261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720200, 27.043312, 34.896027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035051, 0.984521, -0.171727,
		-0.353829, 0.172927, 0.919185,
		0.934653, 0.028543, 0.354414,
		46.000595, 27.051874, 35.002350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368340, 27.513937, 35.247204>,  <45.346340, 27.031895, 34.754261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368340, 27.513937, 35.247204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748798, 27.467440, 35.132801>,  <45.977074, 27.439541, 35.064159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748798, 27.467440, 35.132801>,  <45.368340, 27.513937, 35.247204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748798, 27.467440, 35.132801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134521, 0.989887, 0.045037,
		0.277883, -0.081311, 0.957168,
		0.951149, -0.116244, -0.286010,
		46.034142, 27.432566, 35.046997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705101, 28.001398, 35.673664>,  <45.368340, 27.513937, 35.247204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705101, 28.001398, 35.673664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975246, 27.939569, 35.385220>,  <46.137333, 27.902472, 35.212154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975246, 27.939569, 35.385220>,  <45.705101, 28.001398, 35.673664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975246, 27.939569, 35.385220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178110, 0.983031, -0.043905,
		0.715658, -0.098785, 0.691430,
		0.675360, -0.154571, -0.721108,
		46.177853, 27.893198, 35.168888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.184647, 28.492191, 35.839790>,  <45.705101, 28.001398, 35.673664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.184647, 28.492191, 35.839790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240112, 28.398712, 35.454842>,  <46.273392, 28.342625, 35.223873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240112, 28.398712, 35.454842>,  <46.184647, 28.492191, 35.839790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.240112, 28.398712, 35.454842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043567, 0.972257, -0.229822,
		0.989381, -0.010059, 0.145000,
		0.138665, -0.233699, -0.962370,
		46.281712, 28.328602, 35.166130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730782, 28.908833, 35.553558>,  <46.184647, 28.492191, 35.839790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730782, 28.908833, 35.553558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.533302, 28.802404, 35.222385>,  <46.414814, 28.738548, 35.023682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.533302, 28.802404, 35.222385>,  <46.730782, 28.908833, 35.553558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.533302, 28.802404, 35.222385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041634, 0.943723, -0.328106,
		0.868637, -0.196455, -0.454836,
		-0.493697, -0.266068, -0.827931,
		46.385193, 28.722584, 34.974007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.042561, 29.290737, 35.039547>,  <46.730782, 28.908833, 35.553558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.042561, 29.290737, 35.039547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679382, 29.202559, 34.896973>,  <46.461475, 29.149651, 34.811428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679382, 29.202559, 34.896973>,  <47.042561, 29.290737, 35.039547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679382, 29.202559, 34.896973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085498, 0.930024, -0.357416,
		0.410282, -0.294039, -0.863255,
		-0.907942, -0.220448, -0.356432,
		46.407001, 29.136425, 34.790043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801434, 29.799814, 34.592312>,  <47.042561, 29.290737, 35.039547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801434, 29.799814, 34.592312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465313, 29.594721, 34.521893>,  <46.263641, 29.471664, 34.479641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465313, 29.594721, 34.521893>,  <46.801434, 29.799814, 34.592312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.465313, 29.594721, 34.521893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465638, 0.848945, -0.249947,
		0.277612, -0.128057, -0.952120,
		-0.840305, -0.512731, -0.176049,
		46.213223, 29.440901, 34.469078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549709, 29.987919, 33.846386>,  <46.801434, 29.799814, 34.592312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549709, 29.987919, 33.846386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276085, 29.896198, 34.123363>,  <46.111912, 29.841166, 34.289551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276085, 29.896198, 34.123363>,  <46.549709, 29.987919, 33.846386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276085, 29.896198, 34.123363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450832, 0.879184, -0.154232,
		-0.573420, -0.417680, -0.704793,
		-0.684062, -0.229303, 0.692444,
		46.070866, 29.827408, 34.331097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.868557, 30.127857, 33.564976>,  <46.549709, 29.987919, 33.846386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.868557, 30.127857, 33.564976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.832920, 30.137205, 33.963276>,  <45.811539, 30.142815, 34.202255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.832920, 30.137205, 33.963276>,  <45.868557, 30.127857, 33.564976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.832920, 30.137205, 33.963276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418889, 0.906135, -0.058747,
		-0.903656, -0.422342, -0.070938,
		-0.089091, 0.023372, 0.995749,
		45.806190, 30.144217, 34.262001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274521, 30.312922, 33.559212>,  <45.868557, 30.127857, 33.564976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274521, 30.312922, 33.559212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410599, 30.387493, 33.927887>,  <45.492245, 30.432236, 34.149094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410599, 30.387493, 33.927887>,  <45.274521, 30.312922, 33.559212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410599, 30.387493, 33.927887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402610, 0.914648, -0.036403,
		-0.849808, -0.358697, 0.386216,
		0.340194, 0.186430, 0.921690,
		45.512657, 30.443422, 34.204395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800014, 30.628948, 33.985584>,  <45.274521, 30.312922, 33.559212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800014, 30.628948, 33.985584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120270, 30.741159, 34.197350>,  <45.312424, 30.808485, 34.324409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120270, 30.741159, 34.197350>,  <44.800014, 30.628948, 33.985584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120270, 30.741159, 34.197350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339224, 0.940592, 0.014614,
		-0.493861, -0.191290, 0.848239,
		0.800642, 0.280526, 0.529412,
		45.360462, 30.825317, 34.356174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495808, 31.002829, 34.434975>,  <44.800014, 30.628948, 33.985584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495808, 31.002829, 34.434975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879158, 31.110641, 34.472641>,  <45.109169, 31.175329, 34.495239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879158, 31.110641, 34.472641>,  <44.495808, 31.002829, 34.434975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.879158, 31.110641, 34.472641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255980, 0.957251, -0.134698,
		-0.126444, 0.104988, 0.986402,
		0.958377, 0.269531, 0.094164,
		45.166672, 31.191502, 34.500889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429817, 31.561329, 34.975365>,  <44.495808, 31.002829, 34.434975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429817, 31.561329, 34.975365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768047, 31.618793, 34.769695>,  <44.970985, 31.653273, 34.646294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768047, 31.618793, 34.769695>,  <44.429817, 31.561329, 34.975365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768047, 31.618793, 34.769695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097440, 0.988465, 0.115938,
		0.524896, -0.047933, 0.849816,
		0.845570, 0.143662, -0.514171,
		45.021717, 31.661892, 34.615444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.760948, 32.083241, 35.263596>,  <44.429817, 31.561329, 34.975365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.760948, 32.083241, 35.263596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980587, 32.072239, 34.929474>,  <45.112370, 32.065639, 34.729000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980587, 32.072239, 34.929474>,  <44.760948, 32.083241, 35.263596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980587, 32.072239, 34.929474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162750, 0.976806, -0.139148,
		0.819761, 0.212352, 0.531883,
		0.549094, -0.027504, -0.835307,
		45.145317, 32.063988, 34.678883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071728, 32.693237, 35.293900>,  <44.760948, 32.083241, 35.263596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071728, 32.693237, 35.293900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061062, 32.568462, 34.914009>,  <45.054661, 32.493599, 34.686073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061062, 32.568462, 34.914009>,  <45.071728, 32.693237, 35.293900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061062, 32.568462, 34.914009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205995, 0.931391, -0.300129,
		0.978190, 0.187636, -0.089094,
		-0.026666, -0.311936, -0.949729,
		45.053062, 32.474880, 34.629089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607403, 33.109741, 34.907192>,  <45.071728, 32.693237, 35.293900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607403, 33.109741, 34.907192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.340324, 32.980095, 34.639122>,  <45.180077, 32.902306, 34.478279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.340324, 32.980095, 34.639122>,  <45.607403, 33.109741, 34.907192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340324, 32.980095, 34.639122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190748, 0.944677, -0.266833,
		0.719582, -0.050329, -0.692582,
		-0.667696, -0.324117, -0.670172,
		45.140015, 32.882858, 34.438068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743469, 33.450779, 34.313549>,  <45.607403, 33.109741, 34.907192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743469, 33.450779, 34.313549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360867, 33.337616, 34.285099>,  <45.131306, 33.269718, 34.268028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360867, 33.337616, 34.285099>,  <45.743469, 33.450779, 34.313549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360867, 33.337616, 34.285099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267602, 0.948029, -0.172135,
		0.116124, -0.145616, -0.982502,
		-0.956506, -0.282909, -0.071122,
		45.073914, 33.252743, 34.263763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.317371, 33.588173, 33.885334>,  <45.743469, 33.450779, 34.313549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.317371, 33.588173, 33.885334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209999, 33.921131, 34.079266>,  <46.145576, 34.120907, 34.195625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209999, 33.921131, 34.079266>,  <46.317371, 33.588173, 33.885334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209999, 33.921131, 34.079266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900858, 0.038664, 0.432388,
		0.341175, 0.552826, -0.760252,
		-0.268430, 0.832400, 0.484826,
		46.129471, 34.170853, 34.224712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.012489, 33.733807, 34.246670>,  <46.317371, 33.588173, 33.885334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.012489, 33.733807, 34.246670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.790802, 34.066151, 34.266720>,  <46.657791, 34.265556, 34.278751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.790802, 34.066151, 34.266720>,  <47.012489, 33.733807, 34.246670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.790802, 34.066151, 34.266720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748441, 0.471069, 0.466829,
		0.364257, 0.296242, -0.882926,
		-0.554214, 0.830864, 0.050129,
		46.624538, 34.315411, 34.281757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.525337, 34.231564, 33.965450>,  <47.012489, 33.733807, 34.246670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.525337, 34.231564, 33.965450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.270798, 34.337715, 34.255177>,  <47.118076, 34.401405, 34.429012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.270798, 34.337715, 34.255177>,  <47.525337, 34.231564, 33.965450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.270798, 34.337715, 34.255177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739682, 0.476411, 0.475293,
		-0.218939, 0.838216, -0.499460,
		-0.636346, 0.265381, 0.724318,
		47.079895, 34.417328, 34.472473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.853825, 34.564682, 34.477932>,  <47.525337, 34.231564, 33.965450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.853825, 34.564682, 34.477932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582325, 34.755520, 34.701248>,  <47.419426, 34.870022, 34.835236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582325, 34.755520, 34.701248>,  <47.853825, 34.564682, 34.477932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.582325, 34.755520, 34.701248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487429, -0.861300, 0.143443,
		0.549288, -0.174764, 0.817154,
		-0.678746, 0.477096, 0.558287,
		47.378700, 34.898647, 34.868732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.015820, 34.709885, 44.307144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.768433, 34.408657, 44.217361>,  <33.619999, 34.227921, 44.163490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.768433, 34.408657, 44.217361>,  <34.015820, 34.709885, 44.307144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768433, 34.408657, 44.217361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174104, 0.409865, -0.895376,
		0.766278, -0.514684, -0.384602,
		-0.618471, -0.753068, -0.224462,
		33.582890, 34.182735, 44.150024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234417, 34.306503, 43.666126>,  <34.015820, 34.709885, 44.307144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234417, 34.306503, 43.666126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.848824, 34.204315, 43.695732>,  <33.617470, 34.143002, 43.713497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.848824, 34.204315, 43.695732>,  <34.234417, 34.306503, 43.666126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848824, 34.204315, 43.695732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060060, -0.062004, -0.996267,
		0.259109, -0.964826, 0.044426,
		-0.963979, -0.255473, 0.074013,
		33.559631, 34.127674, 43.717937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172516, 33.788509, 43.175922>,  <34.234417, 34.306503, 43.666126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172516, 33.788509, 43.175922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.813572, 33.954746, 43.235283>,  <33.598206, 34.054489, 43.270901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.813572, 33.954746, 43.235283>,  <34.172516, 33.788509, 43.175922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813572, 33.954746, 43.235283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123719, 0.085869, -0.988595,
		-0.423595, -0.905489, -0.025639,
		-0.897363, 0.415591, 0.148400,
		33.544361, 34.079422, 43.279804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751587, 33.478127, 42.712563>,  <34.172516, 33.788509, 43.175922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751587, 33.478127, 42.712563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.563980, 33.822002, 42.793514>,  <33.451416, 34.028328, 42.842087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.563980, 33.822002, 42.793514>,  <33.751587, 33.478127, 42.712563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563980, 33.822002, 42.793514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283703, 0.070353, -0.956328,
		-0.836383, -0.505950, 0.210900,
		-0.469016, 0.859689, 0.202382,
		33.423275, 34.079910, 42.854229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236835, 33.441055, 42.297203>,  <33.751587, 33.478127, 42.712563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236835, 33.441055, 42.297203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.209579, 33.824253, 42.408634>,  <33.193226, 34.054173, 42.475494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.209579, 33.824253, 42.408634>,  <33.236835, 33.441055, 42.297203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209579, 33.824253, 42.408634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442564, 0.221229, -0.869019,
		-0.894144, -0.182509, 0.408898,
		-0.068143, 0.957992, 0.278582,
		33.189137, 34.111652, 42.492210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611645, 33.661682, 42.119198>,  <33.236835, 33.441055, 42.297203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611645, 33.661682, 42.119198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.789150, 34.019199, 42.145149>,  <32.895653, 34.233711, 42.160721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.789150, 34.019199, 42.145149>,  <32.611645, 33.661682, 42.119198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789150, 34.019199, 42.145149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297512, 0.215232, -0.930141,
		-0.845316, 0.393461, 0.361426,
		0.443764, 0.893792, 0.064880,
		32.922279, 34.287338, 42.164612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126503, 34.134270, 41.913876>,  <32.611645, 33.661682, 42.119198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126503, 34.134270, 41.913876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.484436, 34.290554, 41.827511>,  <32.699196, 34.384323, 41.775692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.484436, 34.290554, 41.827511>,  <32.126503, 34.134270, 41.913876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484436, 34.290554, 41.827511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330123, 0.253639, -0.909223,
		-0.300477, 0.884882, 0.355946,
		0.894837, 0.390707, -0.215907,
		32.752888, 34.407764, 41.762737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072536, 34.765434, 41.564106>,  <32.126503, 34.134270, 41.913876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072536, 34.765434, 41.564106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.442478, 34.643322, 41.473381>,  <32.664444, 34.570053, 41.418945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.442478, 34.643322, 41.473381>,  <32.072536, 34.765434, 41.564106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442478, 34.643322, 41.473381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240196, -0.006473, -0.970703,
		0.294867, 0.952241, -0.079314,
		0.924856, -0.305279, -0.226816,
		32.719936, 34.551739, 41.405334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273144, 35.134563, 41.085114>,  <32.072536, 34.765434, 41.564106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273144, 35.134563, 41.085114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.523346, 34.828510, 41.024021>,  <32.673466, 34.644878, 40.987366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.523346, 34.828510, 41.024021>,  <32.273144, 35.134563, 41.085114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523346, 34.828510, 41.024021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146944, 0.076723, -0.986165,
		0.766261, 0.639290, -0.064441,
		0.625501, -0.765129, -0.152729,
		32.710995, 34.598972, 40.978203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663277, 35.398720, 40.427357>,  <32.273144, 35.134563, 41.085114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663277, 35.398720, 40.427357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.740501, 35.009300, 40.476227>,  <32.786835, 34.775650, 40.505550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.740501, 35.009300, 40.476227>,  <32.663277, 35.398720, 40.427357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740501, 35.009300, 40.476227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207643, -0.081162, -0.974832,
		0.958964, 0.213572, 0.186482,
		0.193062, -0.973550, 0.122178,
		32.798420, 34.717236, 40.512878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255390, 35.322418, 40.135777>,  <32.663277, 35.398720, 40.427357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255390, 35.322418, 40.135777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.108875, 34.950218, 40.135880>,  <33.020966, 34.726898, 40.135941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.108875, 34.950218, 40.135880>,  <33.255390, 35.322418, 40.135777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108875, 34.950218, 40.135880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327765, -0.129276, -0.935873,
		0.870866, -0.342712, 0.352338,
		-0.366284, -0.930503, 0.000253,
		32.998989, 34.671066, 40.135956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860790, 34.897976, 39.961624>,  <33.255390, 35.322418, 40.135777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860790, 34.897976, 39.961624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.511768, 34.728542, 39.864285>,  <33.302357, 34.626881, 39.805882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.511768, 34.728542, 39.864285>,  <33.860790, 34.897976, 39.961624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511768, 34.728542, 39.864285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316052, -0.109637, -0.942386,
		0.372503, -0.899195, 0.229540,
		-0.872555, -0.423588, -0.243352,
		33.250000, 34.601467, 39.791279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117367, 34.361805, 39.579628>,  <33.860790, 34.897976, 39.961624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117367, 34.361805, 39.579628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.732498, 34.359821, 39.470665>,  <33.501579, 34.358631, 39.405289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.732498, 34.359821, 39.470665>,  <34.117367, 34.361805, 39.579628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732498, 34.359821, 39.470665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268441, -0.188126, -0.944747,
		-0.046564, -0.982132, 0.182340,
		-0.962169, -0.004956, -0.272405,
		33.443848, 34.358334, 39.388943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074181, 33.803307, 39.140785>,  <34.117367, 34.361805, 39.579628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074181, 33.803307, 39.140785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.786518, 34.063351, 39.042671>,  <33.613918, 34.219376, 38.983803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.786518, 34.063351, 39.042671>,  <34.074181, 33.803307, 39.140785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786518, 34.063351, 39.042671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248013, -0.089592, -0.964605,
		-0.649077, -0.754538, -0.096806,
		-0.719158, 0.650112, -0.245288,
		33.570770, 34.258385, 38.969086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713997, 33.405708, 38.701252>,  <34.074181, 33.803307, 39.140785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713997, 33.405708, 38.701252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.609135, 33.787670, 38.645481>,  <33.546219, 34.016846, 38.612019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.609135, 33.787670, 38.645481>,  <33.713997, 33.405708, 38.701252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609135, 33.787670, 38.645481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245400, -0.073763, -0.966612,
		-0.933302, -0.287618, -0.214995,
		-0.262156, 0.954901, -0.139424,
		33.530487, 34.074139, 38.603653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430855, 33.384575, 38.127033>,  <33.713997, 33.405708, 38.701252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430855, 33.384575, 38.127033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.478783, 33.781147, 38.106178>,  <33.507538, 34.019089, 38.093666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.478783, 33.781147, 38.106178>,  <33.430855, 33.384575, 38.127033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478783, 33.781147, 38.106178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176490, -0.072955, -0.981595,
		-0.976983, 0.108410, -0.183718,
		0.119818, 0.991426, -0.052142,
		33.514729, 34.078575, 38.090534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165371, 33.564743, 37.501404>,  <33.430855, 33.384575, 38.127033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165371, 33.564743, 37.501404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.397354, 33.878513, 37.589336>,  <33.536545, 34.066776, 37.642097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.397354, 33.878513, 37.589336>,  <33.165371, 33.564743, 37.501404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397354, 33.878513, 37.589336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289494, 0.053786, -0.955667,
		-0.761475, 0.617885, -0.195894,
		0.579956, 0.784427, 0.219830,
		33.571342, 34.113842, 37.655285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912342, 34.160778, 37.171097>,  <33.165371, 33.564743, 37.501404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912342, 34.160778, 37.171097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.302940, 34.222790, 37.230991>,  <33.537300, 34.259998, 37.266926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.302940, 34.222790, 37.230991>,  <32.912342, 34.160778, 37.171097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302940, 34.222790, 37.230991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123095, 0.169115, -0.977879,
		-0.176922, 0.973327, 0.146057,
		0.976497, 0.155030, 0.149732,
		33.595890, 34.269299, 37.275909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116886, 34.688259, 36.777313>,  <32.912342, 34.160778, 37.171097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116886, 34.688259, 36.777313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.471817, 34.513664, 36.836815>,  <33.684776, 34.408909, 36.872517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.471817, 34.513664, 36.836815>,  <33.116886, 34.688259, 36.777313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471817, 34.513664, 36.836815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258532, 0.203771, -0.944266,
		0.381845, 0.876333, 0.293657,
		0.887330, -0.436483, 0.148751,
		33.738018, 34.382721, 36.881439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598988, 35.140900, 36.483669>,  <33.116886, 34.688259, 36.777313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598988, 35.140900, 36.483669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828480, 34.813923, 36.504166>,  <33.966175, 34.617737, 36.516464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828480, 34.813923, 36.504166>,  <33.598988, 35.140900, 36.483669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828480, 34.813923, 36.504166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197082, 0.077060, -0.977354,
		0.794978, 0.570838, 0.205314,
		0.573732, -0.817438, 0.051241,
		34.000599, 34.568691, 36.519539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119316, 35.362392, 36.170692>,  <33.598988, 35.140900, 36.483669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119316, 35.362392, 36.170692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205299, 34.971893, 36.159809>,  <34.256889, 34.737595, 36.153278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205299, 34.971893, 36.159809>,  <34.119316, 35.362392, 36.170692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205299, 34.971893, 36.159809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353605, 0.103763, -0.929622,
		0.910361, 0.190208, 0.367510,
		0.214956, -0.976245, -0.027204,
		34.269787, 34.679020, 36.151649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841148, 35.293079, 35.948620>,  <34.119316, 35.362392, 36.170692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841148, 35.293079, 35.948620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.655682, 34.947395, 35.870483>,  <34.544399, 34.739986, 35.823601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.655682, 34.947395, 35.870483>,  <34.841148, 35.293079, 35.948620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655682, 34.947395, 35.870483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452651, -0.041526, -0.890720,
		0.761655, -0.501421, 0.410438,
		-0.463670, -0.864206, -0.195340,
		34.516582, 34.688133, 35.811882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554153, 35.562237, 36.030655>,  <34.841148, 35.293079, 35.948620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554153, 35.562237, 36.030655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.884041, 35.779102, 35.966293>,  <36.081974, 35.909222, 35.927677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.884041, 35.779102, 35.966293>,  <35.554153, 35.562237, 36.030655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884041, 35.779102, 35.966293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419672, -0.395995, 0.816740,
		0.379089, -0.741111, -0.554116,
		0.824722, 0.542165, -0.160906,
		36.131458, 35.941753, 35.918022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030289, 35.033985, 36.027706>,  <35.554153, 35.562237, 36.030655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030289, 35.033985, 36.027706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208862, 35.383354, 36.105507>,  <36.316006, 35.592976, 36.152187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208862, 35.383354, 36.105507>,  <36.030289, 35.033985, 36.027706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208862, 35.383354, 36.105507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515329, -0.428653, 0.742086,
		0.731528, -0.231061, -0.641465,
		0.446433, 0.873423, 0.194499,
		36.342793, 35.645382, 36.163857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627205, 34.780659, 36.223259>,  <36.030289, 35.033985, 36.027706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627205, 34.780659, 36.223259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588505, 35.153522, 36.362812>,  <36.565285, 35.377239, 36.446545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588505, 35.153522, 36.362812>,  <36.627205, 34.780659, 36.223259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588505, 35.153522, 36.362812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253747, -0.315842, 0.914252,
		0.962420, 0.176984, -0.205974,
		-0.096753, 0.932159, 0.348882,
		36.559479, 35.433170, 36.467476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230534, 34.894173, 36.726128>,  <36.627205, 34.780659, 36.223259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230534, 34.894173, 36.726128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.970036, 35.176811, 36.836838>,  <36.813736, 35.346394, 36.903263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.970036, 35.176811, 36.836838>,  <37.230534, 34.894173, 36.726128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970036, 35.176811, 36.836838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275314, -0.119879, 0.953851,
		0.707164, 0.697392, -0.116464,
		-0.651246, 0.706593, 0.276775,
		36.774662, 35.388790, 36.919872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588821, 35.175121, 37.335316>,  <37.230534, 34.894173, 36.726128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588821, 35.175121, 37.335316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.225590, 35.342060, 37.349285>,  <37.007652, 35.442223, 37.357666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.225590, 35.342060, 37.349285>,  <37.588821, 35.175121, 37.335316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225590, 35.342060, 37.349285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059080, 0.045107, 0.997234,
		0.414614, 0.907628, -0.065617,
		-0.908077, 0.417344, 0.034920,
		36.953167, 35.467262, 37.359760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650208, 35.676167, 37.866585>,  <37.588821, 35.175121, 37.335316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650208, 35.676167, 37.866585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261776, 35.605774, 37.802036>,  <37.028717, 35.563538, 37.763309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261776, 35.605774, 37.802036>,  <37.650208, 35.676167, 37.866585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261776, 35.605774, 37.802036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196336, 0.203953, 0.959091,
		-0.135872, 0.963033, -0.232605,
		-0.971077, -0.175982, -0.161367,
		36.970451, 35.552979, 37.753628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273140, 36.106571, 38.348927>,  <37.650208, 35.676167, 37.866585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273140, 36.106571, 38.348927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987160, 35.849751, 38.238205>,  <36.815571, 35.695660, 38.171772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987160, 35.849751, 38.238205>,  <37.273140, 36.106571, 38.348927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987160, 35.849751, 38.238205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493313, 0.182668, 0.850456,
		-0.495471, 0.744583, -0.447330,
		-0.714948, -0.642050, -0.276806,
		36.772675, 35.657135, 38.155163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685371, 36.463112, 38.335117>,  <37.273140, 36.106571, 38.348927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685371, 36.463112, 38.335117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.587509, 36.079830, 38.394421>,  <36.528790, 35.849861, 38.430004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.587509, 36.079830, 38.394421>,  <36.685371, 36.463112, 38.335117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587509, 36.079830, 38.394421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487726, 0.253771, 0.835298,
		-0.838013, 0.132054, -0.529430,
		-0.244658, -0.958208, 0.148258,
		36.514111, 35.792366, 38.438896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038769, 36.475883, 38.640423>,  <36.685371, 36.463112, 38.335117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038769, 36.475883, 38.640423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202953, 36.121567, 38.727047>,  <36.301464, 35.908978, 38.779022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202953, 36.121567, 38.727047>,  <36.038769, 36.475883, 38.640423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202953, 36.121567, 38.727047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190846, 0.148778, 0.970280,
		-0.891684, -0.439589, -0.107983,
		0.410459, -0.885791, 0.216557,
		36.326092, 35.855831, 38.792015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637421, 36.268448, 39.321178>,  <36.038769, 36.475883, 38.640423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637421, 36.268448, 39.321178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952488, 36.028618, 39.264481>,  <36.141529, 35.884720, 39.230461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952488, 36.028618, 39.264481>,  <35.637421, 36.268448, 39.321178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952488, 36.028618, 39.264481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063961, -0.149245, 0.986729,
		-0.612773, -0.786279, -0.079206,
		0.787666, -0.599575, -0.141745,
		36.188789, 35.848743, 39.221958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424133, 35.586044, 39.602142>,  <35.637421, 36.268448, 39.321178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424133, 35.586044, 39.602142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821243, 35.622025, 39.633915>,  <36.059509, 35.643612, 39.652977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821243, 35.622025, 39.633915>,  <35.424133, 35.586044, 39.602142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821243, 35.622025, 39.633915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091012, 0.133002, 0.986928,
		0.078209, -0.987026, 0.140228,
		0.992774, 0.089949, 0.079430,
		36.119076, 35.649010, 39.657745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643528, 35.192585, 40.108761>,  <35.424133, 35.586044, 39.602142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643528, 35.192585, 40.108761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.992046, 35.387833, 40.088428>,  <36.201157, 35.504982, 40.076229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.992046, 35.387833, 40.088428>,  <35.643528, 35.192585, 40.108761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992046, 35.387833, 40.088428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116364, -0.104862, 0.987655,
		0.476759, -0.866457, -0.148165,
		0.871298, 0.488115, -0.050831,
		36.253437, 35.534267, 40.073181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045773, 34.715172, 40.445721>,  <35.643528, 35.192585, 40.108761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045773, 34.715172, 40.445721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203556, 35.082272, 40.464237>,  <36.298225, 35.302532, 40.475346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203556, 35.082272, 40.464237>,  <36.045773, 34.715172, 40.445721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203556, 35.082272, 40.464237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101124, -0.093422, 0.990478,
		0.913332, -0.386024, -0.129658,
		0.394461, 0.917746, 0.046289,
		36.321896, 35.357594, 40.478123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671410, 34.644623, 40.762127>,  <36.045773, 34.715172, 40.445721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671410, 34.644623, 40.762127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567997, 35.028645, 40.804947>,  <36.505951, 35.259056, 40.830639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567997, 35.028645, 40.804947>,  <36.671410, 34.644623, 40.762127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567997, 35.028645, 40.804947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173432, -0.062884, 0.982836,
		0.950308, 0.272656, -0.150247,
		-0.258528, 0.960054, 0.107047,
		36.490440, 35.316662, 40.837059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193054, 34.902840, 41.098652>,  <36.671410, 34.644623, 40.762127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193054, 34.902840, 41.098652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882568, 35.146210, 41.164753>,  <36.696278, 35.292233, 41.204414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882568, 35.146210, 41.164753>,  <37.193054, 34.902840, 41.098652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882568, 35.146210, 41.164753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118575, -0.116545, 0.986082,
		0.619220, 0.785004, 0.018319,
		-0.776213, 0.608430, 0.165249,
		36.649704, 35.328739, 41.214329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405582, 35.437019, 41.565136>,  <37.193054, 34.902840, 41.098652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405582, 35.437019, 41.565136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008038, 35.445454, 41.608574>,  <36.769512, 35.450516, 41.634636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008038, 35.445454, 41.608574>,  <37.405582, 35.437019, 41.565136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008038, 35.445454, 41.608574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104171, -0.152027, 0.982871,
		0.037238, 0.988151, 0.148897,
		-0.993862, 0.021090, 0.108598,
		36.709881, 35.451782, 41.641151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311295, 35.803276, 42.188374>,  <37.405582, 35.437019, 41.565136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311295, 35.803276, 42.188374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957260, 35.621174, 42.149662>,  <36.744839, 35.511913, 42.126434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957260, 35.621174, 42.149662>,  <37.311295, 35.803276, 42.188374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957260, 35.621174, 42.149662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077191, -0.061477, 0.995119,
		-0.458984, 0.888236, 0.019271,
		-0.885085, -0.455256, -0.096781,
		36.691734, 35.484596, 42.120628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821281, 36.079510, 42.746735>,  <37.311295, 35.803276, 42.188374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821281, 36.079510, 42.746735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711727, 35.709774, 42.640461>,  <36.645996, 35.487934, 42.576694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711727, 35.709774, 42.640461>,  <36.821281, 36.079510, 42.746735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711727, 35.709774, 42.640461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193094, -0.217777, 0.956707,
		-0.942179, 0.313331, -0.118838,
		-0.273886, -0.924336, -0.265687,
		36.629562, 35.432472, 42.560757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.832134, 35.757217, 43.321766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990055, 35.434929, 43.145161>,  <36.084808, 35.241554, 43.039196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990055, 35.434929, 43.145161>,  <35.832134, 35.757217, 43.321766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990055, 35.434929, 43.145161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376897, -0.580290, 0.721950,
		-0.837900, -0.118625, -0.532777,
		0.394806, -0.805724, -0.441516,
		36.108498, 35.193211, 43.012707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378983, 35.161732, 43.350956>,  <35.832134, 35.757217, 43.321766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378983, 35.161732, 43.350956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.736313, 34.987579, 43.306404>,  <35.950710, 34.883087, 43.279671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.736313, 34.987579, 43.306404>,  <35.378983, 35.161732, 43.350956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736313, 34.987579, 43.306404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215328, -0.632219, 0.744267,
		-0.394459, -0.640891, -0.658530,
		0.893328, -0.435383, -0.111382,
		36.004311, 34.856964, 43.272987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262318, 34.404266, 43.317459>,  <35.378983, 35.161732, 43.350956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262318, 34.404266, 43.317459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646549, 34.454430, 43.416702>,  <35.877087, 34.484528, 43.476250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646549, 34.454430, 43.416702>,  <35.262318, 34.404266, 43.317459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646549, 34.454430, 43.416702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162705, -0.470032, 0.867524,
		0.225417, -0.873694, -0.431098,
		0.960580, 0.125412, 0.248108,
		35.934723, 34.492054, 43.491135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500584, 33.718983, 43.624580>,  <35.262318, 34.404266, 43.317459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500584, 33.718983, 43.624580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741859, 34.016014, 43.741016>,  <35.886623, 34.194233, 43.810879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741859, 34.016014, 43.741016>,  <35.500584, 33.718983, 43.624580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741859, 34.016014, 43.741016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013045, -0.355723, 0.934500,
		0.797491, -0.567478, -0.204882,
		0.603190, 0.742583, 0.291089,
		35.922817, 34.238789, 43.828342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862015, 33.460224, 44.299198>,  <35.500584, 33.718983, 43.624580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862015, 33.460224, 44.299198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917740, 33.855949, 44.316410>,  <35.951176, 34.093384, 44.326736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917740, 33.855949, 44.316410>,  <35.862015, 33.460224, 44.299198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917740, 33.855949, 44.316410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060902, -0.051928, 0.996792,
		0.988374, -0.136242, -0.067485,
		0.139310, 0.989314, 0.043026,
		35.959534, 34.152744, 44.329319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277908, 33.394188, 44.799522>,  <35.862015, 33.460224, 44.299198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277908, 33.394188, 44.799522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140465, 33.769833, 44.799568>,  <36.057999, 33.995220, 44.799595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140465, 33.769833, 44.799568>,  <36.277908, 33.394188, 44.799522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140465, 33.769833, 44.799568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049267, 0.017908, 0.998625,
		0.937819, 0.343145, -0.052421,
		-0.343612, 0.939112, 0.000111,
		36.037380, 34.051567, 44.799603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780430, 33.887962, 45.188927>,  <36.277908, 33.394188, 44.799522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780430, 33.887962, 45.188927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421707, 34.063911, 45.169968>,  <36.206474, 34.169483, 45.158592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421707, 34.063911, 45.169968>,  <36.780430, 33.887962, 45.188927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421707, 34.063911, 45.169968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008371, 0.090237, 0.995885,
		0.442342, 0.893514, -0.077243,
		-0.896807, 0.439876, -0.047396,
		36.152664, 34.195873, 45.155750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871773, 34.386791, 45.689240>,  <36.780430, 33.887962, 45.188927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871773, 34.386791, 45.689240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473381, 34.378033, 45.654488>,  <36.234344, 34.372780, 45.633636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473381, 34.378033, 45.654488>,  <36.871773, 34.386791, 45.689240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473381, 34.378033, 45.654488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089122, 0.142167, 0.985822,
		-0.009230, 0.989601, -0.143546,
		-0.995978, -0.021892, -0.086883,
		36.174587, 34.371464, 45.628422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726536, 34.927193, 46.088505>,  <36.871773, 34.386791, 45.689240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726536, 34.927193, 46.088505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.411278, 34.683079, 46.056561>,  <36.222122, 34.536610, 46.037395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.411278, 34.683079, 46.056561>,  <36.726536, 34.927193, 46.088505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411278, 34.683079, 46.056561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227828, 0.168738, 0.958969,
		-0.571768, 0.774003, -0.272030,
		-0.788147, -0.610284, -0.079861,
		36.174835, 34.499992, 46.032600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116123, 35.327267, 46.249210>,  <36.726536, 34.927193, 46.088505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116123, 35.327267, 46.249210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059654, 34.936214, 46.311581>,  <36.025772, 34.701584, 46.349003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059654, 34.936214, 46.311581>,  <36.116123, 35.327267, 46.249210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059654, 34.936214, 46.311581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101976, 0.171025, 0.979975,
		-0.984719, 0.122447, -0.123839,
		-0.141175, -0.977628, 0.155925,
		36.017303, 34.642925, 46.358356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729404, 35.346996, 46.876186>,  <36.116123, 35.327267, 46.249210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729404, 35.346996, 46.876186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868889, 34.973412, 46.844902>,  <35.952579, 34.749260, 46.826130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868889, 34.973412, 46.844902>,  <35.729404, 35.346996, 46.876186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868889, 34.973412, 46.844902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045454, -0.066503, 0.996750,
		-0.936126, -0.351137, 0.019261,
		0.348715, -0.933960, -0.078215,
		35.973503, 34.693222, 46.821438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309738, 35.014683, 47.271816>,  <35.729404, 35.346996, 46.876186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309738, 35.014683, 47.271816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652668, 34.809132, 47.259670>,  <35.858425, 34.685802, 47.252384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652668, 34.809132, 47.259670>,  <35.309738, 35.014683, 47.271816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652668, 34.809132, 47.259670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082820, -0.195904, 0.977120,
		-0.508067, -0.835196, -0.210513,
		0.857326, -0.513877, -0.030361,
		35.909866, 34.654968, 47.250561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097401, 34.522728, 47.642311>,  <35.309738, 35.014683, 47.271816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097401, 34.522728, 47.642311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493755, 34.471878, 47.660122>,  <35.731567, 34.441368, 47.670807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493755, 34.471878, 47.660122>,  <35.097401, 34.522728, 47.642311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493755, 34.471878, 47.660122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091507, -0.392773, 0.915071,
		-0.098837, -0.910807, -0.400827,
		0.990887, -0.127121, 0.044525,
		35.791023, 34.433743, 47.673481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212009, 33.786053, 47.793625>,  <35.097401, 34.522728, 47.642311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212009, 33.786053, 47.793625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551140, 33.976460, 47.887089>,  <35.754620, 34.090702, 47.943169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551140, 33.976460, 47.887089>,  <35.212009, 33.786053, 47.793625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551140, 33.976460, 47.887089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131539, -0.615666, 0.776951,
		0.513696, -0.627986, -0.584594,
		0.847829, 0.476013, 0.233660,
		35.805489, 34.119263, 47.957188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726097, 33.256241, 47.972801>,  <35.212009, 33.786053, 47.793625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726097, 33.256241, 47.972801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881363, 33.581142, 48.146961>,  <35.974522, 33.776085, 48.251457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881363, 33.581142, 48.146961>,  <35.726097, 33.256241, 47.972801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881363, 33.581142, 48.146961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220543, -0.540583, 0.811869,
		0.894815, -0.219111, -0.388969,
		0.388160, 0.812257, 0.435398,
		35.997810, 33.824818, 48.277580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180115, 32.927986, 48.364414>,  <35.726097, 33.256241, 47.972801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180115, 32.927986, 48.364414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167244, 33.294144, 48.524921>,  <36.159523, 33.513840, 48.621227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167244, 33.294144, 48.524921>,  <36.180115, 32.927986, 48.364414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167244, 33.294144, 48.524921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288164, -0.375932, 0.880702,
		0.957040, 0.143968, -0.251689,
		-0.032175, 0.915395, 0.401268,
		36.157593, 33.568764, 48.645302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728951, 33.034451, 48.791336>,  <36.180115, 32.927986, 48.364414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728951, 33.034451, 48.791336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.474953, 33.305595, 48.939545>,  <36.322556, 33.468285, 49.028469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.474953, 33.305595, 48.939545>,  <36.728951, 33.034451, 48.791336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474953, 33.305595, 48.939545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095411, -0.407135, 0.908371,
		0.766603, 0.612161, 0.193852,
		-0.634993, 0.677864, 0.370518,
		36.284454, 33.508953, 49.050701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063465, 33.378178, 49.253105>,  <36.728951, 33.034451, 48.791336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063465, 33.378178, 49.253105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678448, 33.436806, 49.344349>,  <36.447437, 33.471985, 49.399094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678448, 33.436806, 49.344349>,  <37.063465, 33.378178, 49.253105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678448, 33.436806, 49.344349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214491, -0.103010, 0.971279,
		0.165860, 0.983822, 0.067713,
		-0.962540, 0.146573, 0.228106,
		36.389687, 33.480778, 49.412781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080036, 33.754906, 50.006866>,  <37.063465, 33.378178, 49.253105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080036, 33.754906, 50.006866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722710, 33.583038, 49.954155>,  <36.508312, 33.479916, 49.922527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722710, 33.583038, 49.954155>,  <37.080036, 33.754906, 50.006866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722710, 33.583038, 49.954155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043912, -0.208368, 0.977064,
		-0.447274, 0.878616, 0.167271,
		-0.893318, -0.429670, -0.131780,
		36.454716, 33.454136, 49.914619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539364, 34.118034, 50.526096>,  <37.080036, 33.754906, 50.006866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539364, 34.118034, 50.526096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371059, 33.769867, 50.423851>,  <36.270077, 33.560966, 50.362503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371059, 33.769867, 50.423851>,  <36.539364, 34.118034, 50.526096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371059, 33.769867, 50.423851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246535, -0.161451, 0.955591,
		-0.873032, 0.465089, -0.146656,
		-0.420757, -0.870417, -0.255612,
		36.244831, 33.508743, 50.347168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807915, 34.062412, 50.806969>,  <36.539364, 34.118034, 50.526096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807915, 34.062412, 50.806969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944862, 33.693443, 50.735512>,  <36.027031, 33.472061, 50.692638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944862, 33.693443, 50.735512>,  <35.807915, 34.062412, 50.806969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944862, 33.693443, 50.735512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205210, -0.258959, 0.943837,
		-0.916881, -0.286482, -0.277951,
		0.342370, -0.922425, -0.178646,
		36.047573, 33.416718, 50.681919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239006, 33.716793, 51.026802>,  <35.807915, 34.062412, 50.806969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239006, 33.716793, 51.026802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.537235, 33.450226, 51.027702>,  <35.716171, 33.290283, 51.028244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.537235, 33.450226, 51.027702>,  <35.239006, 33.716793, 51.026802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537235, 33.450226, 51.027702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243845, -0.269659, 0.931571,
		-0.620212, -0.695101, -0.363554,
		0.745571, -0.666422, 0.002251,
		35.760906, 33.250298, 51.028378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013927, 33.056984, 51.273251>,  <35.239006, 33.716793, 51.026802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013927, 33.056984, 51.273251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.409233, 33.084583, 51.327759>,  <35.646416, 33.101143, 51.360466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.409233, 33.084583, 51.327759>,  <35.013927, 33.056984, 51.273251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409233, 33.084583, 51.327759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094501, -0.424749, 0.900365,
		0.120003, -0.902678, -0.413244,
		0.988266, 0.068994, 0.136275,
		35.705711, 33.105282, 51.368641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438957, 32.473160, 51.557842>,  <35.013927, 33.056984, 51.273251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438957, 32.473160, 51.557842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623188, 32.794224, 51.709427>,  <35.733727, 32.986862, 51.800377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623188, 32.794224, 51.709427>,  <35.438957, 32.473160, 51.557842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623188, 32.794224, 51.709427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117377, -0.368121, 0.922339,
		0.879826, -0.469288, -0.075334,
		0.460575, 0.802656, 0.378966,
		35.761360, 33.035019, 51.823116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364880, 31.767466, 51.257072>,  <35.438957, 32.473160, 51.557842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364880, 31.767466, 51.257072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.082024, 31.493135, 51.325893>,  <34.912312, 31.328537, 51.367184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.082024, 31.493135, 51.325893>,  <35.364880, 31.767466, 51.257072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082024, 31.493135, 51.325893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391749, 0.177442, -0.902800,
		0.588635, -0.705802, -0.394148,
		-0.707136, -0.685826, 0.172049,
		34.869884, 31.287388, 51.377506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415882, 31.313925, 50.766029>,  <35.364880, 31.767466, 51.257072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415882, 31.313925, 50.766029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.035450, 31.279408, 50.884686>,  <34.807190, 31.258698, 50.955879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.035450, 31.279408, 50.884686>,  <35.415882, 31.313925, 50.766029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035450, 31.279408, 50.884686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304204, 0.094098, -0.947948,
		0.053878, -0.991817, -0.115743,
		-0.951082, -0.086283, 0.296645,
		34.750126, 31.253519, 50.973679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135803, 30.750294, 50.469936>,  <35.415882, 31.313925, 50.766029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135803, 30.750294, 50.469936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824478, 30.978315, 50.575214>,  <34.637684, 31.115128, 50.638382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824478, 30.978315, 50.575214>,  <35.135803, 30.750294, 50.469936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824478, 30.978315, 50.575214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320833, -0.000748, -0.947135,
		-0.539721, -0.821607, 0.183474,
		-0.778310, 0.570054, 0.263195,
		34.590984, 31.149332, 50.654175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726513, 30.617926, 50.003548>,  <35.135803, 30.750294, 50.469936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726513, 30.617926, 50.003548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.556767, 30.946556, 50.155823>,  <34.454918, 31.143734, 50.247189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.556767, 30.946556, 50.155823>,  <34.726513, 30.617926, 50.003548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556767, 30.946556, 50.155823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333112, 0.249293, -0.909335,
		-0.841990, -0.512707, 0.167884,
		-0.424370, 0.821575, 0.380691,
		34.429455, 31.193027, 50.270031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015427, 30.559484, 49.860626>,  <34.726513, 30.617926, 50.003548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015427, 30.559484, 49.860626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074085, 30.946943, 49.940842>,  <34.109280, 31.179419, 49.988972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074085, 30.946943, 49.940842>,  <34.015427, 30.559484, 49.860626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074085, 30.946943, 49.940842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343323, 0.239967, -0.908045,
		-0.927698, 0.064313, 0.367749,
		0.146647, 0.968648, 0.200536,
		34.118080, 31.237537, 50.001003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417286, 30.892910, 49.599133>,  <34.015427, 30.559484, 49.860626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417286, 30.892910, 49.599133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694206, 31.179697, 49.631809>,  <33.860359, 31.351770, 49.651413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694206, 31.179697, 49.631809>,  <33.417286, 30.892910, 49.599133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694206, 31.179697, 49.631809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093535, 0.201410, -0.975031,
		-0.715520, 0.667375, 0.206498,
		0.692302, 0.716969, 0.081690,
		33.901897, 31.394787, 49.656315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160202, 31.620701, 49.305023>,  <33.417286, 30.892910, 49.599133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160202, 31.620701, 49.305023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555241, 31.682545, 49.315952>,  <33.792263, 31.719652, 49.322510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555241, 31.682545, 49.315952>,  <33.160202, 31.620701, 49.305023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555241, 31.682545, 49.315952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017458, 0.281072, -0.959528,
		-0.156032, 0.947151, 0.280285,
		0.987598, 0.154611, 0.027320,
		33.851521, 31.728928, 49.324150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288342, 32.361729, 49.067238>,  <33.160202, 31.620701, 49.305023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288342, 32.361729, 49.067238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636501, 32.166924, 49.038315>,  <33.845398, 32.050041, 49.020962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636501, 32.166924, 49.038315>,  <33.288342, 32.361729, 49.067238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636501, 32.166924, 49.038315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146724, 0.396757, -0.906121,
		0.469977, 0.778078, 0.416793,
		0.870398, -0.487010, -0.072304,
		33.897621, 32.020821, 49.016624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746662, 32.849995, 48.908787>,  <33.288342, 32.361729, 49.067238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746662, 32.849995, 48.908787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.893520, 32.500969, 48.779892>,  <33.981636, 32.291553, 48.702557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.893520, 32.500969, 48.779892>,  <33.746662, 32.849995, 48.908787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893520, 32.500969, 48.779892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000589, 0.346214, -0.938155,
		0.930162, 0.344632, 0.126598,
		0.367148, -0.872562, -0.322238,
		34.003666, 32.239201, 48.683220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272747, 32.970970, 48.380207>,  <33.746662, 32.849995, 48.908787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272747, 32.970970, 48.380207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.122444, 32.606525, 48.312466>,  <34.032265, 32.387859, 48.271820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.122444, 32.606525, 48.312466>,  <34.272747, 32.970970, 48.380207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122444, 32.606525, 48.312466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139232, 0.125168, -0.982317,
		0.916201, -0.392688, 0.079824,
		-0.375753, -0.911114, -0.169354,
		34.009720, 32.333191, 48.261658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711235, 32.810780, 47.937721>,  <34.272747, 32.970970, 48.380207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711235, 32.810780, 47.937721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400311, 32.560169, 47.914909>,  <34.213757, 32.409801, 47.901222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400311, 32.560169, 47.914909>,  <34.711235, 32.810780, 47.937721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400311, 32.560169, 47.914909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056481, 0.159788, -0.985534,
		0.626580, -0.762842, -0.159592,
		-0.777307, -0.626530, -0.057033,
		34.167118, 32.372211, 47.897800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853249, 32.343204, 47.396519>,  <34.711235, 32.810780, 47.937721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853249, 32.343204, 47.396519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454559, 32.328232, 47.425205>,  <34.215347, 32.319248, 47.442417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454559, 32.328232, 47.425205>,  <34.853249, 32.343204, 47.396519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454559, 32.328232, 47.425205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076150, 0.134943, -0.987923,
		0.027300, -0.990146, -0.137351,
		-0.996722, -0.037429, 0.071716,
		34.155544, 32.317001, 47.446720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615211, 31.960068, 46.831440>,  <34.853249, 32.343204, 47.396519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615211, 31.960068, 46.831440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.285851, 32.163666, 46.931793>,  <34.088234, 32.285824, 46.992004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.285851, 32.163666, 46.931793>,  <34.615211, 31.960068, 46.831440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285851, 32.163666, 46.931793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183312, 0.179828, -0.966467,
		-0.537041, -0.841777, -0.054765,
		-0.823398, 0.508993, 0.250883,
		34.038830, 32.316364, 47.007057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100002, 31.800888, 46.307812>,  <34.615211, 31.960068, 46.831440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100002, 31.800888, 46.307812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.986160, 32.153416, 46.458687>,  <33.917854, 32.364933, 46.549213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.986160, 32.153416, 46.458687>,  <34.100002, 31.800888, 46.307812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986160, 32.153416, 46.458687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033282, 0.384142, -0.922674,
		-0.958067, -0.275152, -0.079997,
		-0.284606, 0.881321, 0.377191,
		33.900780, 32.417812, 46.571846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456600, 31.999743, 45.921246>,  <34.100002, 31.800888, 46.307812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456600, 31.999743, 45.921246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594662, 32.342541, 46.074306>,  <33.677498, 32.548222, 46.166145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594662, 32.342541, 46.074306>,  <33.456600, 31.999743, 45.921246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594662, 32.342541, 46.074306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151555, 0.453253, -0.878404,
		-0.926228, 0.245193, 0.286325,
		0.345156, 0.856996, 0.382656,
		33.698208, 32.599640, 46.189102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959179, 32.523907, 45.740177>,  <33.456600, 31.999743, 45.921246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959179, 32.523907, 45.740177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.299931, 32.724319, 45.801186>,  <33.504383, 32.844566, 45.837791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.299931, 32.724319, 45.801186>,  <32.959179, 32.523907, 45.740177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299931, 32.724319, 45.801186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244062, 0.637443, -0.730821,
		-0.463392, 0.585347, 0.665309,
		0.851881, 0.501034, 0.152525,
		33.555496, 32.874630, 45.846943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721363, 33.299461, 45.885593>,  <32.959179, 32.523907, 45.740177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721363, 33.299461, 45.885593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095371, 33.281704, 45.744869>,  <33.319775, 33.271049, 45.660435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095371, 33.281704, 45.744869>,  <32.721363, 33.299461, 45.885593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095371, 33.281704, 45.744869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243793, 0.639974, -0.728696,
		0.257496, 0.767113, 0.587565,
		0.935019, -0.044393, -0.351808,
		33.375877, 33.268387, 45.639328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623360, 33.778976, 45.339863>,  <32.721363, 33.299461, 45.885593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623360, 33.778976, 45.339863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.002312, 33.662788, 45.286037>,  <33.229683, 33.593075, 45.253742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.002312, 33.662788, 45.286037>,  <32.623360, 33.778976, 45.339863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002312, 33.662788, 45.286037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111338, 0.693081, -0.712209,
		0.300140, 0.659747, 0.688948,
		0.947375, -0.290468, -0.134567,
		33.286526, 33.575649, 45.245667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167236, 34.350235, 45.439037>,  <32.623360, 33.778976, 45.339863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167236, 34.350235, 45.439037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285324, 34.068989, 45.180279>,  <33.356178, 33.900242, 45.025024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285324, 34.068989, 45.180279>,  <33.167236, 34.350235, 45.439037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285324, 34.068989, 45.180279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038123, 0.667868, -0.743302,
		0.954669, 0.244098, 0.170362,
		0.295218, -0.703113, -0.646899,
		33.373890, 33.858055, 44.986210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609604, 34.696457, 44.909870>,  <33.167236, 34.350235, 45.439037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609604, 34.696457, 44.909870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.500374, 34.348335, 44.745918>,  <33.434834, 34.139462, 44.647549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.500374, 34.348335, 44.745918>,  <33.609604, 34.696457, 44.909870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500374, 34.348335, 44.745918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064945, 0.441778, -0.894771,
		0.959798, -0.217721, -0.177161,
		-0.273077, -0.870305, -0.409877,
		33.418449, 34.087242, 44.622955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<47.831989, 27.068233, 31.069834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.539181, 26.844341, 30.914476>,  <47.363495, 26.710007, 30.821262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.539181, 26.844341, 30.914476>,  <47.831989, 27.068233, 31.069834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.539181, 26.844341, 30.914476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605173, 0.796066, -0.006656,
		0.312911, 0.230172, -0.921470,
		-0.732019, -0.559731, -0.388392,
		47.319576, 26.676422, 30.797958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.647785, 27.479368, 30.574781>,  <47.831989, 27.068233, 31.069834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.647785, 27.479368, 30.574781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.346130, 27.226990, 30.647644>,  <47.165138, 27.075563, 30.691362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.346130, 27.226990, 30.647644>,  <47.647785, 27.479368, 30.574781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.346130, 27.226990, 30.647644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656013, 0.736597, -0.164536,
		-0.030364, -0.243581, -0.969405,
		-0.754139, -0.630946, 0.182158,
		47.119888, 27.037706, 30.702291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.179432, 27.564667, 30.071899>,  <47.647785, 27.479368, 30.574781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.179432, 27.564667, 30.071899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.966534, 27.425951, 30.380819>,  <46.838795, 27.342722, 30.566172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.966534, 27.425951, 30.380819>,  <47.179432, 27.564667, 30.071899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.966534, 27.425951, 30.380819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689001, 0.707519, -0.157145,
		-0.491922, -0.615757, -0.615513,
		-0.532250, -0.346787, 0.772301,
		46.806858, 27.321915, 30.612509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439434, 27.598137, 29.822521>,  <47.179432, 27.564667, 30.071899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.439434, 27.598137, 29.822521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.464394, 27.608490, 30.221607>,  <46.479370, 27.614702, 30.461060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.464394, 27.608490, 30.221607>,  <46.439434, 27.598137, 29.822521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464394, 27.608490, 30.221607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711119, 0.702582, 0.026250,
		-0.700297, -0.711132, 0.062251,
		0.062403, 0.025885, 0.997715,
		46.483116, 27.616255, 30.520922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752975, 27.711590, 29.996147>,  <46.439434, 27.598137, 29.822521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752975, 27.711590, 29.996147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.963909, 27.778694, 30.329319>,  <46.090469, 27.818956, 30.529222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.963909, 27.778694, 30.329319>,  <45.752975, 27.711590, 29.996147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963909, 27.778694, 30.329319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640743, 0.722329, 0.260172,
		-0.558004, -0.670892, 0.488401,
		0.527333, 0.167762, 0.832932,
		46.122108, 27.829023, 30.579199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360390, 27.626593, 30.628403>,  <45.752975, 27.711590, 29.996147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360390, 27.626593, 30.628403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.659542, 27.866938, 30.741287>,  <45.839031, 28.011145, 30.809019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.659542, 27.866938, 30.741287>,  <45.360390, 27.626593, 30.628403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659542, 27.866938, 30.741287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663782, 0.671473, 0.329421,
		0.008438, -0.433695, 0.901020,
		0.747879, 0.600860, 0.282213,
		45.883907, 28.047195, 30.825951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166912, 27.908730, 31.354395>,  <45.360390, 27.626593, 30.628403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166912, 27.908730, 31.354395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.441429, 28.160742, 31.209030>,  <45.606140, 28.311949, 31.121811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.441429, 28.160742, 31.209030>,  <45.166912, 27.908730, 31.354395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441429, 28.160742, 31.209030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550066, 0.776493, 0.307386,
		0.475849, -0.011056, 0.879458,
		0.686291, 0.630029, -0.363411,
		45.647316, 28.349751, 31.100006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374203, 28.209206, 31.928345>,  <45.166912, 27.908730, 31.354395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374203, 28.209206, 31.928345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.460342, 28.450928, 31.621506>,  <45.512028, 28.595961, 31.437403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.460342, 28.450928, 31.621506>,  <45.374203, 28.209206, 31.928345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460342, 28.450928, 31.621506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500995, 0.742643, 0.444393,
		0.838230, 0.288612, 0.462681,
		0.215350, 0.604305, -0.767099,
		45.524948, 28.632219, 31.391376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788677, 28.772772, 32.191589>,  <45.374203, 28.209206, 31.928345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788677, 28.772772, 32.191589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.651646, 28.913427, 31.843109>,  <45.569427, 28.997820, 31.634020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.651646, 28.913427, 31.843109>,  <45.788677, 28.772772, 32.191589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651646, 28.913427, 31.843109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537431, 0.687254, 0.488722,
		0.770590, 0.635635, -0.046457,
		-0.342577, 0.351637, -0.871202,
		45.548874, 29.018919, 31.581749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850399, 29.472198, 32.259399>,  <45.788677, 28.772772, 32.191589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850399, 29.472198, 32.259399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.593658, 29.448915, 31.953550>,  <45.439613, 29.434946, 31.770042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.593658, 29.448915, 31.953550>,  <45.850399, 29.472198, 32.259399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593658, 29.448915, 31.953550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397284, 0.878103, 0.266647,
		0.655892, 0.474917, -0.586736,
		-0.641850, -0.058209, -0.764618,
		45.401104, 29.431454, 31.724165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759827, 30.203838, 32.042439>,  <45.850399, 29.472198, 32.259399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.759827, 30.203838, 32.042439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.443645, 30.018589, 31.882086>,  <45.253937, 29.907440, 31.785875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.443645, 30.018589, 31.882086>,  <45.759827, 30.203838, 32.042439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443645, 30.018589, 31.882086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550718, 0.823841, 0.134146,
		0.268136, 0.326808, -0.906255,
		-0.790451, -0.463122, -0.400881,
		45.206509, 29.879652, 31.761822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497574, 30.576672, 31.439951>,  <45.759827, 30.203838, 32.042439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497574, 30.576672, 31.439951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.195549, 30.381575, 31.615221>,  <45.014336, 30.264517, 31.720383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.195549, 30.381575, 31.615221>,  <45.497574, 30.576672, 31.439951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195549, 30.381575, 31.615221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498874, 0.861028, 0.098771,
		-0.425456, -0.144016, -0.893446,
		-0.755058, -0.487740, 0.438175,
		44.969032, 30.235252, 31.746674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850655, 30.871439, 31.132898>,  <45.497574, 30.576672, 31.439951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850655, 30.871439, 31.132898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.703892, 30.670807, 31.446280>,  <44.615833, 30.550428, 31.634308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.703892, 30.670807, 31.446280>,  <44.850655, 30.871439, 31.132898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703892, 30.670807, 31.446280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633490, 0.751453, 0.184418,
		-0.681228, -0.428645, -0.593457,
		-0.366905, -0.501580, 0.783453,
		44.593819, 30.520332, 31.681314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136589, 30.988646, 31.134319>,  <44.850655, 30.871439, 31.132898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136589, 30.988646, 31.134319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130096, 30.810780, 31.492538>,  <44.126202, 30.704060, 31.707470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130096, 30.810780, 31.492538>,  <44.136589, 30.988646, 31.134319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130096, 30.810780, 31.492538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722507, 0.624358, 0.296917,
		-0.691173, -0.642222, -0.331408,
		-0.016230, -0.444666, 0.895550,
		44.125229, 30.677380, 31.761204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415306, 30.958143, 31.333139>,  <44.136589, 30.988646, 31.134319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415306, 30.958143, 31.333139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592506, 30.914545, 31.689087>,  <43.698826, 30.888386, 31.902657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592506, 30.914545, 31.689087>,  <43.415306, 30.958143, 31.333139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592506, 30.914545, 31.689087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658147, 0.634453, 0.405353,
		-0.608763, -0.765238, 0.209330,
		0.443002, -0.108994, 0.889871,
		43.725407, 30.881847, 31.956049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861313, 30.811020, 31.752918>,  <43.415306, 30.958143, 31.333139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861313, 30.811020, 31.752918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.172215, 30.950802, 31.962204>,  <43.358757, 31.034672, 32.087776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.172215, 30.950802, 31.962204>,  <42.861313, 30.811020, 31.752918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172215, 30.950802, 31.962204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605236, 0.642511, 0.469968,
		-0.171940, -0.681954, 0.710897,
		0.777256, 0.349455, 0.523216,
		43.405392, 31.055637, 32.119167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794212, 30.631237, 32.483746>,  <42.861313, 30.811020, 31.752918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794212, 30.631237, 32.483746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019188, 30.958237, 32.434189>,  <43.154175, 31.154436, 32.404453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019188, 30.958237, 32.434189>,  <42.794212, 30.631237, 32.483746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019188, 30.958237, 32.434189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617340, 0.514878, 0.594804,
		0.550045, -0.258056, 0.794265,
		0.562443, 0.817501, -0.123897,
		43.187920, 31.203487, 32.397018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815266, 30.895758, 33.161934>,  <42.794212, 30.631237, 32.483746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815266, 30.895758, 33.161934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.938126, 31.207386, 32.943317>,  <43.011841, 31.394363, 32.812149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.938126, 31.207386, 32.943317>,  <42.815266, 30.895758, 33.161934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938126, 31.207386, 32.943317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508502, 0.619798, 0.597725,
		0.804416, 0.094327, 0.586530,
		0.307149, 0.779071, -0.546541,
		43.030270, 31.441107, 32.779354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017578, 31.462404, 33.621582>,  <42.815266, 30.895758, 33.161934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017578, 31.462404, 33.621582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.966099, 31.645977, 33.269943>,  <42.935211, 31.756121, 33.058960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.966099, 31.645977, 33.269943>,  <43.017578, 31.462404, 33.621582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966099, 31.645977, 33.269943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445282, 0.765342, 0.464732,
		0.886093, 0.451258, 0.105857,
		-0.128698, 0.458932, -0.879101,
		42.927490, 31.783657, 33.006214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422955, 32.075603, 33.697628>,  <43.017578, 31.462404, 33.621582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422955, 32.075603, 33.697628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.139969, 32.102802, 33.416237>,  <42.970177, 32.119122, 33.247402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.139969, 32.102802, 33.416237>,  <43.422955, 32.075603, 33.697628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139969, 32.102802, 33.416237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321659, 0.855320, 0.406157,
		0.629314, 0.513619, -0.583232,
		-0.707460, 0.067999, -0.703475,
		42.927731, 32.123203, 33.205193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446182, 32.683270, 33.392017>,  <43.422955, 32.075603, 33.697628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446182, 32.683270, 33.392017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.072224, 32.555210, 33.330742>,  <42.847847, 32.478374, 33.293976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.072224, 32.555210, 33.330742>,  <43.446182, 32.683270, 33.392017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072224, 32.555210, 33.330742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341203, 0.691936, 0.636243,
		-0.097695, 0.647092, -0.756127,
		-0.934899, -0.320150, -0.153191,
		42.791756, 32.459164, 33.284786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905136, 32.831482, 33.996704>,  <43.446182, 32.683270, 33.392017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905136, 32.831482, 33.996704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.280792, 32.967487, 34.016308>,  <44.506187, 33.049091, 34.028069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.280792, 32.967487, 34.016308>,  <43.905136, 32.831482, 33.996704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280792, 32.967487, 34.016308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332350, -0.935390, 0.120784,
		0.086908, -0.097146, -0.991468,
		0.939143, 0.340012, 0.049006,
		44.562534, 33.069492, 34.031010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295307, 32.495491, 33.530701>,  <43.905136, 32.831482, 33.996704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295307, 32.495491, 33.530701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579903, 32.614895, 33.785156>,  <44.750660, 32.686539, 33.937832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579903, 32.614895, 33.785156>,  <44.295307, 32.495491, 33.530701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579903, 32.614895, 33.785156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354186, -0.934220, 0.042248,
		0.606908, 0.195254, -0.770415,
		0.711488, 0.298510, 0.636142,
		44.793350, 32.704449, 33.975998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930149, 32.198185, 33.358955>,  <44.295307, 32.495491, 33.530701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930149, 32.198185, 33.358955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.983009, 32.261658, 33.750332>,  <45.014725, 32.299740, 33.985157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.983009, 32.261658, 33.750332>,  <44.930149, 32.198185, 33.358955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983009, 32.261658, 33.750332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469306, -0.879473, 0.079245,
		0.873091, 0.448718, -0.190693,
		0.132151, 0.158682, 0.978446,
		45.022655, 32.309261, 34.043865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557625, 31.930296, 33.498749>,  <44.930149, 32.198185, 33.358955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557625, 31.930296, 33.498749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.430256, 31.976650, 33.875084>,  <45.353836, 32.004463, 34.100887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.430256, 31.976650, 33.875084>,  <45.557625, 31.930296, 33.498749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430256, 31.976650, 33.875084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512259, -0.814071, 0.273639,
		0.797622, 0.569086, 0.199853,
		-0.318418, 0.115884, 0.940840,
		45.334732, 32.011414, 34.157337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124207, 31.768942, 33.871861>,  <45.557625, 31.930296, 33.498749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124207, 31.768942, 33.871861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.788506, 31.720474, 34.083885>,  <45.587086, 31.691393, 34.211102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.788506, 31.720474, 34.083885>,  <46.124207, 31.768942, 33.871861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.788506, 31.720474, 34.083885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389294, -0.814489, 0.430184,
		0.379608, 0.567385, 0.730734,
		-0.839254, -0.121169, 0.530066,
		45.536728, 31.684124, 34.242905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394852, 31.570471, 34.494629>,  <46.124207, 31.768942, 33.871861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394852, 31.570471, 34.494629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.011620, 31.457785, 34.515480>,  <45.781681, 31.390173, 34.527992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.011620, 31.457785, 34.515480>,  <46.394852, 31.570471, 34.494629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011620, 31.457785, 34.515480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280636, -0.886186, 0.368669,
		-0.057665, 0.367844, 0.928098,
		-0.958080, -0.281717, 0.052129,
		45.724194, 31.373270, 34.531120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303185, 31.172604, 35.117657>,  <46.394852, 31.570471, 34.494629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303185, 31.172604, 35.117657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.017208, 31.063688, 34.860062>,  <45.845623, 30.998339, 34.705505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.017208, 31.063688, 34.860062>,  <46.303185, 31.172604, 35.117657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017208, 31.063688, 34.860062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218168, -0.961944, 0.164520,
		-0.664279, -0.022876, 0.747135,
		-0.714938, -0.272288, -0.643990,
		45.802727, 30.982002, 34.666866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.051861, 30.591009, 35.391331>,  <46.303185, 31.172604, 35.117657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.051861, 30.591009, 35.391331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.899517, 30.554388, 35.023293>,  <45.808113, 30.532415, 34.802471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.899517, 30.554388, 35.023293>,  <46.051861, 30.591009, 35.391331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.899517, 30.554388, 35.023293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222322, -0.974961, 0.004988,
		-0.897509, -0.202656, 0.391673,
		-0.380855, -0.091554, -0.920091,
		45.785259, 30.526922, 34.747265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603008, 30.120335, 35.502857>,  <46.051861, 30.591009, 35.391331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603008, 30.120335, 35.502857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.672733, 30.120913, 35.108982>,  <45.714569, 30.121260, 34.872658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.672733, 30.120913, 35.108982>,  <45.603008, 30.120335, 35.502857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672733, 30.120913, 35.108982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369096, -0.927186, 0.063978,
		-0.912899, -0.374598, -0.162150,
		0.174310, 0.001444, -0.984690,
		45.725025, 30.121346, 34.813576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283611, 29.529661, 35.298286>,  <45.603008, 30.120335, 35.502857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283611, 29.529661, 35.298286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.524174, 29.620525, 34.991898>,  <45.668510, 29.675045, 34.808064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.524174, 29.620525, 34.991898>,  <45.283611, 29.529661, 35.298286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.524174, 29.620525, 34.991898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193142, -0.971629, -0.136506,
		-0.775246, -0.065845, -0.628218,
		0.601407, 0.227161, -0.765969,
		45.704597, 29.688673, 34.762108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079899, 29.185268, 34.634857>,  <45.283611, 29.529661, 35.298286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079899, 29.185268, 34.634857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.474426, 29.246481, 34.659397>,  <45.711143, 29.283209, 34.674122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.474426, 29.246481, 34.659397>,  <45.079899, 29.185268, 34.634857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.474426, 29.246481, 34.659397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161448, -0.971904, -0.171281,
		0.033412, 0.178842, -0.983311,
		0.986316, 0.153031, 0.061347,
		45.770321, 29.292391, 34.677799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313969, 28.815729, 34.189217>,  <45.079899, 29.185268, 34.634857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313969, 28.815729, 34.189217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658375, 28.902763, 34.373093>,  <45.865017, 28.954983, 34.483418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658375, 28.902763, 34.373093>,  <45.313969, 28.815729, 34.189217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658375, 28.902763, 34.373093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302534, -0.945675, -0.119044,
		0.408811, 0.241569, -0.880067,
		0.861015, 0.217584, 0.459685,
		45.916679, 28.968039, 34.510998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824310, 28.419903, 33.924660>,  <45.313969, 28.815729, 34.189217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824310, 28.419903, 33.924660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.034653, 28.517397, 34.250622>,  <46.160858, 28.575893, 34.446198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.034653, 28.517397, 34.250622>,  <45.824310, 28.419903, 33.924660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034653, 28.517397, 34.250622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310015, -0.947082, 0.083218,
		0.792064, 0.208872, -0.573591,
		0.525857, 0.243736, 0.814903,
		46.192410, 28.590517, 34.495094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471268, 28.100897, 33.887051>,  <45.824310, 28.419903, 33.924660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471268, 28.100897, 33.887051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.438255, 28.173153, 34.279083>,  <46.418449, 28.216507, 34.514301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.438255, 28.173153, 34.279083>,  <46.471268, 28.100897, 33.887051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438255, 28.173153, 34.279083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224966, -0.954675, 0.194902,
		0.970865, 0.236569, 0.038150,
		-0.082529, 0.180641, 0.980081,
		46.413498, 28.227345, 34.573109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094425, 27.864185, 34.233250>,  <46.471268, 28.100897, 33.887051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.094425, 27.864185, 34.233250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.818558, 27.842699, 34.522102>,  <46.653038, 27.829807, 34.695415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.818558, 27.842699, 34.522102>,  <47.094425, 27.864185, 34.233250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818558, 27.842699, 34.522102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208026, -0.969905, 0.126526,
		0.693605, 0.237483, 0.680084,
		-0.689665, -0.053717, 0.722134,
		46.611660, 27.826584, 34.738743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.297707, 27.349922, 34.666031>,  <47.094425, 27.864185, 34.233250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.297707, 27.349922, 34.666031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.923721, 27.393356, 34.801121>,  <46.699329, 27.419416, 34.882175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.923721, 27.393356, 34.801121>,  <47.297707, 27.349922, 34.666031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.923721, 27.393356, 34.801121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019485, -0.934849, 0.354511,
		0.354221, 0.338034, 0.871929,
		-0.934959, 0.108585, 0.337729,
		46.643234, 27.425932, 34.902439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.259731, 27.131983, 35.383430>,  <47.297707, 27.349922, 34.666031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.259731, 27.131983, 35.383430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.875301, 27.112053, 35.274727>,  <46.644642, 27.100096, 35.209503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.875301, 27.112053, 35.274727>,  <47.259731, 27.131983, 35.383430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.875301, 27.112053, 35.274727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070540, -0.906760, 0.415704,
		-0.267135, 0.418692, 0.867949,
		-0.961074, -0.049824, -0.271761,
		46.586979, 27.097105, 35.193199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.876740, 26.921793, 35.928757>,  <47.259731, 27.131983, 35.383430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.876740, 26.921793, 35.928757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.610157, 26.832796, 35.644127>,  <46.450207, 26.779398, 35.473351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.610157, 26.832796, 35.644127>,  <46.876740, 26.921793, 35.928757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.610157, 26.832796, 35.644127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114467, -0.912579, 0.392551,
		-0.736706, 0.343068, 0.582724,
		-0.666454, -0.222492, -0.711573,
		46.410221, 26.766048, 35.430656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.309326, 26.535217, 36.266022>,  <46.876740, 26.921793, 35.928757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.309326, 26.535217, 36.266022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.290268, 26.447468, 35.876232>,  <46.278831, 26.394817, 35.642357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.290268, 26.447468, 35.876232>,  <46.309326, 26.535217, 36.266022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290268, 26.447468, 35.876232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162489, -0.960887, 0.224260,
		-0.985559, 0.169027, 0.010137,
		-0.047647, -0.219374, -0.974477,
		46.275974, 26.381655, 35.583889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731033, 26.123610, 36.162235>,  <46.309326, 26.535217, 36.266022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731033, 26.123610, 36.162235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.963642, 26.043615, 35.846809>,  <46.103207, 25.995619, 35.657555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.963642, 26.043615, 35.846809>,  <45.731033, 26.123610, 36.162235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963642, 26.043615, 35.846809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041758, -0.975374, 0.216566,
		-0.812458, -0.093009, -0.575554,
		0.581523, -0.199985, -0.788567,
		46.138100, 25.983620, 35.610241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356350, 25.585585, 35.868107>,  <45.731033, 26.123610, 36.162235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356350, 25.585585, 35.868107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.722969, 25.523697, 35.720592>,  <45.942940, 25.486565, 35.632084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.722969, 25.523697, 35.720592>,  <45.356350, 25.585585, 35.868107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722969, 25.523697, 35.720592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102070, -0.982094, 0.158347,
		-0.386681, -0.107491, -0.915928,
		0.916548, -0.154719, -0.368785,
		45.997932, 25.477282, 35.609959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.258091, 36.313751, 40.069881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942322, 36.068268, 40.064713>,  <36.752861, 35.920979, 40.061611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942322, 36.068268, 40.064713>,  <37.258091, 36.313751, 40.069881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942322, 36.068268, 40.064713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057773, -0.053320, -0.996905,
		0.611122, -0.787728, 0.077548,
		-0.789425, -0.613711, -0.012925,
		36.705494, 35.884155, 40.060837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407024, 35.771999, 39.723888>,  <37.258091, 36.313751, 40.069881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407024, 35.771999, 39.723888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010796, 35.725933, 39.694229>,  <36.773056, 35.698292, 39.676434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010796, 35.725933, 39.694229>,  <37.407024, 35.771999, 39.723888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010796, 35.725933, 39.694229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108421, -0.328482, -0.938267,
		0.083702, -0.937463, 0.337873,
		-0.990575, -0.115168, -0.074146,
		36.713623, 35.691383, 39.671986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371902, 35.326607, 39.190655>,  <37.407024, 35.771999, 39.723888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371902, 35.326607, 39.190655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992832, 35.439796, 39.249779>,  <36.765392, 35.507710, 39.285252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992832, 35.439796, 39.249779>,  <37.371902, 35.326607, 39.190655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992832, 35.439796, 39.249779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230725, -0.287080, -0.929705,
		-0.220646, -0.915157, 0.337346,
		-0.947672, 0.282969, 0.147807,
		36.708530, 35.524689, 39.294121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897556, 34.728863, 39.070946>,  <37.371902, 35.326607, 39.190655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897556, 34.728863, 39.070946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734062, 35.083874, 38.985878>,  <36.635967, 35.296883, 38.934837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734062, 35.083874, 38.985878>,  <36.897556, 34.728863, 39.070946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734062, 35.083874, 38.985878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159603, -0.298943, -0.940829,
		-0.898590, -0.350605, 0.263840,
		-0.408732, 0.887530, -0.212670,
		36.611443, 35.350132, 38.922077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229664, 34.513786, 38.689049>,  <36.897556, 34.728863, 39.070946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229664, 34.513786, 38.689049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330486, 34.889114, 38.594376>,  <36.390980, 35.114311, 38.537571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330486, 34.889114, 38.594376>,  <36.229664, 34.513786, 38.689049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330486, 34.889114, 38.594376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008813, -0.246794, -0.969028,
		-0.967671, 0.242168, -0.070476,
		0.252061, 0.938321, -0.236681,
		36.406105, 35.170612, 38.523373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974274, 34.594707, 38.043728>,  <36.229664, 34.513786, 38.689049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974274, 34.594707, 38.043728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187561, 34.931850, 38.072769>,  <36.315533, 35.134136, 38.090195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187561, 34.931850, 38.072769>,  <35.974274, 34.594707, 38.043728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187561, 34.931850, 38.072769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057647, 0.049425, -0.997113,
		-0.844009, 0.535867, -0.022234,
		0.533221, 0.842854, 0.072607,
		36.347527, 35.184708, 38.094551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749416, 35.065594, 37.590000>,  <35.974274, 34.594707, 38.043728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749416, 35.065594, 37.590000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117638, 35.213955, 37.639008>,  <36.338570, 35.302971, 37.668411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117638, 35.213955, 37.639008>,  <35.749416, 35.065594, 37.590000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117638, 35.213955, 37.639008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030147, 0.245257, -0.968989,
		-0.389452, 0.895700, 0.214590,
		0.920553, 0.370905, 0.122518,
		36.393803, 35.325226, 37.675762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639771, 35.799026, 37.358280>,  <35.749416, 35.065594, 37.590000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639771, 35.799026, 37.358280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028664, 35.705524, 37.353951>,  <36.262001, 35.649422, 37.351353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028664, 35.705524, 37.353951>,  <35.639771, 35.799026, 37.358280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028664, 35.705524, 37.353951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022910, 0.141109, -0.989729,
		0.232885, 0.962001, 0.142546,
		0.972234, -0.233759, -0.010822,
		36.320335, 35.635395, 37.350704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042419, 36.354782, 37.205254>,  <35.639771, 35.799026, 37.358280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042419, 36.354782, 37.205254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279438, 36.049129, 37.103271>,  <36.421650, 35.865738, 37.042084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279438, 36.049129, 37.103271>,  <36.042419, 36.354782, 37.205254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279438, 36.049129, 37.103271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096930, 0.381834, -0.919134,
		0.799686, 0.519914, 0.300319,
		0.592543, -0.764129, -0.254952,
		36.457199, 35.819889, 37.026787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612011, 36.632259, 36.909466>,  <36.042419, 36.354782, 37.205254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612011, 36.632259, 36.909466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573120, 36.257912, 36.774006>,  <36.549786, 36.033302, 36.692730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573120, 36.257912, 36.774006>,  <36.612011, 36.632259, 36.909466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573120, 36.257912, 36.774006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088729, 0.330760, -0.939534,
		0.991299, -0.121399, 0.050880,
		-0.097230, -0.935874, -0.338654,
		36.543953, 35.977150, 36.672409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114658, 36.585888, 36.459251>,  <36.612011, 36.632259, 36.909466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114658, 36.585888, 36.459251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845177, 36.306938, 36.361446>,  <36.683487, 36.139568, 36.302761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845177, 36.306938, 36.361446>,  <37.114658, 36.585888, 36.459251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845177, 36.306938, 36.361446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068996, 0.388786, -0.918741,
		0.735769, -0.602093, -0.310044,
		-0.673708, -0.697374, -0.244515,
		36.643063, 36.097725, 36.288094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254559, 36.612461, 35.756077>,  <37.114658, 36.585888, 36.459251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254559, 36.612461, 35.756077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913849, 36.408424, 35.803890>,  <36.709423, 36.286003, 35.832577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913849, 36.408424, 35.803890>,  <37.254559, 36.612461, 35.756077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913849, 36.408424, 35.803890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303703, 0.294827, -0.906003,
		0.426901, -0.808013, -0.406042,
		-0.851775, -0.510090, 0.119534,
		36.658318, 36.255398, 35.839752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772243, 36.240799, 36.071102>,  <37.254559, 36.612461, 35.756077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772243, 36.240799, 36.071102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551666, 35.907867, 36.048668>,  <37.419319, 35.708111, 36.035206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551666, 35.907867, 36.048668>,  <37.772243, 36.240799, 36.071102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551666, 35.907867, 36.048668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829978, -0.540631, -0.137313,
		0.083966, -0.122273, 0.988938,
		-0.551441, -0.832326, -0.056089,
		37.386234, 35.658169, 36.031841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084801, 35.747246, 36.514072>,  <37.772243, 36.240799, 36.071102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084801, 35.747246, 36.514072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882137, 35.581188, 36.211830>,  <37.760540, 35.481552, 36.030483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882137, 35.581188, 36.211830>,  <38.084801, 35.747246, 36.514072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882137, 35.581188, 36.211830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848265, -0.396675, -0.350850,
		-0.154077, -0.818719, 0.553136,
		-0.506663, -0.415148, -0.755609,
		37.730137, 35.456642, 35.985146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474190, 35.244110, 36.203896>,  <38.084801, 35.747246, 36.514072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474190, 35.244110, 36.203896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186043, 35.266819, 35.927391>,  <38.013153, 35.280445, 35.761490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186043, 35.266819, 35.927391>,  <38.474190, 35.244110, 36.203896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186043, 35.266819, 35.927391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591957, -0.469070, -0.655409,
		-0.361457, -0.881335, 0.304300,
		-0.720372, 0.056770, -0.691260,
		37.969933, 35.283852, 35.720013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384144, 34.936493, 35.576092>,  <38.474190, 35.244110, 36.203896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384144, 34.936493, 35.576092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697449, 34.758499, 35.402428>,  <38.885429, 34.651703, 35.298229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697449, 34.758499, 35.402428>,  <38.384144, 34.936493, 35.576092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697449, 34.758499, 35.402428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032894, -0.667705, 0.743699,
		-0.620820, -0.596793, -0.508351,
		0.783263, -0.444981, -0.434156,
		38.932426, 34.625004, 35.272179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236702, 34.226223, 35.389523>,  <38.384144, 34.936493, 35.576092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236702, 34.226223, 35.389523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625645, 34.275318, 35.468975>,  <38.859009, 34.304775, 35.516647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625645, 34.275318, 35.468975>,  <38.236702, 34.226223, 35.389523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625645, 34.275318, 35.468975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037091, -0.758698, 0.650386,
		0.230530, -0.639775, -0.733174,
		0.972358, 0.122740, 0.198632,
		38.917351, 34.312141, 35.528564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591827, 33.579243, 35.307304>,  <38.236702, 34.226223, 35.389523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591827, 33.579243, 35.307304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808125, 33.798580, 35.562462>,  <38.937904, 33.930183, 35.715557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808125, 33.798580, 35.562462>,  <38.591827, 33.579243, 35.307304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808125, 33.798580, 35.562462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079540, -0.721599, 0.687726,
		0.837420, -0.422621, -0.346583,
		0.540742, 0.548348, 0.637897,
		38.970348, 33.963085, 35.753830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045773, 33.041325, 35.687489>,  <38.591827, 33.579243, 35.307304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045773, 33.041325, 35.687489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060974, 33.379440, 35.900669>,  <39.070095, 33.582310, 36.028576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060974, 33.379440, 35.900669>,  <39.045773, 33.041325, 35.687489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060974, 33.379440, 35.900669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080596, -0.529007, 0.844782,
		0.996022, -0.075058, 0.048024,
		0.038003, 0.845292, 0.532952,
		39.072376, 33.633026, 36.060555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404743, 32.882538, 36.271458>,  <39.045773, 33.041325, 35.687489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404743, 32.882538, 36.271458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202209, 33.205933, 36.391438>,  <39.080688, 33.399971, 36.463425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202209, 33.205933, 36.391438>,  <39.404743, 32.882538, 36.271458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202209, 33.205933, 36.391438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085098, -0.392980, 0.915601,
		0.858126, 0.438079, 0.267782,
		-0.506339, 0.808488, 0.299947,
		39.050308, 33.448479, 36.481422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768360, 33.161560, 36.921539>,  <39.404743, 32.882538, 36.271458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768360, 33.161560, 36.921539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400826, 33.319405, 36.923367>,  <39.180305, 33.414112, 36.924465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400826, 33.319405, 36.923367>,  <39.768360, 33.161560, 36.921539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400826, 33.319405, 36.923367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017363, 0.028847, 0.999433,
		0.394257, 0.918395, -0.033358,
		-0.918836, 0.394613, 0.004573,
		39.125175, 33.437790, 36.924740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866684, 33.703560, 37.441387>,  <39.768360, 33.161560, 36.921539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866684, 33.703560, 37.441387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477070, 33.622833, 37.400333>,  <39.243301, 33.574398, 37.375702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477070, 33.622833, 37.400333>,  <39.866684, 33.703560, 37.441387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477070, 33.622833, 37.400333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104265, -0.002545, 0.994546,
		-0.200979, 0.979420, -0.018564,
		-0.974031, -0.201818, -0.102630,
		39.184860, 33.562286, 37.369545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541389, 34.114227, 37.922268>,  <39.866684, 33.703560, 37.441387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541389, 34.114227, 37.922268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247372, 33.855633, 37.840515>,  <39.070961, 33.700478, 37.791462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247372, 33.855633, 37.840515>,  <39.541389, 34.114227, 37.922268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247372, 33.855633, 37.840515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201631, -0.079382, 0.976239,
		-0.647347, 0.758787, -0.072002,
		-0.735042, -0.646483, -0.204383,
		39.026859, 33.661686, 37.779202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975243, 34.313229, 38.427837>,  <39.541389, 34.114227, 37.922268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975243, 34.313229, 38.427837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932842, 33.928211, 38.328022>,  <38.907402, 33.697201, 38.268135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932842, 33.928211, 38.328022>,  <38.975243, 34.313229, 38.427837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932842, 33.928211, 38.328022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371722, -0.194396, 0.907762,
		-0.922272, 0.188983, -0.337193,
		-0.106002, -0.962547, -0.249535,
		38.901043, 33.639446, 38.253162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288380, 34.131866, 38.669159>,  <38.975243, 34.313229, 38.427837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288380, 34.131866, 38.669159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481476, 33.784775, 38.621822>,  <38.597336, 33.576519, 38.593422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481476, 33.784775, 38.621822>,  <38.288380, 34.131866, 38.669159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481476, 33.784775, 38.621822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385554, -0.331910, 0.860920,
		-0.786324, -0.369977, -0.494784,
		0.482745, -0.867728, -0.118343,
		38.626301, 33.524456, 38.586319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842262, 33.590233, 38.744972>,  <38.288380, 34.131866, 38.669159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842262, 33.590233, 38.744972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194252, 33.412682, 38.812637>,  <38.405445, 33.306152, 38.853237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194252, 33.412682, 38.812637>,  <37.842262, 33.590233, 38.744972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194252, 33.412682, 38.812637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373445, -0.426375, 0.823859,
		-0.293565, -0.788149, -0.540963,
		0.879976, -0.443876, 0.169162,
		38.458244, 33.279518, 38.863384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660210, 32.896152, 38.927048>,  <37.842262, 33.590233, 38.744972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660210, 32.896152, 38.927048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031498, 32.945843, 39.067318>,  <38.254272, 32.975658, 39.151482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031498, 32.945843, 39.067318>,  <37.660210, 32.896152, 38.927048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031498, 32.945843, 39.067318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306059, -0.280904, 0.909627,
		0.211510, -0.951662, -0.222719,
		0.928220, 0.124230, 0.350679,
		38.309963, 32.983112, 39.172520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654984, 32.375244, 39.379383>,  <37.660210, 32.896152, 38.927048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654984, 32.375244, 39.379383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973129, 32.599136, 39.472420>,  <38.164017, 32.733471, 39.528240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973129, 32.599136, 39.472420>,  <37.654984, 32.375244, 39.379383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973129, 32.599136, 39.472420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222516, -0.087300, 0.971013,
		0.563814, -0.824061, 0.055114,
		0.795362, 0.559734, 0.232588,
		38.211739, 32.767056, 39.542194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224754, 31.776136, 39.231289>,  <37.654984, 32.375244, 39.379383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224754, 31.776136, 39.231289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089912, 31.426903, 39.372196>,  <38.009007, 31.217363, 39.456741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089912, 31.426903, 39.372196>,  <38.224754, 31.776136, 39.231289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089912, 31.426903, 39.372196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423399, -0.193602, -0.885015,
		0.840890, -0.447488, -0.304399,
		-0.337101, -0.873083, 0.352264,
		37.988781, 31.164978, 39.477875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477810, 31.239738, 38.762993>,  <38.224754, 31.776136, 39.231289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477810, 31.239738, 38.762993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151070, 31.103771, 38.949417>,  <37.955025, 31.022192, 39.061272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151070, 31.103771, 38.949417>,  <38.477810, 31.239738, 38.762993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151070, 31.103771, 38.949417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438456, -0.159146, -0.884550,
		0.374845, -0.926892, -0.019040,
		-0.816852, -0.339917, 0.466056,
		37.906013, 31.001797, 39.089233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329472, 30.577364, 38.546280>,  <38.477810, 31.239738, 38.762993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329472, 30.577364, 38.546280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974514, 30.670513, 38.705429>,  <37.761539, 30.726402, 38.800919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974514, 30.670513, 38.705429>,  <38.329472, 30.577364, 38.546280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974514, 30.670513, 38.705429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454537, -0.297867, -0.839447,
		-0.076970, -0.925768, 0.370174,
		-0.887395, 0.232871, 0.397869,
		37.708294, 30.740376, 38.824791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806255, 30.026964, 38.321194>,  <38.329472, 30.577364, 38.546280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806255, 30.026964, 38.321194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623146, 30.367165, 38.424801>,  <37.513279, 30.571285, 38.486965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623146, 30.367165, 38.424801>,  <37.806255, 30.026964, 38.321194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623146, 30.367165, 38.424801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489761, 0.001911, -0.871855,
		-0.742009, -0.525969, 0.415667,
		-0.457774, 0.850501, 0.259017,
		37.485813, 30.622314, 38.502506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124836, 29.876802, 38.053234>,  <37.806255, 30.026964, 38.321194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124836, 29.876802, 38.053234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126759, 30.270220, 38.125481>,  <37.127911, 30.506269, 38.168827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126759, 30.270220, 38.125481>,  <37.124836, 29.876802, 38.053234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126759, 30.270220, 38.125481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564125, 0.151798, -0.811615,
		-0.825675, -0.097992, 0.555570,
		0.004803, 0.983542, 0.180616,
		37.128201, 30.565283, 38.179665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352112, 30.120134, 38.199818>,  <37.124836, 29.876802, 38.053234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352112, 30.120134, 38.199818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595116, 30.415756, 38.083382>,  <36.740917, 30.593130, 38.013519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595116, 30.415756, 38.083382>,  <36.352112, 30.120134, 38.199818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595116, 30.415756, 38.083382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549420, 0.126313, -0.825944,
		-0.573649, 0.661697, 0.482787,
		0.607507, 0.739055, -0.291091,
		36.777367, 30.637472, 37.996056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958786, 30.564398, 37.903481>,  <36.352112, 30.120134, 38.199818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958786, 30.564398, 37.903481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320747, 30.672419, 37.771889>,  <36.537922, 30.737230, 37.692932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320747, 30.672419, 37.771889>,  <35.958786, 30.564398, 37.903481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320747, 30.672419, 37.771889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405482, 0.312016, -0.859203,
		-0.129380, 0.910889, 0.391844,
		0.904900, 0.270050, -0.328981,
		36.592216, 30.753433, 37.673195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807079, 31.119507, 37.539200>,  <35.958786, 30.564398, 37.903481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807079, 31.119507, 37.539200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162968, 30.987864, 37.412659>,  <36.376503, 30.908878, 37.336735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162968, 30.987864, 37.412659>,  <35.807079, 31.119507, 37.539200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162968, 30.987864, 37.412659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319009, 0.047466, -0.946562,
		0.326537, 0.943099, -0.062757,
		0.889723, -0.329108, -0.316357,
		36.429886, 30.889132, 37.317753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987869, 31.567081, 36.900650>,  <35.807079, 31.119507, 37.539200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987869, 31.567081, 36.900650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196201, 31.227591, 36.863991>,  <36.321201, 31.023895, 36.841995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196201, 31.227591, 36.863991>,  <35.987869, 31.567081, 36.900650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196201, 31.227591, 36.863991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283967, -0.071001, -0.956202,
		0.805046, 0.524044, -0.277990,
		0.520829, -0.848727, -0.091652,
		36.352451, 30.972973, 36.836494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474449, 31.650581, 36.282665>,  <35.987869, 31.567081, 36.900650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474449, 31.650581, 36.282665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406143, 31.263988, 36.359344>,  <36.365158, 31.032032, 36.405354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406143, 31.263988, 36.359344>,  <36.474449, 31.650581, 36.282665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406143, 31.263988, 36.359344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108006, -0.211747, -0.971338,
		0.979374, -0.145169, 0.140546,
		-0.170768, -0.966483, 0.191700,
		36.354912, 30.974043, 36.416855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094563, 31.253735, 36.187443>,  <36.474449, 31.650581, 36.282665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094563, 31.253735, 36.187443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744614, 31.068508, 36.130638>,  <36.534645, 30.957373, 36.096558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744614, 31.068508, 36.130638>,  <37.094563, 31.253735, 36.187443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744614, 31.068508, 36.130638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217141, -0.112898, -0.969590,
		0.432952, -0.879104, 0.199322,
		-0.874873, -0.463066, -0.142010,
		36.482151, 30.929588, 36.088036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227989, 30.722181, 35.703278>,  <37.094563, 31.253735, 36.187443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227989, 30.722181, 35.703278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851055, 30.853436, 35.676971>,  <36.624893, 30.932188, 35.661186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851055, 30.853436, 35.676971>,  <37.227989, 30.722181, 35.703278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851055, 30.853436, 35.676971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072045, 0.006992, -0.997377,
		-0.326815, -0.944604, -0.030229,
		-0.942338, 0.328136, -0.065769,
		36.568356, 30.951876, 35.657242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.670933, 29.524475, 43.178661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336102, 29.402195, 42.997181>,  <38.135201, 29.328827, 42.888294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336102, 29.402195, 42.997181>,  <38.670933, 29.524475, 43.178661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336102, 29.402195, 42.997181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361705, 0.312934, -0.878204,
		0.410446, -0.899232, -0.151377,
		-0.837080, -0.305702, -0.453700,
		38.084976, 29.310484, 42.861073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891273, 29.244518, 42.446693>,  <38.670933, 29.524475, 43.178661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891273, 29.244518, 42.446693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493774, 29.286947, 42.432774>,  <38.255276, 29.312405, 42.424419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493774, 29.286947, 42.432774>,  <38.891273, 29.244518, 42.446693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493774, 29.286947, 42.432774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076047, 0.414986, -0.906644,
		-0.081729, -0.903623, -0.420458,
		-0.993749, 0.106074, -0.034802,
		38.195648, 29.318769, 42.422333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655289, 29.005373, 41.702427>,  <38.891273, 29.244518, 42.446693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655289, 29.005373, 41.702427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.369274, 29.226362, 41.873772>,  <38.197666, 29.358955, 41.976578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.369274, 29.226362, 41.873772>,  <38.655289, 29.005373, 41.702427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369274, 29.226362, 41.873772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136358, 0.490754, -0.860562,
		-0.685657, -0.673746, -0.275574,
		-0.715039, 0.552474, 0.428360,
		38.154762, 29.392105, 42.002281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158333, 29.081913, 41.232819>,  <38.655289, 29.005373, 41.702427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158333, 29.081913, 41.232819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.055031, 29.397390, 41.455982>,  <37.993050, 29.586678, 41.589882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.055031, 29.397390, 41.455982>,  <38.158333, 29.081913, 41.232819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055031, 29.397390, 41.455982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177052, 0.529082, -0.829894,
		-0.949714, -0.313106, 0.003000,
		-0.258257, 0.788693, 0.557913,
		37.977554, 29.633999, 41.623356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558273, 29.410709, 40.948574>,  <38.158333, 29.081913, 41.232819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558273, 29.410709, 40.948574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710594, 29.708490, 41.167950>,  <37.801987, 29.887159, 41.299576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710594, 29.708490, 41.167950>,  <37.558273, 29.410709, 40.948574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710594, 29.708490, 41.167950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163351, 0.637957, -0.752547,
		-0.910112, 0.196986, 0.364544,
		0.380805, 0.744451, 0.548434,
		37.824837, 29.931826, 41.332481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142841, 29.925442, 40.923759>,  <37.558273, 29.410709, 40.948574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142841, 29.925442, 40.923759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.494949, 30.089285, 41.019547>,  <37.706215, 30.187592, 41.077019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.494949, 30.089285, 41.019547>,  <37.142841, 29.925442, 40.923759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494949, 30.089285, 41.019547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066154, 0.605726, -0.792919,
		-0.469836, 0.682142, 0.560300,
		0.880271, 0.409608, 0.239466,
		37.759029, 30.212168, 41.091385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961082, 30.686024, 40.958344>,  <37.142841, 29.925442, 40.923759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961082, 30.686024, 40.958344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.355194, 30.647835, 40.901619>,  <37.591660, 30.624922, 40.867584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.355194, 30.647835, 40.901619>,  <36.961082, 30.686024, 40.958344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355194, 30.647835, 40.901619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028341, 0.726828, -0.686234,
		0.168586, 0.680152, 0.713423,
		0.985280, -0.095470, -0.141809,
		37.650780, 30.619194, 40.859077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117260, 31.280945, 40.597393>,  <36.961082, 30.686024, 40.958344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117260, 31.280945, 40.597393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465717, 31.094116, 40.536793>,  <37.674793, 30.982019, 40.500435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465717, 31.094116, 40.536793>,  <37.117260, 31.280945, 40.597393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465717, 31.094116, 40.536793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148475, 0.544652, -0.825415,
		0.468042, 0.696561, 0.543819,
		0.871144, -0.467072, -0.151498,
		37.727062, 30.953995, 40.491344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574833, 31.822872, 40.493610>,  <37.117260, 31.280945, 40.597393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574833, 31.822872, 40.493610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.637691, 31.461891, 40.333168>,  <37.675407, 31.245302, 40.236904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.637691, 31.461891, 40.333168>,  <37.574833, 31.822872, 40.493610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637691, 31.461891, 40.333168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047748, 0.412618, -0.909652,
		0.986421, 0.123794, 0.107931,
		0.157144, -0.902453, -0.401105,
		37.684834, 31.191154, 40.212837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096432, 31.928789, 39.987209>,  <37.574833, 31.822872, 40.493610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096432, 31.928789, 39.987209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.200584, 32.312996, 40.026409>,  <38.263077, 32.543522, 40.049931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.200584, 32.312996, 40.026409>,  <38.096432, 31.928789, 39.987209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200584, 32.312996, 40.026409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404241, 0.016277, 0.914508,
		0.876806, -0.277741, 0.392519,
		0.260386, 0.960518, 0.098003,
		38.278702, 32.601151, 40.055809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462959, 31.989288, 40.581913>,  <38.096432, 31.928789, 39.987209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462959, 31.989288, 40.581913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370495, 32.370399, 40.503139>,  <38.315018, 32.599064, 40.455875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370495, 32.370399, 40.503139>,  <38.462959, 31.989288, 40.581913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370495, 32.370399, 40.503139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090491, 0.180483, 0.979406,
		0.968698, 0.244223, 0.044497,
		-0.231162, 0.952775, -0.196934,
		38.301147, 32.656231, 40.444061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953442, 32.447960, 40.842247>,  <38.462959, 31.989288, 40.581913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953442, 32.447960, 40.842247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.601147, 32.636803, 40.827240>,  <38.389771, 32.750111, 40.818237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.601147, 32.636803, 40.827240>,  <38.953442, 32.447960, 40.842247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601147, 32.636803, 40.827240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045075, 0.162420, 0.985692,
		0.471447, 0.866449, -0.164331,
		-0.880742, 0.472109, -0.037517,
		38.336926, 32.778435, 40.815987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073780, 32.807400, 41.372856>,  <38.953442, 32.447960, 40.842247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073780, 32.807400, 41.372856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.685421, 32.860950, 41.293423>,  <38.452404, 32.893082, 41.245762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.685421, 32.860950, 41.293423>,  <39.073780, 32.807400, 41.372856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685421, 32.860950, 41.293423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189821, 0.075449, 0.978915,
		0.146033, 0.988122, -0.047841,
		-0.970898, 0.133873, -0.198585,
		38.394154, 32.901112, 41.233849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972057, 33.470879, 41.612251>,  <39.073780, 32.807400, 41.372856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972057, 33.470879, 41.612251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.596123, 33.336487, 41.637020>,  <38.370564, 33.255852, 41.651882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.596123, 33.336487, 41.637020>,  <38.972057, 33.470879, 41.612251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596123, 33.336487, 41.637020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004587, 0.193649, 0.981060,
		-0.341605, 0.921748, -0.183539,
		-0.939832, -0.335977, 0.061923,
		38.314175, 33.235695, 41.655598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528725, 33.833775, 42.174538>,  <38.972057, 33.470879, 41.612251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528725, 33.833775, 42.174538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.365097, 33.476116, 42.101700>,  <38.266918, 33.261520, 42.057999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.365097, 33.476116, 42.101700>,  <38.528725, 33.833775, 42.174538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365097, 33.476116, 42.101700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064187, -0.170866, 0.983201,
		-0.910242, 0.413888, 0.012504,
		-0.409072, -0.894149, -0.182095,
		38.242374, 33.207870, 42.047070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971775, 33.870407, 42.637409>,  <38.528725, 33.833775, 42.174538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971775, 33.870407, 42.637409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031559, 33.488277, 42.535412>,  <38.067429, 33.258999, 42.474213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031559, 33.488277, 42.535412>,  <37.971775, 33.870407, 42.637409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031559, 33.488277, 42.535412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001419, -0.257679, 0.966230,
		-0.988767, -0.144773, -0.037157,
		0.149458, -0.955323, -0.254990,
		38.076397, 33.201679, 42.458916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550194, 33.402088, 43.146572>,  <37.971775, 33.870407, 42.637409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550194, 33.402088, 43.146572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785206, 33.131207, 42.969395>,  <37.926212, 32.968678, 42.863087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785206, 33.131207, 42.969395>,  <37.550194, 33.402088, 43.146572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785206, 33.131207, 42.969395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158251, -0.440660, 0.883615,
		-0.793576, -0.589249, -0.151734,
		0.587532, -0.677203, -0.442947,
		37.961464, 32.928047, 42.836510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365032, 32.800751, 43.463428>,  <37.550194, 33.402088, 43.146572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365032, 32.800751, 43.463428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730038, 32.740871, 43.311161>,  <37.949039, 32.704945, 43.219799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730038, 32.740871, 43.311161>,  <37.365032, 32.800751, 43.463428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730038, 32.740871, 43.311161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254299, -0.521319, 0.814591,
		-0.320394, -0.840129, -0.437642,
		0.912513, -0.149698, -0.380671,
		38.003792, 32.695961, 43.196960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472572, 32.151520, 43.624504>,  <37.365032, 32.800751, 43.463428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472572, 32.151520, 43.624504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.823849, 32.338074, 43.582043>,  <38.034615, 32.450008, 43.556564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.823849, 32.338074, 43.582043>,  <37.472572, 32.151520, 43.624504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823849, 32.338074, 43.582043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273297, -0.307121, 0.911584,
		0.392548, -0.829554, -0.397172,
		0.878188, 0.466387, -0.106155,
		38.087307, 32.477989, 43.550198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976315, 31.612801, 43.833988>,  <37.472572, 32.151520, 43.624504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976315, 31.612801, 43.833988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.139462, 31.977316, 43.856598>,  <38.237350, 32.196026, 43.870163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.139462, 31.977316, 43.856598>,  <37.976315, 31.612801, 43.833988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139462, 31.977316, 43.856598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389753, -0.229759, 0.891798,
		0.825672, -0.341707, -0.448890,
		0.407870, 0.911289, 0.056524,
		38.261822, 32.250702, 43.873554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606117, 31.515232, 44.084454>,  <37.976315, 31.612801, 43.833988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606117, 31.515232, 44.084454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529522, 31.895281, 44.182922>,  <38.483566, 32.123310, 44.242004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529522, 31.895281, 44.182922>,  <38.606117, 31.515232, 44.084454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529522, 31.895281, 44.182922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340674, -0.170885, 0.924521,
		0.920475, 0.260898, -0.290960,
		-0.191485, 0.950121, 0.246176,
		38.472076, 32.180317, 44.256775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070061, 31.665092, 44.658215>,  <38.606117, 31.515232, 44.084454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070061, 31.665092, 44.658215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.851624, 31.999365, 44.681610>,  <38.720562, 32.199928, 44.695648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.851624, 31.999365, 44.681610>,  <39.070061, 31.665092, 44.658215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851624, 31.999365, 44.681610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179080, 0.048249, 0.982651,
		0.818359, 0.547094, -0.176002,
		-0.546094, 0.835680, 0.058488,
		38.687794, 32.250069, 44.699158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416138, 32.123871, 45.150059>,  <39.070061, 31.665092, 44.658215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416138, 32.123871, 45.150059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038181, 32.254547, 45.141537>,  <38.811409, 32.332954, 45.136425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038181, 32.254547, 45.141537>,  <39.416138, 32.123871, 45.150059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038181, 32.254547, 45.141537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042695, -0.058438, 0.997378,
		0.324593, 0.943321, 0.069166,
		-0.944890, 0.326695, -0.021306,
		38.754715, 32.352554, 45.135143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.906086, 30.772474, 45.542141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.272163, 30.639971, 45.450329>,  <32.491810, 30.560469, 45.395241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.272163, 30.639971, 45.450329>,  <31.906086, 30.772474, 45.542141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272163, 30.639971, 45.450329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000509, 0.568586, -0.822623,
		0.403010, 0.752978, 0.520199,
		0.915196, -0.331260, -0.229529,
		32.546722, 30.540592, 45.381470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306744, 31.349733, 45.287838>,  <31.906086, 30.772474, 45.542141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306744, 31.349733, 45.287838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.472393, 31.016375, 45.141441>,  <32.571781, 30.816359, 45.053604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.472393, 31.016375, 45.141441>,  <32.306744, 31.349733, 45.287838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472393, 31.016375, 45.141441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013682, 0.396346, -0.917999,
		0.910118, 0.385172, 0.152734,
		0.414123, -0.833398, -0.365992,
		32.596630, 30.766356, 45.031643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727161, 31.523996, 44.717136>,  <32.306744, 31.349733, 45.287838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727161, 31.523996, 44.717136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.745300, 31.126877, 44.672791>,  <32.756184, 30.888605, 44.646183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.745300, 31.126877, 44.672791>,  <32.727161, 31.523996, 44.717136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745300, 31.126877, 44.672791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151010, 0.116513, -0.981642,
		0.987491, 0.027775, 0.155207,
		0.045349, -0.992801, -0.110862,
		32.758904, 30.829037, 44.639530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364262, 31.372919, 44.394447>,  <32.727161, 31.523996, 44.717136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364262, 31.372919, 44.394447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.066734, 31.117878, 44.314255>,  <32.888218, 30.964853, 44.266140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.066734, 31.117878, 44.314255>,  <33.364262, 31.372919, 44.394447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066734, 31.117878, 44.314255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088831, 0.202989, -0.975143,
		0.662449, -0.743142, -0.094348,
		-0.743821, -0.637602, -0.200484,
		32.843590, 30.926598, 44.254108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479752, 31.274326, 43.685116>,  <33.364262, 31.372919, 44.394447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479752, 31.274326, 43.685116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.126553, 31.093634, 43.736118>,  <32.914635, 30.985218, 43.766720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.126553, 31.093634, 43.736118>,  <33.479752, 31.274326, 43.685116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126553, 31.093634, 43.736118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102982, -0.078587, -0.991574,
		0.457945, -0.888686, 0.022872,
		-0.882995, -0.451731, 0.127508,
		32.861652, 30.958115, 43.774372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471096, 30.612083, 43.309902>,  <33.479752, 31.274326, 43.685116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471096, 30.612083, 43.309902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.089787, 30.720482, 43.363312>,  <32.861000, 30.785521, 43.395359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.089787, 30.720482, 43.363312>,  <33.471096, 30.612083, 43.309902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089787, 30.720482, 43.363312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132431, 0.022409, -0.990939,
		-0.271533, -0.962319, 0.014526,
		-0.953274, 0.270997, 0.133525,
		32.803802, 30.801781, 43.403370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198032, 30.218216, 42.858055>,  <33.471096, 30.612083, 43.309902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198032, 30.218216, 42.858055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.924358, 30.500223, 42.932716>,  <32.760155, 30.669428, 42.977512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.924358, 30.500223, 42.932716>,  <33.198032, 30.218216, 42.858055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924358, 30.500223, 42.932716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024153, 0.233888, -0.971963,
		-0.728909, -0.669510, -0.142994,
		-0.684184, 0.705019, 0.186654,
		32.719105, 30.711729, 42.988712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641243, 30.083263, 42.412872>,  <33.198032, 30.218216, 42.858055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641243, 30.083263, 42.412872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.607491, 30.468801, 42.513973>,  <32.587238, 30.700125, 42.574635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.607491, 30.468801, 42.513973>,  <32.641243, 30.083263, 42.412872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607491, 30.468801, 42.513973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100697, 0.244114, -0.964504,
		-0.991332, -0.106837, 0.076458,
		-0.084380, 0.963844, 0.252756,
		32.582176, 30.757954, 42.589802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197163, 30.290863, 41.934299>,  <32.641243, 30.083263, 42.412872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197163, 30.290863, 41.934299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.335297, 30.633263, 42.088188>,  <32.418175, 30.838701, 42.180523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.335297, 30.633263, 42.088188>,  <32.197163, 30.290863, 41.934299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335297, 30.633263, 42.088188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174668, 0.461405, -0.869825,
		-0.922083, 0.233180, 0.308854,
		0.345333, 0.855998, 0.384725,
		32.438896, 30.890062, 42.203606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742470, 30.755655, 41.750149>,  <32.197163, 30.290863, 41.934299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742470, 30.755655, 41.750149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080425, 30.956326, 41.824429>,  <32.283199, 31.076727, 41.868996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080425, 30.956326, 41.824429>,  <31.742470, 30.755655, 41.750149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080425, 30.956326, 41.824429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211249, 0.631826, -0.745768,
		-0.491461, 0.590864, 0.639802,
		0.844891, 0.501674, 0.185698,
		32.333893, 31.106827, 41.880138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519701, 31.405909, 41.561077>,  <31.742470, 30.755655, 41.750149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519701, 31.405909, 41.561077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.918655, 31.415552, 41.588318>,  <32.158028, 31.421337, 41.604664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.918655, 31.415552, 41.588318>,  <31.519701, 31.405909, 41.561077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918655, 31.415552, 41.588318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045456, 0.523250, -0.850966,
		-0.056149, 0.851838, 0.520787,
		0.997387, 0.024108, 0.068101,
		32.217873, 31.422785, 41.608749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781576, 32.144550, 41.656219>,  <31.519701, 31.405909, 41.561077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781576, 32.144550, 41.656219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053497, 31.902853, 41.489960>,  <32.216648, 31.757835, 41.390205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053497, 31.902853, 41.489960>,  <31.781576, 32.144550, 41.656219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053497, 31.902853, 41.489960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023030, 0.584052, -0.811390,
		0.733034, 0.542012, 0.410955,
		0.679802, -0.604240, -0.415647,
		32.257439, 31.721581, 41.365265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276485, 32.570702, 41.430008>,  <31.781576, 32.144550, 41.656219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276485, 32.570702, 41.430008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.295677, 32.236683, 41.210777>,  <32.307190, 32.036270, 41.079239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.295677, 32.236683, 41.210777>,  <32.276485, 32.570702, 41.430008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295677, 32.236683, 41.210777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037433, 0.546822, -0.836411,
		0.998147, 0.060644, -0.005024,
		0.047976, -0.835050, -0.548079,
		32.310070, 31.986168, 41.046352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607380, 32.837547, 40.855515>,  <32.276485, 32.570702, 41.430008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607380, 32.837547, 40.855515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.513237, 32.465595, 40.742424>,  <32.456753, 32.242424, 40.674572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.513237, 32.465595, 40.742424>,  <32.607380, 32.837547, 40.855515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513237, 32.465595, 40.742424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029838, 0.297671, -0.954202,
		0.971452, -0.216139, -0.097804,
		-0.235353, -0.929880, -0.282724,
		32.442631, 32.186630, 40.657608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033203, 33.422829, 40.620911>,  <32.607380, 32.837547, 40.855515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033203, 33.422829, 40.620911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.985420, 33.818432, 40.586040>,  <32.956749, 34.055794, 40.565121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.985420, 33.818432, 40.586040>,  <33.033203, 33.422829, 40.620911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985420, 33.818432, 40.586040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095228, 0.098809, 0.990539,
		0.988261, 0.110031, -0.105985,
		-0.119462, 0.989004, -0.087171,
		32.949581, 34.115131, 40.559891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615566, 33.724113, 40.800896>,  <33.033203, 33.422829, 40.620911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615566, 33.724113, 40.800896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.367538, 34.035759, 40.837776>,  <33.218723, 34.222744, 40.859905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.367538, 34.035759, 40.837776>,  <33.615566, 33.724113, 40.800896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367538, 34.035759, 40.837776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248961, 0.083955, 0.964868,
		0.743999, 0.621238, -0.246026,
		-0.620068, 0.779111, 0.092202,
		33.181519, 34.269493, 40.865437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937469, 34.291851, 41.198143>,  <33.615566, 33.724113, 40.800896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937469, 34.291851, 41.198143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.560440, 34.416115, 41.247204>,  <33.334221, 34.490673, 41.276638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.560440, 34.416115, 41.247204>,  <33.937469, 34.291851, 41.198143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560440, 34.416115, 41.247204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165848, 0.116595, 0.979235,
		0.289911, 0.943342, -0.161422,
		-0.942574, 0.310662, 0.122650,
		33.277668, 34.509312, 41.284000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010349, 34.720505, 41.707760>,  <33.937469, 34.291851, 41.198143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010349, 34.720505, 41.707760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.614357, 34.664032, 41.706306>,  <33.376762, 34.630150, 41.705433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.614357, 34.664032, 41.706306>,  <34.010349, 34.720505, 41.707760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614357, 34.664032, 41.706306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015456, 0.082716, 0.996453,
		-0.140377, 0.986523, -0.084069,
		-0.989978, -0.141178, -0.003636,
		33.317364, 34.621677, 41.705215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712986, 35.270306, 42.096451>,  <34.010349, 34.720505, 41.707760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712986, 35.270306, 42.096451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488350, 34.939724, 42.112389>,  <33.353569, 34.741375, 42.121952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488350, 34.939724, 42.112389>,  <33.712986, 35.270306, 42.096451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488350, 34.939724, 42.112389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177967, -0.073627, 0.981278,
		-0.808051, 0.558164, 0.188430,
		-0.561588, -0.826457, 0.039841,
		33.319874, 34.691788, 42.124340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343006, 35.357670, 42.765079>,  <33.712986, 35.270306, 42.096451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343006, 35.357670, 42.765079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281128, 34.972137, 42.678272>,  <33.243999, 34.740818, 42.626186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281128, 34.972137, 42.678272>,  <33.343006, 35.357670, 42.765079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281128, 34.972137, 42.678272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201423, -0.245818, 0.948157,
		-0.967211, 0.102964, 0.232165,
		-0.154696, -0.963832, -0.217018,
		33.234718, 34.682987, 42.613167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786324, 35.164062, 43.231136>,  <33.343006, 35.357670, 42.765079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786324, 35.164062, 43.231136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.950928, 34.820702, 43.108624>,  <33.049690, 34.614685, 43.035114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.950928, 34.820702, 43.108624>,  <32.786324, 35.164062, 43.231136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950928, 34.820702, 43.108624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005774, -0.333596, 0.942698,
		-0.911386, -0.389700, -0.132323,
		0.411512, -0.858398, -0.306285,
		33.074383, 34.563183, 43.016739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367386, 34.581738, 43.503021>,  <32.786324, 35.164062, 43.231136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367386, 34.581738, 43.503021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.742706, 34.459427, 43.438408>,  <32.967899, 34.386040, 43.399639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.742706, 34.459427, 43.438408>,  <32.367386, 34.581738, 43.503021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742706, 34.459427, 43.438408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047403, -0.348973, 0.935933,
		-0.342516, -0.885857, -0.312954,
		0.938315, -0.305737, -0.161521,
		33.024197, 34.367695, 43.389946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305782, 33.901108, 43.801605>,  <32.367386, 34.581738, 43.503021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305782, 33.901108, 43.801605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.694023, 33.996880, 43.791695>,  <32.926968, 34.054344, 43.785748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.694023, 33.996880, 43.791695>,  <32.305782, 33.901108, 43.801605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694023, 33.996880, 43.791695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130588, -0.437319, 0.889774,
		0.202205, -0.866848, -0.455728,
		0.970598, 0.239429, -0.024772,
		32.985203, 34.068707, 43.784264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581470, 33.254494, 44.020069>,  <32.305782, 33.901108, 43.801605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581470, 33.254494, 44.020069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.870789, 33.529106, 44.049767>,  <33.044380, 33.693874, 44.067585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.870789, 33.529106, 44.049767>,  <32.581470, 33.254494, 44.020069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870789, 33.529106, 44.049767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306173, -0.415209, 0.856656,
		0.618949, -0.596887, -0.510518,
		0.723299, 0.686533, 0.074243,
		33.087780, 33.735065, 44.072041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203262, 32.918736, 44.070438>,  <32.581470, 33.254494, 44.020069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203262, 32.918736, 44.070438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.264576, 33.276394, 44.238728>,  <33.301365, 33.490990, 44.339703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.264576, 33.276394, 44.238728>,  <33.203262, 32.918736, 44.070438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264576, 33.276394, 44.238728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411501, -0.444842, 0.795476,
		0.898426, 0.051192, -0.436130,
		0.153287, 0.894145, 0.420723,
		33.310562, 33.544636, 44.364944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879257, 32.880451, 44.300209>,  <33.203262, 32.918736, 44.070438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879257, 32.880451, 44.300209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731945, 33.190117, 44.506138>,  <33.643559, 33.375916, 44.629696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731945, 33.190117, 44.506138>,  <33.879257, 32.880451, 44.300209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731945, 33.190117, 44.506138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378143, -0.381139, 0.843648,
		0.849342, 0.505370, -0.152381,
		-0.368276, 0.774167, 0.514819,
		33.621464, 33.422367, 44.660583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410404, 32.972645, 44.827686>,  <33.879257, 32.880451, 44.300209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410404, 32.972645, 44.827686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082993, 33.164875, 44.953583>,  <33.886547, 33.280212, 45.029121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082993, 33.164875, 44.953583>,  <34.410404, 32.972645, 44.827686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082993, 33.164875, 44.953583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252814, -0.190633, 0.948548,
		0.515850, 0.855982, 0.034541,
		-0.818525, 0.480577, 0.314742,
		33.837437, 33.309048, 45.048004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676125, 33.409428, 45.321838>,  <34.410404, 32.972645, 44.827686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676125, 33.409428, 45.321838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.290462, 33.349415, 45.409378>,  <34.059067, 33.313408, 45.461903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.290462, 33.349415, 45.409378>,  <34.676125, 33.409428, 45.321838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290462, 33.349415, 45.409378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247207, -0.208207, 0.946329,
		-0.096414, 0.966509, 0.237833,
		-0.964154, -0.150033, 0.218854,
		34.001217, 33.304405, 45.475033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966576, 34.112770, 45.421459>,  <34.676125, 33.409428, 45.321838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966576, 34.112770, 45.421459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.341805, 34.230473, 45.494598>,  <35.566940, 34.301094, 45.538483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.341805, 34.230473, 45.494598>,  <34.966576, 34.112770, 45.421459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341805, 34.230473, 45.494598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099682, 0.276201, -0.955917,
		-0.331788, 0.914945, 0.229764,
		0.938073, 0.294259, 0.182844,
		35.623226, 34.318748, 45.549450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033360, 34.800423, 45.114117>,  <34.966576, 34.112770, 45.421459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033360, 34.800423, 45.114117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.398899, 34.638496, 45.126839>,  <35.618221, 34.541340, 45.134472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.398899, 34.638496, 45.126839>,  <35.033360, 34.800423, 45.114117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398899, 34.638496, 45.126839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123564, 0.202616, -0.971431,
		0.386803, 0.891669, 0.235180,
		0.913846, -0.404813, 0.031806,
		35.673054, 34.517052, 45.136379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639015, 35.265793, 44.886856>,  <35.033360, 34.800423, 45.114117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639015, 35.265793, 44.886856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.771137, 34.889835, 44.852219>,  <35.850410, 34.664261, 44.831436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.771137, 34.889835, 44.852219>,  <35.639015, 35.265793, 44.886856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771137, 34.889835, 44.852219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293523, 0.189480, -0.936985,
		0.897075, 0.284073, 0.338467,
		0.330305, -0.939894, -0.086596,
		35.870228, 34.607868, 44.826241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110931, 35.417038, 44.325535>,  <35.639015, 35.265793, 44.886856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110931, 35.417038, 44.325535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.085354, 35.018467, 44.347569>,  <36.070007, 34.779324, 44.360790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.085354, 35.018467, 44.347569>,  <36.110931, 35.417038, 44.325535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085354, 35.018467, 44.347569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270489, -0.070438, -0.960143,
		0.960598, -0.046491, 0.274027,
		-0.063940, -0.996432, 0.055087,
		36.066174, 34.719536, 44.364094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784702, 35.106640, 44.291840>,  <36.110931, 35.417038, 44.325535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784702, 35.106640, 44.291840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.516548, 34.849361, 44.143852>,  <36.355656, 34.694996, 44.055061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.516548, 34.849361, 44.143852>,  <36.784702, 35.106640, 44.291840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516548, 34.849361, 44.143852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457594, 0.034131, -0.888506,
		0.584111, -0.764940, 0.271442,
		-0.670389, -0.643197, -0.369969,
		36.315430, 34.656403, 44.032860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193645, 34.731331, 43.800106>,  <36.784702, 35.106640, 44.291840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193645, 34.731331, 43.800106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.809155, 34.663055, 43.713482>,  <36.578461, 34.622089, 43.661507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.809155, 34.663055, 43.713482>,  <37.193645, 34.731331, 43.800106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809155, 34.663055, 43.713482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183760, 0.189004, -0.964629,
		0.205603, -0.967024, -0.150307,
		-0.961228, -0.170710, -0.216560,
		36.520786, 34.611847, 43.648514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153999, 34.283779, 43.141171>,  <37.193645, 34.731331, 43.800106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153999, 34.283779, 43.141171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811882, 34.487305, 43.180305>,  <36.606609, 34.609421, 43.203789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811882, 34.487305, 43.180305>,  <37.153999, 34.283779, 43.141171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811882, 34.487305, 43.180305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054381, 0.275939, -0.959636,
		-0.515276, -0.815453, -0.263680,
		-0.855297, 0.508817, 0.097839,
		36.555294, 34.639950, 43.209656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724781, 34.183968, 42.518291>,  <37.153999, 34.283779, 43.141171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724781, 34.183968, 42.518291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.561317, 34.510845, 42.680870>,  <36.463238, 34.706970, 42.778416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.561317, 34.510845, 42.680870>,  <36.724781, 34.183968, 42.518291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561317, 34.510845, 42.680870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109443, 0.398237, -0.910730,
		-0.906102, -0.416659, -0.073307,
		-0.408658, 0.817192, 0.406443,
		36.438721, 34.756004, 42.802803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147175, 34.376621, 42.122978>,  <36.724781, 34.183968, 42.518291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147175, 34.376621, 42.122978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.284397, 34.718441, 42.278950>,  <36.366730, 34.923534, 42.372532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.284397, 34.718441, 42.278950>,  <36.147175, 34.376621, 42.122978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284397, 34.718441, 42.278950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054790, 0.396213, -0.916523,
		-0.937714, 0.335787, 0.089104,
		0.343060, 0.854554, 0.389932,
		36.387314, 34.974808, 42.395931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507256, 34.963375, 42.022495>,  <36.147175, 34.376621, 42.122978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507256, 34.963375, 42.022495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.868099, 35.133339, 42.052586>,  <36.084606, 35.235317, 42.070641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.868099, 35.133339, 42.052586>,  <35.507256, 34.963375, 42.022495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868099, 35.133339, 42.052586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198490, 0.563393, -0.801991,
		-0.383153, 0.708550, 0.592580,
		0.902106, 0.424907, 0.075226,
		36.138733, 35.260811, 42.075153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425087, 35.595207, 41.850594>,  <35.507256, 34.963375, 42.022495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425087, 35.595207, 41.850594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.817730, 35.557255, 41.784328>,  <36.053314, 35.534485, 41.744568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.817730, 35.557255, 41.784328>,  <35.425087, 35.595207, 41.850594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817730, 35.557255, 41.784328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098043, 0.494070, -0.863876,
		0.163812, 0.864230, 0.475680,
		0.981607, -0.094877, -0.165666,
		36.112213, 35.528793, 41.734627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727791, 36.170174, 41.584682>,  <35.425087, 35.595207, 41.850594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727791, 36.170174, 41.584682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.979794, 35.889557, 41.451458>,  <36.130997, 35.721188, 41.371521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.979794, 35.889557, 41.451458>,  <35.727791, 36.170174, 41.584682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979794, 35.889557, 41.451458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022684, 0.445322, -0.895083,
		0.776257, 0.556355, 0.296470,
		0.630009, -0.701539, -0.333063,
		36.168797, 35.679096, 41.351540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183983, 36.544510, 41.136749>,  <35.727791, 36.170174, 41.584682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183983, 36.544510, 41.136749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.224964, 36.158474, 41.040321>,  <36.249554, 35.926853, 40.982464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.224964, 36.158474, 41.040321>,  <36.183983, 36.544510, 41.136749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224964, 36.158474, 41.040321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126299, 0.253004, -0.959186,
		0.986688, 0.067823, 0.147810,
		0.102452, -0.965085, -0.241070,
		36.255699, 35.868950, 40.968002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802250, 36.557354, 40.693924>,  <36.183983, 36.544510, 41.136749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802250, 36.557354, 40.693924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.627129, 36.206013, 40.617168>,  <36.522057, 35.995209, 40.571117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.627129, 36.206013, 40.617168>,  <36.802250, 36.557354, 40.693924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627129, 36.206013, 40.617168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108678, 0.160159, -0.981090,
		0.892478, -0.450380, 0.025340,
		-0.437805, -0.878355, -0.191885,
		36.495789, 35.942505, 40.559605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.190157, 27.809057, 29.391165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.221588, 27.710329, 29.777514>,  <26.240446, 27.651093, 30.009323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.221588, 27.710329, 29.777514>,  <26.190157, 27.809057, 29.391165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221588, 27.710329, 29.777514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516214, 0.818783, 0.251230,
		-0.852847, -0.518336, -0.063075,
		0.078577, -0.246822, 0.965870,
		26.245161, 27.636282, 30.067274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550270, 27.970907, 29.630215>,  <26.190157, 27.809057, 29.391165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550270, 27.970907, 29.630215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770170, 27.954519, 29.963943>,  <25.902111, 27.944687, 30.164181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770170, 27.954519, 29.963943>,  <25.550270, 27.970907, 29.630215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770170, 27.954519, 29.963943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593407, 0.683809, 0.424587,
		-0.587912, -0.728510, 0.351613,
		0.549752, -0.040970, 0.834322,
		25.935097, 27.942228, 30.214241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.045116, 27.991388, 30.134336>,  <25.550270, 27.970907, 29.630215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.045116, 27.991388, 30.134336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.386671, 28.111780, 30.304178>,  <25.591604, 28.184015, 30.406084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.386671, 28.111780, 30.304178>,  <25.045116, 27.991388, 30.134336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.386671, 28.111780, 30.304178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478875, 0.773890, 0.414455,
		-0.203856, -0.557231, 0.804945,
		0.853886, 0.300979, 0.424607,
		25.642838, 28.202074, 30.431561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958963, 28.116076, 30.761595>,  <25.045116, 27.991388, 30.134336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958963, 28.116076, 30.761595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.295321, 28.329189, 30.723553>,  <25.497135, 28.457058, 30.700727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.295321, 28.329189, 30.723553>,  <24.958963, 28.116076, 30.761595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295321, 28.329189, 30.723553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399395, 0.729487, 0.555277,
		0.365220, -0.428943, 0.826209,
		0.840891, 0.532782, -0.095106,
		25.547588, 28.489023, 30.695021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935102, 28.502443, 31.277758>,  <24.958963, 28.116076, 30.761595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935102, 28.502443, 31.277758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.231178, 28.700100, 31.095352>,  <25.408823, 28.818693, 30.985909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.231178, 28.700100, 31.095352>,  <24.935102, 28.502443, 31.277758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.231178, 28.700100, 31.095352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255937, 0.834185, 0.488500,
		0.621784, -0.244872, 0.743923,
		0.740189, 0.494139, -0.456011,
		25.453236, 28.848341, 30.958549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281130, 28.895096, 31.815123>,  <24.935102, 28.502443, 31.277758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281130, 28.895096, 31.815123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.367439, 29.076513, 31.469234>,  <25.419226, 29.185364, 31.261702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.367439, 29.076513, 31.469234>,  <25.281130, 28.895096, 31.815123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367439, 29.076513, 31.469234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259338, 0.880394, 0.397052,
		0.941374, 0.138581, 0.307588,
		0.215774, 0.453543, -0.864719,
		25.432171, 29.212576, 31.209818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710388, 29.416731, 32.038277>,  <25.281130, 28.895096, 31.815123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710388, 29.416731, 32.038277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.629341, 29.523176, 31.661314>,  <25.580713, 29.587044, 31.435137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.629341, 29.523176, 31.661314>,  <25.710388, 29.416731, 32.038277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629341, 29.523176, 31.661314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145513, 0.943502, 0.297709,
		0.968386, 0.197454, -0.152449,
		-0.202620, 0.266114, -0.942406,
		25.568556, 29.603010, 31.378592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033527, 29.969629, 31.923512>,  <25.710388, 29.416731, 32.038277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033527, 29.969629, 31.923512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.734303, 29.996948, 31.659470>,  <25.554768, 30.013340, 31.501045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.734303, 29.996948, 31.659470>,  <26.033527, 29.969629, 31.923512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734303, 29.996948, 31.659470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084758, 0.976711, 0.197107,
		0.658191, 0.203398, -0.724854,
		-0.748064, 0.068296, -0.660103,
		25.509884, 30.017437, 31.461439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144978, 30.595074, 31.743469>,  <26.033527, 29.969629, 31.923512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144978, 30.595074, 31.743469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.796551, 30.544291, 31.553682>,  <25.587494, 30.513821, 31.439810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.796551, 30.544291, 31.553682>,  <26.144978, 30.595074, 31.743469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796551, 30.544291, 31.553682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197170, 0.975148, 0.101049,
		0.449847, 0.181572, -0.874454,
		-0.871069, -0.126959, -0.474468,
		25.535231, 30.506203, 31.411343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104946, 30.999022, 31.094507>,  <26.144978, 30.595074, 31.743469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104946, 30.999022, 31.094507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.746876, 30.953590, 31.266909>,  <25.532034, 30.926331, 31.370350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.746876, 30.953590, 31.266909>,  <26.104946, 30.999022, 31.094507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746876, 30.953590, 31.266909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019331, 0.956184, 0.292127,
		-0.445296, 0.269836, -0.853756,
		-0.895175, -0.113579, 0.431002,
		25.478323, 30.919518, 31.396210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861797, 31.668568, 31.055542>,  <26.104946, 30.999022, 31.094507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861797, 31.668568, 31.055542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.637711, 31.490768, 31.335136>,  <25.503258, 31.384089, 31.502893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.637711, 31.490768, 31.335136>,  <25.861797, 31.668568, 31.055542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637711, 31.490768, 31.335136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090796, 0.871698, 0.481559,
		-0.823355, 0.206313, -0.528699,
		-0.560217, -0.444497, 0.698984,
		25.469645, 31.357420, 31.544832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287046, 32.167763, 31.215553>,  <25.861797, 31.668568, 31.055542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287046, 32.167763, 31.215553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.322180, 31.924915, 31.531450>,  <25.343260, 31.779207, 31.720987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.322180, 31.924915, 31.531450>,  <25.287046, 32.167763, 31.215553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322180, 31.924915, 31.531450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044817, 0.789594, 0.611991,
		-0.995127, -0.089146, 0.042142,
		0.087832, -0.607120, 0.789741,
		25.348530, 31.742779, 31.768373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.717607, 32.314903, 31.770674>,  <25.287046, 32.167763, 31.215553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.717607, 32.314903, 31.770674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.009893, 32.117912, 31.959787>,  <25.185265, 31.999718, 32.073254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.009893, 32.117912, 31.959787>,  <24.717607, 32.314903, 31.770674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009893, 32.117912, 31.959787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036163, 0.719488, 0.693562,
		-0.681724, -0.489700, 0.543550,
		0.730715, -0.492474, 0.472784,
		25.229109, 31.970171, 32.101624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.564360, 32.327484, 32.504169>,  <24.717607, 32.314903, 31.770674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.564360, 32.327484, 32.504169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.951227, 32.227932, 32.483612>,  <25.183348, 32.168201, 32.471275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.951227, 32.227932, 32.483612>,  <24.564360, 32.327484, 32.504169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.951227, 32.227932, 32.483612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215762, 0.697324, 0.683510,
		-0.134272, -0.672159, 0.728130,
		0.967170, -0.248879, -0.051396,
		25.241379, 32.153267, 32.468193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.828814, 32.493568, 33.142941>,  <24.564360, 32.327484, 32.504169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.828814, 32.493568, 33.142941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.181824, 32.459923, 32.957867>,  <25.393629, 32.439735, 32.846825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.181824, 32.459923, 32.957867>,  <24.828814, 32.493568, 33.142941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181824, 32.459923, 32.957867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388835, 0.683891, 0.617333,
		0.264495, -0.724719, 0.636259,
		0.882525, -0.084119, -0.462681,
		25.446581, 32.434689, 32.819061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222450, 32.227802, 33.620491>,  <24.828814, 32.493568, 33.142941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222450, 32.227802, 33.620491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.475952, 32.394733, 33.359970>,  <25.628054, 32.494892, 33.203659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.475952, 32.394733, 33.359970>,  <25.222450, 32.227802, 33.620491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475952, 32.394733, 33.359970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143993, 0.763615, 0.629411,
		0.760026, -0.492667, 0.423839,
		0.633740, 0.417338, -0.651308,
		25.666079, 32.519932, 33.164581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860039, 32.362644, 33.980980>,  <25.222450, 32.227802, 33.620491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860039, 32.362644, 33.980980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.919605, 32.611115, 33.673225>,  <25.955345, 32.760197, 33.488571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.919605, 32.611115, 33.673225>,  <25.860039, 32.362644, 33.980980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919605, 32.611115, 33.673225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390963, 0.677684, 0.622810,
		0.908280, -0.393549, -0.141942,
		0.148915, 0.621180, -0.769390,
		25.964279, 32.797470, 33.442410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500435, 32.431973, 34.033974>,  <25.860039, 32.362644, 33.980980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500435, 32.431973, 34.033974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.363909, 32.736679, 33.813713>,  <26.281994, 32.919502, 33.681557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.363909, 32.736679, 33.813713>,  <26.500435, 32.431973, 34.033974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363909, 32.736679, 33.813713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555288, 0.636083, 0.535774,
		0.758393, -0.122901, -0.640105,
		-0.341313, 0.761770, -0.550647,
		26.261515, 32.965210, 33.648518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119299, 32.811211, 33.869965>,  <26.500435, 32.431973, 34.033974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119299, 32.811211, 33.869965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.828655, 33.080879, 33.817017>,  <26.654268, 33.242680, 33.785248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.828655, 33.080879, 33.817017>,  <27.119299, 32.811211, 33.869965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828655, 33.080879, 33.817017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485739, 0.640344, 0.594994,
		0.485895, 0.368030, -0.792754,
		-0.726611, 0.674176, -0.132374,
		26.610672, 33.283131, 33.777306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422451, 33.417610, 33.539936>,  <27.119299, 32.811211, 33.869965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422451, 33.417610, 33.539936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077446, 33.546276, 33.696194>,  <26.870443, 33.623474, 33.789948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077446, 33.546276, 33.696194>,  <27.422451, 33.417610, 33.539936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077446, 33.546276, 33.696194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490092, 0.723232, 0.486564,
		-0.126020, 0.611122, -0.781441,
		-0.862513, 0.321661, 0.390648,
		26.818691, 33.642773, 33.813389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987461, 33.584709, 33.133881>,  <27.422451, 33.417610, 33.539936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987461, 33.584709, 33.133881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384409, 33.619652, 33.099079>,  <28.622578, 33.640617, 33.078197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384409, 33.619652, 33.099079>,  <27.987461, 33.584709, 33.133881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384409, 33.619652, 33.099079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061491, -0.962330, -0.264839,
		-0.106861, 0.257469, -0.960360,
		0.992371, 0.087355, -0.087004,
		28.682119, 33.645859, 33.072979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174856, 33.358719, 32.502468>,  <27.987461, 33.584709, 33.133881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174856, 33.358719, 32.502468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522026, 33.322826, 32.697880>,  <28.730328, 33.301289, 32.815125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522026, 33.322826, 32.697880>,  <28.174856, 33.358719, 32.502468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522026, 33.322826, 32.697880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002599, -0.984352, -0.176195,
		0.496692, 0.151655, -0.854575,
		0.867923, -0.089736, 0.488526,
		28.782402, 33.295906, 32.844437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442074, 32.765263, 32.116005>,  <28.174856, 33.358719, 32.502468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442074, 32.765263, 32.116005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.651882, 32.805504, 32.454178>,  <28.777767, 32.829647, 32.657082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.651882, 32.805504, 32.454178>,  <28.442074, 32.765263, 32.116005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651882, 32.805504, 32.454178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036369, -0.994736, 0.095801,
		0.850620, -0.019502, -0.525419,
		0.524522, 0.100599, 0.845433,
		28.809238, 32.835682, 32.707809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998276, 32.334499, 31.934977>,  <28.442074, 32.765263, 32.116005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998276, 32.334499, 31.934977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974993, 32.401756, 32.328594>,  <28.961023, 32.442112, 32.564766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974993, 32.401756, 32.328594>,  <28.998276, 32.334499, 31.934977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974993, 32.401756, 32.328594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140278, -0.977312, 0.158694,
		0.988400, -0.128803, 0.080472,
		-0.058206, 0.168141, 0.984043,
		28.957531, 32.452198, 32.623806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365831, 31.758572, 32.229408>,  <28.998276, 32.334499, 31.934977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365831, 31.758572, 32.229408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.137592, 31.883686, 32.533142>,  <29.000648, 31.958755, 32.715382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.137592, 31.883686, 32.533142>,  <29.365831, 31.758572, 32.229408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137592, 31.883686, 32.533142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208580, -0.949503, 0.234387,
		0.794301, -0.024641, 0.607024,
		-0.570596, 0.312787, 0.759332,
		28.966413, 31.977522, 32.760941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623598, 31.383402, 32.841026>,  <29.365831, 31.758572, 32.229408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623598, 31.383402, 32.841026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252008, 31.500345, 32.931831>,  <29.029055, 31.570511, 32.986313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252008, 31.500345, 32.931831>,  <29.623598, 31.383402, 32.841026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252008, 31.500345, 32.931831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153693, -0.862607, 0.481962,
		0.336728, 0.412840, 0.846273,
		-0.928974, 0.292356, 0.227013,
		28.973316, 31.588053, 32.999935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575207, 31.182354, 33.496082>,  <29.623598, 31.383402, 32.841026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575207, 31.182354, 33.496082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197451, 31.191877, 33.364895>,  <28.970797, 31.197592, 33.286182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197451, 31.191877, 33.364895>,  <29.575207, 31.182354, 33.496082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197451, 31.191877, 33.364895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134618, -0.937959, 0.319549,
		-0.300013, 0.345929, 0.889002,
		-0.944389, 0.023807, -0.327968,
		28.914135, 31.199020, 33.266506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173302, 31.013943, 34.064476>,  <29.575207, 31.182354, 33.496082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173302, 31.013943, 34.064476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.966576, 30.936321, 33.730949>,  <28.842541, 30.889748, 33.530834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.966576, 30.936321, 33.730949>,  <29.173302, 31.013943, 34.064476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966576, 30.936321, 33.730949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185364, -0.925501, 0.330286,
		-0.835789, 0.325255, 0.442341,
		-0.516814, -0.194055, -0.833814,
		28.811531, 30.878105, 33.480804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486910, 30.688593, 34.316818>,  <29.173302, 31.013943, 34.064476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486910, 30.688593, 34.316818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.543993, 30.606222, 33.929577>,  <28.578243, 30.556799, 33.697231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.543993, 30.606222, 33.929577>,  <28.486910, 30.688593, 34.316818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543993, 30.606222, 33.929577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314620, -0.936823, 0.152896,
		-0.938430, 0.282767, -0.198476,
		0.142703, -0.205927, -0.968107,
		28.586805, 30.544443, 33.639145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107420, 30.165232, 34.269417>,  <28.486910, 30.688593, 34.316818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107420, 30.165232, 34.269417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.266184, 30.147528, 33.902702>,  <28.361443, 30.136906, 33.682674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.266184, 30.147528, 33.902702>,  <28.107420, 30.165232, 34.269417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266184, 30.147528, 33.902702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269154, -0.960539, -0.070154,
		-0.877508, 0.274603, -0.393158,
		0.396908, -0.044260, -0.916791,
		28.385256, 30.134251, 33.627666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644279, 29.853451, 33.793243>,  <28.107420, 30.165232, 34.269417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644279, 29.853451, 33.793243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.990271, 29.797785, 33.600391>,  <28.197865, 29.764385, 33.484680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.990271, 29.797785, 33.600391>,  <27.644279, 29.853451, 33.793243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990271, 29.797785, 33.600391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265022, -0.942544, -0.203404,
		-0.426119, 0.303714, -0.852162,
		0.864977, -0.139167, -0.482127,
		28.249763, 29.756035, 33.455753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410666, 29.416857, 33.296356>,  <27.644279, 29.853451, 33.793243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410666, 29.416857, 33.296356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808283, 29.394114, 33.333549>,  <28.046854, 29.380466, 33.355865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808283, 29.394114, 33.333549>,  <27.410666, 29.416857, 33.296356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808283, 29.394114, 33.333549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036393, -0.977328, -0.208581,
		0.102733, 0.203955, -0.973575,
		0.994043, -0.056860, 0.092982,
		28.106495, 29.377056, 33.361443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655788, 29.124193, 32.677067>,  <27.410666, 29.416857, 33.296356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655788, 29.124193, 32.677067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924458, 29.041967, 32.961769>,  <28.085659, 28.992632, 33.132591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924458, 29.041967, 32.961769>,  <27.655788, 29.124193, 32.677067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924458, 29.041967, 32.961769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021585, -0.954895, -0.296158,
		0.740533, 0.214285, -0.636941,
		0.671674, -0.205566, 0.711756,
		28.125959, 28.980297, 33.175297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058996, 28.608660, 32.394665>,  <27.655788, 29.124193, 32.677067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058996, 28.608660, 32.394665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.121069, 28.613346, 32.789791>,  <28.158314, 28.616158, 33.026867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.121069, 28.613346, 32.789791>,  <28.058996, 28.608660, 32.394665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121069, 28.613346, 32.789791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230580, -0.972740, -0.024688,
		0.960599, 0.231602, -0.153655,
		0.155184, 0.011715, 0.987816,
		28.167624, 28.616861, 33.086136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445324, 28.055025, 32.480865>,  <28.058996, 28.608660, 32.394665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445324, 28.055025, 32.480865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.308937, 28.101849, 32.853970>,  <28.227104, 28.129942, 33.077831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.308937, 28.101849, 32.853970>,  <28.445324, 28.055025, 32.480865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308937, 28.101849, 32.853970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026449, -0.990630, 0.133988,
		0.939703, 0.070356, 0.334676,
		-0.340966, 0.117057, 0.932759,
		28.206648, 28.136967, 33.133797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864845, 27.550653, 32.900478>,  <28.445324, 28.055025, 32.480865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864845, 27.550653, 32.900478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.545773, 27.625763, 33.129719>,  <28.354328, 27.670828, 33.267262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.545773, 27.625763, 33.129719>,  <28.864845, 27.550653, 32.900478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545773, 27.625763, 33.129719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122177, -0.980904, 0.151330,
		0.590571, 0.050694, 0.805392,
		-0.797684, 0.187772, 0.573099,
		28.306467, 27.682095, 33.301647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001055, 27.199207, 33.500828>,  <28.864845, 27.550653, 32.900478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001055, 27.199207, 33.500828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606716, 27.262608, 33.478962>,  <28.370113, 27.300648, 33.465843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606716, 27.262608, 33.478962>,  <29.001055, 27.199207, 33.500828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606716, 27.262608, 33.478962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164285, -0.978314, 0.126145,
		-0.033482, 0.133339, 0.990505,
		-0.985844, 0.158502, -0.054662,
		28.310963, 27.310158, 33.462563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813660, 26.659706, 33.813465>,  <29.001055, 27.199207, 33.500828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813660, 26.659706, 33.813465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.509825, 26.812115, 33.602619>,  <28.327524, 26.903561, 33.476112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.509825, 26.812115, 33.602619>,  <28.813660, 26.659706, 33.813465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509825, 26.812115, 33.602619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367381, -0.920118, -0.135700,
		-0.536713, 0.090577, 0.838889,
		-0.759586, 0.381024, -0.527115,
		28.281950, 26.926422, 33.444485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326851, 26.140480, 33.971588>,  <28.813660, 26.659706, 33.813465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326851, 26.140480, 33.971588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.170544, 26.343977, 33.664738>,  <28.076759, 26.466074, 33.480629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.170544, 26.343977, 33.664738>,  <28.326851, 26.140480, 33.971588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170544, 26.343977, 33.664738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417551, -0.840683, -0.344825,
		-0.820336, 0.185568, 0.540937,
		-0.390768, 0.508741, -0.767126,
		28.053312, 26.496599, 33.434601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563173, 25.974379, 33.867680>,  <28.326851, 26.140480, 33.971588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563173, 25.974379, 33.867680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.705366, 26.087990, 33.511486>,  <27.790682, 26.156157, 33.297771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.705366, 26.087990, 33.511486>,  <27.563173, 25.974379, 33.867680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705366, 26.087990, 33.511486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520068, -0.731511, -0.440932,
		-0.776635, 0.619856, -0.112326,
		0.355483, 0.284026, -0.890484,
		27.812012, 26.173197, 33.244339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019751, 25.688971, 33.378983>,  <27.563173, 25.974379, 33.867680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019751, 25.688971, 33.378983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.362885, 25.790264, 33.200100>,  <27.568764, 25.851040, 33.092770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.362885, 25.790264, 33.200100>,  <27.019751, 25.688971, 33.378983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362885, 25.790264, 33.200100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083743, -0.789671, -0.607788,
		-0.507060, 0.558832, -0.656200,
		0.857833, 0.253233, -0.447209,
		27.620234, 25.866234, 33.065937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902304, 25.656118, 32.609238>,  <27.019751, 25.688971, 33.378983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902304, 25.656118, 32.609238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300831, 25.653366, 32.643417>,  <27.539948, 25.651714, 32.663925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300831, 25.653366, 32.643417>,  <26.902304, 25.656118, 32.609238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300831, 25.653366, 32.643417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049278, -0.769652, -0.636559,
		0.070147, 0.638427, -0.766479,
		0.996319, -0.006882, 0.085449,
		27.599726, 25.651302, 32.669052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.334579, 32.788719, 45.528687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.985249, 32.593884, 45.526077>,  <38.775650, 32.476982, 45.524513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.985249, 32.593884, 45.526077>,  <39.334579, 32.788719, 45.528687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985249, 32.593884, 45.526077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023869, 0.029414, 0.999282,
		-0.486544, 0.872859, -0.037315,
		-0.873330, -0.487086, -0.006523,
		38.723251, 32.447758, 45.524120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035175, 33.048847, 46.145500>,  <39.334579, 32.788719, 45.528687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035175, 33.048847, 46.145500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.801163, 32.743061, 46.037182>,  <38.660755, 32.559589, 45.972191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.801163, 32.743061, 46.037182>,  <39.035175, 33.048847, 46.145500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801163, 32.743061, 46.037182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266429, -0.134207, 0.954465,
		-0.766000, 0.630538, -0.125161,
		-0.585029, -0.764467, -0.270796,
		38.625652, 32.513721, 45.955944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374405, 33.146919, 46.498005>,  <39.035175, 33.048847, 46.145500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374405, 33.146919, 46.498005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413994, 32.762081, 46.396362>,  <38.437748, 32.531178, 46.335377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413994, 32.762081, 46.396362>,  <38.374405, 33.146919, 46.498005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413994, 32.762081, 46.396362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429916, -0.271641, 0.861036,
		-0.897428, 0.024025, -0.440507,
		0.098974, -0.962099, -0.254107,
		38.443687, 32.473450, 46.320129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717686, 32.821449, 46.633213>,  <38.374405, 33.146919, 46.498005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717686, 32.821449, 46.633213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.976952, 32.516914, 46.626770>,  <38.132511, 32.334194, 46.622906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.976952, 32.516914, 46.626770>,  <37.717686, 32.821449, 46.633213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976952, 32.516914, 46.626770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390702, -0.350630, 0.851123,
		-0.653636, -0.545372, -0.524719,
		0.648161, -0.761333, -0.016107,
		38.171402, 32.288513, 46.621937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342171, 32.223114, 46.985218>,  <37.717686, 32.821449, 46.633213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342171, 32.223114, 46.985218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.734589, 32.146862, 46.999146>,  <37.970039, 32.101112, 47.007504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.734589, 32.146862, 46.999146>,  <37.342171, 32.223114, 46.985218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734589, 32.146862, 46.999146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099545, -0.341583, 0.934565,
		-0.166258, -0.920317, -0.354084,
		0.981044, -0.190626, 0.034822,
		38.028900, 32.089672, 47.009590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338551, 31.626198, 47.374538>,  <37.342171, 32.223114, 46.985218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338551, 31.626198, 47.374538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.717815, 31.747702, 47.411892>,  <37.945374, 31.820604, 47.434303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.717815, 31.747702, 47.411892>,  <37.338551, 31.626198, 47.374538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717815, 31.747702, 47.411892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021894, -0.230703, 0.972778,
		0.317033, -0.924395, -0.212093,
		0.948162, 0.303759, 0.093379,
		38.002266, 31.838829, 47.439907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698696, 31.056280, 47.575886>,  <37.338551, 31.626198, 47.374538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698696, 31.056280, 47.575886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.890804, 31.388186, 47.689610>,  <38.006069, 31.587328, 47.757843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.890804, 31.388186, 47.689610>,  <37.698696, 31.056280, 47.575886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890804, 31.388186, 47.689610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020411, -0.334620, 0.942132,
		0.876881, -0.446678, -0.177645,
		0.480274, 0.829763, 0.284305,
		38.034885, 31.637115, 47.774902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085350, 30.811018, 48.134388>,  <37.698696, 31.056280, 47.575886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085350, 30.811018, 48.134388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.106110, 31.209063, 48.167988>,  <38.118565, 31.447889, 48.188148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.106110, 31.209063, 48.167988>,  <38.085350, 30.811018, 48.134388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106110, 31.209063, 48.167988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118119, -0.089641, 0.988945,
		0.991642, -0.041406, -0.122194,
		0.051902, 0.995113, 0.084001,
		38.121681, 31.507597, 48.193188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640865, 30.929897, 48.612606>,  <38.085350, 30.811018, 48.134388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640865, 30.929897, 48.612606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.395012, 31.243633, 48.646160>,  <38.247501, 31.431875, 48.666290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.395012, 31.243633, 48.646160>,  <38.640865, 30.929897, 48.612606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395012, 31.243633, 48.646160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119086, -0.012856, 0.992801,
		0.779772, 0.620197, -0.085503,
		-0.614633, 0.784340, 0.083881,
		38.210621, 31.478935, 48.671326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959427, 31.469728, 49.050373>,  <38.640865, 30.929897, 48.612606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959427, 31.469728, 49.050373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.561653, 31.505775, 49.072205>,  <38.322990, 31.527403, 49.085304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.561653, 31.505775, 49.072205>,  <38.959427, 31.469728, 49.050373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561653, 31.505775, 49.072205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064095, 0.106318, 0.992264,
		0.083616, 0.990240, -0.111502,
		-0.994435, 0.090115, 0.054580,
		38.263321, 31.532810, 49.088577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982788, 31.958021, 49.475914>,  <38.959427, 31.469728, 49.050373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982788, 31.958021, 49.475914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.627239, 31.774757, 49.475742>,  <38.413910, 31.664799, 49.475639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.627239, 31.774757, 49.475742>,  <38.982788, 31.958021, 49.475914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627239, 31.774757, 49.475742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041678, 0.079923, 0.995929,
		-0.456261, 0.885269, -0.090136,
		-0.888869, -0.458160, -0.000430,
		38.360577, 31.637310, 49.475613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607922, 32.303986, 49.894485>,  <38.982788, 31.958021, 49.475914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607922, 32.303986, 49.894485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.382301, 31.973728, 49.899521>,  <38.246929, 31.775574, 49.902542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.382301, 31.973728, 49.899521>,  <38.607922, 32.303986, 49.894485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382301, 31.973728, 49.899521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024938, 0.032271, 0.999168,
		-0.825361, 0.563272, -0.038793,
		-0.564055, -0.825642, 0.012589,
		38.213085, 31.726036, 49.903297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945961, 32.408634, 50.242184>,  <38.607922, 32.303986, 49.894485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945961, 32.408634, 50.242184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.006973, 32.016487, 50.292160>,  <38.043579, 31.781199, 50.322147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.006973, 32.016487, 50.292160>,  <37.945961, 32.408634, 50.242184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006973, 32.016487, 50.292160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182357, 0.096335, 0.978502,
		-0.971330, -0.172033, -0.164083,
		0.152527, -0.980370, 0.124945,
		38.052731, 31.722376, 50.329643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433758, 32.221306, 50.629486>,  <37.945961, 32.408634, 50.242184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433758, 32.221306, 50.629486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.721642, 31.945158, 50.658894>,  <37.894371, 31.779470, 50.676537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.721642, 31.945158, 50.658894>,  <37.433758, 32.221306, 50.629486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721642, 31.945158, 50.658894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007270, 0.098389, 0.995121,
		-0.694234, -0.716736, 0.065793,
		0.719713, -0.690368, 0.073516,
		37.937557, 31.738047, 50.680950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810112, 32.464481, 50.848263>,  <37.433758, 32.221306, 50.629486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810112, 32.464481, 50.848263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.475922, 32.671997, 50.920753>,  <36.275410, 32.796505, 50.964249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.475922, 32.671997, 50.920753>,  <36.810112, 32.464481, 50.848263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475922, 32.671997, 50.920753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074289, 0.220136, -0.972636,
		-0.544486, -0.826075, -0.145378,
		-0.835473, 0.518787, 0.181230,
		36.225281, 32.827633, 50.975121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333923, 32.208115, 50.333046>,  <36.810112, 32.464481, 50.848263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333923, 32.208115, 50.333046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242027, 32.579990, 50.448208>,  <36.186890, 32.803116, 50.517307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242027, 32.579990, 50.448208>,  <36.333923, 32.208115, 50.333046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242027, 32.579990, 50.448208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054061, 0.307553, -0.949994,
		-0.971749, -0.202688, -0.120917,
		-0.229741, 0.929693, 0.287907,
		36.173103, 32.858898, 50.534580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763702, 32.397610, 49.919392>,  <36.333923, 32.208115, 50.333046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763702, 32.397610, 49.919392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897617, 32.748230, 50.057713>,  <35.977966, 32.958603, 50.140705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897617, 32.748230, 50.057713>,  <35.763702, 32.397610, 49.919392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897617, 32.748230, 50.057713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100117, 0.331809, -0.938019,
		-0.936961, 0.348656, 0.023328,
		0.334786, 0.876551, 0.345799,
		35.998055, 33.011196, 50.161453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276562, 32.967247, 49.839188>,  <35.763702, 32.397610, 49.919392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276562, 32.967247, 49.839188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649303, 33.112385, 49.839596>,  <35.872948, 33.199467, 49.839840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649303, 33.112385, 49.839596>,  <35.276562, 32.967247, 49.839188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649303, 33.112385, 49.839596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194818, 0.502695, -0.842225,
		-0.306104, 0.784630, 0.539125,
		0.931851, 0.362840, 0.001017,
		35.928860, 33.221237, 49.839901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125084, 33.676876, 49.667793>,  <35.276562, 32.967247, 49.839188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125084, 33.676876, 49.667793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514820, 33.608242, 49.609520>,  <35.748661, 33.567062, 49.574554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514820, 33.608242, 49.609520>,  <35.125084, 33.676876, 49.667793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514820, 33.608242, 49.609520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013622, 0.601093, -0.799063,
		0.224683, 0.780541, 0.583330,
		0.974337, -0.171589, -0.145688,
		35.807121, 33.556767, 49.565815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498024, 34.334206, 49.695274>,  <35.125084, 33.676876, 49.667793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498024, 34.334206, 49.695274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779217, 34.109039, 49.521404>,  <35.947933, 33.973938, 49.417084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779217, 34.109039, 49.521404>,  <35.498024, 34.334206, 49.695274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779217, 34.109039, 49.521404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058783, 0.655072, -0.753276,
		0.708773, 0.503989, 0.493595,
		0.702983, -0.562917, -0.434671,
		35.990112, 33.940163, 49.391003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068810, 34.763489, 49.348461>,  <35.498024, 34.334206, 49.695274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068810, 34.763489, 49.348461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100456, 34.411621, 49.160877>,  <36.119446, 34.200500, 49.048328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100456, 34.411621, 49.160877>,  <36.068810, 34.763489, 49.348461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100456, 34.411621, 49.160877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069170, 0.474141, -0.877728,
		0.994463, 0.037005, 0.098359,
		0.079116, -0.879671, -0.468956,
		36.124191, 34.147720, 49.020191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513859, 34.897976, 48.805889>,  <36.068810, 34.763489, 49.348461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513859, 34.897976, 48.805889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347420, 34.571247, 48.646057>,  <36.247555, 34.375210, 48.550159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347420, 34.571247, 48.646057>,  <36.513859, 34.897976, 48.805889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347420, 34.571247, 48.646057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043274, 0.421140, -0.905963,
		0.908288, -0.394264, -0.139889,
		-0.416101, -0.816821, -0.399577,
		36.222588, 34.326202, 48.526184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821781, 34.861332, 48.121273>,  <36.513859, 34.897976, 48.805889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821781, 34.861332, 48.121273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536488, 34.582779, 48.089394>,  <36.365311, 34.415646, 48.070267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536488, 34.582779, 48.089394>,  <36.821781, 34.861332, 48.121273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536488, 34.582779, 48.089394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037940, 0.075178, -0.996448,
		0.699903, -0.713720, -0.027198,
		-0.713229, -0.696385, -0.079696,
		36.322517, 34.373863, 48.065483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059208, 34.232353, 47.732796>,  <36.821781, 34.861332, 48.121273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059208, 34.232353, 47.732796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666626, 34.294998, 47.688587>,  <36.431076, 34.332584, 47.662064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666626, 34.294998, 47.688587>,  <37.059208, 34.232353, 47.732796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666626, 34.294998, 47.688587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121279, 0.060855, -0.990751,
		-0.148437, -0.985784, -0.078720,
		-0.981457, 0.156612, -0.110522,
		36.372189, 34.341980, 47.655430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854641, 33.771160, 47.181370>,  <37.059208, 34.232353, 47.732796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854641, 33.771160, 47.181370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569820, 34.051170, 47.203064>,  <36.398926, 34.219177, 47.216080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569820, 34.051170, 47.203064>,  <36.854641, 33.771160, 47.181370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569820, 34.051170, 47.203064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100678, -0.025351, -0.994596,
		-0.694868, -0.713667, 0.088529,
		-0.712055, 0.700026, 0.054235,
		36.356205, 34.261177, 47.219334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361206, 33.483475, 46.848038>,  <36.854641, 33.771160, 47.181370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361206, 33.483475, 46.848038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.253654, 33.867119, 46.812687>,  <36.189125, 34.097305, 46.791477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.253654, 33.867119, 46.812687>,  <36.361206, 33.483475, 46.848038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253654, 33.867119, 46.812687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277626, -0.165034, -0.946408,
		-0.922295, -0.229934, 0.310649,
		-0.268878, 0.959111, -0.088374,
		36.172993, 34.154854, 46.786175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780106, 33.424770, 46.478680>,  <36.361206, 33.483475, 46.848038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780106, 33.424770, 46.478680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845879, 33.818665, 46.455864>,  <35.885342, 34.055000, 46.442173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845879, 33.818665, 46.455864>,  <35.780106, 33.424770, 46.478680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845879, 33.818665, 46.455864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267996, -0.011050, -0.963356,
		-0.949284, 0.173693, 0.262089,
		0.164433, 0.984738, -0.057039,
		35.895210, 34.114086, 46.438751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212433, 33.589817, 46.015125>,  <35.780106, 33.424770, 46.478680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212433, 33.589817, 46.015125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473064, 33.893230, 46.018570>,  <35.629444, 34.075279, 46.020638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473064, 33.893230, 46.018570>,  <35.212433, 33.589817, 46.015125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473064, 33.893230, 46.018570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035908, 0.042183, -0.998464,
		-0.757733, 0.650266, 0.054722,
		0.651576, 0.758534, 0.008614,
		35.668537, 34.120792, 46.021152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551529, 33.615475, 46.155586>,  <35.212433, 33.589817, 46.015125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551529, 33.615475, 46.155586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243858, 33.382702, 46.049965>,  <34.059258, 33.243038, 45.986591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243858, 33.382702, 46.049965>,  <34.551529, 33.615475, 46.155586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243858, 33.382702, 46.049965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031170, -0.378544, 0.925058,
		-0.638279, 0.719761, 0.273027,
		-0.769174, -0.581935, -0.264051,
		34.013107, 33.208122, 45.970749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153759, 33.674770, 46.778736>,  <34.551529, 33.615475, 46.155586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153759, 33.674770, 46.778736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.984474, 33.362198, 46.595322>,  <33.882904, 33.174652, 46.485275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.984474, 33.362198, 46.595322>,  <34.153759, 33.674770, 46.778736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984474, 33.362198, 46.595322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054219, -0.483339, 0.873753,
		-0.904407, 0.394644, 0.162187,
		-0.423213, -0.781434, -0.458532,
		33.857510, 33.127769, 46.457764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536007, 33.536373, 47.057251>,  <34.153759, 33.674770, 46.778736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536007, 33.536373, 47.057251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648113, 33.175476, 46.926155>,  <33.715378, 32.958939, 46.847500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648113, 33.175476, 46.926155>,  <33.536007, 33.536373, 47.057251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648113, 33.175476, 46.926155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219887, -0.392686, 0.892999,
		-0.934398, -0.178213, -0.308448,
		0.280267, -0.902240, -0.327738,
		33.732193, 32.904804, 46.827835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010582, 33.033031, 47.310005>,  <33.536007, 33.536373, 47.057251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010582, 33.033031, 47.310005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337605, 32.819496, 47.223640>,  <33.533817, 32.691376, 47.171822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337605, 32.819496, 47.223640>,  <33.010582, 33.033031, 47.310005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337605, 32.819496, 47.223640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063283, -0.289388, 0.955118,
		-0.572366, -0.794523, -0.202806,
		0.817553, -0.533843, -0.215916,
		33.582870, 32.659344, 47.158867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851646, 32.383678, 47.596828>,  <33.010582, 33.033031, 47.310005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851646, 32.383678, 47.596828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249512, 32.376434, 47.556190>,  <33.488232, 32.372086, 47.531807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249512, 32.376434, 47.556190>,  <32.851646, 32.383678, 47.596828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249512, 32.376434, 47.556190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077185, -0.522907, 0.848888,
		-0.068503, -0.852197, -0.518717,
		0.994661, -0.018114, -0.101598,
		33.547909, 32.370998, 47.525711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100529, 31.675667, 47.860500>,  <32.851646, 32.383678, 47.596828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100529, 31.675667, 47.860500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429760, 31.902159, 47.878048>,  <33.627300, 32.038055, 47.888577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429760, 31.902159, 47.878048>,  <33.100529, 31.675667, 47.860500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429760, 31.902159, 47.878048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315242, -0.519761, 0.794022,
		0.472401, -0.639713, -0.606304,
		0.823079, 0.566230, 0.043872,
		33.676685, 32.072029, 47.891209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473999, 31.128448, 48.136040>,  <33.100529, 31.675667, 47.860500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473999, 31.128448, 48.136040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666424, 31.477306, 48.171688>,  <33.781879, 31.686621, 48.193077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666424, 31.477306, 48.171688>,  <33.473999, 31.128448, 48.136040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666424, 31.477306, 48.171688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440645, -0.328427, 0.835445,
		0.757898, -0.362631, -0.542300,
		0.481064, 0.872144, 0.089122,
		33.810741, 31.738949, 48.198425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100918, 30.662468, 47.829472>,  <33.473999, 31.128448, 48.136040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100918, 30.662468, 47.829472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974228, 30.283066, 47.827415>,  <33.898212, 30.055426, 47.826183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974228, 30.283066, 47.827415>,  <34.100918, 30.662468, 47.829472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974228, 30.283066, 47.827415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039356, 0.018557, -0.999053,
		0.947700, -0.316224, -0.043206,
		-0.316726, -0.948503, -0.005141,
		33.879211, 29.998514, 47.825874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348648, 30.327387, 47.217842>,  <34.100918, 30.662468, 47.829472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348648, 30.327387, 47.217842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043472, 30.082319, 47.300369>,  <33.860367, 29.935280, 47.349884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043472, 30.082319, 47.300369>,  <34.348648, 30.327387, 47.217842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043472, 30.082319, 47.300369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217460, -0.057325, -0.974384,
		0.608802, -0.788258, -0.089496,
		-0.762936, -0.612668, 0.206314,
		33.814590, 29.898520, 47.362263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368183, 29.898354, 46.663811>,  <34.348648, 30.327387, 47.217842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368183, 29.898354, 46.663811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.001141, 29.890312, 46.822605>,  <33.780914, 29.885489, 46.917881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.001141, 29.890312, 46.822605>,  <34.368183, 29.898354, 46.663811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001141, 29.890312, 46.822605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396424, 0.119584, -0.910246,
		-0.029177, -0.992620, -0.117699,
		-0.917604, -0.020100, 0.396988,
		33.725861, 29.884281, 46.941700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044945, 29.431318, 46.327950>,  <34.368183, 29.898354, 46.663811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044945, 29.431318, 46.327950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734886, 29.633566, 46.479477>,  <33.548851, 29.754913, 46.570393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734886, 29.633566, 46.479477>,  <34.044945, 29.431318, 46.327950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734886, 29.633566, 46.479477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342274, 0.167914, -0.924475,
		-0.531040, -0.846260, 0.042902,
		-0.775142, 0.505617, 0.378822,
		33.502342, 29.785252, 46.593124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365906, 29.283854, 46.042809>,  <34.044945, 29.431318, 46.327950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365906, 29.283854, 46.042809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.302925, 29.647034, 46.198162>,  <33.265137, 29.864941, 46.291374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.302925, 29.647034, 46.198162>,  <33.365906, 29.283854, 46.042809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302925, 29.647034, 46.198162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470722, 0.276728, -0.837761,
		-0.868119, -0.314723, 0.383821,
		-0.157448, 0.907949, 0.388380,
		33.255692, 29.919418, 46.314674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570843, 29.461069, 45.999611>,  <33.365906, 29.283854, 46.042809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570843, 29.461069, 45.999611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712563, 29.831585, 46.050934>,  <32.797592, 30.053894, 46.081730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712563, 29.831585, 46.050934>,  <32.570843, 29.461069, 45.999611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712563, 29.831585, 46.050934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554858, 0.318681, -0.768489,
		-0.752733, 0.201079, 0.626866,
		0.354297, 0.926288, 0.128311,
		32.818851, 30.109472, 46.089428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018742, 30.014122, 45.797260>,  <32.570843, 29.461069, 45.999611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018742, 30.014122, 45.797260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.385506, 30.170490, 45.765125>,  <32.605564, 30.264311, 45.745846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.385506, 30.170490, 45.765125>,  <32.018742, 30.014122, 45.797260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385506, 30.170490, 45.765125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173107, 0.208193, -0.962647,
		-0.359590, 0.896570, 0.258565,
		0.916913, 0.390918, -0.080338,
		32.660580, 30.287766, 45.741024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.594757, 28.210001, 49.407196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.566422, 28.608938, 49.400436>,  <37.549419, 28.848301, 49.396381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.566422, 28.608938, 49.400436>,  <37.594757, 28.210001, 49.407196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566422, 28.608938, 49.400436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029455, -0.019022, -0.999385,
		-0.997053, -0.070298, 0.030724,
		-0.070839, 0.997345, -0.016896,
		37.545170, 28.908142, 49.395367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981819, 28.370312, 49.029354>,  <37.594757, 28.210001, 49.407196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981819, 28.370312, 49.029354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.248024, 28.668722, 49.020046>,  <37.407745, 28.847769, 49.014462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.248024, 28.668722, 49.020046>,  <36.981819, 28.370312, 49.029354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248024, 28.668722, 49.020046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077041, -0.099675, -0.992033,
		-0.742401, 0.658416, -0.123809,
		0.665511, 0.746025, -0.023273,
		37.447678, 28.892530, 49.013065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748798, 28.832861, 48.558266>,  <36.981819, 28.370312, 49.029354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748798, 28.832861, 48.558266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.133183, 28.942139, 48.575794>,  <37.363811, 29.007706, 48.586311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.133183, 28.942139, 48.575794>,  <36.748798, 28.832861, 48.558266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133183, 28.942139, 48.575794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039959, 0.019703, -0.999007,
		-0.273785, 0.961757, 0.008017,
		0.960960, 0.273192, 0.043825,
		37.421471, 29.024096, 48.588943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802032, 29.333830, 48.005871>,  <36.748798, 28.832861, 48.558266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802032, 29.333830, 48.005871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.167583, 29.190283, 48.081806>,  <37.386913, 29.104155, 48.127365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.167583, 29.190283, 48.081806>,  <36.802032, 29.333830, 48.005871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167583, 29.190283, 48.081806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142311, -0.154756, -0.977649,
		0.380227, 0.920469, -0.090358,
		0.913879, -0.358870, 0.189835,
		37.441746, 29.082623, 48.138756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107803, 29.570297, 47.400566>,  <36.802032, 29.333830, 48.005871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107803, 29.570297, 47.400566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.343010, 29.306078, 47.587292>,  <37.484135, 29.147547, 47.699329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.343010, 29.306078, 47.587292>,  <37.107803, 29.570297, 47.400566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343010, 29.306078, 47.587292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389767, -0.274309, -0.879111,
		0.708745, 0.698880, 0.096161,
		0.588015, -0.660546, 0.466816,
		37.519413, 29.107914, 47.727337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746891, 29.771492, 47.183743>,  <37.107803, 29.570297, 47.400566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746891, 29.771492, 47.183743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.729443, 29.392359, 47.310051>,  <37.718975, 29.164879, 47.385834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.729443, 29.392359, 47.310051>,  <37.746891, 29.771492, 47.183743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729443, 29.392359, 47.310051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162873, -0.318587, -0.933796,
		0.985682, 0.010698, 0.168273,
		-0.043619, -0.947833, 0.315768,
		37.716358, 29.108009, 47.404781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370724, 29.435123, 46.985390>,  <37.746891, 29.771492, 47.183743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370724, 29.435123, 46.985390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.133602, 29.117830, 47.041058>,  <37.991329, 28.927454, 47.074459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.133602, 29.117830, 47.041058>,  <38.370724, 29.435123, 46.985390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133602, 29.117830, 47.041058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162069, -0.286769, -0.944191,
		0.788872, -0.537164, 0.298556,
		-0.592803, -0.793233, 0.139167,
		37.955761, 28.879860, 47.082809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679790, 28.821859, 46.694942>,  <38.370724, 29.435123, 46.985390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679790, 28.821859, 46.694942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.299175, 28.700180, 46.676876>,  <38.070805, 28.627172, 46.666035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.299175, 28.700180, 46.676876>,  <38.679790, 28.821859, 46.694942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299175, 28.700180, 46.676876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124345, -0.246236, -0.961200,
		0.281275, -0.920234, 0.272128,
		-0.951537, -0.304200, -0.045167,
		38.013714, 28.608921, 46.663326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715664, 28.352133, 46.176479>,  <38.679790, 28.821859, 46.694942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715664, 28.352133, 46.176479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.319977, 28.404531, 46.202667>,  <38.082565, 28.435970, 46.218380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.319977, 28.404531, 46.202667>,  <38.715664, 28.352133, 46.176479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319977, 28.404531, 46.202667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101069, -0.287206, -0.952522,
		-0.105972, -0.948869, 0.297350,
		-0.989220, 0.130994, 0.065466,
		38.023212, 28.443830, 46.222305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396572, 27.710855, 45.890354>,  <38.715664, 28.352133, 46.176479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396572, 27.710855, 45.890354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.117077, 27.995708, 45.863106>,  <37.949379, 28.166620, 45.846756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.117077, 27.995708, 45.863106>,  <38.396572, 27.710855, 45.890354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117077, 27.995708, 45.863106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148442, -0.237476, -0.959984,
		-0.699810, -0.660663, 0.271643,
		-0.698735, 0.712130, -0.068118,
		37.907455, 28.209347, 45.842670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912422, 27.378719, 45.382515>,  <38.396572, 27.710855, 45.890354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912422, 27.378719, 45.382515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.889015, 27.778025, 45.385330>,  <37.874969, 28.017607, 45.387020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.889015, 27.778025, 45.385330>,  <37.912422, 27.378719, 45.382515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889015, 27.778025, 45.385330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216955, -0.005835, -0.976164,
		-0.974426, -0.058648, 0.216919,
		-0.058516, 0.998262, 0.007038,
		37.871460, 28.077503, 45.387444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383995, 27.476772, 44.979935>,  <37.912422, 27.378719, 45.382515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383995, 27.476772, 44.979935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.537418, 27.845846, 44.964260>,  <37.629475, 28.067289, 44.954857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.537418, 27.845846, 44.964260>,  <37.383995, 27.476772, 44.979935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537418, 27.845846, 44.964260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192178, 0.038245, -0.980615,
		-0.903298, 0.383656, 0.191989,
		0.383561, 0.922684, -0.039184,
		37.652489, 28.122652, 44.952503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610268, 27.556374, 45.043938>,  <37.383995, 27.476772, 44.979935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610268, 27.556374, 45.043938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.263996, 27.367857, 44.976421>,  <36.056232, 27.254747, 44.935913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.263996, 27.367857, 44.976421>,  <36.610268, 27.556374, 45.043938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263996, 27.367857, 44.976421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092136, -0.181411, 0.979082,
		-0.492055, 0.863118, 0.113620,
		-0.865675, -0.471294, -0.168788,
		36.004295, 27.226469, 44.925785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142979, 27.913898, 45.475605>,  <36.610268, 27.556374, 45.043938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142979, 27.913898, 45.475605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.922665, 27.587837, 45.403866>,  <35.790478, 27.392200, 45.360825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.922665, 27.587837, 45.403866>,  <36.142979, 27.913898, 45.475605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922665, 27.587837, 45.403866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181691, -0.092623, 0.978984,
		-0.814631, 0.571795, -0.097090,
		-0.550785, -0.815151, -0.179344,
		35.757431, 27.343292, 45.350063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538628, 27.943514, 45.925617>,  <36.142979, 27.913898, 45.475605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538628, 27.943514, 45.925617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.591999, 27.552969, 45.857601>,  <35.624023, 27.318642, 45.816792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.591999, 27.552969, 45.857601>,  <35.538628, 27.943514, 45.925617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591999, 27.552969, 45.857601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245779, -0.198815, 0.948717,
		-0.960099, -0.084792, -0.266497,
		0.133427, -0.976362, -0.170042,
		35.632027, 27.260061, 45.806587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996555, 27.568718, 46.338276>,  <35.538628, 27.943514, 45.925617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996555, 27.568718, 46.338276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.295189, 27.317232, 46.251259>,  <35.474369, 27.166340, 46.199051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.295189, 27.317232, 46.251259>,  <34.996555, 27.568718, 46.338276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295189, 27.317232, 46.251259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029633, -0.358087, 0.933218,
		-0.664629, -0.690281, -0.285973,
		0.746586, -0.628718, -0.217540,
		35.519165, 27.128616, 46.185997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738670, 26.882191, 46.458736>,  <34.996555, 27.568718, 46.338276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738670, 26.882191, 46.458736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.136044, 26.852913, 46.493927>,  <35.374466, 26.835346, 46.515041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.136044, 26.852913, 46.493927>,  <34.738670, 26.882191, 46.458736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136044, 26.852913, 46.493927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109704, -0.390176, 0.914182,
		-0.032589, -0.917827, -0.395642,
		0.993430, -0.073196, 0.087974,
		35.434074, 26.830954, 46.520317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856339, 26.292351, 46.827019>,  <34.738670, 26.882191, 46.458736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856339, 26.292351, 46.827019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.207764, 26.482393, 46.846588>,  <35.418621, 26.596418, 46.858330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.207764, 26.482393, 46.846588>,  <34.856339, 26.292351, 46.827019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207764, 26.482393, 46.846588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091712, -0.268336, 0.958950,
		0.468731, -0.838015, -0.279324,
		0.878567, 0.475107, 0.048922,
		35.471333, 26.624926, 46.861263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299614, 25.791679, 47.178471>,  <34.856339, 26.292351, 46.827019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299614, 25.791679, 47.178471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.475853, 26.145290, 47.240913>,  <35.581596, 26.357456, 47.278381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.475853, 26.145290, 47.240913>,  <35.299614, 25.791679, 47.178471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475853, 26.145290, 47.240913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275100, -0.298494, 0.913905,
		0.854514, -0.359719, -0.374711,
		0.440598, 0.884027, 0.156109,
		35.608032, 26.410498, 47.287746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895222, 25.654875, 47.519318>,  <35.299614, 25.791679, 47.178471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895222, 25.654875, 47.519318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.828571, 26.044926, 47.577782>,  <35.788582, 26.278955, 47.612862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.828571, 26.044926, 47.577782>,  <35.895222, 25.654875, 47.519318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828571, 26.044926, 47.577782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292644, -0.092648, 0.951723,
		0.941592, 0.201353, -0.269928,
		-0.166624, 0.975127, 0.146161,
		35.778584, 26.337463, 47.621632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393047, 25.868998, 48.003582>,  <35.895222, 25.654875, 47.519318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393047, 25.868998, 48.003582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.084267, 26.121256, 48.035515>,  <35.898998, 26.272610, 48.054676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.084267, 26.121256, 48.035515>,  <36.393047, 25.868998, 48.003582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084267, 26.121256, 48.035515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030737, -0.088408, 0.995610,
		0.634933, 0.771021, 0.048863,
		-0.771956, 0.630643, 0.079832,
		35.852680, 26.310450, 48.059464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507092, 26.184235, 48.640232>,  <36.393047, 25.868998, 48.003582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507092, 26.184235, 48.640232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.130367, 26.302397, 48.576073>,  <35.904331, 26.373295, 48.537579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.130367, 26.302397, 48.576073>,  <36.507092, 26.184235, 48.640232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130367, 26.302397, 48.576073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173931, -0.019941, 0.984556,
		0.287646, 0.955163, 0.070161,
		-0.941811, 0.295407, -0.160397,
		35.847824, 26.391018, 48.527954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482563, 26.829262, 48.947834>,  <36.507092, 26.184235, 48.640232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482563, 26.829262, 48.947834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.108040, 26.694817, 48.907150>,  <35.883324, 26.614149, 48.882740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.108040, 26.694817, 48.907150>,  <36.482563, 26.829262, 48.947834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108040, 26.694817, 48.907150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175296, 0.196377, 0.964732,
		-0.304286, 0.921121, -0.242790,
		-0.936313, -0.336115, -0.101714,
		35.827145, 26.593983, 48.876637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992538, 27.307314, 49.221203>,  <36.482563, 26.829262, 48.947834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992538, 27.307314, 49.221203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.795288, 26.959724, 49.237759>,  <35.676937, 26.751171, 49.247692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.795288, 26.959724, 49.237759>,  <35.992538, 27.307314, 49.221203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795288, 26.959724, 49.237759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126650, 0.118776, 0.984811,
		-0.860692, 0.480390, -0.168627,
		-0.493122, -0.868975, 0.041388,
		35.647350, 26.699032, 49.250175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353180, 27.540707, 49.686092>,  <35.992538, 27.307314, 49.221203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353180, 27.540707, 49.686092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.436691, 27.149828, 49.670601>,  <35.486797, 26.915300, 49.661308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.436691, 27.149828, 49.670601>,  <35.353180, 27.540707, 49.686092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436691, 27.149828, 49.670601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277593, -0.097183, 0.955771,
		-0.937739, -0.188793, -0.291552,
		0.208777, -0.977196, -0.038725,
		35.499325, 26.856668, 49.658985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812340, 27.194485, 50.029457>,  <35.353180, 27.540707, 49.686092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812340, 27.194485, 50.029457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.104771, 26.921619, 50.023979>,  <35.280228, 26.757900, 50.020695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.104771, 26.921619, 50.023979>,  <34.812340, 27.194485, 50.029457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104771, 26.921619, 50.023979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320481, -0.361038, 0.875753,
		-0.602350, -0.635851, -0.482565,
		0.731072, -0.682162, -0.013693,
		35.324093, 26.716970, 50.019871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567558, 27.965014, 49.726910>,  <34.812340, 27.194485, 50.029457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567558, 27.965014, 49.726910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395432, 28.208496, 49.993534>,  <34.292156, 28.354586, 50.153507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395432, 28.208496, 49.993534>,  <34.567558, 27.965014, 49.726910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395432, 28.208496, 49.993534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584361, 0.374964, -0.719669,
		-0.688004, -0.699199, 0.194350,
		-0.430317, 0.608706, 0.666562,
		34.266335, 28.391108, 50.193504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789505, 27.866491, 49.688629>,  <34.567558, 27.965014, 49.726910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789505, 27.866491, 49.688629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.913822, 28.224672, 49.816113>,  <33.988411, 28.439581, 49.892601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.913822, 28.224672, 49.816113>,  <33.789505, 27.866491, 49.688629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913822, 28.224672, 49.816113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559080, 0.443398, -0.700591,
		-0.768660, 0.039553, 0.638433,
		0.310790, 0.895452, 0.318709,
		34.007061, 28.493307, 49.911724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331120, 28.243734, 49.454182>,  <33.789505, 27.866491, 49.688629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331120, 28.243734, 49.454182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.601326, 28.530127, 49.524658>,  <33.763451, 28.701962, 49.566944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.601326, 28.530127, 49.524658>,  <33.331120, 28.243734, 49.454182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601326, 28.530127, 49.524658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276894, 0.467794, -0.839344,
		-0.683376, 0.518207, 0.514256,
		0.675520, 0.715982, 0.176191,
		33.803982, 28.744921, 49.577515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011845, 28.880695, 49.378822>,  <33.331120, 28.243734, 49.454182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011845, 28.880695, 49.378822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.402367, 28.961205, 49.347038>,  <33.636681, 29.009510, 49.327969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.402367, 28.961205, 49.347038>,  <33.011845, 28.880695, 49.378822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402367, 28.961205, 49.347038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182531, 0.568783, -0.801978,
		-0.116222, 0.797480, 0.592045,
		0.976307, 0.201274, -0.079460,
		33.695259, 29.021587, 49.323200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126999, 29.576172, 49.310799>,  <33.011845, 28.880695, 49.378822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126999, 29.576172, 49.310799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.474983, 29.458700, 49.152344>,  <33.683773, 29.388218, 49.057270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.474983, 29.458700, 49.152344>,  <33.126999, 29.576172, 49.310799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474983, 29.458700, 49.152344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103292, 0.676976, -0.728721,
		0.482183, 0.674876, 0.558607,
		0.869960, -0.293677, -0.396135,
		33.735970, 29.370598, 49.033504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419056, 30.195320, 49.062584>,  <33.126999, 29.576172, 49.310799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419056, 30.195320, 49.062584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.617783, 29.893633, 48.890846>,  <33.737019, 29.712622, 48.787804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.617783, 29.893633, 48.890846>,  <33.419056, 30.195320, 49.062584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617783, 29.893633, 48.890846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165294, 0.403427, -0.899958,
		0.851972, 0.518078, 0.075760,
		0.496812, -0.754216, -0.429344,
		33.766827, 29.667368, 48.762043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828640, 30.554192, 48.605095>,  <33.419056, 30.195320, 49.062584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828640, 30.554192, 48.605095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.849682, 30.182791, 48.458061>,  <33.862305, 29.959951, 48.369839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.849682, 30.182791, 48.458061>,  <33.828640, 30.554192, 48.605095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849682, 30.182791, 48.458061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139451, 0.357660, -0.923381,
		0.988831, 0.099833, -0.110666,
		0.052603, -0.928500, -0.367587,
		33.865463, 29.904240, 48.347786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330635, 31.052160, 48.403290>,  <33.828640, 30.554192, 48.605095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330635, 31.052160, 48.403290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.260223, 31.437250, 48.485439>,  <34.217976, 31.668304, 48.534729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.260223, 31.437250, 48.485439>,  <34.330635, 31.052160, 48.403290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260223, 31.437250, 48.485439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277860, -0.151550, 0.948592,
		0.944355, 0.224048, -0.240824,
		-0.176033, 0.962723, 0.205370,
		34.207413, 31.726067, 48.547050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969379, 31.437370, 48.669350>,  <34.330635, 31.052160, 48.403290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969379, 31.437370, 48.669350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.611839, 31.570120, 48.789940>,  <34.397316, 31.649769, 48.862293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.611839, 31.570120, 48.789940>,  <34.969379, 31.437370, 48.669350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611839, 31.570120, 48.789940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257232, -0.171148, 0.951073,
		0.367232, 0.927669, 0.067613,
		-0.893852, 0.331872, 0.301477,
		34.343685, 31.669682, 48.880383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116116, 31.826954, 49.222042>,  <34.969379, 31.437370, 48.669350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116116, 31.826954, 49.222042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.719059, 31.792120, 49.255695>,  <34.480824, 31.771219, 49.275887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.719059, 31.792120, 49.255695>,  <35.116116, 31.826954, 49.222042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719059, 31.792120, 49.255695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072348, 0.130654, 0.988785,
		-0.097102, 0.987596, -0.123392,
		-0.992641, -0.087085, 0.084138,
		34.421265, 31.765995, 49.280937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717003, 32.397984, 49.658726>,  <35.116116, 31.826954, 49.222042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717003, 32.397984, 49.658726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.484398, 32.072567, 49.657978>,  <34.344837, 31.877317, 49.657528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.484398, 32.072567, 49.657978>,  <34.717003, 32.397984, 49.658726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484398, 32.072567, 49.657978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007926, -0.007968, 0.999937,
		-0.813502, 0.581457, 0.011082,
		-0.581508, -0.813538, -0.001874,
		34.309944, 31.828505, 49.657417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280388, 32.513119, 50.273552>,  <34.717003, 32.397984, 49.658726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280388, 32.513119, 50.273552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.239960, 32.125122, 50.185097>,  <34.215702, 31.892324, 50.132023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.239960, 32.125122, 50.185097>,  <34.280388, 32.513119, 50.273552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239960, 32.125122, 50.185097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211318, -0.238138, 0.947964,
		-0.972178, 0.049078, 0.229045,
		-0.101068, -0.969991, -0.221141,
		34.209641, 31.834126, 50.118755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063011, 32.327709, 50.832653>,  <34.280388, 32.513119, 50.273552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063011, 32.327709, 50.832653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.156593, 31.980640, 50.657192>,  <34.212742, 31.772400, 50.551918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.156593, 31.980640, 50.657192>,  <34.063011, 32.327709, 50.832653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156593, 31.980640, 50.657192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152410, -0.412862, 0.897951,
		-0.960227, -0.276934, 0.035651,
		0.233954, -0.867671, -0.438648,
		34.226780, 31.720339, 50.525597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496861, 31.770712, 51.016273>,  <34.063011, 32.327709, 50.832653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496861, 31.770712, 51.016273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.866772, 31.647594, 50.926792>,  <34.088718, 31.573723, 50.873104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.866772, 31.647594, 50.926792>,  <33.496861, 31.770712, 51.016273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866772, 31.647594, 50.926792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086222, -0.403115, 0.911078,
		-0.370599, -0.861837, -0.346256,
		0.924782, -0.307790, -0.223703,
		34.144207, 31.555256, 50.859680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476925, 31.066357, 51.344830>,  <33.496861, 31.770712, 51.016273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476925, 31.066357, 51.344830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.854206, 31.123577, 51.224895>,  <34.080574, 31.157909, 51.152935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.854206, 31.123577, 51.224895>,  <33.476925, 31.066357, 51.344830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854206, 31.123577, 51.224895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331884, -0.365601, 0.869592,
		0.014776, -0.919713, -0.392312,
		0.943204, 0.143051, -0.299836,
		34.137169, 31.166492, 51.134945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876862, 30.503090, 51.564999>,  <33.476925, 31.066357, 51.344830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876862, 30.503090, 51.564999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.169357, 30.770250, 51.509567>,  <34.344852, 30.930546, 51.476311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.169357, 30.770250, 51.509567>,  <33.876862, 30.503090, 51.564999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169357, 30.770250, 51.509567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410976, -0.269235, 0.870983,
		0.544421, -0.693844, -0.471365,
		0.731235, 0.667902, -0.138576,
		34.388729, 30.970621, 51.467995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.018650, 33.533215, 35.463310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183216, 33.884907, 35.559395>,  <34.281956, 34.095921, 35.617046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183216, 33.884907, 35.559395>,  <34.018650, 33.533215, 35.463310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183216, 33.884907, 35.559395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119766, -0.209110, 0.970530,
		0.903547, -0.428055, 0.019271,
		0.411411, 0.879228, 0.240207,
		34.306641, 34.148674, 35.631458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410725, 33.412560, 35.970421>,  <34.018650, 33.533215, 35.463310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410725, 33.412560, 35.970421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365044, 33.805721, 36.028194>,  <34.337635, 34.041618, 36.062859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365044, 33.805721, 36.028194>,  <34.410725, 33.412560, 35.970421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365044, 33.805721, 36.028194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138346, -0.159706, 0.977422,
		0.983778, 0.091639, 0.154219,
		-0.114199, 0.982902, 0.144438,
		34.330784, 34.100594, 36.071526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749569, 33.526970, 36.558266>,  <34.410725, 33.412560, 35.970421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749569, 33.526970, 36.558266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511860, 33.848663, 36.555408>,  <34.369236, 34.041679, 36.553696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511860, 33.848663, 36.555408>,  <34.749569, 33.526970, 36.558266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511860, 33.848663, 36.555408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145675, -0.098901, 0.984377,
		0.790962, 0.586027, 0.175930,
		-0.594271, 0.804233, -0.007143,
		34.333580, 34.089931, 36.553265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988018, 34.012352, 37.104710>,  <34.749569, 33.526970, 36.558266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988018, 34.012352, 37.104710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604546, 34.103233, 37.036236>,  <34.374462, 34.157764, 36.995152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604546, 34.103233, 37.036236>,  <34.988018, 34.012352, 37.104710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604546, 34.103233, 37.036236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140683, 0.144348, 0.979475,
		0.247252, 0.963089, -0.106421,
		-0.958684, 0.227205, -0.171181,
		34.316940, 34.171394, 36.984882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830727, 34.602116, 37.475643>,  <34.988018, 34.012352, 37.104710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830727, 34.602116, 37.475643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463135, 34.451622, 37.428440>,  <34.242580, 34.361324, 37.400120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463135, 34.451622, 37.428440>,  <34.830727, 34.602116, 37.475643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463135, 34.451622, 37.428440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183705, 0.143704, 0.972421,
		-0.348904, 0.915311, -0.201178,
		-0.918977, -0.376239, -0.118008,
		34.187443, 34.338749, 37.393036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446609, 35.076466, 37.863811>,  <34.830727, 34.602116, 37.475643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446609, 35.076466, 37.863811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163254, 34.800179, 37.805717>,  <33.993240, 34.634407, 37.770863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163254, 34.800179, 37.805717>,  <34.446609, 35.076466, 37.863811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163254, 34.800179, 37.805717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458788, 0.294233, 0.838415,
		-0.536379, 0.660553, -0.525326,
		-0.708387, -0.690721, -0.145233,
		33.950737, 34.592960, 37.762146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754482, 35.405605, 37.947033>,  <34.446609, 35.076466, 37.863811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754482, 35.405605, 37.947033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678497, 35.015736, 37.994236>,  <33.632904, 34.781815, 38.022560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678497, 35.015736, 37.994236>,  <33.754482, 35.405605, 37.947033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678497, 35.015736, 37.994236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496374, 0.199054, 0.844979,
		-0.847069, 0.101940, -0.521616,
		-0.189967, -0.974672, 0.118012,
		33.621506, 34.723335, 38.029640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232876, 35.345539, 38.485882>,  <33.754482, 35.405605, 37.947033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232876, 35.345539, 38.485882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332565, 34.958195, 38.490921>,  <33.392380, 34.725788, 38.493942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332565, 34.958195, 38.490921>,  <33.232876, 35.345539, 38.485882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332565, 34.958195, 38.490921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398067, -0.090575, 0.912874,
		-0.882854, -0.232521, -0.408048,
		0.249222, -0.968365, 0.012594,
		33.407333, 34.667686, 38.494698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518520, 34.944992, 38.639145>,  <33.232876, 35.345539, 38.485882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518520, 34.944992, 38.639145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848396, 34.751675, 38.756664>,  <33.046322, 34.635685, 38.827175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848396, 34.751675, 38.756664>,  <32.518520, 34.944992, 38.639145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848396, 34.751675, 38.756664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350709, -0.029431, 0.936022,
		-0.443730, -0.874962, -0.193768,
		0.824686, -0.483296, 0.293797,
		33.095802, 34.606686, 38.844803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189518, 34.459888, 39.084213>,  <32.518520, 34.944992, 38.639145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189518, 34.459888, 39.084213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578979, 34.419930, 39.166203>,  <32.812656, 34.395954, 39.215397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578979, 34.419930, 39.166203>,  <32.189518, 34.459888, 39.084213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578979, 34.419930, 39.166203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227902, -0.398052, 0.888603,
		-0.007178, -0.911907, -0.410333,
		0.973658, -0.099894, 0.204969,
		32.871078, 34.389961, 39.227692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337456, 33.789719, 39.448116>,  <32.189518, 34.459888, 39.084213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337456, 33.789719, 39.448116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614861, 34.054863, 39.561008>,  <32.781303, 34.213951, 39.628746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614861, 34.054863, 39.561008>,  <32.337456, 33.789719, 39.448116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614861, 34.054863, 39.561008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040000, -0.355716, 0.933738,
		0.719336, -0.658846, -0.220178,
		0.693510, 0.662864, 0.282233,
		32.822914, 34.253723, 39.645679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707836, 33.428669, 39.972469>,  <32.337456, 33.789719, 39.448116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707836, 33.428669, 39.972469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801701, 33.813389, 40.028877>,  <32.858017, 34.044220, 40.062721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801701, 33.813389, 40.028877>,  <32.707836, 33.428669, 39.972469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801701, 33.813389, 40.028877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071504, -0.127599, 0.989245,
		0.969445, -0.242216, 0.038830,
		0.234656, 0.961795, 0.141020,
		32.872097, 34.101929, 40.071182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001583, 32.720177, 40.245167>,  <32.707836, 33.428669, 39.972469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001583, 32.720177, 40.245167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707859, 32.452591, 40.199074>,  <32.531624, 32.292042, 40.171417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707859, 32.452591, 40.199074>,  <33.001583, 32.720177, 40.245167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707859, 32.452591, 40.199074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192029, 0.367535, -0.909969,
		0.651084, -0.646073, -0.398345,
		-0.734312, -0.668960, -0.115231,
		32.487564, 32.251904, 40.164505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093609, 32.384777, 39.520283>,  <33.001583, 32.720177, 40.245167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093609, 32.384777, 39.520283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721985, 32.331924, 39.658497>,  <32.499012, 32.300213, 39.741425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721985, 32.331924, 39.658497>,  <33.093609, 32.384777, 39.520283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721985, 32.331924, 39.658497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365637, 0.186014, -0.911980,
		0.056230, -0.973622, -0.221131,
		-0.929057, -0.132135, 0.345533,
		32.443268, 32.292282, 39.762157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827820, 31.944672, 39.118427>,  <33.093609, 32.384777, 39.520283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827820, 31.944672, 39.118427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512016, 32.144108, 39.261585>,  <32.322536, 32.263771, 39.347481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512016, 32.144108, 39.261585>,  <32.827820, 31.944672, 39.118427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512016, 32.144108, 39.261585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344065, 0.123323, -0.930812,
		-0.508232, -0.858019, 0.074184,
		-0.789506, 0.498593, 0.357891,
		32.275166, 32.293686, 39.368954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152180, 31.655277, 38.786903>,  <32.827820, 31.944672, 39.118427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152180, 31.655277, 38.786903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039402, 32.015881, 38.918232>,  <31.971737, 32.232243, 38.997028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039402, 32.015881, 38.918232>,  <32.152180, 31.655277, 38.786903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039402, 32.015881, 38.918232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617653, 0.091318, -0.781132,
		-0.734177, -0.423022, 0.531072,
		-0.281939, 0.901506, 0.328324,
		31.954821, 32.286331, 39.016727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497547, 31.642492, 38.657017>,  <32.152180, 31.655277, 38.786903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497547, 31.642492, 38.657017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594933, 32.026905, 38.709389>,  <31.653364, 32.257553, 38.740810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594933, 32.026905, 38.709389>,  <31.497547, 31.642492, 38.657017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594933, 32.026905, 38.709389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543008, 0.246911, -0.802606,
		-0.803658, 0.124311, 0.581963,
		0.243466, 0.961032, 0.130930,
		31.667973, 32.315216, 38.748669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867319, 32.031990, 38.611542>,  <31.497547, 31.642492, 38.657017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867319, 32.031990, 38.611542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160080, 32.296078, 38.544102>,  <31.335737, 32.454529, 38.503635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160080, 32.296078, 38.544102>,  <30.867319, 32.031990, 38.611542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160080, 32.296078, 38.544102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498694, 0.350376, -0.792806,
		-0.464351, 0.664340, 0.585688,
		0.731903, 0.660219, -0.168605,
		31.379650, 32.494144, 38.493519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531500, 32.648388, 38.358383>,  <30.867319, 32.031990, 38.611542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531500, 32.648388, 38.358383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908916, 32.699043, 38.235947>,  <31.135366, 32.729439, 38.162487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908916, 32.699043, 38.235947>,  <30.531500, 32.648388, 38.358383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908916, 32.699043, 38.235947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328464, 0.477336, -0.815023,
		0.042892, 0.869547, 0.491983,
		0.943542, 0.126640, -0.306089,
		31.191978, 32.737034, 38.144119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583946, 33.298885, 37.951756>,  <30.531500, 32.648388, 38.358383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583946, 33.298885, 37.951756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898045, 33.084343, 37.828011>,  <31.086504, 32.955616, 37.753765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898045, 33.084343, 37.828011>,  <30.583946, 33.298885, 37.951756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898045, 33.084343, 37.828011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072288, 0.416799, -0.906120,
		0.614948, 0.733891, 0.288518,
		0.785248, -0.536360, -0.309361,
		31.133619, 32.923435, 37.735203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012430, 33.747738, 37.561947>,  <30.583946, 33.298885, 37.951756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012430, 33.747738, 37.561947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133703, 33.387241, 37.438114>,  <31.206467, 33.170944, 37.363815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133703, 33.387241, 37.438114>,  <31.012430, 33.747738, 37.561947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133703, 33.387241, 37.438114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071191, 0.302545, -0.950472,
		0.950269, 0.310209, 0.027567,
		0.303185, -0.901242, -0.309584,
		31.224659, 33.116867, 37.345238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358324, 33.916553, 36.886185>,  <31.012430, 33.747738, 37.561947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358324, 33.916553, 36.886185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290092, 33.522644, 36.872791>,  <31.249153, 33.286297, 36.864754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290092, 33.522644, 36.872791>,  <31.358324, 33.916553, 36.886185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290092, 33.522644, 36.872791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038765, 0.040666, -0.998420,
		0.984581, -0.169009, -0.045112,
		-0.170577, -0.984775, -0.033487,
		31.238920, 33.227211, 36.862743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866949, 33.692715, 36.415142>,  <31.358324, 33.916553, 36.886185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866949, 33.692715, 36.415142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579899, 33.414146, 36.416523>,  <31.407669, 33.247005, 36.417351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579899, 33.414146, 36.416523>,  <31.866949, 33.692715, 36.415142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579899, 33.414146, 36.416523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057715, -0.064412, -0.996253,
		0.694035, -0.714736, 0.086418,
		-0.717624, -0.696422, 0.003454,
		31.364613, 33.205219, 36.417561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136581, 33.222813, 35.983204>,  <31.866949, 33.692715, 36.415142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136581, 33.222813, 35.983204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751925, 33.113338, 35.990673>,  <31.521132, 33.047653, 35.995155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751925, 33.113338, 35.990673>,  <32.136581, 33.222813, 35.983204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751925, 33.113338, 35.990673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031411, -0.177494, -0.983620,
		0.272515, -0.945301, 0.179282,
		-0.961639, -0.273683, 0.018677,
		31.463432, 33.031235, 35.996277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127327, 32.524891, 35.728924>,  <32.136581, 33.222813, 35.983204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127327, 32.524891, 35.728924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767523, 32.674904, 35.639275>,  <31.551640, 32.764912, 35.585487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767523, 32.674904, 35.639275>,  <32.127327, 32.524891, 35.728924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767523, 32.674904, 35.639275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032838, -0.453494, -0.890654,
		-0.435648, -0.808519, 0.395611,
		-0.899518, 0.375020, -0.224114,
		31.497669, 32.787415, 35.572041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328629, 31.859985, 36.078598>,  <32.127327, 32.524891, 35.728924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328629, 31.859985, 36.078598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481869, 31.789621, 35.715878>,  <32.573814, 31.747402, 35.498245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481869, 31.789621, 35.715878>,  <32.328629, 31.859985, 36.078598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481869, 31.789621, 35.715878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777413, -0.468775, 0.419379,
		-0.498859, -0.865624, -0.042833,
		0.383104, -0.175911, -0.906800,
		32.596798, 31.736847, 35.443836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097458, 31.201427, 35.865551>,  <32.328629, 31.859985, 36.078598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097458, 31.201427, 35.865551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444042, 31.377989, 35.772243>,  <32.651993, 31.483925, 35.716259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444042, 31.377989, 35.772243>,  <32.097458, 31.201427, 35.865551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444042, 31.377989, 35.772243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457248, -0.514035, 0.725735,
		0.200434, -0.735481, -0.647220,
		0.866459, 0.441402, -0.233267,
		32.703979, 31.510410, 35.702263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730331, 30.723141, 35.785156>,  <32.097458, 31.201427, 35.865551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730331, 30.723141, 35.785156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784000, 31.096502, 35.918278>,  <32.816200, 31.320518, 35.998150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784000, 31.096502, 35.918278>,  <32.730331, 30.723141, 35.785156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784000, 31.096502, 35.918278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413375, -0.357940, 0.837257,
		0.900621, 0.025236, -0.433871,
		0.134171, 0.933404, 0.332800,
		32.824253, 31.376524, 36.018116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451149, 30.695660, 35.958839>,  <32.730331, 30.723141, 35.785156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451149, 30.695660, 35.958839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244316, 30.953705, 36.183857>,  <33.120216, 31.108532, 36.318867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244316, 30.953705, 36.183857>,  <33.451149, 30.695660, 35.958839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244316, 30.953705, 36.183857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396692, -0.401764, 0.825361,
		0.758462, 0.649935, -0.048167,
		-0.517079, 0.645112, 0.562547,
		33.089191, 31.147238, 36.352619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571068, 29.938120, 35.757439>,  <33.451149, 30.695660, 35.958839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571068, 29.938120, 35.757439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802898, 30.212538, 35.933365>,  <33.941998, 30.377188, 36.038921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802898, 30.212538, 35.933365>,  <33.571068, 29.938120, 35.757439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802898, 30.212538, 35.933365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281971, -0.675193, 0.681620,
		0.764582, -0.271034, -0.584769,
		0.579574, 0.686043, 0.439817,
		33.976772, 30.418350, 36.065311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286388, 29.516241, 36.014660>,  <33.571068, 29.938120, 35.757439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286388, 29.516241, 36.014660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186733, 29.845022, 36.219532>,  <34.126942, 30.042290, 36.342457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186733, 29.845022, 36.219532>,  <34.286388, 29.516241, 36.014660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186733, 29.845022, 36.219532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118748, -0.498939, 0.858463,
		0.961161, 0.274693, 0.026698,
		-0.249135, 0.821951, 0.512180,
		34.111992, 30.091608, 36.373184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378788, 29.407154, 36.662544>,  <34.286388, 29.516241, 36.014660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378788, 29.407154, 36.662544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149273, 29.702576, 36.804142>,  <34.011566, 29.879829, 36.889099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149273, 29.702576, 36.804142>,  <34.378788, 29.407154, 36.662544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149273, 29.702576, 36.804142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111527, -0.498652, 0.859597,
		0.811378, 0.453744, 0.368488,
		-0.573784, 0.738554, 0.353990,
		33.977139, 29.924143, 36.910339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676723, 29.517740, 37.250725>,  <34.378788, 29.407154, 36.662544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676723, 29.517740, 37.250725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302643, 29.656742, 37.277950>,  <34.078194, 29.740143, 37.294285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302643, 29.656742, 37.277950>,  <34.676723, 29.517740, 37.250725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302643, 29.656742, 37.277950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093786, -0.428428, 0.898695,
		0.341463, 0.834080, 0.433259,
		-0.935205, 0.347504, 0.068067,
		34.022083, 29.760994, 37.298370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616478, 29.779932, 37.915470>,  <34.676723, 29.517740, 37.250725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616478, 29.779932, 37.915470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234081, 29.776047, 37.798172>,  <34.004642, 29.773716, 37.727795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234081, 29.776047, 37.798172>,  <34.616478, 29.779932, 37.915470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234081, 29.776047, 37.798172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271072, -0.353204, 0.895415,
		-0.112273, 0.935496, 0.335025,
		-0.955989, -0.009715, -0.293242,
		33.947285, 29.773132, 37.710201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317184, 30.152544, 38.375317>,  <34.616478, 29.779932, 37.915470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317184, 30.152544, 38.375317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020325, 29.922100, 38.238316>,  <33.842209, 29.783834, 38.156113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020325, 29.922100, 38.238316>,  <34.317184, 30.152544, 38.375317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020325, 29.922100, 38.238316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220367, -0.272869, 0.936473,
		-0.632968, 0.770482, 0.075555,
		-0.742152, -0.576108, -0.342506,
		33.797680, 29.749268, 38.135563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680706, 30.222223, 38.861073>,  <34.317184, 30.152544, 38.375317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680706, 30.222223, 38.861073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661243, 29.877180, 38.659660>,  <33.649567, 29.670155, 38.538815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661243, 29.877180, 38.659660>,  <33.680706, 30.222223, 38.861073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661243, 29.877180, 38.659660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184265, -0.487720, 0.853332,
		-0.981671, 0.134306, -0.135216,
		-0.048660, -0.862607, -0.503529,
		33.646645, 29.618399, 38.508602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052151, 29.941587, 39.189369>,  <33.680706, 30.222223, 38.861073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052151, 29.941587, 39.189369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267082, 29.649361, 39.020824>,  <33.396042, 29.474024, 38.919697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267082, 29.649361, 39.020824>,  <33.052151, 29.941587, 39.189369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267082, 29.649361, 39.020824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095371, -0.549049, 0.830331,
		-0.837963, -0.405974, -0.364695,
		0.537328, -0.730568, -0.421365,
		33.428280, 29.430191, 38.894417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750980, 29.254343, 39.259914>,  <33.052151, 29.941587, 39.189369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750980, 29.254343, 39.259914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150253, 29.235596, 39.244785>,  <33.389816, 29.224348, 39.235710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150253, 29.235596, 39.244785>,  <32.750980, 29.254343, 39.259914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150253, 29.235596, 39.244785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003086, -0.666981, 0.745068,
		-0.060144, -0.743599, -0.665915,
		0.998185, -0.046867, -0.037820,
		33.449707, 29.221535, 39.233440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829380, 28.576035, 39.565136>,  <32.750980, 29.254343, 39.259914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829380, 28.576035, 39.565136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197060, 28.721039, 39.503605>,  <33.417667, 28.808041, 39.466686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197060, 28.721039, 39.503605>,  <32.829380, 28.576035, 39.565136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197060, 28.721039, 39.503605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343592, -0.547430, 0.763063,
		0.192409, -0.754259, -0.627751,
		0.919197, 0.362510, -0.153826,
		33.472820, 28.829792, 39.457458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264950, 27.998140, 39.501984>,  <32.829380, 28.576035, 39.565136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264950, 27.998140, 39.501984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509510, 28.296879, 39.606609>,  <33.656246, 28.476122, 39.669384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509510, 28.296879, 39.606609>,  <33.264950, 27.998140, 39.501984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509510, 28.296879, 39.606609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407195, -0.580346, 0.705260,
		0.678516, -0.324688, -0.658934,
		0.611399, 0.746844, 0.261563,
		33.692928, 28.520931, 39.685078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990032, 27.711887, 39.597702>,  <33.264950, 27.998140, 39.501984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990032, 27.711887, 39.597702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042690, 28.063587, 39.780827>,  <34.074284, 28.274607, 39.890701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042690, 28.063587, 39.780827>,  <33.990032, 27.711887, 39.597702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042690, 28.063587, 39.780827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576990, -0.443503, 0.685848,
		0.806072, 0.173865, -0.565702,
		0.131645, 0.879247, 0.457814,
		34.082184, 28.327362, 39.918171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764668, 27.722036, 39.781311>,  <33.990032, 27.711887, 39.597702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764668, 27.722036, 39.781311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563126, 27.952276, 40.038937>,  <34.442200, 28.090420, 40.193512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563126, 27.952276, 40.038937>,  <34.764668, 27.722036, 39.781311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563126, 27.952276, 40.038937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627070, -0.269061, 0.731020,
		0.594067, 0.772198, -0.225375,
		-0.503853, 0.575601, 0.644063,
		34.411968, 28.124956, 40.232155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230923, 27.813772, 40.259727>,  <34.764668, 27.722036, 39.781311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230923, 27.813772, 40.259727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900497, 27.942024, 40.445122>,  <34.702244, 28.018976, 40.556358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900497, 27.942024, 40.445122>,  <35.230923, 27.813772, 40.259727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900497, 27.942024, 40.445122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271777, -0.493820, 0.826002,
		0.493721, 0.808292, 0.320785,
		-0.826061, 0.320632, 0.463484,
		34.652679, 28.038214, 40.584167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354160, 27.965471, 40.844963>,  <35.230923, 27.813772, 40.259727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354160, 27.965471, 40.844963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966621, 27.913197, 40.929111>,  <34.734097, 27.881832, 40.979599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966621, 27.913197, 40.929111>,  <35.354160, 27.965471, 40.844963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966621, 27.913197, 40.929111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247650, -0.504923, 0.826875,
		-0.001841, 0.853214, 0.521558,
		-0.968848, -0.130686, 0.210369,
		34.675968, 27.873991, 40.992222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294910, 28.086016, 41.624866>,  <35.354160, 27.965471, 40.844963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294910, 28.086016, 41.624866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972775, 27.893694, 41.486156>,  <34.779491, 27.778301, 41.402931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972775, 27.893694, 41.486156>,  <35.294910, 28.086016, 41.624866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972775, 27.893694, 41.486156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073298, -0.499717, 0.863082,
		-0.588266, 0.720492, 0.367199,
		-0.805339, -0.480806, -0.346777,
		34.731174, 27.749453, 41.382122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749557, 28.336340, 42.022579>,  <35.294910, 28.086016, 41.624866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749557, 28.336340, 42.022579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665974, 27.973791, 41.875706>,  <34.615822, 27.756262, 41.787582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665974, 27.973791, 41.875706>,  <34.749557, 28.336340, 42.022579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665974, 27.973791, 41.875706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083758, -0.357502, 0.930149,
		-0.974330, 0.225120, -0.001211,
		-0.208962, -0.906374, -0.367181,
		34.603287, 27.701880, 41.765553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113224, 28.111238, 42.388588>,  <34.749557, 28.336340, 42.022579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113224, 28.111238, 42.388588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348305, 27.815502, 42.257145>,  <34.489353, 27.638060, 42.178280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348305, 27.815502, 42.257145>,  <34.113224, 28.111238, 42.388588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348305, 27.815502, 42.257145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131956, -0.313121, 0.940501,
		-0.798247, -0.596093, -0.086460,
		0.587698, -0.739343, -0.328606,
		34.524612, 27.593699, 42.158562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173878, 27.611702, 42.923592>,  <34.113224, 28.111238, 42.388588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173878, 27.611702, 42.923592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456879, 27.453548, 42.689289>,  <34.626678, 27.358656, 42.548706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456879, 27.453548, 42.689289>,  <34.173878, 27.611702, 42.923592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456879, 27.453548, 42.689289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404330, -0.453333, 0.794359,
		-0.579623, -0.798849, -0.160867,
		0.707499, -0.395385, -0.585760,
		34.669128, 27.334932, 42.513561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221813, 26.964254, 43.149471>,  <34.173878, 27.611702, 42.923592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221813, 26.964254, 43.149471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554153, 27.019901, 42.933941>,  <34.753559, 27.053289, 42.804623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554153, 27.019901, 42.933941>,  <34.221813, 26.964254, 43.149471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554153, 27.019901, 42.933941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548353, -0.369666, 0.750104,
		-0.094834, -0.918691, -0.383423,
		0.830852, 0.139116, -0.538824,
		34.803410, 27.061636, 42.772293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625000, 26.422501, 43.269009>,  <34.221813, 26.964254, 43.149471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625000, 26.422501, 43.269009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890907, 26.703331, 43.166897>,  <35.050453, 26.871830, 43.105629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890907, 26.703331, 43.166897>,  <34.625000, 26.422501, 43.269009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890907, 26.703331, 43.166897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509272, -0.175889, 0.842440,
		0.546555, -0.690038, -0.474474,
		0.664770, 0.702076, -0.255284,
		35.090340, 26.913954, 43.090313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191879, 26.091513, 43.256699>,  <34.625000, 26.422501, 43.269009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191879, 26.091513, 43.256699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296478, 26.476656, 43.283592>,  <35.359238, 26.707743, 43.299728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296478, 26.476656, 43.283592>,  <35.191879, 26.091513, 43.256699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296478, 26.476656, 43.283592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452362, -0.183796, 0.872690,
		0.852634, -0.197795, -0.483624,
		0.261502, 0.962858, 0.067236,
		35.374928, 26.765514, 43.303764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697598, 26.120462, 43.694828>,  <35.191879, 26.091513, 43.256699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697598, 26.120462, 43.694828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595726, 26.506744, 43.715023>,  <35.534603, 26.738514, 43.727139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595726, 26.506744, 43.715023>,  <35.697598, 26.120462, 43.694828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595726, 26.506744, 43.715023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470460, 0.078120, 0.878957,
		0.844870, 0.247606, -0.474221,
		-0.254681, 0.965706, 0.050487,
		35.519321, 26.796455, 43.730167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283733, 26.424566, 44.067650>,  <35.697598, 26.120462, 43.694828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283733, 26.424566, 44.067650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021919, 26.725737, 44.095028>,  <35.864830, 26.906439, 44.111454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021919, 26.725737, 44.095028>,  <36.283733, 26.424566, 44.067650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021919, 26.725737, 44.095028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266591, 0.145140, 0.952819,
		0.707467, 0.641902, -0.295723,
		-0.654538, 0.752925, 0.068443,
		35.825558, 26.951614, 44.115562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629208, 27.083555, 44.318478>,  <36.283733, 26.424566, 44.067650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629208, 27.083555, 44.318478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241364, 27.056751, 44.412594>,  <36.008656, 27.040668, 44.469063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241364, 27.056751, 44.412594>,  <36.629208, 27.083555, 44.318478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241364, 27.056751, 44.412594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234058, 0.025786, 0.971881,
		-0.071193, 0.997419, -0.009319,
		-0.969613, -0.067010, 0.235290,
		35.950481, 27.036648, 44.483181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933052, 27.854168, 44.398552>,  <36.629208, 27.083555, 44.318478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933052, 27.854168, 44.398552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249573, 28.092484, 44.453506>,  <37.439484, 28.235474, 44.486481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249573, 28.092484, 44.453506>,  <36.933052, 27.854168, 44.398552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249573, 28.092484, 44.453506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050554, 0.287681, -0.956391,
		-0.609333, 0.749848, 0.257762,
		0.791301, 0.595791, 0.137386,
		37.486961, 28.271221, 44.494720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772896, 28.521152, 44.123131>,  <36.933052, 27.854168, 44.398552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772896, 28.521152, 44.123131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172527, 28.516809, 44.139740>,  <37.412308, 28.514204, 44.149704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172527, 28.516809, 44.139740>,  <36.772896, 28.521152, 44.123131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172527, 28.516809, 44.139740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041358, 0.501854, -0.863963,
		-0.011459, 0.864884, 0.501841,
		0.999079, -0.010855, 0.041521,
		37.472252, 28.513554, 44.152195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992126, 29.242214, 44.125313>,  <36.772896, 28.521152, 44.123131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992126, 29.242214, 44.125313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297333, 29.015842, 44.000389>,  <37.480457, 28.880020, 43.925434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297333, 29.015842, 44.000389>,  <36.992126, 29.242214, 44.125313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297333, 29.015842, 44.000389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082223, 0.564213, -0.821525,
		0.641130, 0.601157, 0.477035,
		0.763015, -0.565927, -0.312305,
		37.526237, 28.846064, 43.906696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356323, 29.716249, 43.711758>,  <36.992126, 29.242214, 44.125313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356323, 29.716249, 43.711758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521809, 29.372305, 43.592106>,  <37.621098, 29.165937, 43.520313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521809, 29.372305, 43.592106>,  <37.356323, 29.716249, 43.711758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521809, 29.372305, 43.592106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261579, 0.426981, -0.865600,
		0.872021, 0.279861, 0.401568,
		0.413709, -0.859864, -0.299131,
		37.645920, 29.114346, 43.502365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979164, 29.877892, 43.445919>,  <37.356323, 29.716249, 43.711758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979164, 29.877892, 43.445919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903385, 29.520945, 43.282070>,  <37.857918, 29.306776, 43.183762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903385, 29.520945, 43.282070>,  <37.979164, 29.877892, 43.445919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903385, 29.520945, 43.282070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253350, 0.358624, -0.898445,
		0.948642, -0.273988, 0.158140,
		-0.189451, -0.892367, -0.409621,
		37.846550, 29.253235, 43.159184>
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
