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
	<24.036861, 35.151165, 34.848492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.417194, 35.181297, 34.968651>,  <24.645393, 35.199379, 35.040749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.417194, 35.181297, 34.968651>,  <24.036861, 35.151165, 34.848492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.417194, 35.181297, 34.968651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056488, 0.911508, -0.407385,
		-0.304509, 0.404324, 0.862436,
		0.950833, 0.075335, 0.300402,
		24.702444, 35.203899, 35.058773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.143713, 35.852245, 35.067505>,  <24.036861, 35.151165, 34.848492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.143713, 35.852245, 35.067505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.484665, 35.674801, 34.956753>,  <24.689236, 35.568336, 34.890301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.484665, 35.674801, 34.956753>,  <24.143713, 35.852245, 35.067505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.484665, 35.674801, 34.956753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240293, 0.802546, -0.546058,
		0.464446, 0.398915, 0.790668,
		0.852378, -0.443607, -0.276883,
		24.740379, 35.541718, 34.873688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.829832, 36.114334, 35.363655>,  <24.143713, 35.852245, 35.067505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.829832, 36.114334, 35.363655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850565, 35.964474, 34.993370>,  <24.863005, 35.874557, 34.771198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850565, 35.964474, 34.993370>,  <24.829832, 36.114334, 35.363655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.850565, 35.964474, 34.993370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000390, 0.926969, -0.375138,
		0.998656, 0.019083, 0.048191,
		0.051830, -0.374652, -0.925716,
		24.866114, 35.852077, 34.715656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.387535, 36.355034, 35.122482>,  <24.829832, 36.114334, 35.363655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.387535, 36.355034, 35.122482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178482, 36.290176, 34.787682>,  <25.053051, 36.251263, 34.586803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178482, 36.290176, 34.787682>,  <25.387535, 36.355034, 35.122482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178482, 36.290176, 34.787682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358925, 0.848662, -0.388518,
		0.773323, -0.503472, -0.385342,
		-0.522633, -0.162142, -0.836998,
		25.021692, 36.241535, 34.536583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516912, 35.666359, 35.252056>,  <25.387535, 36.355034, 35.122482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516912, 35.666359, 35.252056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622446, 35.923595, 35.539619>,  <25.685766, 36.077938, 35.712158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622446, 35.923595, 35.539619>,  <25.516912, 35.666359, 35.252056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622446, 35.923595, 35.539619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937451, 0.346438, 0.034137,
		-0.227103, -0.682944, 0.694270,
		0.263835, 0.643092, 0.718905,
		25.701597, 36.116524, 35.755291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821760, 35.064259, 34.929234>,  <25.516912, 35.666359, 35.252056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821760, 35.064259, 34.929234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221008, 35.080189, 34.947853>,  <26.460558, 35.089748, 34.959023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221008, 35.080189, 34.947853>,  <25.821760, 35.064259, 34.929234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221008, 35.080189, 34.947853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020841, 0.493710, -0.869377,
		-0.057603, 0.868714, 0.491953,
		0.998122, 0.039826, 0.046544,
		26.520445, 35.092136, 34.961815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953583, 35.761982, 34.581871>,  <25.821760, 35.064259, 34.929234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953583, 35.761982, 34.581871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303648, 35.568821, 34.593838>,  <26.513687, 35.452923, 34.601017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303648, 35.568821, 34.593838>,  <25.953583, 35.761982, 34.581871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303648, 35.568821, 34.593838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296308, 0.486067, -0.822156,
		0.382483, 0.728383, 0.568475,
		0.875162, -0.482905, 0.029914,
		26.566196, 35.423950, 34.602814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484575, 36.258354, 34.529686>,  <25.953583, 35.761982, 34.581871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484575, 36.258354, 34.529686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625059, 35.920567, 34.367931>,  <26.709349, 35.717896, 34.270878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625059, 35.920567, 34.367931>,  <26.484575, 36.258354, 34.529686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625059, 35.920567, 34.367931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010528, 0.435433, -0.900160,
		0.936238, 0.311886, 0.161818,
		0.351208, -0.844468, -0.404385,
		26.730421, 35.667225, 34.246616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028645, 36.451057, 34.062782>,  <26.484575, 36.258354, 34.529686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028645, 36.451057, 34.062782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908838, 36.078754, 33.978901>,  <26.836954, 35.855373, 33.928574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908838, 36.078754, 33.978901>,  <27.028645, 36.451057, 34.062782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908838, 36.078754, 33.978901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175941, 0.162138, -0.970956,
		0.937729, -0.327711, 0.115196,
		-0.299515, -0.930761, -0.209699,
		26.818983, 35.799526, 33.915993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326544, 36.395657, 33.471928>,  <27.028645, 36.451057, 34.062782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326544, 36.395657, 33.471928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108900, 36.060818, 33.449272>,  <26.978313, 35.859913, 33.435677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108900, 36.060818, 33.449272>,  <27.326544, 36.395657, 33.471928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108900, 36.060818, 33.449272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226856, -0.081788, -0.970488,
		0.807764, -0.540900, 0.234403,
		-0.544108, -0.837101, -0.056641,
		26.945667, 35.809689, 33.432281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606432, 36.009186, 32.920902>,  <27.326544, 36.395657, 33.471928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606432, 36.009186, 32.920902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228016, 35.886395, 32.962421>,  <27.000967, 35.812721, 32.987331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228016, 35.886395, 32.962421>,  <27.606432, 36.009186, 32.920902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228016, 35.886395, 32.962421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097631, -0.035414, -0.994592,
		0.308995, -0.951057, 0.003532,
		-0.946039, -0.306980, 0.103796,
		26.944204, 35.794300, 32.993561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496048, 35.445446, 32.475048>,  <27.606432, 36.009186, 32.920902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496048, 35.445446, 32.475048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125500, 35.589214, 32.520042>,  <26.903172, 35.675476, 32.547039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125500, 35.589214, 32.520042>,  <27.496048, 35.445446, 32.475048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125500, 35.589214, 32.520042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198133, -0.211109, -0.957171,
		-0.320284, -0.908981, 0.266779,
		-0.926370, 0.359425, 0.112484,
		26.847589, 35.697041, 32.553787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120340, 34.969257, 32.208424>,  <27.496048, 35.445446, 32.475048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120340, 34.969257, 32.208424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890448, 35.296539, 32.214443>,  <26.752512, 35.492908, 32.218056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890448, 35.296539, 32.214443>,  <27.120340, 34.969257, 32.208424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890448, 35.296539, 32.214443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311980, -0.202069, -0.928352,
		-0.756539, -0.538249, 0.371398,
		-0.574732, 0.818204, 0.015050,
		26.718027, 35.542000, 32.218960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442852, 34.731033, 31.974760>,  <27.120340, 34.969257, 32.208424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442852, 34.731033, 31.974760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467875, 35.123795, 31.903259>,  <26.482887, 35.359451, 31.860359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467875, 35.123795, 31.903259>,  <26.442852, 34.731033, 31.974760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467875, 35.123795, 31.903259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203748, -0.162766, -0.965399,
		-0.977023, 0.096810, 0.189879,
		0.062554, 0.981904, -0.178750,
		26.486641, 35.418365, 31.849634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893639, 34.880703, 31.601452>,  <26.442852, 34.731033, 31.974760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893639, 34.880703, 31.601452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140989, 35.181828, 31.511227>,  <26.289400, 35.362503, 31.457090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140989, 35.181828, 31.511227>,  <25.893639, 34.880703, 31.601452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140989, 35.181828, 31.511227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200309, -0.126558, -0.971524,
		-0.759924, 0.645952, 0.072534,
		0.618379, 0.752814, -0.225564,
		26.326504, 35.407673, 31.443558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562824, 35.161240, 31.197821>,  <25.893639, 34.880703, 31.601452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562824, 35.161240, 31.197821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927629, 35.308838, 31.126188>,  <26.146513, 35.397396, 31.083210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927629, 35.308838, 31.126188>,  <25.562824, 35.161240, 31.197821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927629, 35.308838, 31.126188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127515, -0.159891, -0.978864,
		-0.389834, 0.915573, -0.098770,
		0.912014, 0.369000, -0.179080,
		26.201233, 35.419537, 31.072464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498732, 35.627525, 30.656948>,  <25.562824, 35.161240, 31.197821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498732, 35.627525, 30.656948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878454, 35.502125, 30.666178>,  <26.106289, 35.426884, 30.671717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878454, 35.502125, 30.666178>,  <25.498732, 35.627525, 30.656948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878454, 35.502125, 30.666178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086786, -0.331935, -0.939302,
		0.302128, 0.889684, -0.342316,
		0.949309, -0.313498, 0.023075,
		26.163246, 35.408077, 30.673100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753216, 35.746552, 30.107277>,  <25.498732, 35.627525, 30.656948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753216, 35.746552, 30.107277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992107, 35.449730, 30.229044>,  <26.135443, 35.271637, 30.302105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992107, 35.449730, 30.229044>,  <25.753216, 35.746552, 30.107277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992107, 35.449730, 30.229044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062038, -0.421142, -0.904870,
		0.799667, 0.521531, -0.297554,
		0.597231, -0.742054, 0.304419,
		26.171276, 35.227112, 30.320370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125763, 35.646381, 29.488731>,  <25.753216, 35.746552, 30.107277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125763, 35.646381, 29.488731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195927, 35.330231, 29.723518>,  <26.238024, 35.140541, 29.864391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195927, 35.330231, 29.723518>,  <26.125763, 35.646381, 29.488731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195927, 35.330231, 29.723518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020684, -0.593121, -0.804848,
		0.984279, 0.153317, -0.087690,
		0.175408, -0.790381, 0.586967,
		26.248549, 35.093117, 29.899609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669281, 35.287369, 29.168499>,  <26.125763, 35.646381, 29.488731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669281, 35.287369, 29.168499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547054, 34.998295, 29.416483>,  <26.473719, 34.824848, 29.565273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547054, 34.998295, 29.416483>,  <26.669281, 35.287369, 29.168499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547054, 34.998295, 29.416483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000037, -0.651095, -0.758997,
		0.952170, -0.231948, 0.198927,
		-0.305568, -0.722687, 0.619961,
		26.455383, 34.781490, 29.602470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156063, 34.719223, 28.989618>,  <26.669281, 35.287369, 29.168499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156063, 34.719223, 28.989618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829363, 34.555367, 29.152153>,  <26.633343, 34.457054, 29.249674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829363, 34.555367, 29.152153>,  <27.156063, 34.719223, 28.989618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829363, 34.555367, 29.152153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032172, -0.670812, -0.740930,
		0.576091, -0.618229, 0.534708,
		-0.816752, -0.409640, 0.406339,
		26.584337, 34.432476, 29.274055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300037, 34.033516, 29.001411>,  <27.156063, 34.719223, 28.989618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300037, 34.033516, 29.001411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902328, 34.045464, 29.042452>,  <26.663702, 34.052631, 29.067076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902328, 34.045464, 29.042452>,  <27.300037, 34.033516, 29.001411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902328, 34.045464, 29.042452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083311, -0.817932, -0.569250,
		0.066919, -0.574538, 0.815737,
		-0.994274, 0.029866, 0.102601,
		26.604046, 34.054424, 29.073233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092846, 33.385094, 29.294857>,  <27.300037, 34.033516, 29.001411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092846, 33.385094, 29.294857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767385, 33.519386, 29.105015>,  <26.572109, 33.599964, 28.991110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767385, 33.519386, 29.105015>,  <27.092846, 33.385094, 29.294857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767385, 33.519386, 29.105015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052830, -0.855708, -0.514754,
		-0.578945, -0.393758, 0.713987,
		-0.813653, 0.335734, -0.474606,
		26.523291, 33.620106, 28.962633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656897, 32.765648, 29.248682>,  <27.092846, 33.385094, 29.294857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656897, 32.765648, 29.248682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483541, 33.005211, 28.979317>,  <26.379528, 33.148949, 28.817698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483541, 33.005211, 28.979317>,  <26.656897, 32.765648, 29.248682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483541, 33.005211, 28.979317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075478, -0.720486, -0.689350,
		-0.898041, -0.349584, 0.267046,
		-0.433388, 0.598909, -0.673412,
		26.353525, 33.184883, 28.777294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221842, 32.268303, 28.927092>,  <26.656897, 32.765648, 29.248682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221842, 32.268303, 28.927092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246662, 32.582333, 28.680576>,  <26.261555, 32.770748, 28.532667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246662, 32.582333, 28.680576>,  <26.221842, 32.268303, 28.927092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246662, 32.582333, 28.680576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216953, -0.613325, -0.759450,
		-0.974208, -0.086583, -0.208380,
		0.062049, 0.785071, -0.616290,
		26.265276, 32.817852, 28.495689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664286, 32.151249, 28.395725>,  <26.221842, 32.268303, 28.927092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664286, 32.151249, 28.395725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949352, 32.391342, 28.250492>,  <26.120392, 32.535397, 28.163351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949352, 32.391342, 28.250492>,  <25.664286, 32.151249, 28.395725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949352, 32.391342, 28.250492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080858, -0.443845, -0.892448,
		-0.696830, 0.665374, -0.267779,
		0.712664, 0.600232, -0.363085,
		26.163151, 32.571411, 28.141567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459978, 32.395496, 27.774242>,  <25.664286, 32.151249, 28.395725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459978, 32.395496, 27.774242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858915, 32.376598, 27.796438>,  <26.098278, 32.365257, 27.809755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858915, 32.376598, 27.796438>,  <25.459978, 32.395496, 27.774242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858915, 32.376598, 27.796438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017356, -0.585496, -0.810489,
		0.070782, 0.809297, -0.583119,
		0.997341, -0.047247, 0.055489,
		26.158117, 32.362423, 27.813086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788624, 32.600986, 27.056705>,  <25.459978, 32.395496, 27.774242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788624, 32.600986, 27.056705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988541, 32.349586, 27.295101>,  <26.108490, 32.198746, 27.438139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988541, 32.349586, 27.295101>,  <25.788624, 32.600986, 27.056705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988541, 32.349586, 27.295101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168952, -0.604131, -0.778769,
		0.849509, 0.489914, -0.195753,
		0.499790, -0.628498, 0.595987,
		26.138477, 32.161037, 27.473898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529682, 32.485809, 26.727629>,  <25.788624, 32.600986, 27.056705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529682, 32.485809, 26.727629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419352, 32.174088, 26.952698>,  <26.353153, 31.987053, 27.087740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419352, 32.174088, 26.952698>,  <26.529682, 32.485809, 26.727629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419352, 32.174088, 26.952698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134700, -0.610943, -0.780131,
		0.951723, -0.139388, 0.273486,
		-0.275825, -0.779307, 0.562673,
		26.336603, 31.940296, 27.121500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120367, 31.965967, 26.823324>,  <26.529682, 32.485809, 26.727629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120367, 31.965967, 26.823324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758469, 31.798140, 26.852713>,  <26.541330, 31.697443, 26.870346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758469, 31.798140, 26.852713>,  <27.120367, 31.965967, 26.823324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758469, 31.798140, 26.852713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271308, -0.700607, -0.659956,
		0.328369, -0.577160, 0.747703,
		-0.904746, -0.419567, 0.073469,
		26.487045, 31.672270, 26.874754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181446, 31.224552, 27.035679>,  <27.120367, 31.965967, 26.823324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181446, 31.224552, 27.035679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898369, 31.344868, 26.779963>,  <26.728521, 31.417057, 26.626532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898369, 31.344868, 26.779963>,  <27.181446, 31.224552, 27.035679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898369, 31.344868, 26.779963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268573, -0.722391, -0.637197,
		-0.653480, -0.622638, 0.430448,
		-0.707695, 0.300789, -0.639292,
		26.686060, 31.435104, 26.588175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926722, 31.077616, 26.876808>,  <27.181446, 31.224552, 27.035679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926722, 31.077616, 26.876808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670202, 30.941422, 27.151852>,  <27.516291, 30.859705, 27.316879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670202, 30.941422, 27.151852>,  <27.926722, 31.077616, 26.876808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670202, 30.941422, 27.151852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542275, -0.432886, -0.720102,
		0.542840, -0.834674, 0.092973,
		-0.641297, -0.340483, 0.687611,
		27.477814, 30.839277, 27.358135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477032, 30.582523, 26.756996>,  <27.926722, 31.077616, 26.876808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477032, 30.582523, 26.756996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761501, 30.402367, 26.972916>,  <28.932182, 30.294271, 27.102467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761501, 30.402367, 26.972916>,  <28.477032, 30.582523, 26.756996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761501, 30.402367, 26.972916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248439, 0.879295, 0.406348,
		-0.657657, -0.154877, 0.737225,
		0.711172, -0.450394, 0.539797,
		28.974854, 30.267248, 27.134855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362106, 30.492994, 27.560755>,  <28.477032, 30.582523, 26.756996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362106, 30.492994, 27.560755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738197, 30.550400, 27.437223>,  <28.963852, 30.584843, 27.363104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738197, 30.550400, 27.437223>,  <28.362106, 30.492994, 27.560755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738197, 30.550400, 27.437223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040191, 0.853763, 0.519108,
		0.338167, -0.500492, 0.796964,
		0.940228, 0.143515, -0.308830,
		29.020266, 30.593454, 27.344574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814255, 30.306730, 28.095274>,  <28.362106, 30.492994, 27.560755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814255, 30.306730, 28.095274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891483, 30.603317, 27.838230>,  <28.937820, 30.781269, 27.684004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891483, 30.603317, 27.838230>,  <28.814255, 30.306730, 28.095274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891483, 30.603317, 27.838230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260966, 0.592537, 0.762100,
		0.945844, -0.314840, -0.079096,
		0.193072, 0.741469, -0.642609,
		28.949406, 30.825758, 27.645447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465761, 30.644852, 28.309011>,  <28.814255, 30.306730, 28.095274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465761, 30.644852, 28.309011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250179, 30.897718, 28.086340>,  <29.120831, 31.049438, 27.952736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250179, 30.897718, 28.086340>,  <29.465761, 30.644852, 28.309011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250179, 30.897718, 28.086340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329933, 0.766502, 0.551016,
		0.775032, 0.113304, -0.621681,
		-0.538952, 0.632169, -0.556680,
		29.088493, 31.087370, 27.919336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778784, 31.301657, 28.149096>,  <29.465761, 30.644852, 28.309011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778784, 31.301657, 28.149096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425085, 31.441832, 28.025614>,  <29.212866, 31.525936, 27.951525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425085, 31.441832, 28.025614>,  <29.778784, 31.301657, 28.149096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425085, 31.441832, 28.025614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060470, 0.741365, 0.668372,
		0.463084, 0.572340, -0.676742,
		-0.884249, 0.350435, -0.308705,
		29.159811, 31.546963, 27.933002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837854, 32.039478, 28.129345>,  <29.778784, 31.301657, 28.149096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837854, 32.039478, 28.129345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445223, 31.972633, 28.166397>,  <29.209644, 31.932528, 28.188629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445223, 31.972633, 28.166397>,  <29.837854, 32.039478, 28.129345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445223, 31.972633, 28.166397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023173, 0.585354, 0.810447,
		-0.189655, 0.793370, -0.578442,
		-0.981577, -0.167109, 0.092631,
		29.150749, 31.922501, 28.194187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452177, 32.742199, 28.141102>,  <29.837854, 32.039478, 28.129345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452177, 32.742199, 28.141102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247038, 32.441547, 28.307013>,  <29.123955, 32.261158, 28.406559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247038, 32.441547, 28.307013>,  <29.452177, 32.742199, 28.141102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247038, 32.441547, 28.307013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152686, 0.555309, 0.817508,
		-0.844791, 0.355928, -0.399553,
		-0.512849, -0.751630, 0.414775,
		29.093184, 32.216057, 28.431444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863188, 33.051346, 28.510647>,  <29.452177, 32.742199, 28.141102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863188, 33.051346, 28.510647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904520, 32.689075, 28.675117>,  <28.929319, 32.471714, 28.773800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904520, 32.689075, 28.675117>,  <28.863188, 33.051346, 28.510647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904520, 32.689075, 28.675117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292293, 0.367486, 0.882903,
		-0.950730, -0.211416, -0.226751,
		0.103332, -0.905680, 0.411176,
		28.935520, 32.417370, 28.798470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268881, 33.125675, 28.891037>,  <28.863188, 33.051346, 28.510647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268881, 33.125675, 28.891037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488640, 32.828247, 29.043493>,  <28.620495, 32.649792, 29.134966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488640, 32.828247, 29.043493>,  <28.268881, 33.125675, 28.891037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488640, 32.828247, 29.043493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053596, 0.423848, 0.904146,
		-0.833842, -0.517161, 0.193008,
		0.549395, -0.743571, 0.381139,
		28.653458, 32.605175, 29.157835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018188, 33.013794, 29.574690>,  <28.268881, 33.125675, 28.891037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018188, 33.013794, 29.574690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391371, 32.870102, 29.584019>,  <28.615280, 32.783886, 29.589615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391371, 32.870102, 29.584019>,  <28.018188, 33.013794, 29.574690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391371, 32.870102, 29.584019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067995, 0.239462, 0.968522,
		-0.353510, -0.902003, 0.247834,
		0.932956, -0.359233, 0.023320,
		28.671257, 32.762333, 29.591015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132536, 32.714542, 30.261154>,  <28.018188, 33.013794, 29.574690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132536, 32.714542, 30.261154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500502, 32.753254, 30.109159>,  <28.721281, 32.776482, 30.017962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500502, 32.753254, 30.109159>,  <28.132536, 32.714542, 30.261154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500502, 32.753254, 30.109159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380106, 0.017933, 0.924769,
		0.096317, -0.995144, -0.020291,
		0.919914, 0.096784, -0.379988,
		28.776476, 32.782288, 29.995163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577627, 32.422058, 30.689707>,  <28.132536, 32.714542, 30.261154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577627, 32.422058, 30.689707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829681, 32.670372, 30.503136>,  <28.980913, 32.819359, 30.391193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829681, 32.670372, 30.503136>,  <28.577627, 32.422058, 30.689707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829681, 32.670372, 30.503136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384224, 0.272717, 0.882042,
		0.674761, -0.735018, -0.066672,
		0.630134, 0.620785, -0.466430,
		29.018723, 32.856606, 30.363207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217722, 32.409454, 31.088612>,  <28.577627, 32.422058, 30.689707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217722, 32.409454, 31.088612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249796, 32.744503, 30.872478>,  <29.269041, 32.945534, 30.742798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249796, 32.744503, 30.872478>,  <29.217722, 32.409454, 31.088612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249796, 32.744503, 30.872478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448168, 0.453901, 0.770142,
		0.890346, -0.303914, -0.338999,
		0.080185, 0.837622, -0.540334,
		29.273851, 32.995789, 30.710379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867380, 32.593269, 31.220375>,  <29.217722, 32.409454, 31.088612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867380, 32.593269, 31.220375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691578, 32.934914, 31.109146>,  <29.586098, 33.139900, 31.042410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691578, 32.934914, 31.109146>,  <29.867380, 32.593269, 31.220375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691578, 32.934914, 31.109146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412141, 0.466815, 0.782447,
		0.798108, 0.229284, -0.557182,
		-0.439504, 0.854115, -0.278071,
		29.559727, 33.191147, 31.025724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313820, 33.136219, 31.466623>,  <29.867380, 32.593269, 31.220375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313820, 33.136219, 31.466623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979111, 33.346737, 31.406187>,  <29.778284, 33.473045, 31.369926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979111, 33.346737, 31.406187>,  <30.313820, 33.136219, 31.466623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979111, 33.346737, 31.406187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111171, 0.433487, 0.894276,
		0.536144, 0.731510, -0.421239,
		-0.836774, 0.526290, -0.151089,
		29.728079, 33.504623, 31.360861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547115, 33.794258, 31.667048>,  <30.313820, 33.136219, 31.466623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547115, 33.794258, 31.667048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148989, 33.775951, 31.701099>,  <29.910112, 33.764965, 31.721531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148989, 33.775951, 31.701099>,  <30.547115, 33.794258, 31.667048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148989, 33.775951, 31.701099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072971, 0.221716, 0.972377,
		-0.063381, 0.974036, -0.217338,
		-0.995318, -0.045771, 0.085129,
		29.850393, 33.762218, 31.726639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416929, 34.288601, 32.100620>,  <30.547115, 33.794258, 31.667048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416929, 34.288601, 32.100620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065643, 34.100891, 32.137547>,  <29.854872, 33.988266, 32.159702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065643, 34.100891, 32.137547>,  <30.416929, 34.288601, 32.100620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065643, 34.100891, 32.137547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048136, 0.105321, 0.993273,
		-0.475840, 0.876749, -0.069905,
		-0.878214, -0.469274, 0.092319,
		29.802179, 33.960110, 32.165241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017054, 34.725334, 32.608849>,  <30.416929, 34.288601, 32.100620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017054, 34.725334, 32.608849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847475, 34.364006, 32.582676>,  <29.745728, 34.147209, 32.566975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847475, 34.364006, 32.582676>,  <30.017054, 34.725334, 32.608849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847475, 34.364006, 32.582676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195716, 0.020839, 0.980439,
		-0.884289, 0.428457, -0.185629,
		-0.423944, -0.903322, -0.065428,
		29.720291, 34.093010, 32.563049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390593, 34.696423, 32.904125>,  <30.017054, 34.725334, 32.608849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390593, 34.696423, 32.904125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435925, 34.299007, 32.901360>,  <29.463123, 34.060558, 32.899700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435925, 34.299007, 32.901360>,  <29.390593, 34.696423, 32.904125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435925, 34.299007, 32.901360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433023, -0.055652, 0.899664,
		-0.894230, -0.098968, -0.436529,
		0.113331, -0.993533, -0.006911,
		29.469923, 34.000946, 32.899288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744118, 34.418972, 32.988121>,  <29.390593, 34.696423, 32.904125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744118, 34.418972, 32.988121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001709, 34.151943, 33.137596>,  <29.156263, 33.991726, 33.227283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001709, 34.151943, 33.137596>,  <28.744118, 34.418972, 32.988121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001709, 34.151943, 33.137596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512183, -0.013362, 0.858772,
		-0.568298, -0.744427, -0.350523,
		0.643977, -0.667571, 0.373689,
		29.194902, 33.951672, 33.249702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342634, 34.024990, 33.485241>,  <28.744118, 34.418972, 32.988121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342634, 34.024990, 33.485241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728298, 33.975216, 33.578976>,  <28.959696, 33.945351, 33.635216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728298, 33.975216, 33.578976>,  <28.342634, 34.024990, 33.485241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728298, 33.975216, 33.578976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226980, 0.070548, 0.971341,
		-0.137403, -0.989716, 0.039775,
		0.964158, -0.124437, 0.234339,
		29.017546, 33.937885, 33.649277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279062, 33.790302, 34.094540>,  <28.342634, 34.024990, 33.485241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279062, 33.790302, 34.094540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669195, 33.878342, 34.101254>,  <28.903275, 33.931168, 34.105282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669195, 33.878342, 34.101254>,  <28.279062, 33.790302, 34.094540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669195, 33.878342, 34.101254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014628, -0.011418, 0.999828,
		0.220256, -0.975410, -0.007916,
		0.975333, 0.220103, 0.016783,
		28.961796, 33.944374, 34.106289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608952, 33.294308, 34.503498>,  <28.279062, 33.790302, 34.094540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608952, 33.294308, 34.503498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811996, 33.638844, 34.511681>,  <28.933825, 33.845566, 34.516590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811996, 33.638844, 34.511681>,  <28.608952, 33.294308, 34.503498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811996, 33.638844, 34.511681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031589, -0.005116, 0.999488,
		0.861005, -0.508000, 0.024612,
		0.507614, 0.861342, 0.020452,
		28.964281, 33.897247, 34.517815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900940, 33.325066, 35.170898>,  <28.608952, 33.294308, 34.503498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900940, 33.325066, 35.170898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946587, 33.704510, 35.052834>,  <28.973974, 33.932175, 34.981995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946587, 33.704510, 35.052834>,  <28.900940, 33.325066, 35.170898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946587, 33.704510, 35.052834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053542, 0.290801, 0.955284,
		0.992024, -0.124816, -0.017606,
		0.114115, 0.948607, -0.295165,
		28.980822, 33.989094, 34.964283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475220, 33.602276, 35.629128>,  <28.900940, 33.325066, 35.170898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475220, 33.602276, 35.629128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290577, 33.916836, 35.464939>,  <29.179790, 34.105572, 35.366425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290577, 33.916836, 35.464939>,  <29.475220, 33.602276, 35.629128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290577, 33.916836, 35.464939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038965, 0.480251, 0.876265,
		0.886228, 0.388497, -0.252330,
		-0.461608, 0.786403, -0.410474,
		29.152094, 34.152756, 35.341797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865953, 33.975029, 36.096478>,  <29.475220, 33.602276, 35.629128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865953, 33.975029, 36.096478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697493, 34.268745, 36.309441>,  <29.596416, 34.444973, 36.437218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697493, 34.268745, 36.309441>,  <29.865953, 33.975029, 36.096478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697493, 34.268745, 36.309441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905665, -0.372191, -0.203090,
		0.049030, -0.567711, 0.821766,
		-0.421150, 0.734288, 0.532405,
		29.571148, 34.489033, 36.469162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588610, 33.765266, 36.022583>,  <29.865953, 33.975029, 36.096478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588610, 33.765266, 36.022583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970053, 33.646435, 36.003086>,  <31.198919, 33.575134, 35.991386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970053, 33.646435, 36.003086>,  <30.588610, 33.765266, 36.022583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970053, 33.646435, 36.003086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263735, 0.746302, 0.611128,
		-0.145175, -0.595632, 0.790029,
		0.953608, -0.297079, -0.048745,
		31.256136, 33.557312, 35.988464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796986, 33.746498, 36.591831>,  <30.588610, 33.765266, 36.022583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796986, 33.746498, 36.591831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145464, 33.800159, 36.402931>,  <31.354551, 33.832355, 36.289589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145464, 33.800159, 36.402931>,  <30.796986, 33.746498, 36.591831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145464, 33.800159, 36.402931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127724, 0.866884, 0.481869,
		0.474032, -0.480120, 0.738091,
		0.871194, 0.134149, -0.472254,
		31.406822, 33.840405, 36.261253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491793, 33.766411, 37.071865>,  <30.796986, 33.746498, 36.591831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491793, 33.766411, 37.071865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475754, 34.003429, 36.750050>,  <31.466129, 34.145641, 36.556961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475754, 34.003429, 36.750050>,  <31.491793, 33.766411, 37.071865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475754, 34.003429, 36.750050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028064, 0.805539, 0.591878,
		0.998802, 0.001156, -0.048930,
		-0.040099, 0.592542, -0.804541,
		31.463724, 34.181190, 36.508686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061703, 34.326393, 36.969566>,  <31.491793, 33.766411, 37.071865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061703, 34.326393, 36.969566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679893, 34.388927, 36.868027>,  <31.450808, 34.426449, 36.807102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679893, 34.388927, 36.868027>,  <32.061703, 34.326393, 36.969566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679893, 34.388927, 36.868027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044692, 0.766828, 0.640294,
		0.294760, 0.622522, -0.724971,
		-0.954526, 0.156333, -0.253852,
		31.393536, 34.435829, 36.791870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939375, 35.054794, 36.770271>,  <32.061703, 34.326393, 36.969566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939375, 35.054794, 36.770271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643482, 34.860088, 36.956116>,  <31.465946, 34.743263, 37.067623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643482, 34.860088, 36.956116>,  <31.939375, 35.054794, 36.770271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643482, 34.860088, 36.956116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008340, 0.683767, 0.729653,
		-0.672852, 0.543622, -0.501743,
		-0.739730, -0.486764, 0.464607,
		31.421562, 34.714058, 37.095497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298754, 35.424740, 36.807396>,  <31.939375, 35.054794, 36.770271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298754, 35.424740, 36.807396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364534, 35.178055, 37.115322>,  <31.404003, 35.030045, 37.300079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364534, 35.178055, 37.115322>,  <31.298754, 35.424740, 36.807396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364534, 35.178055, 37.115322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261255, 0.725340, 0.636889,
		-0.951158, -0.305856, -0.041836,
		0.164451, -0.616711, 0.769820,
		31.413870, 34.993042, 37.346268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961401, 35.726635, 37.309753>,  <31.298754, 35.424740, 36.807396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961401, 35.726635, 37.309753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177223, 35.463459, 37.519894>,  <31.306717, 35.305553, 37.645977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177223, 35.463459, 37.519894>,  <30.961401, 35.726635, 37.309753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177223, 35.463459, 37.519894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118927, 0.558160, 0.821166,
		-0.833507, -0.505544, 0.222913,
		0.539557, -0.657937, 0.525353,
		31.339090, 35.266079, 37.677498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530174, 35.539417, 37.823452>,  <30.961401, 35.726635, 37.309753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530174, 35.539417, 37.823452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909689, 35.479832, 37.934887>,  <31.137398, 35.444080, 38.001747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909689, 35.479832, 37.934887>,  <30.530174, 35.539417, 37.823452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909689, 35.479832, 37.934887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156820, 0.543441, 0.824669,
		-0.274240, -0.826124, 0.492251,
		0.948789, -0.148962, 0.278586,
		31.194326, 35.435143, 38.018463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477156, 35.241539, 38.546013>,  <30.530174, 35.539417, 37.823452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477156, 35.241539, 38.546013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842808, 35.401451, 38.519051>,  <31.062199, 35.497398, 38.502872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842808, 35.401451, 38.519051>,  <30.477156, 35.241539, 38.546013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842808, 35.401451, 38.519051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132545, 0.451825, 0.882205,
		0.383136, -0.797519, 0.466016,
		0.914133, 0.399773, -0.067403,
		31.117046, 35.521385, 38.498829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786102, 35.237385, 39.244297>,  <30.477156, 35.241539, 38.546013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786102, 35.237385, 39.244297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007336, 35.500782, 39.040146>,  <31.140076, 35.658821, 38.917656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007336, 35.500782, 39.040146>,  <30.786102, 35.237385, 39.244297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007336, 35.500782, 39.040146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213215, 0.480333, 0.850776,
		0.805379, -0.579373, 0.125266,
		0.553085, 0.658489, -0.510381,
		31.173262, 35.698330, 38.887032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310972, 35.320789, 39.693771>,  <30.786102, 35.237385, 39.244297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310972, 35.320789, 39.693771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304434, 35.629192, 39.439125>,  <31.300510, 35.814236, 39.286339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304434, 35.629192, 39.439125>,  <31.310972, 35.320789, 39.693771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304434, 35.629192, 39.439125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128287, 0.633057, 0.763401,
		0.991602, -0.069189, -0.109259,
		-0.016348, 0.771007, -0.636617,
		31.299530, 35.860493, 39.248138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942781, 35.745968, 39.774170>,  <31.310972, 35.320789, 39.693771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942781, 35.745968, 39.774170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698206, 35.984901, 39.566582>,  <31.551460, 36.128262, 39.442028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698206, 35.984901, 39.566582>,  <31.942781, 35.745968, 39.774170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698206, 35.984901, 39.566582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161974, 0.736450, 0.656815,
		0.774537, 0.317542, -0.547047,
		-0.611439, 0.597334, -0.518974,
		31.514774, 36.164101, 39.410889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315575, 36.268364, 39.622738>,  <31.942781, 35.745968, 39.774170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315575, 36.268364, 39.622738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939709, 36.404980, 39.614849>,  <31.714190, 36.486950, 39.610115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939709, 36.404980, 39.614849>,  <32.315575, 36.268364, 39.622738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939709, 36.404980, 39.614849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217164, 0.640034, 0.737018,
		0.264342, 0.688265, -0.675585,
		-0.939661, 0.341537, -0.019722,
		31.657810, 36.507442, 39.608932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485676, 36.917561, 39.804695>,  <32.315575, 36.268364, 39.622738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485676, 36.917561, 39.804695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088215, 36.937397, 39.845093>,  <31.849739, 36.949299, 39.869331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088215, 36.937397, 39.845093>,  <32.485676, 36.917561, 39.804695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088215, 36.937397, 39.845093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112068, 0.515731, 0.849389,
		-0.009961, 0.855314, -0.518014,
		-0.993651, 0.049592, 0.100990,
		31.790119, 36.952274, 39.875389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331963, 37.573761, 39.978287>,  <32.485676, 36.917561, 39.804695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331963, 37.573761, 39.978287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019081, 37.366322, 40.116398>,  <31.831352, 37.241859, 40.199265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019081, 37.366322, 40.116398>,  <32.331963, 37.573761, 39.978287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019081, 37.366322, 40.116398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025633, 0.526933, 0.849520,
		-0.622497, 0.673347, -0.398875,
		-0.782202, -0.518599, 0.345274,
		31.784420, 37.210743, 40.219978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749598, 38.091022, 40.144741>,  <32.331963, 37.573761, 39.978287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749598, 38.091022, 40.144741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727922, 37.754807, 40.360355>,  <31.714918, 37.553078, 40.489723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727922, 37.754807, 40.360355>,  <31.749598, 38.091022, 40.144741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727922, 37.754807, 40.360355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022237, 0.540715, 0.840912,
		-0.998283, 0.033580, -0.047991,
		-0.054188, -0.840536, 0.539039,
		31.711666, 37.502647, 40.522068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242695, 38.158112, 40.549824>,  <31.749598, 38.091022, 40.144741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242695, 38.158112, 40.549824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401611, 37.845131, 40.741627>,  <31.496962, 37.657341, 40.856709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401611, 37.845131, 40.741627>,  <31.242695, 38.158112, 40.549824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401611, 37.845131, 40.741627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179241, 0.446288, 0.876755,
		-0.900018, -0.434274, 0.037058,
		0.397291, -0.782453, 0.479507,
		31.520798, 37.610394, 40.885479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774559, 37.946758, 41.044994>,  <31.242695, 38.158112, 40.549824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774559, 37.946758, 41.044994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113464, 37.777050, 41.172832>,  <31.316807, 37.675224, 41.249535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113464, 37.777050, 41.172832>,  <30.774559, 37.946758, 41.044994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113464, 37.777050, 41.172832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165044, 0.361617, 0.917602,
		-0.504885, -0.830196, 0.236360,
		0.847261, -0.424274, 0.319594,
		31.367643, 37.649769, 41.268711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597614, 37.635048, 41.608463>,  <30.774559, 37.946758, 41.044994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597614, 37.635048, 41.608463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992455, 37.676968, 41.656883>,  <31.229359, 37.702122, 41.685936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992455, 37.676968, 41.656883>,  <30.597614, 37.635048, 41.608463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992455, 37.676968, 41.656883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124978, 0.031734, 0.991652,
		0.100091, -0.993986, 0.044423,
		0.987098, 0.104808, 0.121050,
		31.288584, 37.708408, 41.693199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741880, 37.209087, 42.171574>,  <30.597614, 37.635048, 41.608463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741880, 37.209087, 42.171574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067955, 37.440407, 42.158623>,  <31.263599, 37.579197, 42.150852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067955, 37.440407, 42.158623>,  <30.741880, 37.209087, 42.171574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067955, 37.440407, 42.158623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083592, 0.172776, 0.981408,
		0.573136, -0.797323, 0.189185,
		0.815186, 0.578295, -0.032374,
		31.312511, 37.613895, 42.148911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258968, 36.958149, 42.695332>,  <30.741880, 37.209087, 42.171574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258968, 36.958149, 42.695332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344311, 37.339924, 42.611874>,  <31.395515, 37.568989, 42.561798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344311, 37.339924, 42.611874>,  <31.258968, 36.958149, 42.695332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344311, 37.339924, 42.611874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068213, 0.227595, 0.971364,
		0.974591, -0.193012, 0.113663,
		0.213354, 0.954436, -0.208646,
		31.408318, 37.626255, 42.549278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733398, 37.227787, 43.318882>,  <31.258968, 36.958149, 42.695332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733398, 37.227787, 43.318882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642246, 37.574390, 43.141235>,  <31.587555, 37.782352, 43.034649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642246, 37.574390, 43.141235>,  <31.733398, 37.227787, 43.318882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642246, 37.574390, 43.141235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024792, 0.450805, 0.892278,
		0.973374, 0.214342, -0.081247,
		-0.227879, 0.866506, -0.444116,
		31.573883, 37.834343, 43.007999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147373, 37.724094, 43.570660>,  <31.733398, 37.227787, 43.318882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147373, 37.724094, 43.570660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825893, 37.914761, 43.428188>,  <31.633007, 38.029160, 43.342705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825893, 37.914761, 43.428188>,  <32.147373, 37.724094, 43.570660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825893, 37.914761, 43.428188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034680, 0.560036, 0.827742,
		0.594029, 0.677606, -0.433568,
		-0.803696, 0.476666, -0.356177,
		31.584785, 38.057762, 43.321335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281582, 38.477718, 43.619530>,  <32.147373, 37.724094, 43.570660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281582, 38.477718, 43.619530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883646, 38.441441, 43.601307>,  <31.644886, 38.419674, 43.590374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883646, 38.441441, 43.601307>,  <32.281582, 38.477718, 43.619530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883646, 38.441441, 43.601307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087649, 0.541364, 0.836208,
		-0.051172, 0.835883, -0.546518,
		-0.994836, -0.090692, -0.045561,
		31.585196, 38.414234, 43.587639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022835, 39.147438, 43.828468>,  <32.281582, 38.477718, 43.619530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022835, 39.147438, 43.828468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725933, 38.884911, 43.882580>,  <31.547792, 38.727394, 43.915047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725933, 38.884911, 43.882580>,  <32.022835, 39.147438, 43.828468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725933, 38.884911, 43.882580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206387, 0.415961, 0.885653,
		-0.637542, 0.629461, -0.444206,
		-0.742256, -0.656319, 0.135280,
		31.503256, 38.688015, 43.923164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517414, 39.617023, 44.106407>,  <32.022835, 39.147438, 43.828468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517414, 39.617023, 44.106407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385237, 39.246689, 44.179768>,  <31.305929, 39.024490, 44.223785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385237, 39.246689, 44.179768>,  <31.517414, 39.617023, 44.106407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385237, 39.246689, 44.179768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251030, 0.273535, 0.928527,
		-0.909830, 0.260787, -0.322800,
		-0.330445, -0.925834, 0.183405,
		31.286102, 38.968937, 44.234791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834518, 39.673691, 44.323704>,  <31.517414, 39.617023, 44.106407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834518, 39.673691, 44.323704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973522, 39.334404, 44.483585>,  <31.056925, 39.130833, 44.579514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973522, 39.334404, 44.483585>,  <30.834518, 39.673691, 44.323704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973522, 39.334404, 44.483585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605158, 0.122734, 0.786588,
		-0.716256, -0.515230, -0.470655,
		0.347508, -0.848218, 0.399704,
		31.077774, 39.079937, 44.603497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199772, 39.157169, 44.544437>,  <30.834518, 39.673691, 44.323704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199772, 39.157169, 44.544437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498709, 39.009701, 44.765549>,  <30.678070, 38.921219, 44.898216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498709, 39.009701, 44.765549>,  <30.199772, 39.157169, 44.544437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498709, 39.009701, 44.765549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510726, 0.213427, 0.832831,
		-0.425017, -0.904728, -0.028786,
		0.747342, -0.368669, 0.552778,
		30.722912, 38.899101, 44.931381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818111, 38.731213, 44.979412>,  <30.199772, 39.157169, 44.544437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818111, 38.731213, 44.979412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173695, 38.756809, 45.160809>,  <30.387045, 38.772167, 45.269646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173695, 38.756809, 45.160809>,  <29.818111, 38.731213, 44.979412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173695, 38.756809, 45.160809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454571, 0.002590, 0.890707,
		0.055823, -0.997947, 0.031391,
		0.888959, 0.063991, 0.453493,
		30.440382, 38.776005, 45.296856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779699, 38.323498, 45.484337>,  <29.818111, 38.731213, 44.979412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779699, 38.323498, 45.484337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091621, 38.555874, 45.577641>,  <30.278774, 38.695301, 45.633625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091621, 38.555874, 45.577641>,  <29.779699, 38.323498, 45.484337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091621, 38.555874, 45.577641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286786, 0.000298, 0.957995,
		0.556468, -0.813947, 0.166837,
		0.779806, 0.580939, 0.233263,
		30.325563, 38.730156, 45.647621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204262, 37.974991, 45.948322>,  <29.779699, 38.323498, 45.484337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204262, 37.974991, 45.948322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305098, 38.352528, 46.033756>,  <30.365599, 38.579048, 46.085018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305098, 38.352528, 46.033756>,  <30.204262, 37.974991, 45.948322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305098, 38.352528, 46.033756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335439, -0.121800, 0.934155,
		0.907706, -0.307137, 0.285895,
		0.252092, 0.943839, 0.213584,
		30.380726, 38.635677, 46.097832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713213, 37.946957, 46.547798>,  <30.204262, 37.974991, 45.948322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713213, 37.946957, 46.547798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582258, 38.324883, 46.542973>,  <30.503685, 38.551636, 46.540077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582258, 38.324883, 46.542973>,  <30.713213, 37.946957, 46.547798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582258, 38.324883, 46.542973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228699, -0.066845, 0.971200,
		0.916795, 0.320718, 0.237962,
		-0.327388, 0.944813, -0.012065,
		30.484041, 38.608326, 46.539352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144470, 38.284519, 46.935940>,  <30.713213, 37.946957, 46.547798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144470, 38.284519, 46.935940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787300, 38.464573, 46.932724>,  <30.572998, 38.572605, 46.930794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787300, 38.464573, 46.932724>,  <31.144470, 38.284519, 46.935940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787300, 38.464573, 46.932724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036470, -0.054520, 0.997847,
		0.448730, 0.891294, 0.065098,
		-0.892923, 0.450137, -0.008040,
		30.519423, 38.599613, 46.930313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200590, 38.548740, 47.527534>,  <31.144470, 38.284519, 46.935940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200590, 38.548740, 47.527534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821545, 38.628136, 47.427429>,  <30.594118, 38.675774, 47.367367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821545, 38.628136, 47.427429>,  <31.200590, 38.548740, 47.527534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821545, 38.628136, 47.427429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228088, 0.128029, 0.965186,
		0.223620, 0.971705, -0.076049,
		-0.947613, 0.198489, -0.250264,
		30.537260, 38.687683, 47.352348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046680, 39.239578, 47.836838>,  <31.200590, 38.548740, 47.527534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046680, 39.239578, 47.836838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719427, 39.024906, 47.754242>,  <30.523075, 38.896103, 47.704685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719427, 39.024906, 47.754242>,  <31.046680, 39.239578, 47.836838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719427, 39.024906, 47.754242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169701, -0.117753, 0.978435,
		-0.549418, 0.835531, 0.005263,
		-0.818133, -0.536677, -0.206486,
		30.473988, 38.863903, 47.692295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692354, 39.429626, 48.306141>,  <31.046680, 39.239578, 47.836838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692354, 39.429626, 48.306141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499414, 39.102306, 48.181103>,  <30.383650, 38.905914, 48.106079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499414, 39.102306, 48.181103>,  <30.692354, 39.429626, 48.306141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499414, 39.102306, 48.181103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264286, -0.204280, 0.942562,
		-0.835160, 0.537259, -0.117732,
		-0.482350, -0.818304, -0.312596,
		30.354710, 38.856815, 48.087322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065348, 39.442944, 48.727612>,  <30.692354, 39.429626, 48.306141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065348, 39.442944, 48.727612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167387, 39.083496, 48.584831>,  <30.228611, 38.867828, 48.499165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167387, 39.083496, 48.584831>,  <30.065348, 39.442944, 48.727612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167387, 39.083496, 48.584831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047094, -0.357177, 0.932849,
		-0.965768, -0.254778, -0.048796,
		0.255098, -0.898617, -0.356949,
		30.243917, 38.813911, 48.477745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759083, 38.981903, 49.127487>,  <30.065348, 39.442944, 48.727612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759083, 38.981903, 49.127487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028488, 38.745247, 48.950241>,  <30.190130, 38.603252, 48.843895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028488, 38.745247, 48.950241>,  <29.759083, 38.981903, 49.127487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028488, 38.745247, 48.950241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179762, -0.450370, 0.874559,
		-0.716985, -0.668680, -0.196976,
		0.673512, -0.591637, -0.443112,
		30.230541, 38.567757, 48.817307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466818, 38.371628, 49.307041>,  <29.759083, 38.981903, 49.127487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466818, 38.371628, 49.307041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852646, 38.350399, 49.203667>,  <30.084143, 38.337662, 49.141644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852646, 38.350399, 49.203667>,  <29.466818, 38.371628, 49.307041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852646, 38.350399, 49.203667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220472, -0.375847, 0.900073,
		-0.144899, -0.925161, -0.350830,
		0.964571, -0.053071, -0.258432,
		30.142017, 38.334476, 49.126137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658833, 37.803474, 49.631298>,  <29.466818, 38.371628, 49.307041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658833, 37.803474, 49.631298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015265, 37.972153, 49.564186>,  <30.229124, 38.073360, 49.523918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015265, 37.972153, 49.564186>,  <29.658833, 37.803474, 49.631298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015265, 37.972153, 49.564186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313207, -0.303840, 0.899768,
		0.328452, -0.854314, -0.402823,
		0.891078, 0.421698, -0.167780,
		30.282589, 38.098663, 49.513851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170206, 37.314827, 49.734890>,  <29.658833, 37.803474, 49.631298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170206, 37.314827, 49.734890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337843, 37.675640, 49.776260>,  <30.438425, 37.892128, 49.801083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337843, 37.675640, 49.776260>,  <30.170206, 37.314827, 49.734890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337843, 37.675640, 49.776260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459710, -0.309048, 0.832560,
		0.782960, -0.301374, -0.544194,
		0.419094, 0.902033, 0.103428,
		30.463572, 37.946251, 49.807289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780727, 37.144638, 49.899513>,  <30.170206, 37.314827, 49.734890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780727, 37.144638, 49.899513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765741, 37.519505, 50.038258>,  <30.756750, 37.744423, 50.121506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765741, 37.519505, 50.038258>,  <30.780727, 37.144638, 49.899513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765741, 37.519505, 50.038258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453512, -0.293358, 0.841587,
		0.890462, 0.188838, -0.414026,
		-0.037466, 0.937167, 0.346864,
		30.754501, 37.800655, 50.142319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445356, 37.271828, 50.276672>,  <30.780727, 37.144638, 49.899513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445356, 37.271828, 50.276672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209795, 37.555672, 50.431408>,  <31.068459, 37.725979, 50.524250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209795, 37.555672, 50.431408>,  <31.445356, 37.271828, 50.276672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209795, 37.555672, 50.431408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312182, -0.241764, 0.918745,
		0.745476, 0.661816, -0.079153,
		-0.588903, 0.709613, 0.386837,
		31.033123, 37.768555, 50.547459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862532, 37.660919, 50.691769>,  <31.445356, 37.271828, 50.276672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862532, 37.660919, 50.691769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489176, 37.724049, 50.820686>,  <31.265162, 37.761929, 50.898037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489176, 37.724049, 50.820686>,  <31.862532, 37.660919, 50.691769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489176, 37.724049, 50.820686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288912, -0.202246, 0.935749,
		0.212869, 0.966534, 0.143176,
		-0.933390, 0.157827, 0.322295,
		31.209158, 37.771397, 50.917374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926346, 37.982864, 51.297958>,  <31.862532, 37.660919, 50.691769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926346, 37.982864, 51.297958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567623, 37.807507, 51.321785>,  <31.352390, 37.702293, 51.336082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567623, 37.807507, 51.321785>,  <31.926346, 37.982864, 51.297958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567623, 37.807507, 51.321785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205900, -0.294398, 0.933239,
		-0.391591, 0.849199, 0.354283,
		-0.896807, -0.438394, 0.059566,
		31.298582, 37.675987, 51.339653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537182, 38.360828, 51.903606>,  <31.926346, 37.982864, 51.297958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537182, 38.360828, 51.903606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378008, 37.998295, 51.846737>,  <31.282503, 37.780777, 51.812614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378008, 37.998295, 51.846737>,  <31.537182, 38.360828, 51.903606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378008, 37.998295, 51.846737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111092, -0.201439, 0.973181,
		-0.910662, 0.371469, 0.180846,
		-0.397936, -0.906329, -0.142176,
		31.258627, 37.726395, 51.804085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052189, 38.374901, 52.414402>,  <31.537182, 38.360828, 51.903606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052189, 38.374901, 52.414402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140135, 37.997295, 52.316010>,  <31.192902, 37.770733, 52.256973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140135, 37.997295, 52.316010>,  <31.052189, 38.374901, 52.414402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140135, 37.997295, 52.316010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183645, -0.207587, 0.960824,
		-0.958089, -0.256422, 0.127722,
		0.219863, -0.944010, -0.245977,
		31.206095, 37.714092, 52.242218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189423, 39.101486, 52.451595>,  <31.052189, 38.374901, 52.414402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189423, 39.101486, 52.451595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315472, 39.233269, 52.807610>,  <31.391102, 39.312336, 53.021217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315472, 39.233269, 52.807610>,  <31.189423, 39.101486, 52.451595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315472, 39.233269, 52.807610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067187, -0.943204, 0.325348,
		0.946669, -0.042727, -0.319362,
		0.315124, 0.329454, 0.890032,
		31.410009, 39.332104, 53.074619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905172, 38.916164, 52.723415>,  <31.189423, 39.101486, 52.451595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905172, 38.916164, 52.723415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641514, 38.954414, 53.021778>,  <31.483318, 38.977364, 53.200798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641514, 38.954414, 53.021778>,  <31.905172, 38.916164, 52.723415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641514, 38.954414, 53.021778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171304, -0.946713, 0.272746,
		0.732243, 0.307557, 0.607642,
		-0.659147, 0.095625, 0.745909,
		31.443769, 38.983101, 53.245552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197163, 38.657150, 53.490200>,  <31.905172, 38.916164, 52.723415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197163, 38.657150, 53.490200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802324, 38.624607, 53.435024>,  <31.565422, 38.605080, 53.401917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802324, 38.624607, 53.435024>,  <32.197163, 38.657150, 53.490200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802324, 38.624607, 53.435024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002566, -0.853202, 0.521574,
		-0.160126, 0.515196, 0.841982,
		-0.987093, -0.081357, -0.137942,
		31.506197, 38.600201, 53.393642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832094, 38.587208, 54.120155>,  <32.197163, 38.657150, 53.490200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832094, 38.587208, 54.120155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650488, 38.378025, 53.831604>,  <31.541525, 38.252514, 53.658474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650488, 38.378025, 53.831604>,  <31.832094, 38.587208, 54.120155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650488, 38.378025, 53.831604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086216, -0.831616, 0.548618,
		-0.886812, 0.186887, 0.422655,
		-0.454016, -0.522961, -0.721375,
		31.514282, 38.221138, 53.615192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245434, 38.206059, 54.339172>,  <31.832094, 38.587208, 54.120155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245434, 38.206059, 54.339172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408604, 37.958614, 54.070568>,  <31.506506, 37.810150, 53.909405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408604, 37.958614, 54.070568>,  <31.245434, 38.206059, 54.339172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408604, 37.958614, 54.070568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031362, -0.744543, 0.666837,
		-0.912476, -0.250961, -0.323120,
		0.407927, -0.618607, -0.671507,
		31.530981, 37.773033, 53.869118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706997, 37.638172, 53.973583>,  <31.245434, 38.206059, 54.339172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706997, 37.638172, 53.973583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090845, 37.569916, 54.063034>,  <31.321154, 37.528961, 54.116703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090845, 37.569916, 54.063034>,  <30.706997, 37.638172, 53.973583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090845, 37.569916, 54.063034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280939, -0.621194, 0.731568,
		0.014082, -0.764854, -0.644050,
		0.959623, -0.170637, 0.223625,
		31.378733, 37.518726, 54.130123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885321, 36.914906, 53.953053>,  <30.706997, 37.638172, 53.973583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885321, 36.914906, 53.953053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163815, 37.047642, 54.207653>,  <31.330912, 37.127285, 54.360413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163815, 37.047642, 54.207653>,  <30.885321, 36.914906, 53.953053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163815, 37.047642, 54.207653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191143, -0.769004, 0.609997,
		0.691897, -0.546365, -0.471978,
		0.696234, 0.331840, 0.636506,
		31.372684, 37.147194, 54.398605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515402, 36.341206, 54.088268>,  <30.885321, 36.914906, 53.953053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515402, 36.341206, 54.088268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174294, 36.196671, 53.937424>,  <30.969627, 36.109947, 53.846916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174294, 36.196671, 53.937424>,  <31.515402, 36.341206, 54.088268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174294, 36.196671, 53.937424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518974, -0.667392, -0.534092,
		-0.058691, -0.651169, 0.756660,
		-0.852773, -0.361340, -0.377110,
		30.918461, 36.088268, 53.824291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753744, 35.619434, 54.036583>,  <31.515402, 36.341206, 54.088268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753744, 35.619434, 54.036583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443012, 35.687866, 53.794170>,  <31.256573, 35.728924, 53.648724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443012, 35.687866, 53.794170>,  <31.753744, 35.619434, 54.036583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443012, 35.687866, 53.794170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355802, -0.674798, -0.646569,
		-0.519559, -0.717900, 0.463334,
		-0.776829, 0.171076, -0.606028,
		31.209963, 35.739189, 53.612362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602200, 34.921902, 53.998409>,  <31.753744, 35.619434, 54.036583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602200, 34.921902, 53.998409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465618, 35.110390, 53.673115>,  <31.383669, 35.223484, 53.477936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465618, 35.110390, 53.673115>,  <31.602200, 34.921902, 53.998409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465618, 35.110390, 53.673115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309458, -0.760638, -0.570672,
		-0.887494, -0.446521, 0.113899,
		-0.341453, 0.471221, -0.813241,
		31.363182, 35.251755, 53.429142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713402, 34.422050, 53.483330>,  <31.602200, 34.921902, 53.998409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713402, 34.422050, 53.483330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562342, 34.723263, 53.267799>,  <31.471706, 34.903988, 53.138481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562342, 34.723263, 53.267799>,  <31.713402, 34.422050, 53.483330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562342, 34.723263, 53.267799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240474, -0.482189, -0.842417,
		-0.894178, -0.447710, 0.001015,
		-0.377648, 0.753026, -0.538826,
		31.449047, 34.949169, 53.106152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360308, 34.194580, 52.918228>,  <31.713402, 34.422050, 53.483330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360308, 34.194580, 52.918228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455009, 34.560410, 52.787083>,  <31.511829, 34.779907, 52.708393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455009, 34.560410, 52.787083>,  <31.360308, 34.194580, 52.918228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455009, 34.560410, 52.787083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340135, -0.394128, -0.853798,
		-0.910086, 0.090620, -0.404390,
		0.236752, 0.914577, -0.327867,
		31.526035, 34.834782, 52.688721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111326, 34.336468, 52.169907>,  <31.360308, 34.194580, 52.918228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111326, 34.336468, 52.169907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432491, 34.570221, 52.216946>,  <31.625191, 34.710472, 52.245171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432491, 34.570221, 52.216946>,  <31.111326, 34.336468, 52.169907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432491, 34.570221, 52.216946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313937, -0.246846, -0.916794,
		-0.506729, 0.773023, -0.381655,
		0.802913, 0.584382, 0.117597,
		31.673365, 34.745537, 52.252224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237453, 34.613422, 51.511978>,  <31.111326, 34.336468, 52.169907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237453, 34.613422, 51.511978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586779, 34.694366, 51.689236>,  <31.796373, 34.742931, 51.795589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586779, 34.694366, 51.689236>,  <31.237453, 34.613422, 51.511978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586779, 34.694366, 51.689236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484695, -0.269501, -0.832130,
		-0.048958, 0.941499, -0.333440,
		0.873312, 0.202356, 0.443145,
		31.848772, 34.755074, 51.822178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558676, 35.090137, 51.079460>,  <31.237453, 34.613422, 51.511978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558676, 35.090137, 51.079460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839811, 34.888988, 51.280712>,  <32.008492, 34.768299, 51.401463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839811, 34.888988, 51.280712>,  <31.558676, 35.090137, 51.079460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839811, 34.888988, 51.280712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418421, -0.279737, -0.864101,
		0.575274, 0.817844, 0.013801,
		0.702839, -0.502870, 0.503129,
		32.050663, 34.738129, 51.431652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125957, 35.307480, 50.734924>,  <31.558676, 35.090137, 51.079460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125957, 35.307480, 50.734924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265236, 35.004036, 50.955204>,  <32.348801, 34.821968, 51.087372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265236, 35.004036, 50.955204>,  <32.125957, 35.307480, 50.734924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265236, 35.004036, 50.955204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504755, -0.343305, -0.792063,
		0.789926, 0.553759, 0.263377,
		0.348194, -0.758612, 0.550699,
		32.369694, 34.776451, 51.120415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849285, 35.427246, 50.865891>,  <32.125957, 35.307480, 50.734924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849285, 35.427246, 50.865891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800194, 35.030499, 50.879364>,  <32.770737, 34.792450, 50.887447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800194, 35.030499, 50.879364>,  <32.849285, 35.427246, 50.865891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800194, 35.030499, 50.879364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583899, -0.099610, -0.805692,
		0.802495, -0.079219, 0.591376,
		-0.122733, -0.991868, 0.033680,
		32.763374, 34.732937, 50.889469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533001, 35.133282, 50.700161>,  <32.849285, 35.427246, 50.865891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533001, 35.133282, 50.700161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244785, 34.865089, 50.629414>,  <33.071857, 34.704174, 50.586964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244785, 34.865089, 50.629414>,  <33.533001, 35.133282, 50.700161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244785, 34.865089, 50.629414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439150, -0.243829, -0.864693,
		0.536635, -0.700715, 0.470130,
		-0.720535, -0.670482, -0.176871,
		33.028625, 34.663944, 50.576351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900024, 34.582268, 50.353203>,  <33.533001, 35.133282, 50.700161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900024, 34.582268, 50.353203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518402, 34.486328, 50.281372>,  <33.289429, 34.428764, 50.238274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518402, 34.486328, 50.281372>,  <33.900024, 34.582268, 50.353203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518402, 34.486328, 50.281372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227026, -0.187548, -0.955659,
		0.195533, -0.952523, 0.233383,
		-0.954058, -0.239847, -0.179575,
		33.232185, 34.414375, 50.227501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935944, 34.068062, 49.975056>,  <33.900024, 34.582268, 50.353203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935944, 34.068062, 49.975056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552696, 34.158241, 49.904419>,  <33.322746, 34.212349, 49.862038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552696, 34.158241, 49.904419>,  <33.935944, 34.068062, 49.975056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552696, 34.158241, 49.904419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126415, -0.220352, -0.967194,
		-0.256969, -0.949008, 0.182622,
		-0.958116, 0.225452, -0.176593,
		33.265263, 34.225876, 49.851440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648956, 33.525444, 49.497997>,  <33.935944, 34.068062, 49.975056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648956, 33.525444, 49.497997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421795, 33.851852, 49.454933>,  <33.285500, 34.047699, 49.429096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421795, 33.851852, 49.454933>,  <33.648956, 33.525444, 49.497997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421795, 33.851852, 49.454933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033266, -0.107933, -0.993602,
		-0.822422, -0.567852, 0.034149,
		-0.567905, 0.816023, -0.107657,
		33.251423, 34.096661, 49.422638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178055, 33.364342, 49.058491>,  <33.648956, 33.525444, 49.497997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178055, 33.364342, 49.058491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171963, 33.762867, 49.024719>,  <33.168308, 34.001984, 49.004456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171963, 33.762867, 49.024719>,  <33.178055, 33.364342, 49.058491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171963, 33.762867, 49.024719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315144, -0.075346, -0.946048,
		-0.948922, -0.041017, -0.312834,
		-0.015233, 0.996313, -0.084424,
		33.167393, 34.061760, 48.999393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988503, 33.350876, 48.391315>,  <33.178055, 33.364342, 49.058491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988503, 33.350876, 48.391315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134777, 33.714104, 48.472984>,  <33.222542, 33.932041, 48.521984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134777, 33.714104, 48.472984>,  <32.988503, 33.350876, 48.391315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134777, 33.714104, 48.472984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289916, 0.097313, -0.952092,
		-0.884432, 0.407361, -0.227677,
		0.365689, 0.908068, 0.204168,
		33.244484, 33.986523, 48.534233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795361, 33.686893, 47.831287>,  <32.988503, 33.350876, 48.391315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795361, 33.686893, 47.831287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070095, 33.930889, 47.989357>,  <33.234936, 34.077286, 48.084198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070095, 33.930889, 47.989357>,  <32.795361, 33.686893, 47.831287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070095, 33.930889, 47.989357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315282, 0.239843, -0.918190,
		-0.654871, 0.755237, -0.027587,
		0.686835, 0.609993, 0.395179,
		33.276146, 34.113888, 48.107910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718166, 34.444134, 47.654430>,  <32.795361, 33.686893, 47.831287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718166, 34.444134, 47.654430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102596, 34.382698, 47.746288>,  <33.333256, 34.345837, 47.801403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102596, 34.382698, 47.746288>,  <32.718166, 34.444134, 47.654430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102596, 34.382698, 47.746288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251158, 0.139422, -0.957852,
		0.115097, 0.978250, 0.172570,
		0.961079, -0.153588, 0.229648,
		33.390919, 34.336620, 47.815182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131645, 34.954124, 47.300171>,  <32.718166, 34.444134, 47.654430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131645, 34.954124, 47.300171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397266, 34.666565, 47.382351>,  <33.556641, 34.494030, 47.431660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397266, 34.666565, 47.382351>,  <33.131645, 34.954124, 47.300171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397266, 34.666565, 47.382351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133190, -0.156652, -0.978632,
		0.735724, 0.677231, -0.008276,
		0.664056, -0.718901, 0.205453,
		33.596481, 34.450893, 47.443985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698200, 35.114780, 46.913136>,  <33.131645, 34.954124, 47.300171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698200, 35.114780, 46.913136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754074, 34.731102, 47.011463>,  <33.787598, 34.500893, 47.070461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754074, 34.731102, 47.011463>,  <33.698200, 35.114780, 46.913136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754074, 34.731102, 47.011463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184311, -0.218731, -0.958220,
		0.972892, 0.179153, 0.146238,
		0.139681, -0.959198, 0.245821,
		33.795979, 34.443344, 47.085209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351036, 34.915195, 46.538345>,  <33.698200, 35.114780, 46.913136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351036, 34.915195, 46.538345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172947, 34.568100, 46.626713>,  <34.066093, 34.359840, 46.679733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172947, 34.568100, 46.626713>,  <34.351036, 34.915195, 46.538345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172947, 34.568100, 46.626713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122615, -0.303474, -0.944917,
		0.886987, -0.393608, 0.241510,
		-0.445219, -0.867742, 0.220915,
		34.039383, 34.307777, 46.692986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795219, 34.374512, 46.300205>,  <34.351036, 34.915195, 46.538345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795219, 34.374512, 46.300205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450794, 34.174099, 46.334949>,  <34.244141, 34.053852, 46.355797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450794, 34.174099, 46.334949>,  <34.795219, 34.374512, 46.300205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450794, 34.174099, 46.334949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123792, -0.372217, -0.919853,
		0.493205, -0.781296, 0.382525,
		-0.861060, -0.501030, 0.086861,
		34.192474, 34.023788, 46.361008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862141, 33.832146, 45.854061>,  <34.795219, 34.374512, 46.300205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862141, 33.832146, 45.854061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466217, 33.847286, 45.908974>,  <34.228664, 33.856373, 45.941921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466217, 33.847286, 45.908974>,  <34.862141, 33.832146, 45.854061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466217, 33.847286, 45.908974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141870, -0.178861, -0.973592,
		-0.012300, -0.983146, 0.182409,
		-0.989809, 0.037853, 0.137279,
		34.169273, 33.858643, 45.950157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583332, 33.235722, 45.614574>,  <34.862141, 33.832146, 45.854061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583332, 33.235722, 45.614574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299286, 33.517353, 45.613140>,  <34.128857, 33.686333, 45.612278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299286, 33.517353, 45.613140>,  <34.583332, 33.235722, 45.614574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299286, 33.517353, 45.613140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051668, -0.057193, -0.997025,
		-0.702187, -0.707818, 0.076991,
		-0.710115, 0.704076, -0.003589,
		34.086250, 33.728577, 45.612064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025932, 32.912285, 45.214806>,  <34.583332, 33.235722, 45.614574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025932, 32.912285, 45.214806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951096, 33.305187, 45.220013>,  <33.906193, 33.540928, 45.223137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951096, 33.305187, 45.220013>,  <34.025932, 32.912285, 45.214806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951096, 33.305187, 45.220013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022819, 0.008907, -0.999700,
		-0.982078, -0.187329, 0.020747,
		-0.187088, 0.982257, 0.013022,
		33.894970, 33.599865, 45.223919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436241, 33.002266, 44.734230>,  <34.025932, 32.912285, 45.214806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436241, 33.002266, 44.734230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603996, 33.363140, 44.774574>,  <33.704651, 33.579666, 44.798779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603996, 33.363140, 44.774574>,  <33.436241, 33.002266, 44.734230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603996, 33.363140, 44.774574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033633, 0.126466, -0.991400,
		-0.907183, 0.412391, 0.083381,
		0.419390, 0.902186, 0.100858,
		33.729813, 33.633797, 44.804832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036816, 33.378139, 44.424980>,  <33.436241, 33.002266, 44.734230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036816, 33.378139, 44.424980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386097, 33.573082, 44.424744>,  <33.595665, 33.690048, 44.424603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386097, 33.573082, 44.424744>,  <33.036816, 33.378139, 44.424980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386097, 33.573082, 44.424744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083559, 0.148516, -0.985373,
		-0.480137, 0.860482, 0.170408,
		0.873204, 0.487354, -0.000593,
		33.648060, 33.719288, 44.424564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845612, 33.898537, 44.010387>,  <33.036816, 33.378139, 44.424980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845612, 33.898537, 44.010387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245090, 33.909096, 43.992893>,  <33.484776, 33.915432, 43.982395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245090, 33.909096, 43.992893>,  <32.845612, 33.898537, 44.010387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245090, 33.909096, 43.992893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047938, 0.188331, -0.980935,
		-0.017656, 0.981751, 0.189351,
		0.998694, 0.026396, -0.043738,
		33.544701, 33.917015, 43.979771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951221, 34.313648, 43.487804>,  <32.845612, 33.898537, 44.010387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951221, 34.313648, 43.487804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312973, 34.143955, 43.506233>,  <33.530025, 34.042137, 43.517292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312973, 34.143955, 43.506233>,  <32.951221, 34.313648, 43.487804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312973, 34.143955, 43.506233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118650, 0.146274, -0.982103,
		0.409904, 0.893660, 0.182623,
		0.904379, -0.424236, 0.046074,
		33.584286, 34.016685, 43.520054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336731, 34.758549, 42.979214>,  <32.951221, 34.313648, 43.487804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336731, 34.758549, 42.979214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538692, 34.415630, 43.019455>,  <33.659870, 34.209881, 43.043602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538692, 34.415630, 43.019455>,  <33.336731, 34.758549, 42.979214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538692, 34.415630, 43.019455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070795, -0.075032, -0.994665,
		0.860270, 0.509328, 0.022808,
		0.504899, -0.857295, 0.100605,
		33.690163, 34.158443, 43.049637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826061, 34.745487, 42.440601>,  <33.336731, 34.758549, 42.979214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826061, 34.745487, 42.440601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808979, 34.359520, 42.544228>,  <33.798729, 34.127941, 42.606403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808979, 34.359520, 42.544228>,  <33.826061, 34.745487, 42.440601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808979, 34.359520, 42.544228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198626, -0.262327, -0.944316,
		0.979144, 0.011127, 0.202861,
		-0.042709, -0.964915, 0.259066,
		33.796165, 34.070045, 42.621948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484863, 34.448467, 42.230103>,  <33.826061, 34.745487, 42.440601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484863, 34.448467, 42.230103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210999, 34.161430, 42.281166>,  <34.046680, 33.989208, 42.311806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210999, 34.161430, 42.281166>,  <34.484863, 34.448467, 42.230103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210999, 34.161430, 42.281166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060132, -0.230164, -0.971292,
		0.726374, -0.657333, 0.200736,
		-0.684664, -0.717592, 0.127658,
		34.005600, 33.946152, 42.319462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775978, 33.951286, 41.862850>,  <34.484863, 34.448467, 42.230103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775978, 33.951286, 41.862850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388268, 33.858780, 41.896385>,  <34.155643, 33.803276, 41.916508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388268, 33.858780, 41.896385>,  <34.775978, 33.951286, 41.862850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388268, 33.858780, 41.896385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040537, -0.185995, -0.981714,
		0.242628, -0.954946, 0.170905,
		-0.969272, -0.231264, 0.083839,
		34.097485, 33.789402, 41.921535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729210, 33.397469, 41.423763>,  <34.775978, 33.951286, 41.862850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729210, 33.397469, 41.423763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360229, 33.545494, 41.467823>,  <34.138840, 33.634312, 41.494259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360229, 33.545494, 41.467823>,  <34.729210, 33.397469, 41.423763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360229, 33.545494, 41.467823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202117, -0.219732, -0.954393,
		-0.328986, -0.902645, 0.277489,
		-0.922452, 0.370067, 0.110152,
		34.083492, 33.656513, 41.500870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345692, 32.944267, 41.068901>,  <34.729210, 33.397469, 41.423763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345692, 32.944267, 41.068901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134163, 33.282482, 41.098339>,  <34.007244, 33.485409, 41.116001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134163, 33.282482, 41.098339>,  <34.345692, 32.944267, 41.068901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134163, 33.282482, 41.098339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315347, -0.115239, -0.941953,
		-0.787971, -0.521338, 0.327578,
		-0.528826, 0.845533, 0.073597,
		33.975513, 33.536140, 41.120419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802551, 32.788162, 40.672153>,  <34.345692, 32.944267, 41.068901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802551, 32.788162, 40.672153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801468, 33.186222, 40.711483>,  <33.800819, 33.425056, 40.735081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801468, 33.186222, 40.711483>,  <33.802551, 32.788162, 40.672153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801468, 33.186222, 40.711483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374922, 0.090146, -0.922663,
		-0.927053, -0.039362, 0.372860,
		-0.002706, 0.995150, 0.098328,
		33.800655, 33.484768, 40.740982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192333, 32.954945, 40.338242>,  <33.802551, 32.788162, 40.672153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192333, 32.954945, 40.338242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403416, 33.293556, 40.366268>,  <33.530067, 33.496723, 40.383083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403416, 33.293556, 40.366268>,  <33.192333, 32.954945, 40.338242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403416, 33.293556, 40.366268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155447, 0.177339, -0.971796,
		-0.835080, 0.501934, 0.225174,
		0.527709, 0.846530, 0.070068,
		33.561729, 33.547516, 40.387287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750744, 33.565243, 40.013233>,  <33.192333, 32.954945, 40.338242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750744, 33.565243, 40.013233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137596, 33.663425, 39.986694>,  <33.369709, 33.722336, 39.970772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137596, 33.663425, 39.986694>,  <32.750744, 33.565243, 40.013233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137596, 33.663425, 39.986694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155031, 0.362422, -0.919030,
		-0.201533, 0.899112, 0.388564,
		0.967135, 0.245454, -0.066350,
		33.427738, 33.737061, 39.966789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773621, 34.149151, 39.612862>,  <32.750744, 33.565243, 40.013233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773621, 34.149151, 39.612862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150623, 34.016792, 39.594166>,  <33.376827, 33.937378, 39.582951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150623, 34.016792, 39.594166>,  <32.773621, 34.149151, 39.612862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150623, 34.016792, 39.594166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116565, 0.456599, -0.882004,
		0.313188, 0.825850, 0.468920,
		0.942511, -0.330892, -0.046736,
		33.433376, 33.917526, 39.580143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101753, 34.678932, 39.544262>,  <32.773621, 34.149151, 39.612862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101753, 34.678932, 39.544262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346649, 34.397774, 39.399429>,  <33.493587, 34.229080, 39.312531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346649, 34.397774, 39.399429>,  <33.101753, 34.678932, 39.544262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346649, 34.397774, 39.399429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097048, 0.521283, -0.847848,
		0.784693, 0.483947, 0.387365,
		0.612240, -0.702894, -0.362081,
		33.530323, 34.186905, 39.290806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614090, 35.003922, 39.268513>,  <33.101753, 34.678932, 39.544262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614090, 35.003922, 39.268513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647617, 34.648277, 39.088535>,  <33.667732, 34.434891, 38.980549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647617, 34.648277, 39.088535>,  <33.614090, 35.003922, 39.268513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647617, 34.648277, 39.088535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155073, 0.457673, -0.875493,
		0.984341, 0.003606, 0.176238,
		0.083817, -0.889113, -0.449947,
		33.672764, 34.381542, 38.953552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226925, 34.984943, 38.930801>,  <33.614090, 35.003922, 39.268513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226925, 34.984943, 38.930801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980572, 34.731659, 38.743301>,  <33.832760, 34.579689, 38.630802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980572, 34.731659, 38.743301>,  <34.226925, 34.984943, 38.930801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980572, 34.731659, 38.743301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183100, 0.463646, -0.866895,
		0.766263, -0.619736, -0.169612,
		-0.615886, -0.633214, -0.468749,
		33.795807, 34.541695, 38.602676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493519, 34.641502, 38.306873>,  <34.226925, 34.984943, 38.930801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493519, 34.641502, 38.306873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094616, 34.651009, 38.278816>,  <33.855274, 34.656712, 38.261982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094616, 34.651009, 38.278816>,  <34.493519, 34.641502, 38.306873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094616, 34.651009, 38.278816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073981, 0.363114, -0.928803,
		0.003400, -0.931442, -0.363875,
		-0.997254, 0.023762, -0.070144,
		33.795441, 34.658138, 38.257774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017441, 34.117733, 38.606747>,  <34.493519, 34.641502, 38.306873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017441, 34.117733, 38.606747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363266, 34.288906, 38.501377>,  <35.570763, 34.391609, 38.438156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363266, 34.288906, 38.501377>,  <35.017441, 34.117733, 38.606747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363266, 34.288906, 38.501377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310725, -0.043271, 0.949514,
		0.394934, -0.902772, -0.170381,
		0.864568, 0.427937, -0.263425,
		35.622635, 34.417286, 38.422348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553741, 33.695107, 38.879105>,  <35.017441, 34.117733, 38.606747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553741, 33.695107, 38.879105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713398, 34.061214, 38.857307>,  <35.809193, 34.280880, 38.844231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713398, 34.061214, 38.857307>,  <35.553741, 33.695107, 38.879105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713398, 34.061214, 38.857307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305669, -0.076802, 0.949035,
		0.864437, -0.395455, -0.310424,
		0.399142, 0.915269, -0.054488,
		35.833141, 34.335796, 38.840961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150677, 33.658272, 39.182480>,  <35.553741, 33.695107, 38.879105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150677, 33.658272, 39.182480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080925, 34.049564, 39.227470>,  <36.039074, 34.284340, 39.254463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080925, 34.049564, 39.227470>,  <36.150677, 33.658272, 39.182480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080925, 34.049564, 39.227470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299130, -0.056199, 0.952556,
		0.938144, 0.199746, -0.282820,
		-0.174375, 0.978235, 0.112473,
		36.028614, 34.343037, 39.261211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695950, 33.879421, 39.671360>,  <36.150677, 33.658272, 39.182480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695950, 33.879421, 39.671360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461948, 34.203686, 39.681107>,  <36.321548, 34.398247, 39.686954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461948, 34.203686, 39.681107>,  <36.695950, 33.879421, 39.671360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461948, 34.203686, 39.681107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132419, 0.065835, 0.989005,
		0.800146, 0.581800, -0.145861,
		-0.585006, 0.810663, 0.024363,
		36.286446, 34.446884, 39.688416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086796, 34.302692, 39.993530>,  <36.695950, 33.879421, 39.671360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086796, 34.302692, 39.993530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702206, 34.395058, 40.053200>,  <36.471451, 34.450478, 40.089001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702206, 34.395058, 40.053200>,  <37.086796, 34.302692, 39.993530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702206, 34.395058, 40.053200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189233, 0.162324, 0.968422,
		0.199410, 0.959338, -0.199767,
		-0.961471, 0.230916, 0.149170,
		36.413765, 34.464333, 40.097950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113609, 34.952408, 40.398262>,  <37.086796, 34.302692, 39.993530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113609, 34.952408, 40.398262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739689, 34.825573, 40.462276>,  <36.515339, 34.749474, 40.500687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739689, 34.825573, 40.462276>,  <37.113609, 34.952408, 40.398262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739689, 34.825573, 40.462276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118758, 0.145606, 0.982189,
		-0.334740, 0.937153, -0.098455,
		-0.934797, -0.317086, 0.160035,
		36.459251, 34.730446, 40.510288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831009, 35.479424, 40.774189>,  <37.113609, 34.952408, 40.398262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831009, 35.479424, 40.774189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608074, 35.152248, 40.831245>,  <36.474312, 34.955944, 40.865479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608074, 35.152248, 40.831245>,  <36.831009, 35.479424, 40.774189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608074, 35.152248, 40.831245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149346, 0.070239, 0.986287,
		-0.816741, 0.571002, 0.083008,
		-0.557342, -0.817938, 0.142644,
		36.440872, 34.906868, 40.874039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239697, 35.695900, 41.217224>,  <36.831009, 35.479424, 40.774189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239697, 35.695900, 41.217224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283298, 35.300655, 41.260574>,  <36.309460, 35.063507, 41.286583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283298, 35.300655, 41.260574>,  <36.239697, 35.695900, 41.217224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283298, 35.300655, 41.260574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019890, 0.106834, 0.994078,
		-0.993842, -0.110517, -0.008008,
		0.109007, -0.988115, 0.108374,
		36.316002, 35.004219, 41.293087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833649, 35.447159, 41.760956>,  <36.239697, 35.695900, 41.217224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833649, 35.447159, 41.760956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100086, 35.149612, 41.739128>,  <36.259949, 34.971085, 41.726032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100086, 35.149612, 41.739128>,  <35.833649, 35.447159, 41.760956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100086, 35.149612, 41.739128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088867, 0.006511, 0.996022,
		-0.740554, -0.668295, 0.070442,
		0.666095, -0.743868, -0.054567,
		36.299915, 34.926453, 41.722759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619034, 35.014023, 42.176907>,  <35.833649, 35.447159, 41.760956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619034, 35.014023, 42.176907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001438, 34.898552, 42.156109>,  <36.230881, 34.829269, 42.143631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001438, 34.898552, 42.156109>,  <35.619034, 35.014023, 42.176907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001438, 34.898552, 42.156109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016933, -0.122651, 0.992305,
		-0.292833, -0.949538, -0.112368,
		0.956014, -0.288677, -0.051994,
		36.288242, 34.811947, 42.140511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721100, 34.477646, 42.686913>,  <35.619034, 35.014023, 42.176907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721100, 34.477646, 42.686913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106709, 34.569645, 42.633610>,  <36.338074, 34.624844, 42.601627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106709, 34.569645, 42.633610>,  <35.721100, 34.477646, 42.686913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106709, 34.569645, 42.633610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156853, -0.087483, 0.983740,
		0.214602, -0.969251, -0.120411,
		0.964024, 0.230000, -0.133256,
		36.395916, 34.638645, 42.593632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142387, 33.926937, 43.075096>,  <35.721100, 34.477646, 42.686913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142387, 33.926937, 43.075096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366344, 34.252117, 43.011051>,  <36.500717, 34.447224, 42.972626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366344, 34.252117, 43.011051>,  <36.142387, 33.926937, 43.075096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366344, 34.252117, 43.011051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237535, 0.027647, 0.970986,
		0.793790, -0.581676, -0.177625,
		0.559888, 0.812950, -0.160114,
		36.534309, 34.496002, 42.963017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720406, 33.776337, 43.305389>,  <36.142387, 33.926937, 43.075096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720406, 33.776337, 43.305389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710484, 34.176208, 43.303425>,  <36.704529, 34.416130, 43.302246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710484, 34.176208, 43.303425>,  <36.720406, 33.776337, 43.305389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710484, 34.176208, 43.303425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403054, 0.014496, 0.915061,
		0.914840, 0.020722, -0.403285,
		-0.024808, 0.999680, -0.004910,
		36.703041, 34.476112, 43.301952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404030, 34.011547, 43.611202>,  <36.720406, 33.776337, 43.305389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404030, 34.011547, 43.611202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184170, 34.344135, 43.643555>,  <37.052254, 34.543690, 43.662968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184170, 34.344135, 43.643555>,  <37.404030, 34.011547, 43.611202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184170, 34.344135, 43.643555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296065, 0.103348, 0.949560,
		0.781171, 0.545873, -0.302975,
		-0.549651, 0.831470, 0.080882,
		37.019276, 34.593575, 43.667820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805817, 34.467812, 44.058479>,  <37.404030, 34.011547, 43.611202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805817, 34.467812, 44.058479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449326, 34.649227, 44.056564>,  <37.235432, 34.758076, 44.055416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449326, 34.649227, 44.056564>,  <37.805817, 34.467812, 44.058479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449326, 34.649227, 44.056564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121189, 0.248296, 0.961074,
		0.437074, 0.855951, -0.276251,
		-0.891224, 0.453539, -0.004792,
		37.181957, 34.785290, 44.055126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732288, 35.150105, 44.349648>,  <37.805817, 34.467812, 44.058479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732288, 35.150105, 44.349648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360435, 35.008217, 44.389565>,  <37.137325, 34.923084, 44.413513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360435, 35.008217, 44.389565>,  <37.732288, 35.150105, 44.349648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360435, 35.008217, 44.389565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018304, 0.226029, 0.973949,
		-0.368033, 0.907241, -0.203631,
		-0.929632, -0.354718, 0.099792,
		37.081547, 34.901802, 44.419502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530567, 35.435760, 44.920952>,  <37.732288, 35.150105, 44.349648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530567, 35.435760, 44.920952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234066, 35.169029, 44.890270>,  <37.056164, 35.008991, 44.871861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234066, 35.169029, 44.890270>,  <37.530567, 35.435760, 44.920952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234066, 35.169029, 44.890270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156076, 0.060084, 0.985916,
		-0.652828, 0.742785, -0.148613,
		-0.741253, -0.666828, -0.076706,
		37.011688, 34.968983, 44.867260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868946, 35.710690, 45.263668>,  <37.530567, 35.435760, 44.920952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868946, 35.710690, 45.263668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819347, 35.314201, 45.245316>,  <36.789589, 35.076309, 45.234303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819347, 35.314201, 45.245316>,  <36.868946, 35.710690, 45.263668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819347, 35.314201, 45.245316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348959, 0.000273, 0.937138,
		-0.928898, 0.132214, -0.345929,
		-0.123997, -0.991221, -0.045884,
		36.782146, 35.016834, 45.231552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203472, 35.600529, 45.645657>,  <36.868946, 35.710690, 45.263668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203472, 35.600529, 45.645657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378990, 35.243801, 45.601620>,  <36.484299, 35.029766, 45.575199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378990, 35.243801, 45.601620>,  <36.203472, 35.600529, 45.645657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378990, 35.243801, 45.601620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419051, -0.311466, 0.852869,
		-0.794894, -0.328098, -0.510387,
		0.438793, -0.891819, -0.110093,
		36.510628, 34.976257, 45.568592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705696, 35.083263, 45.885708>,  <36.203472, 35.600529, 45.645657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705696, 35.083263, 45.885708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068096, 34.916134, 45.912811>,  <36.285534, 34.815857, 45.929073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068096, 34.916134, 45.912811>,  <35.705696, 35.083263, 45.885708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068096, 34.916134, 45.912811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250245, -0.399599, 0.881872,
		-0.341389, -0.815931, -0.466594,
		0.905998, -0.417824, 0.067764,
		36.339893, 34.790787, 45.933140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617062, 34.450542, 46.193333>,  <35.705696, 35.083263, 45.885708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617062, 34.450542, 46.193333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005112, 34.527134, 46.252926>,  <36.237942, 34.573090, 46.288681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005112, 34.527134, 46.252926>,  <35.617062, 34.450542, 46.193333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005112, 34.527134, 46.252926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128766, -0.114078, 0.985092,
		0.205621, -0.974845, -0.086014,
		0.970123, 0.191480, 0.148984,
		36.296150, 34.584579, 46.297623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705990, 33.874924, 46.491390>,  <35.617062, 34.450542, 46.193333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705990, 33.874924, 46.491390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978420, 34.156139, 46.573238>,  <36.141880, 34.324867, 46.622349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978420, 34.156139, 46.573238>,  <35.705990, 33.874924, 46.491390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978420, 34.156139, 46.573238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257677, -0.031447, 0.965719,
		0.685372, -0.710456, 0.159739,
		0.681078, 0.703038, 0.204621,
		36.182743, 34.367050, 46.634624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992672, 33.649822, 47.142757>,  <35.705990, 33.874924, 46.491390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992672, 33.649822, 47.142757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134109, 34.023190, 47.118431>,  <36.218971, 34.247211, 47.103836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134109, 34.023190, 47.118431>,  <35.992672, 33.649822, 47.142757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134109, 34.023190, 47.118431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114875, 0.107861, 0.987507,
		0.928319, -0.342188, 0.145366,
		0.353592, 0.933420, -0.060820,
		36.240189, 34.303215, 47.100185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516724, 33.719845, 47.593758>,  <35.992672, 33.649822, 47.142757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516724, 33.719845, 47.593758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428375, 34.108868, 47.564495>,  <36.375366, 34.342281, 47.546940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428375, 34.108868, 47.564495>,  <36.516724, 33.719845, 47.593758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428375, 34.108868, 47.564495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080621, 0.056544, 0.995140,
		0.971965, 0.225695, 0.065920,
		-0.220871, 0.972556, -0.073154,
		36.362114, 34.400635, 47.542549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869026, 34.177937, 48.180172>,  <36.516724, 33.719845, 47.593758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869026, 34.177937, 48.180172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576836, 34.412273, 48.039776>,  <36.401520, 34.552876, 47.955540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576836, 34.412273, 48.039776>,  <36.869026, 34.177937, 48.180172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576836, 34.412273, 48.039776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195537, 0.313013, 0.929402,
		0.654347, 0.747538, -0.114095,
		-0.730476, 0.585841, -0.350990,
		36.357693, 34.588024, 47.934479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032337, 34.806812, 48.552319>,  <36.869026, 34.177937, 48.180172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032337, 34.806812, 48.552319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647793, 34.825230, 48.443756>,  <36.417065, 34.836281, 48.378620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647793, 34.825230, 48.443756>,  <37.032337, 34.806812, 48.552319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647793, 34.825230, 48.443756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197900, 0.569730, 0.797648,
		0.191353, 0.820541, -0.538606,
		-0.961363, 0.046042, -0.271404,
		36.359383, 34.839043, 48.362335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854633, 35.537334, 48.583908>,  <37.032337, 34.806812, 48.552319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854633, 35.537334, 48.583908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506889, 35.339664, 48.585194>,  <36.298244, 35.221062, 48.585964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506889, 35.339664, 48.585194>,  <36.854633, 35.537334, 48.583908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506889, 35.339664, 48.585194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259592, 0.462198, 0.847930,
		-0.420510, 0.736320, -0.530099,
		-0.869358, -0.494172, 0.003217,
		36.246082, 35.191414, 48.586159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585621, 35.883556, 49.026722>,  <36.854633, 35.537334, 48.583908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585621, 35.883556, 49.026722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329754, 35.578499, 48.988358>,  <36.176235, 35.395466, 48.965340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329754, 35.578499, 48.988358>,  <36.585621, 35.883556, 49.026722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329754, 35.578499, 48.988358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307050, 0.139138, 0.941468,
		-0.704660, 0.631676, -0.323171,
		-0.639667, -0.762645, -0.095911,
		36.137856, 35.349705, 48.959583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925636, 36.172699, 49.144524>,  <36.585621, 35.883556, 49.026722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925636, 36.172699, 49.144524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908409, 35.782013, 49.228588>,  <35.898075, 35.547600, 49.279026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908409, 35.782013, 49.228588>,  <35.925636, 36.172699, 49.144524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908409, 35.782013, 49.228588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053159, 0.212302, 0.975757,
		-0.997657, 0.030848, -0.061064,
		-0.043064, -0.976717, 0.210164,
		35.895489, 35.488998, 49.291637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327339, 36.085407, 49.608978>,  <35.925636, 36.172699, 49.144524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327339, 36.085407, 49.608978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563229, 35.769066, 49.674431>,  <35.704762, 35.579262, 49.713703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563229, 35.769066, 49.674431>,  <35.327339, 36.085407, 49.608978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563229, 35.769066, 49.674431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128202, 0.108372, 0.985809,
		-0.797363, -0.602335, -0.037479,
		0.589726, -0.790853, 0.163632,
		35.740147, 35.531811, 49.723522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905453, 35.629925, 50.087646>,  <35.327339, 36.085407, 49.608978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905453, 35.629925, 50.087646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303543, 35.591049, 50.091030>,  <35.542397, 35.567722, 50.093060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303543, 35.591049, 50.091030>,  <34.905453, 35.629925, 50.087646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303543, 35.591049, 50.091030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009485, 0.182686, 0.983126,
		-0.097098, -0.978355, 0.182736,
		0.995230, -0.097192, 0.008459,
		35.602112, 35.561893, 50.093567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916744, 35.710140, 50.686840>,  <34.905453, 35.629925, 50.087646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916744, 35.710140, 50.686840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306698, 35.670673, 50.606979>,  <35.540672, 35.646992, 50.559063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306698, 35.670673, 50.606979>,  <34.916744, 35.710140, 50.686840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306698, 35.670673, 50.606979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206511, 0.064895, 0.976290,
		-0.083376, -0.993002, 0.083642,
		0.974885, -0.098672, -0.199655,
		35.599163, 35.641071, 50.547081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157635, 35.264915, 51.099197>,  <34.916744, 35.710140, 50.686840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157635, 35.264915, 51.099197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472675, 35.495197, 51.011337>,  <35.661701, 35.633366, 50.958622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472675, 35.495197, 51.011337>,  <35.157635, 35.264915, 51.099197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472675, 35.495197, 51.011337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159298, 0.154118, 0.975127,
		0.595235, -0.803003, 0.029675,
		0.787603, 0.575702, -0.219654,
		35.708958, 35.667908, 50.945442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687576, 35.129391, 51.579914>,  <35.157635, 35.264915, 51.099197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687576, 35.129391, 51.579914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818672, 35.481396, 51.442417>,  <35.897331, 35.692600, 51.359917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818672, 35.481396, 51.442417>,  <35.687576, 35.129391, 51.579914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818672, 35.481396, 51.442417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308913, 0.244025, 0.919252,
		0.892837, -0.407465, -0.191870,
		0.327742, 0.880014, -0.343746,
		35.916996, 35.745399, 51.339294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377403, 35.355263, 51.942749>,  <35.687576, 35.129391, 51.579914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377403, 35.355263, 51.942749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198372, 35.685543, 51.805412>,  <36.090950, 35.883713, 51.723011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198372, 35.685543, 51.805412>,  <36.377403, 35.355263, 51.942749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198372, 35.685543, 51.805412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244887, 0.482442, 0.840999,
		0.860058, 0.292338, -0.418137,
		-0.447583, 0.825704, -0.343339,
		36.064098, 35.933254, 51.702412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867737, 35.830608, 52.194214>,  <36.377403, 35.355263, 51.942749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867737, 35.830608, 52.194214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513275, 36.006950, 52.137100>,  <36.300598, 36.112755, 52.102833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513275, 36.006950, 52.137100>,  <36.867737, 35.830608, 52.194214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513275, 36.006950, 52.137100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074957, 0.440429, 0.894653,
		0.457293, 0.782095, -0.423332,
		-0.886151, 0.440851, -0.142782,
		36.247429, 36.139206, 52.094265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040829, 36.498638, 52.485001>,  <36.867737, 35.830608, 52.194214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040829, 36.498638, 52.485001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642700, 36.467403, 52.462234>,  <36.403824, 36.448662, 52.448574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642700, 36.467403, 52.462234>,  <37.040829, 36.498638, 52.485001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642700, 36.467403, 52.462234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086950, 0.466816, 0.880070,
		-0.042154, 0.880900, -0.471421,
		-0.995320, -0.078089, -0.056916,
		36.344105, 36.443977, 52.445160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746281, 37.097233, 52.541565>,  <37.040829, 36.498638, 52.485001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746281, 37.097233, 52.541565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836025, 37.485851, 52.511230>,  <36.889874, 37.719025, 52.493031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836025, 37.485851, 52.511230>,  <36.746281, 37.097233, 52.541565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836025, 37.485851, 52.511230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511339, -0.183621, -0.839534,
		-0.829574, 0.149583, -0.537989,
		0.224366, 0.971549, -0.075839,
		36.903336, 37.777317, 52.488480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776173, 37.128269, 51.908638>,  <36.746281, 37.097233, 52.541565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776173, 37.128269, 51.908638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946194, 37.477734, 52.003338>,  <37.048206, 37.687412, 52.060158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946194, 37.477734, 52.003338>,  <36.776173, 37.128269, 51.908638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946194, 37.477734, 52.003338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662238, -0.121844, -0.739320,
		-0.617066, 0.471037, -0.630360,
		0.425053, 0.873658, 0.236752,
		37.073708, 37.739830, 52.074364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715588, 37.570431, 51.401005>,  <36.776173, 37.128269, 51.908638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715588, 37.570431, 51.401005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035030, 37.718651, 51.590710>,  <37.226696, 37.807583, 51.704533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035030, 37.718651, 51.590710>,  <36.715588, 37.570431, 51.401005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035030, 37.718651, 51.590710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490389, 0.056227, -0.869688,
		-0.348929, 0.927109, -0.136811,
		0.798603, 0.370550, 0.474263,
		37.274612, 37.829815, 51.732990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912312, 38.147881, 51.075584>,  <36.715588, 37.570431, 51.401005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912312, 38.147881, 51.075584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238426, 38.018929, 51.267990>,  <37.434093, 37.941559, 51.383434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238426, 38.018929, 51.267990>,  <36.912312, 38.147881, 51.075584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238426, 38.018929, 51.267990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531764, 0.088026, -0.842305,
		0.229200, 0.942509, 0.243197,
		0.815288, -0.322380, 0.481017,
		37.483013, 37.922215, 51.412296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382195, 38.567421, 50.861401>,  <36.912312, 38.147881, 51.075584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382195, 38.567421, 50.861401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616257, 38.270718, 50.992481>,  <37.756695, 38.092697, 51.071129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616257, 38.270718, 50.992481>,  <37.382195, 38.567421, 50.861401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616257, 38.270718, 50.992481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632891, 0.165086, -0.756436,
		0.506995, 0.650031, 0.566053,
		0.585154, -0.741759, 0.327701,
		37.791801, 38.048191, 51.090790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082237, 38.839672, 50.883076>,  <37.382195, 38.567421, 50.861401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082237, 38.839672, 50.883076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114601, 38.441055, 50.875568>,  <38.134018, 38.201885, 50.871063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114601, 38.441055, 50.875568>,  <38.082237, 38.839672, 50.883076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114601, 38.441055, 50.875568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684809, 0.069265, -0.725423,
		0.724217, 0.045840, 0.688047,
		0.080911, -0.996545, -0.018772,
		38.138874, 38.142094, 50.869938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778122, 38.725883, 50.737549>,  <38.082237, 38.839672, 50.883076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778122, 38.725883, 50.737549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608307, 38.370571, 50.667446>,  <38.506416, 38.157383, 50.625385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608307, 38.370571, 50.667446>,  <38.778122, 38.725883, 50.737549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608307, 38.370571, 50.667446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569508, -0.111506, -0.814388,
		0.703867, -0.445550, 0.553224,
		-0.424538, -0.888286, -0.175259,
		38.480946, 38.104084, 50.614868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344170, 38.318718, 50.621006>,  <38.778122, 38.725883, 50.737549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344170, 38.318718, 50.621006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023609, 38.152893, 50.448544>,  <38.831272, 38.053398, 50.345066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023609, 38.152893, 50.448544>,  <39.344170, 38.318718, 50.621006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023609, 38.152893, 50.448544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499276, -0.066699, -0.863872,
		0.329373, -0.907572, 0.260435,
		-0.801397, -0.414566, -0.431160,
		38.783192, 38.028522, 50.319195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679951, 37.883434, 50.143448>,  <39.344170, 38.318718, 50.621006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679951, 37.883434, 50.143448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302708, 37.858231, 50.012867>,  <39.076363, 37.843109, 49.934517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302708, 37.858231, 50.012867>,  <39.679951, 37.883434, 50.143448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302708, 37.858231, 50.012867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329149, -0.038335, -0.943500,
		0.046937, -0.997276, 0.056894,
		-0.943111, -0.063011, -0.326453,
		39.019775, 37.839329, 49.914932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622421, 37.274788, 49.701191>,  <39.679951, 37.883434, 50.143448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622421, 37.274788, 49.701191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313927, 37.501572, 49.585434>,  <39.128830, 37.637642, 49.515980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313927, 37.501572, 49.585434>,  <39.622421, 37.274788, 49.701191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313927, 37.501572, 49.585434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165178, -0.260798, -0.951157,
		-0.614739, -0.781372, 0.107489,
		-0.771240, 0.566959, -0.289389,
		39.082554, 37.671658, 49.498619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211803, 36.852364, 49.344761>,  <39.622421, 37.274788, 49.701191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211803, 36.852364, 49.344761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106941, 37.220093, 49.227371>,  <39.044025, 37.440731, 49.156937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106941, 37.220093, 49.227371>,  <39.211803, 36.852364, 49.344761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106941, 37.220093, 49.227371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010650, -0.301336, -0.953459,
		-0.964967, -0.253081, 0.069207,
		-0.262156, 0.919319, -0.293475,
		39.028294, 37.495888, 49.139328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611210, 36.845165, 48.912003>,  <39.211803, 36.852364, 49.344761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611210, 36.845165, 48.912003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818054, 37.178535, 48.834038>,  <38.942162, 37.378559, 48.787258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818054, 37.178535, 48.834038>,  <38.611210, 36.845165, 48.912003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818054, 37.178535, 48.834038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018322, -0.216894, -0.976023,
		-0.855721, 0.508286, -0.096888,
		0.517113, 0.833428, -0.194913,
		38.973186, 37.428562, 48.775562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302128, 36.982960, 48.303368>,  <38.611210, 36.845165, 48.912003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302128, 36.982960, 48.303368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659340, 37.160030, 48.335712>,  <38.873665, 37.266273, 48.355122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659340, 37.160030, 48.335712>,  <38.302128, 36.982960, 48.303368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659340, 37.160030, 48.335712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099732, -0.019466, -0.994824,
		-0.438813, 0.896469, -0.061533,
		0.893027, 0.442679, 0.080865,
		38.927246, 37.292835, 48.359970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303101, 37.493938, 47.813194>,  <38.302128, 36.982960, 48.303368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303101, 37.493938, 47.813194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687805, 37.419178, 47.893276>,  <38.918629, 37.374321, 47.941326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687805, 37.419178, 47.893276>,  <38.303101, 37.493938, 47.813194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687805, 37.419178, 47.893276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155163, -0.230530, -0.960615,
		0.225691, 0.954948, -0.192715,
		0.961763, -0.186900, 0.200201,
		38.976334, 37.363110, 47.953335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660233, 37.915848, 47.389957>,  <38.303101, 37.493938, 47.813194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660233, 37.915848, 47.389957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899857, 37.612965, 47.494080>,  <39.043633, 37.431236, 47.556553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899857, 37.612965, 47.494080>,  <38.660233, 37.915848, 47.389957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899857, 37.612965, 47.494080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221531, -0.155663, -0.962649,
		0.769445, 0.634355, 0.074493,
		0.599065, -0.757208, 0.260303,
		39.079575, 37.385803, 47.572170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323921, 38.044693, 46.881447>,  <38.660233, 37.915848, 47.389957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323921, 38.044693, 46.881447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311359, 37.675362, 47.034542>,  <39.303822, 37.453762, 47.126400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311359, 37.675362, 47.034542>,  <39.323921, 38.044693, 46.881447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311359, 37.675362, 47.034542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100387, -0.383900, -0.917902,
		0.994453, 0.009598, 0.104745,
		-0.031401, -0.923325, 0.382734,
		39.301937, 37.398365, 47.149361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849026, 37.596245, 46.508232>,  <39.323921, 38.044693, 46.881447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849026, 37.596245, 46.508232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595695, 37.341839, 46.684586>,  <39.443695, 37.189194, 46.790398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595695, 37.341839, 46.684586>,  <39.849026, 37.596245, 46.508232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595695, 37.341839, 46.684586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010035, -0.576406, -0.817102,
		0.773818, -0.513069, 0.371437,
		-0.633328, -0.636015, 0.440885,
		39.405697, 37.151035, 46.816853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028992, 36.861717, 46.340675>,  <39.849026, 37.596245, 46.508232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028992, 36.861717, 46.340675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637650, 36.869209, 46.423107>,  <39.402843, 36.873703, 46.472565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637650, 36.869209, 46.423107>,  <40.028992, 36.861717, 46.340675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637650, 36.869209, 46.423107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198981, -0.358519, -0.912070,
		0.056803, -0.933335, 0.354485,
		-0.978356, 0.018727, 0.206081,
		39.344143, 36.874828, 46.484932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752167, 36.177502, 46.155678>,  <40.028992, 36.861717, 46.340675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752167, 36.177502, 46.155678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451580, 36.441292, 46.163521>,  <39.271229, 36.599567, 46.168224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451580, 36.441292, 46.163521>,  <39.752167, 36.177502, 46.155678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451580, 36.441292, 46.163521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240948, -0.246654, -0.938672,
		-0.614198, -0.710106, 0.344253,
		-0.751469, 0.659478, 0.019604,
		39.226139, 36.639133, 46.169403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305843, 35.931797, 45.690926>,  <39.752167, 36.177502, 46.155678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305843, 35.931797, 45.690926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166504, 36.306637, 45.699829>,  <39.082901, 36.531540, 45.705170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166504, 36.306637, 45.699829>,  <39.305843, 35.931797, 45.690926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166504, 36.306637, 45.699829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327119, -0.099280, -0.939754,
		-0.878433, -0.334645, 0.341127,
		-0.348351, 0.937100, 0.022258,
		39.062000, 36.587769, 45.706505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682335, 35.883152, 45.430710>,  <39.305843, 35.931797, 45.690926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682335, 35.883152, 45.430710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757961, 36.270847, 45.367676>,  <38.803337, 36.503464, 45.329853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757961, 36.270847, 45.367676>,  <38.682335, 35.883152, 45.430710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757961, 36.270847, 45.367676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340256, -0.085878, -0.936403,
		-0.921130, 0.230658, 0.313553,
		0.189062, 0.969238, -0.157587,
		38.814678, 36.561619, 45.320400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046886, 36.055546, 45.082684>,  <38.682335, 35.883152, 45.430710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046886, 36.055546, 45.082684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289925, 36.371632, 45.050701>,  <38.435749, 36.561283, 45.031513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289925, 36.371632, 45.050701>,  <38.046886, 36.055546, 45.082684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289925, 36.371632, 45.050701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187846, 0.045160, -0.981160,
		-0.771712, 0.611170, 0.175877,
		0.607598, 0.790210, -0.079955,
		38.472202, 36.608696, 45.026714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648193, 36.656395, 44.907272>,  <38.046886, 36.055546, 45.082684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648193, 36.656395, 44.907272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029846, 36.690773, 44.792553>,  <38.258839, 36.711399, 44.723721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029846, 36.690773, 44.792553>,  <37.648193, 36.656395, 44.907272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029846, 36.690773, 44.792553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281546, -0.068263, -0.957117,
		-0.101834, 0.993959, -0.040935,
		0.954129, 0.085942, -0.286796,
		38.316086, 36.716557, 44.706512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604866, 37.168789, 44.314667>,  <37.648193, 36.656395, 44.907272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604866, 37.168789, 44.314667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951916, 36.969906, 44.313030>,  <38.160145, 36.850574, 44.312050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951916, 36.969906, 44.313030>,  <37.604866, 37.168789, 44.314667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951916, 36.969906, 44.313030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043713, -0.068077, -0.996722,
		0.495302, 0.864955, -0.080799,
		0.867620, -0.497210, -0.004091,
		38.212200, 36.820744, 44.311802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849304, 37.323742, 43.641640>,  <37.604866, 37.168789, 44.314667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849304, 37.323742, 43.641640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091171, 37.034058, 43.774239>,  <38.236290, 36.860245, 43.853798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091171, 37.034058, 43.774239>,  <37.849304, 37.323742, 43.641640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091171, 37.034058, 43.774239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087101, -0.353580, -0.931340,
		0.791701, 0.592024, -0.150719,
		0.604667, -0.724215, 0.331496,
		38.272572, 36.816792, 43.873688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484680, 37.415512, 43.317059>,  <37.849304, 37.323742, 43.641640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484680, 37.415512, 43.317059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422527, 37.033382, 43.417622>,  <38.385235, 36.804104, 43.477959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422527, 37.033382, 43.417622>,  <38.484680, 37.415512, 43.317059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422527, 37.033382, 43.417622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189366, -0.278588, -0.941557,
		0.969534, -0.098693, 0.224194,
		-0.155383, -0.955326, 0.251412,
		38.375912, 36.746784, 43.493046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042141, 37.057747, 43.067921>,  <38.484680, 37.415512, 43.317059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042141, 37.057747, 43.067921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781483, 36.760994, 43.131126>,  <38.625088, 36.582943, 43.169048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781483, 36.760994, 43.131126>,  <39.042141, 37.057747, 43.067921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781483, 36.760994, 43.131126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256291, -0.411417, -0.874672,
		0.713911, -0.529481, 0.458237,
		-0.651649, -0.741880, 0.158014,
		38.585987, 36.538429, 43.178532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354012, 36.425987, 42.999157>,  <39.042141, 37.057747, 43.067921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354012, 36.425987, 42.999157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964596, 36.373405, 42.924393>,  <38.730946, 36.341858, 42.879536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964596, 36.373405, 42.924393>,  <39.354012, 36.425987, 42.999157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964596, 36.373405, 42.924393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224916, -0.406811, -0.885391,
		0.040352, -0.904005, 0.425614,
		-0.973542, -0.131455, -0.186909,
		38.672535, 36.333969, 42.868320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190132, 35.751617, 42.892921>,  <39.354012, 36.425987, 42.999157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190132, 35.751617, 42.892921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898144, 35.945816, 42.700493>,  <38.722950, 36.062336, 42.585033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898144, 35.945816, 42.700493>,  <39.190132, 35.751617, 42.892921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898144, 35.945816, 42.700493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307497, -0.395320, -0.865545,
		-0.610395, -0.779755, 0.139286,
		-0.729975, 0.485494, -0.481074,
		38.679150, 36.091465, 42.556171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998318, 35.254589, 42.439194>,  <39.190132, 35.751617, 42.892921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998318, 35.254589, 42.439194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826984, 35.579815, 42.281483>,  <38.724186, 35.774952, 42.186855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826984, 35.579815, 42.281483>,  <38.998318, 35.254589, 42.439194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826984, 35.579815, 42.281483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184734, -0.348328, -0.918989,
		-0.884536, -0.466471, -0.001000,
		-0.428333, 0.813064, -0.394281,
		38.698486, 35.823734, 42.163197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444515, 34.957493, 42.115559>,  <38.998318, 35.254589, 42.439194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444515, 34.957493, 42.115559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539013, 35.310146, 41.952141>,  <38.595711, 35.521740, 41.854092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539013, 35.310146, 41.952141>,  <38.444515, 34.957493, 42.115559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539013, 35.310146, 41.952141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080373, -0.436732, -0.895994,
		-0.968364, 0.178837, -0.174035,
		0.236244, 0.881636, -0.408542,
		38.609886, 35.574638, 41.829578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094639, 34.861328, 41.415890>,  <38.444515, 34.957493, 42.115559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094639, 34.861328, 41.415890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325493, 35.184898, 41.371082>,  <38.464005, 35.379040, 41.344196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325493, 35.184898, 41.371082>,  <38.094639, 34.861328, 41.415890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325493, 35.184898, 41.371082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226221, -0.290165, -0.929854,
		-0.784687, 0.511314, -0.350462,
		0.577140, 0.808926, -0.112019,
		38.498634, 35.427578, 41.337475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923340, 35.268913, 40.803467>,  <38.094639, 34.861328, 41.415890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923340, 35.268913, 40.803467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304268, 35.365414, 40.878174>,  <38.532825, 35.423313, 40.922997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304268, 35.365414, 40.878174>,  <37.923340, 35.268913, 40.803467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304268, 35.365414, 40.878174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260245, -0.322860, -0.909964,
		-0.159230, 0.915183, -0.370251,
		0.952322, 0.241250, 0.186763,
		38.589966, 35.437790, 40.934204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222130, 35.684391, 40.274395>,  <37.923340, 35.268913, 40.803467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222130, 35.684391, 40.274395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546650, 35.530037, 40.450073>,  <38.741364, 35.437424, 40.555481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546650, 35.530037, 40.450073>,  <38.222130, 35.684391, 40.274395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546650, 35.530037, 40.450073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419610, -0.138750, -0.897037,
		0.407089, 0.912054, 0.049352,
		0.811299, -0.385882, 0.439191,
		38.790039, 35.414272, 40.581829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767948, 36.027092, 39.941257>,  <38.222130, 35.684391, 40.274395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767948, 36.027092, 39.941257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924549, 35.705704, 40.120659>,  <39.018509, 35.512871, 40.228302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924549, 35.705704, 40.120659>,  <38.767948, 36.027092, 39.941257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924549, 35.705704, 40.120659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638150, -0.114080, -0.761413,
		0.662939, 0.584311, 0.468073,
		0.391504, -0.803471, 0.448507,
		39.042000, 35.464661, 40.255211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423126, 36.074326, 39.714928>,  <38.767948, 36.027092, 39.941257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423126, 36.074326, 39.714928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384590, 35.693024, 39.829487>,  <39.361469, 35.464241, 39.898220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384590, 35.693024, 39.829487>,  <39.423126, 36.074326, 39.714928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384590, 35.693024, 39.829487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603605, -0.284742, -0.744703,
		0.791441, 0.101123, 0.602823,
		-0.096343, -0.953255, 0.286395,
		39.355686, 35.407047, 39.915405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062298, 35.829453, 39.703667>,  <39.423126, 36.074326, 39.714928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062298, 35.829453, 39.703667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822281, 35.514835, 39.645298>,  <39.678268, 35.326065, 39.610279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822281, 35.514835, 39.645298>,  <40.062298, 35.829453, 39.703667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822281, 35.514835, 39.645298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554227, -0.277210, -0.784849,
		0.576868, -0.551818, 0.602262,
		-0.600047, -0.786544, -0.145918,
		39.642265, 35.278873, 39.601524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511166, 35.298958, 39.583763>,  <40.062298, 35.829453, 39.703667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511166, 35.298958, 39.583763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173080, 35.136127, 39.445251>,  <39.970230, 35.038429, 39.362144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173080, 35.136127, 39.445251>,  <40.511166, 35.298958, 39.583763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173080, 35.136127, 39.445251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483797, -0.307522, -0.819372,
		0.227056, -0.860071, 0.456861,
		-0.845214, -0.407072, -0.346275,
		39.919518, 35.014008, 39.341370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737473, 34.713745, 39.189209>,  <40.511166, 35.298958, 39.583763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737473, 34.713745, 39.189209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364983, 34.753078, 39.048840>,  <40.141487, 34.776680, 38.964619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364983, 34.753078, 39.048840>,  <40.737473, 34.713745, 39.189209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364983, 34.753078, 39.048840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313242, -0.276184, -0.908626,
		-0.186270, -0.956061, 0.226387,
		-0.931227, 0.098336, -0.350923,
		40.085613, 34.782581, 38.943562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462467, 34.116138, 38.871132>,  <40.737473, 34.713745, 39.189209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462467, 34.116138, 38.871132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264038, 34.418327, 38.699932>,  <40.144981, 34.599640, 38.597214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264038, 34.418327, 38.699932>,  <40.462467, 34.116138, 38.871132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264038, 34.418327, 38.699932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374081, -0.258878, -0.890531,
		-0.783568, -0.601871, -0.154186,
		-0.496069, 0.755469, -0.427997,
		40.115219, 34.644970, 38.571533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412651, 33.870491, 38.270638>,  <40.462467, 34.116138, 38.871132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412651, 33.870491, 38.270638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258526, 34.233028, 38.201275>,  <40.166050, 34.450550, 38.159657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258526, 34.233028, 38.201275>,  <40.412651, 33.870491, 38.270638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258526, 34.233028, 38.201275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357665, -0.026539, -0.933473,
		-0.850652, -0.421700, -0.313943,
		-0.385314, 0.906347, -0.173402,
		40.142933, 34.504932, 38.149254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956543, 33.838943, 37.700806>,  <40.412651, 33.870491, 38.270638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956543, 33.838943, 37.700806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126320, 34.200108, 37.727959>,  <40.228184, 34.416805, 37.744251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126320, 34.200108, 37.727959>,  <39.956543, 33.838943, 37.700806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126320, 34.200108, 37.727959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270939, -0.055115, -0.961017,
		-0.863969, 0.426286, -0.268026,
		0.424440, 0.902908, 0.067880,
		40.253651, 34.470982, 37.748322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804966, 34.318115, 37.048386>,  <39.956543, 33.838943, 37.700806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804966, 34.318115, 37.048386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177704, 34.373154, 37.182693>,  <40.401344, 34.406178, 37.263279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177704, 34.373154, 37.182693>,  <39.804966, 34.318115, 37.048386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177704, 34.373154, 37.182693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310124, 0.178442, -0.933800,
		-0.188401, 0.974282, 0.123608,
		0.931841, 0.137595, 0.335767,
		40.457256, 34.414433, 37.283424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020336, 34.979939, 36.896866>,  <39.804966, 34.318115, 37.048386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020336, 34.979939, 36.896866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350159, 34.755589, 36.926590>,  <40.548054, 34.620979, 36.944424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350159, 34.755589, 36.926590>,  <40.020336, 34.979939, 36.896866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350159, 34.755589, 36.926590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287538, 0.302314, -0.908806,
		0.487263, 0.770730, 0.410549,
		0.824558, -0.560876, 0.074308,
		40.597527, 34.587326, 36.948883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425354, 35.357552, 36.461166>,  <40.020336, 34.979939, 36.896866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425354, 35.357552, 36.461166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649063, 35.026440, 36.479042>,  <40.783287, 34.827774, 36.489765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649063, 35.026440, 36.479042>,  <40.425354, 35.357552, 36.461166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649063, 35.026440, 36.479042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446647, 0.255482, -0.857459,
		0.698369, 0.499513, 0.512609,
		0.559274, -0.827778, 0.044685,
		40.816845, 34.778107, 36.492447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050137, 35.483910, 36.073765>,  <40.425354, 35.357552, 36.461166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050137, 35.483910, 36.073765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003616, 35.086624, 36.073772>,  <40.975704, 34.848251, 36.073776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003616, 35.086624, 36.073772>,  <41.050137, 35.483910, 36.073765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003616, 35.086624, 36.073772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260012, -0.030466, -0.965125,
		0.958576, -0.112241, 0.261791,
		-0.116303, -0.993214, 0.000020,
		40.968727, 34.788658, 36.073780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730087, 35.180954, 35.857903>,  <41.050137, 35.483910, 36.073765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730087, 35.180954, 35.857903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393539, 34.977066, 35.786037>,  <41.191608, 34.854733, 35.742920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393539, 34.977066, 35.786037>,  <41.730087, 35.180954, 35.857903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393539, 34.977066, 35.786037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195496, 0.022874, -0.980438,
		0.503856, -0.860038, 0.080402,
		-0.841374, -0.509718, -0.179660,
		41.141129, 34.824150, 35.732140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797340, 34.529121, 35.478493>,  <41.730087, 35.180954, 35.857903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797340, 34.529121, 35.478493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431908, 34.665794, 35.390282>,  <41.212650, 34.747799, 35.337357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431908, 34.665794, 35.390282>,  <41.797340, 34.529121, 35.478493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431908, 34.665794, 35.390282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187565, -0.127116, -0.973992,
		-0.360826, -0.931180, 0.052043,
		-0.913577, 0.341680, -0.220523,
		41.157833, 34.768299, 35.324123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632084, 34.507523, 34.839264>,  <41.797340, 34.529121, 35.478493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632084, 34.507523, 34.839264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998951, 34.349316, 34.858738>,  <42.219070, 34.254391, 34.870422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998951, 34.349316, 34.858738>,  <41.632084, 34.507523, 34.839264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998951, 34.349316, 34.858738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239709, -0.645154, -0.725476,
		0.318349, 0.653713, -0.686523,
		0.917166, -0.395520, 0.048683,
		42.274101, 34.230659, 34.873344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768204, 34.417805, 34.132885>,  <41.632084, 34.507523, 34.839264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768204, 34.417805, 34.132885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003746, 34.190098, 34.362385>,  <42.145069, 34.053474, 34.500084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003746, 34.190098, 34.362385>,  <41.768204, 34.417805, 34.132885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003746, 34.190098, 34.362385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228432, -0.798154, -0.557467,
		0.775287, 0.197204, -0.600034,
		0.588854, -0.569264, 0.573750,
		42.180401, 34.019318, 34.534512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123913, 34.097885, 33.743286>,  <41.768204, 34.417805, 34.132885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123913, 34.097885, 33.743286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106281, 33.850586, 34.057186>,  <42.095703, 33.702206, 34.245525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106281, 33.850586, 34.057186>,  <42.123913, 34.097885, 33.743286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106281, 33.850586, 34.057186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288397, -0.744195, -0.602497,
		0.956496, -0.252879, -0.145493,
		-0.044083, -0.618245, 0.784748,
		42.093056, 33.665112, 34.292610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504253, 33.615582, 33.572853>,  <42.123913, 34.097885, 33.743286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504253, 33.615582, 33.572853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311729, 33.432411, 33.871822>,  <42.196213, 33.322510, 34.051205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311729, 33.432411, 33.871822>,  <42.504253, 33.615582, 33.572853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311729, 33.432411, 33.871822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010433, -0.855621, -0.517498,
		0.876487, -0.241280, 0.416599,
		-0.481312, -0.457927, 0.747423,
		42.167336, 33.295033, 34.096050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781120, 32.914349, 33.664379>,  <42.504253, 33.615582, 33.572853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781120, 32.914349, 33.664379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414967, 32.901127, 33.824863>,  <42.195274, 32.893192, 33.921154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414967, 32.901127, 33.824863>,  <42.781120, 32.914349, 33.664379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414967, 32.901127, 33.824863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151812, -0.894700, -0.420078,
		0.372849, -0.445443, 0.813980,
		-0.915389, -0.033053, 0.401212,
		42.140350, 32.891212, 33.945229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805115, 32.269249, 33.919857>,  <42.781120, 32.914349, 33.664379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805115, 32.269249, 33.919857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420326, 32.375378, 33.893906>,  <42.189453, 32.439056, 33.878334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420326, 32.375378, 33.893906>,  <42.805115, 32.269249, 33.919857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420326, 32.375378, 33.893906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238499, -0.931707, -0.273933,
		-0.133125, -0.248044, 0.959558,
		-0.961975, 0.265321, -0.064875,
		42.131733, 32.454975, 33.874443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487022, 31.667822, 34.130108>,  <42.805115, 32.269249, 33.919857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487022, 31.667822, 34.130108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186977, 31.867611, 33.956734>,  <42.006950, 31.987484, 33.852711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186977, 31.867611, 33.956734>,  <42.487022, 31.667822, 34.130108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186977, 31.867611, 33.956734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404360, -0.865024, -0.297031,
		-0.523288, -0.047543, 0.850829,
		-0.750109, 0.499474, -0.433432,
		41.961945, 32.017452, 33.826706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891838, 31.183777, 34.213238>,  <42.487022, 31.667822, 34.130108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891838, 31.183777, 34.213238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771408, 31.448866, 33.938969>,  <41.699150, 31.607920, 33.774406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771408, 31.448866, 33.938969>,  <41.891838, 31.183777, 34.213238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771408, 31.448866, 33.938969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469000, -0.728971, -0.498637,
		-0.830296, 0.171454, 0.530294,
		-0.301076, 0.662725, -0.685674,
		41.681084, 31.647684, 33.733265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194828, 31.149977, 34.134548>,  <41.891838, 31.183777, 34.213238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194828, 31.149977, 34.134548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311157, 31.297964, 33.781605>,  <41.380955, 31.386757, 33.569839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311157, 31.297964, 33.781605>,  <41.194828, 31.149977, 34.134548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311157, 31.297964, 33.781605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444300, -0.764530, -0.467002,
		-0.847362, 0.527843, -0.057964,
		0.290819, 0.369966, -0.882354,
		41.398403, 31.408955, 33.516899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605244, 31.134354, 33.700222>,  <41.194828, 31.149977, 34.134548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605244, 31.134354, 33.700222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916656, 31.144182, 33.449375>,  <41.103504, 31.150080, 33.298866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916656, 31.144182, 33.449375>,  <40.605244, 31.134354, 33.700222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916656, 31.144182, 33.449375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471430, -0.636715, -0.610203,
		-0.414291, 0.770707, -0.484121,
		0.778535, 0.024572, -0.627120,
		41.150215, 31.151554, 33.261238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329582, 31.084879, 33.040054>,  <40.605244, 31.134354, 33.700222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329582, 31.084879, 33.040054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714088, 31.007210, 32.961803>,  <40.944790, 30.960608, 32.914852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714088, 31.007210, 32.961803>,  <40.329582, 31.084879, 33.040054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714088, 31.007210, 32.961803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275589, -0.664678, -0.694445,
		0.004815, 0.721457, -0.692443,
		0.961264, -0.194173, -0.195625,
		41.002468, 30.948957, 32.903114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269775, 31.075167, 32.317490>,  <40.329582, 31.084879, 33.040054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269775, 31.075167, 32.317490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597923, 30.878525, 32.434330>,  <40.794811, 30.760540, 32.504433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597923, 30.878525, 32.434330>,  <40.269775, 31.075167, 32.317490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597923, 30.878525, 32.434330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198383, -0.723754, -0.660927,
		0.536322, 0.484255, -0.691270,
		0.820367, -0.491606, 0.292098,
		40.844032, 30.731043, 32.521961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567078, 30.978310, 31.746643>,  <40.269775, 31.075167, 32.317490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567078, 30.978310, 31.746643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701691, 30.699715, 32.000145>,  <40.782459, 30.532557, 32.152245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701691, 30.699715, 32.000145>,  <40.567078, 30.978310, 31.746643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701691, 30.699715, 32.000145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228798, -0.713323, -0.662436,
		0.913452, 0.077931, -0.399414,
		0.336536, -0.696489, 0.633756,
		40.802650, 30.490768, 32.190273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803524, 30.421837, 31.350655>,  <40.567078, 30.978310, 31.746643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803524, 30.421837, 31.350655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820461, 30.220524, 31.695889>,  <40.830624, 30.099735, 31.903028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820461, 30.220524, 31.695889>,  <40.803524, 30.421837, 31.350655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820461, 30.220524, 31.695889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022438, -0.864120, -0.502786,
		0.998851, 0.001923, -0.047881,
		0.042342, -0.503283, 0.863084,
		40.833164, 30.069538, 31.954813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400295, 29.960266, 31.308374>,  <40.803524, 30.421837, 31.350655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400295, 29.960266, 31.308374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146076, 29.821911, 31.584475>,  <40.993546, 29.738897, 31.750134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146076, 29.821911, 31.584475>,  <41.400295, 29.960266, 31.308374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146076, 29.821911, 31.584475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026979, -0.903435, -0.427875,
		0.771592, -0.253311, 0.583506,
		-0.635545, -0.345887, 0.690249,
		40.955414, 29.718145, 31.791550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724850, 29.316908, 31.479332>,  <41.400295, 29.960266, 31.308374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724850, 29.316908, 31.479332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352924, 29.289551, 31.623981>,  <41.129768, 29.273136, 31.710772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352924, 29.289551, 31.623981>,  <41.724850, 29.316908, 31.479332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352924, 29.289551, 31.623981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118842, -0.874149, -0.470893,
		0.348321, -0.480818, 0.804666,
		-0.929811, -0.068394, 0.361626,
		41.073982, 29.269033, 31.732470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581512, 28.611549, 31.665037>,  <41.724850, 29.316908, 31.479332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581512, 28.611549, 31.665037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217049, 28.775482, 31.647934>,  <40.998371, 28.873842, 31.637672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217049, 28.775482, 31.647934>,  <41.581512, 28.611549, 31.665037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217049, 28.775482, 31.647934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297033, -0.725185, -0.621191,
		-0.285591, -0.553303, 0.782492,
		-0.911158, 0.409832, -0.042757,
		40.943703, 28.898432, 31.635107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090260, 28.112602, 31.672867>,  <41.581512, 28.611549, 31.665037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090260, 28.112602, 31.672867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892105, 28.422159, 31.515041>,  <40.773212, 28.607893, 31.420347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892105, 28.422159, 31.515041>,  <41.090260, 28.112602, 31.672867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892105, 28.422159, 31.515041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414531, -0.609768, -0.675535,
		-0.763383, -0.171094, 0.622875,
		-0.495389, 0.773893, -0.394563,
		40.743488, 28.654327, 31.396673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378281, 27.905130, 31.628141>,  <41.090260, 28.112602, 31.672867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378281, 27.905130, 31.628141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441372, 28.194944, 31.359762>,  <40.479225, 28.368834, 31.198734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441372, 28.194944, 31.359762>,  <40.378281, 27.905130, 31.628141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441372, 28.194944, 31.359762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427975, -0.562167, -0.707676,
		-0.889921, 0.398769, 0.221414,
		0.157728, 0.724536, -0.670947,
		40.488689, 28.412306, 31.158478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737331, 27.909153, 31.192913>,  <40.378281, 27.905130, 31.628141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737331, 27.909153, 31.192913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004280, 28.122013, 30.984516>,  <40.164448, 28.249729, 30.859478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004280, 28.122013, 30.984516>,  <39.737331, 27.909153, 31.192913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004280, 28.122013, 30.984516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302363, -0.445707, -0.842569,
		-0.680584, 0.719833, -0.136549,
		0.667369, 0.532151, -0.520992,
		40.204491, 28.281658, 30.828218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410675, 28.175858, 30.600040>,  <39.737331, 27.909153, 31.192913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410675, 28.175858, 30.600040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799511, 28.132971, 30.516569>,  <40.032814, 28.107239, 30.466486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799511, 28.132971, 30.516569>,  <39.410675, 28.175858, 30.600040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799511, 28.132971, 30.516569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233933, -0.510438, -0.827483,
		-0.017795, 0.853204, -0.521274,
		0.972090, -0.107218, -0.208676,
		40.091137, 28.100805, 30.453966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420586, 28.258451, 29.880846>,  <39.410675, 28.175858, 30.600040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420586, 28.258451, 29.880846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752289, 28.073414, 30.006283>,  <39.951309, 27.962391, 30.081545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752289, 28.073414, 30.006283>,  <39.420586, 28.258451, 29.880846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752289, 28.073414, 30.006283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038197, -0.606721, -0.793997,
		0.557560, 0.646450, -0.520798,
		0.829258, -0.462593, 0.313591,
		40.001064, 27.934635, 30.100361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773262, 28.663698, 29.417698>,  <39.420586, 28.258451, 29.880846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773262, 28.663698, 29.417698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506409, 28.371595, 29.358837>,  <38.346294, 28.196335, 29.323521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506409, 28.371595, 29.358837>,  <38.773262, 28.663698, 29.417698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506409, 28.371595, 29.358837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524412, 0.600689, -0.603460,
		0.529073, -0.325423, -0.783698,
		-0.667138, -0.730255, -0.147153,
		38.306267, 28.152519, 29.314692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726326, 29.021614, 28.763775>,  <38.773262, 28.663698, 29.417698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726326, 29.021614, 28.763775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330387, 29.049980, 28.813057>,  <38.092823, 29.066999, 28.842627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330387, 29.049980, 28.813057>,  <38.726326, 29.021614, 28.763775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330387, 29.049980, 28.813057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022003, 0.779821, -0.625616,
		-0.140445, -0.621973, -0.770341,
		-0.989844, 0.070915, 0.123207,
		38.033432, 29.071255, 28.850019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354668, 29.027699, 28.607042>,  <38.726326, 29.021614, 28.763775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354668, 29.027699, 28.607042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514900, 28.765265, 28.351202>,  <39.611038, 28.607803, 28.197699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514900, 28.765265, 28.351202>,  <39.354668, 29.027699, 28.607042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514900, 28.765265, 28.351202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914854, 0.247700, 0.318883,
		-0.050785, -0.712879, 0.699446,
		0.400578, -0.656086, -0.639601,
		39.635075, 28.568439, 28.159323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863735, 28.624243, 28.933165>,  <39.354668, 29.027699, 28.607042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863735, 28.624243, 28.933165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944275, 28.653996, 28.542488>,  <39.992599, 28.671846, 28.308083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944275, 28.653996, 28.542488>,  <39.863735, 28.624243, 28.933165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944275, 28.653996, 28.542488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862850, 0.458486, 0.212794,
		0.463627, -0.885584, 0.028135,
		0.201346, 0.074381, -0.976692,
		40.004677, 28.676310, 28.249481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660927, 28.618641, 28.927086>,  <39.863735, 28.624243, 28.933165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660927, 28.618641, 28.927086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527184, 28.748779, 28.573282>,  <40.446938, 28.826862, 28.361000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527184, 28.748779, 28.573282>,  <40.660927, 28.618641, 28.927086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527184, 28.748779, 28.573282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858682, 0.491968, -0.143636,
		0.388418, -0.807537, -0.443865,
		-0.334359, 0.325348, -0.884507,
		40.426876, 28.846384, 28.307930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214947, 28.596228, 28.491720>,  <40.660927, 28.618641, 28.927086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214947, 28.596228, 28.491720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963219, 28.847456, 28.308645>,  <40.812180, 28.998194, 28.198801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963219, 28.847456, 28.308645>,  <41.214947, 28.596228, 28.491720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963219, 28.847456, 28.308645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737759, 0.667938, -0.097829,
		0.244262, -0.399228, -0.883715,
		-0.629323, 0.628073, -0.457686,
		40.774422, 29.035877, 28.171339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433449, 28.870333, 27.778421>,  <41.214947, 28.596228, 28.491720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433449, 28.870333, 27.778421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233379, 29.168903, 27.954000>,  <41.113338, 29.348045, 28.059349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233379, 29.168903, 27.954000>,  <41.433449, 28.870333, 27.778421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233379, 29.168903, 27.954000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710726, 0.643452, -0.284320,
		-0.494666, 0.169763, -0.852341,
		-0.500174, 0.746425, 0.438949,
		41.083328, 29.392830, 28.085686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879398, 29.323612, 28.157743>,  <41.433449, 28.870333, 27.778421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879398, 29.323612, 28.157743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618839, 29.614111, 28.245605>,  <41.462505, 29.788410, 28.298323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618839, 29.614111, 28.245605>,  <41.879398, 29.323612, 28.157743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618839, 29.614111, 28.245605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742200, 0.549792, 0.383234,
		0.157559, 0.412665, -0.897153,
		-0.651394, 0.726248, 0.219655,
		41.423420, 29.831985, 28.311502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177216, 29.940241, 27.857212>,  <41.879398, 29.323612, 28.157743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177216, 29.940241, 27.857212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927219, 30.004671, 28.162745>,  <41.777222, 30.043329, 28.346064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927219, 30.004671, 28.162745>,  <42.177216, 29.940241, 27.857212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927219, 30.004671, 28.162745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701793, 0.544450, 0.459414,
		-0.341868, 0.823182, -0.453319,
		-0.624991, 0.161077, 0.763833,
		41.739723, 30.052994, 28.391895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170879, 30.626650, 28.004408>,  <42.177216, 29.940241, 27.857212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170879, 30.626650, 28.004408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087593, 30.448599, 28.352777>,  <42.037621, 30.341768, 28.561798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087593, 30.448599, 28.352777>,  <42.170879, 30.626650, 28.004408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087593, 30.448599, 28.352777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562586, 0.673889, 0.478926,
		-0.800089, 0.589689, 0.110109,
		-0.208216, -0.445130, 0.870922,
		42.025127, 30.315060, 28.614054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997738, 31.100494, 28.448502>,  <42.170879, 30.626650, 28.004408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997738, 31.100494, 28.448502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110107, 30.807629, 28.696701>,  <42.177528, 30.631908, 28.845621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110107, 30.807629, 28.696701>,  <41.997738, 31.100494, 28.448502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110107, 30.807629, 28.696701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418954, 0.675231, 0.607075,
		-0.863459, 0.089420, 0.496430,
		0.280920, -0.732166, 0.620497,
		42.194382, 30.587978, 28.882851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731819, 31.315248, 29.167166>,  <41.997738, 31.100494, 28.448502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731819, 31.315248, 29.167166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018219, 31.040880, 29.219090>,  <42.190060, 30.876259, 29.250244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018219, 31.040880, 29.219090>,  <41.731819, 31.315248, 29.167166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018219, 31.040880, 29.219090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343172, 0.507765, 0.790195,
		-0.607925, -0.521235, 0.598950,
		0.716003, -0.685922, 0.129810,
		42.233021, 30.835104, 29.258032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632080, 31.099611, 29.799110>,  <41.731819, 31.315248, 29.167166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632080, 31.099611, 29.799110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018097, 31.016333, 29.735422>,  <42.249706, 30.966366, 29.697208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018097, 31.016333, 29.735422>,  <41.632080, 31.099611, 29.799110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018097, 31.016333, 29.735422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238415, 0.444925, 0.863250,
		-0.108883, -0.871032, 0.479008,
		0.965040, -0.208196, -0.159222,
		42.307610, 30.953875, 29.687654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948360, 30.812014, 30.455544>,  <41.632080, 31.099611, 29.799110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948360, 30.812014, 30.455544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271366, 30.911091, 30.241417>,  <42.465172, 30.970537, 30.112942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271366, 30.911091, 30.241417>,  <41.948360, 30.812014, 30.455544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271366, 30.911091, 30.241417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420819, 0.394009, 0.817110,
		0.413308, -0.885103, 0.213938,
		0.807520, 0.247689, -0.535315,
		42.513622, 30.985399, 30.080822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530235, 30.483828, 30.776632>,  <41.948360, 30.812014, 30.455544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530235, 30.483828, 30.776632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649036, 30.815649, 30.587473>,  <42.720318, 31.014742, 30.473978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649036, 30.815649, 30.587473>,  <42.530235, 30.483828, 30.776632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649036, 30.815649, 30.587473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458842, 0.310334, 0.832561,
		0.837408, -0.464260, -0.288463,
		0.297005, 0.829552, -0.472898,
		42.738136, 31.064514, 30.445604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111893, 30.702765, 31.056358>,  <42.530235, 30.483828, 30.776632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111893, 30.702765, 31.056358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048031, 31.045713, 30.860636>,  <43.009712, 31.251484, 30.743202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048031, 31.045713, 30.860636>,  <43.111893, 30.702765, 31.056358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048031, 31.045713, 30.860636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272644, 0.514683, 0.812876,
		0.948775, -0.003624, -0.315931,
		-0.159658, 0.857373, -0.489306,
		43.000134, 31.302925, 30.713844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645920, 31.096161, 31.387043>,  <43.111893, 30.702765, 31.056358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645920, 31.096161, 31.387043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431965, 31.375772, 31.197199>,  <43.303593, 31.543539, 31.083292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431965, 31.375772, 31.197199>,  <43.645920, 31.096161, 31.387043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431965, 31.375772, 31.197199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374273, 0.699626, 0.608641,
		0.757508, 0.147920, -0.635847,
		-0.534885, 0.699031, -0.474610,
		43.271500, 31.585482, 31.054815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075188, 31.573366, 31.316147>,  <43.645920, 31.096161, 31.387043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075188, 31.573366, 31.316147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728218, 31.769297, 31.281166>,  <43.520035, 31.886854, 31.260178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728218, 31.769297, 31.281166>,  <44.075188, 31.573366, 31.316147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728218, 31.769297, 31.281166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373343, 0.756911, 0.536377,
		0.328923, 0.432618, -0.839435,
		-0.867424, 0.489824, -0.087450,
		43.467991, 31.916245, 31.254930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314476, 32.275387, 31.271904>,  <44.075188, 31.573366, 31.316147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314476, 32.275387, 31.271904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930511, 32.311924, 31.377899>,  <43.700130, 32.333847, 31.441496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930511, 32.311924, 31.377899>,  <44.314476, 32.275387, 31.271904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930511, 32.311924, 31.377899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228909, 0.801062, 0.553082,
		-0.161753, 0.591570, -0.789861,
		-0.959915, 0.091344, 0.264989,
		43.642536, 32.339329, 31.457396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137901, 32.984982, 31.228848>,  <44.314476, 32.275387, 31.271904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137901, 32.984982, 31.228848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888142, 32.816010, 31.491657>,  <43.738285, 32.714626, 31.649343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888142, 32.816010, 31.491657>,  <44.137901, 32.984982, 31.228848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888142, 32.816010, 31.491657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158084, 0.755401, 0.635908,
		-0.764943, 0.500925, -0.404892,
		-0.624398, -0.422426, 0.657026,
		43.700821, 32.689281, 31.688765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660862, 33.540249, 31.468248>,  <44.137901, 32.984982, 31.228848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660862, 33.540249, 31.468248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603352, 33.281357, 31.767693>,  <43.568844, 33.126022, 31.947359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603352, 33.281357, 31.767693>,  <43.660862, 33.540249, 31.468248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603352, 33.281357, 31.767693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056316, 0.749895, 0.659155,
		-0.988006, 0.136932, -0.071371,
		-0.143780, -0.647230, 0.748613,
		43.560219, 33.087189, 31.992277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225243, 33.911060, 31.924551>,  <43.660862, 33.540249, 31.468248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225243, 33.911060, 31.924551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432987, 33.625317, 32.112148>,  <43.557632, 33.453869, 32.224705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432987, 33.625317, 32.112148>,  <43.225243, 33.911060, 31.924551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432987, 33.625317, 32.112148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145923, 0.614891, 0.774994,
		-0.842005, -0.334064, 0.423591,
		0.519360, -0.714361, 0.468993,
		43.588795, 33.411007, 32.252846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195972, 34.114124, 32.667896>,  <43.225243, 33.911060, 31.924551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195972, 34.114124, 32.667896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449570, 33.805271, 32.685123>,  <43.601730, 33.619957, 32.695457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449570, 33.805271, 32.685123>,  <43.195972, 34.114124, 32.667896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449570, 33.805271, 32.685123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427940, 0.396673, 0.812108,
		-0.644142, -0.496442, 0.581916,
		0.633995, -0.772137, 0.043066,
		43.639767, 33.573631, 32.698044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155415, 33.839725, 33.388611>,  <43.195972, 34.114124, 32.667896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155415, 33.839725, 33.388611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518780, 33.735394, 33.257915>,  <43.736797, 33.672794, 33.179497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518780, 33.735394, 33.257915>,  <43.155415, 33.839725, 33.388611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518780, 33.735394, 33.257915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399836, 0.313657, 0.861249,
		-0.122156, -0.913010, 0.389219,
		0.908410, -0.260830, -0.326739,
		43.791302, 33.657143, 33.159893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530933, 33.376137, 33.928925>,  <43.155415, 33.839725, 33.388611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530933, 33.376137, 33.928925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815960, 33.542793, 33.703125>,  <43.986977, 33.642788, 33.567646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815960, 33.542793, 33.703125>,  <43.530933, 33.376137, 33.928925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815960, 33.542793, 33.703125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410396, 0.405064, 0.817006,
		0.569059, -0.813838, 0.117645,
		0.712564, 0.416644, -0.564500,
		44.029728, 33.667786, 33.533775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130196, 33.309956, 34.365417>,  <43.530933, 33.376137, 33.928925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130196, 33.309956, 34.365417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215122, 33.586758, 34.089432>,  <44.266079, 33.752838, 33.923840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215122, 33.586758, 34.089432>,  <44.130196, 33.309956, 34.365417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215122, 33.586758, 34.089432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485077, 0.538298, 0.689156,
		0.848306, -0.481005, -0.221386,
		0.212316, 0.692005, -0.689965,
		44.278816, 33.794357, 33.882442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805977, 33.473503, 34.551369>,  <44.130196, 33.309956, 34.365417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805977, 33.473503, 34.551369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651215, 33.774876, 34.338711>,  <44.558357, 33.955700, 34.211117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651215, 33.774876, 34.338711>,  <44.805977, 33.473503, 34.551369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651215, 33.774876, 34.338711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345402, 0.652984, 0.674025,
		0.854987, 0.077151, -0.512879,
		-0.386903, 0.753432, -0.531645,
		44.535145, 34.000904, 34.179218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312492, 33.897964, 34.636303>,  <44.805977, 33.473503, 34.551369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312492, 33.897964, 34.636303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000130, 34.109833, 34.503864>,  <44.812714, 34.236954, 34.424400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000130, 34.109833, 34.503864>,  <45.312492, 33.897964, 34.636303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000130, 34.109833, 34.503864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236326, 0.741187, 0.628325,
		0.578216, 0.412416, -0.703974,
		-0.780908, 0.529675, -0.331101,
		44.765858, 34.268734, 34.404533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624065, 34.565453, 34.343826>,  <45.312492, 33.897964, 34.636303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624065, 34.565453, 34.343826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239853, 34.621201, 34.440128>,  <45.009327, 34.654648, 34.497910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239853, 34.621201, 34.440128>,  <45.624065, 34.565453, 34.343826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239853, 34.621201, 34.440128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222798, 0.903637, 0.365788,
		-0.166571, 0.404989, -0.899021,
		-0.960528, 0.139371, 0.240751,
		44.951694, 34.663013, 34.512352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032314, 34.082760, 33.927052>,  <45.624065, 34.565453, 34.343826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032314, 34.082760, 33.927052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.315071, 34.205704, 34.181870>,  <46.484726, 34.279469, 34.334763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.315071, 34.205704, 34.181870>,  <46.032314, 34.082760, 33.927052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.315071, 34.205704, 34.181870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704396, -0.224112, -0.673498,
		-0.064234, 0.924827, -0.374924,
		0.706895, 0.307357, 0.637049,
		46.527138, 34.297913, 34.372986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576874, 34.412529, 33.591076>,  <46.032314, 34.082760, 33.927052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.576874, 34.412529, 33.591076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748806, 34.292110, 33.931572>,  <46.851967, 34.219860, 34.135868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748806, 34.292110, 33.931572>,  <46.576874, 34.412529, 33.591076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748806, 34.292110, 33.931572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836047, -0.223336, -0.501146,
		0.340983, 0.927087, 0.155695,
		0.429833, -0.301050, 0.851241,
		46.877754, 34.201794, 34.186943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.148724, 34.828014, 33.787621>,  <46.576874, 34.412529, 33.591076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.148724, 34.828014, 33.787621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.220306, 34.450363, 33.898319>,  <47.263256, 34.223770, 33.964737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.220306, 34.450363, 33.898319>,  <47.148724, 34.828014, 33.787621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.220306, 34.450363, 33.898319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840353, 0.000398, -0.542040,
		0.511647, 0.329565, 0.793476,
		0.178953, -0.944133, 0.276748,
		47.273991, 34.167122, 33.981342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.695377, 35.090462, 34.242237>,  <47.148724, 34.828014, 33.787621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.695377, 35.090462, 34.242237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.439697, 34.920551, 34.498669>,  <47.286289, 34.818604, 34.652527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.439697, 34.920551, 34.498669>,  <47.695377, 35.090462, 34.242237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.439697, 34.920551, 34.498669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768723, -0.329022, 0.548461,
		-0.022042, 0.843392, 0.536846,
		-0.639202, -0.424776, 0.641083,
		47.247936, 34.793118, 34.690994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.811115, 35.361393, 34.894043>,  <47.695377, 35.090462, 34.242237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.811115, 35.361393, 34.894043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.647991, 34.996258, 34.902248>,  <47.550117, 34.777176, 34.907173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.647991, 34.996258, 34.902248>,  <47.811115, 35.361393, 34.894043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.647991, 34.996258, 34.902248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719385, -0.307390, 0.622894,
		-0.562294, 0.268779, 0.782037,
		-0.407811, -0.912836, 0.020513,
		47.525646, 34.722408, 34.908401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.306282, 40.031834, 45.332233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.917511, 39.950813, 45.284367>,  <33.684246, 39.902203, 45.255646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.917511, 39.950813, 45.284367>,  <34.306282, 40.031834, 45.332233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917511, 39.950813, 45.284367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191760, -0.387386, -0.901754,
		0.136292, -0.899392, 0.415354,
		-0.971933, -0.202551, -0.119669,
		33.625931, 39.890049, 45.248466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246063, 39.429287, 44.916214>,  <34.306282, 40.031834, 45.332233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246063, 39.429287, 44.916214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878601, 39.581020, 44.872086>,  <33.658123, 39.672062, 44.845608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878601, 39.581020, 44.872086>,  <34.246063, 39.429287, 44.916214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878601, 39.581020, 44.872086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019218, -0.321840, -0.946599,
		-0.394584, -0.867481, 0.302951,
		-0.918659, 0.379335, -0.110321,
		33.603004, 39.694820, 44.838989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891224, 38.913868, 44.700409>,  <34.246063, 39.429287, 44.916214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891224, 38.913868, 44.700409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.672699, 39.221870, 44.568573>,  <33.541584, 39.406673, 44.489471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.672699, 39.221870, 44.568573>,  <33.891224, 38.913868, 44.700409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672699, 39.221870, 44.568573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001579, -0.392555, -0.919727,
		-0.837582, -0.502976, 0.213240,
		-0.546309, 0.770011, -0.329591,
		33.508804, 39.452873, 44.469696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410568, 38.630699, 44.322037>,  <33.891224, 38.913868, 44.700409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410568, 38.630699, 44.322037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.401756, 39.015976, 44.214878>,  <33.396469, 39.247143, 44.150585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.401756, 39.015976, 44.214878>,  <33.410568, 38.630699, 44.322037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401756, 39.015976, 44.214878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041180, -0.268606, -0.962370,
		-0.998909, -0.010173, 0.045583,
		-0.022034, 0.963197, -0.267894,
		33.395145, 39.304935, 44.134510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969810, 38.677612, 43.802483>,  <33.410568, 38.630699, 44.322037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969810, 38.677612, 43.802483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.169388, 39.018700, 43.740597>,  <33.289135, 39.223351, 43.703465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.169388, 39.018700, 43.740597>,  <32.969810, 38.677612, 43.802483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169388, 39.018700, 43.740597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062327, -0.213367, -0.974982,
		-0.864393, 0.476814, -0.159605,
		0.498939, 0.852715, -0.154714,
		33.319069, 39.274513, 43.694183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622742, 39.101902, 43.245445>,  <32.969810, 38.677612, 43.802483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622742, 39.101902, 43.245445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.009232, 39.204281, 43.257431>,  <33.241127, 39.265709, 43.264622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.009232, 39.204281, 43.257431>,  <32.622742, 39.101902, 43.245445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009232, 39.204281, 43.257431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086444, -0.212390, -0.973354,
		-0.242766, 0.943069, -0.227342,
		0.966226, 0.255950, 0.029962,
		33.299099, 39.281067, 43.266418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785370, 39.682533, 42.654716>,  <32.622742, 39.101902, 43.245445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785370, 39.682533, 42.654716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.120510, 39.496113, 42.768417>,  <33.321594, 39.384262, 42.836636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.120510, 39.496113, 42.768417>,  <32.785370, 39.682533, 42.654716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120510, 39.496113, 42.768417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207925, -0.209001, -0.955555,
		0.504746, 0.859718, -0.078208,
		0.837853, -0.466052, 0.284250,
		33.371864, 39.356297, 42.853691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085693, 39.778667, 42.071449>,  <32.785370, 39.682533, 42.654716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085693, 39.778667, 42.071449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.319672, 39.506859, 42.248573>,  <33.460060, 39.343773, 42.354847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.319672, 39.506859, 42.248573>,  <33.085693, 39.778667, 42.071449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319672, 39.506859, 42.248573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389569, -0.243469, -0.888233,
		0.711387, 0.692077, 0.122305,
		0.584948, -0.679524, 0.442813,
		33.495155, 39.303001, 42.381416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837715, 39.802883, 41.724499>,  <33.085693, 39.778667, 42.071449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837715, 39.802883, 41.724499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.823063, 39.449528, 41.911381>,  <33.814270, 39.237514, 42.023510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.823063, 39.449528, 41.911381>,  <33.837715, 39.802883, 41.724499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823063, 39.449528, 41.911381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406216, -0.440313, -0.800696,
		0.913043, 0.160456, 0.374976,
		-0.036630, -0.883390, 0.467204,
		33.812073, 39.184509, 42.051540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505123, 39.546612, 41.649441>,  <33.837715, 39.802883, 41.724499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505123, 39.546612, 41.649441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.258472, 39.239986, 41.721165>,  <34.110481, 39.056011, 41.764198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.258472, 39.239986, 41.721165>,  <34.505123, 39.546612, 41.649441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258472, 39.239986, 41.721165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276126, -0.423893, -0.862594,
		0.737241, -0.482387, 0.473052,
		-0.616628, -0.766562, 0.179312,
		34.073483, 39.010017, 41.774960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919224, 38.848980, 41.597839>,  <34.505123, 39.546612, 41.649441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919224, 38.848980, 41.597839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538048, 38.732815, 41.563049>,  <34.309341, 38.663116, 41.542175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538048, 38.732815, 41.563049>,  <34.919224, 38.848980, 41.597839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538048, 38.732815, 41.563049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229538, -0.503795, -0.832768,
		0.198026, -0.813543, 0.546748,
		-0.952942, -0.290410, -0.086974,
		34.252167, 38.645691, 41.536957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896332, 38.217022, 41.341160>,  <34.919224, 38.848980, 41.597839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896332, 38.217022, 41.341160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506924, 38.272087, 41.268166>,  <34.273277, 38.305126, 41.224369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506924, 38.272087, 41.268166>,  <34.896332, 38.217022, 41.341160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506924, 38.272087, 41.268166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097000, -0.474092, -0.875116,
		-0.206983, -0.869647, 0.448187,
		-0.973524, 0.137660, -0.182485,
		34.214867, 38.313385, 41.213421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725182, 37.575630, 41.071625>,  <34.896332, 38.217022, 41.341160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725182, 37.575630, 41.071625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.474586, 37.863953, 40.952995>,  <34.324230, 38.036945, 40.881817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.474586, 37.863953, 40.952995>,  <34.725182, 37.575630, 41.071625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474586, 37.863953, 40.952995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008362, -0.374266, -0.927284,
		-0.779386, -0.583412, 0.228446,
		-0.626488, 0.720802, -0.296576,
		34.286640, 38.080193, 40.864021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260918, 37.247658, 40.628563>,  <34.725182, 37.575630, 41.071625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260918, 37.247658, 40.628563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214386, 37.630184, 40.521290>,  <34.186466, 37.859699, 40.456928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214386, 37.630184, 40.521290>,  <34.260918, 37.247658, 40.628563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214386, 37.630184, 40.521290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108558, -0.256153, -0.960521,
		-0.987260, -0.140848, -0.074018,
		-0.116327, 0.956320, -0.268180,
		34.179489, 37.917080, 40.440834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846977, 37.339218, 39.989929>,  <34.260918, 37.247658, 40.628563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846977, 37.339218, 39.989929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.065868, 37.673973, 39.984882>,  <34.197205, 37.874825, 39.981853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.065868, 37.673973, 39.984882>,  <33.846977, 37.339218, 39.989929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065868, 37.673973, 39.984882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305890, -0.214006, -0.927703,
		-0.779085, 0.503805, -0.373106,
		0.547228, 0.836888, -0.012620,
		34.230038, 37.925041, 39.981098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721413, 37.597088, 39.412674>,  <33.846977, 37.339218, 39.989929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721413, 37.597088, 39.412674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.039524, 37.833282, 39.467594>,  <34.230392, 37.974998, 39.500546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.039524, 37.833282, 39.467594>,  <33.721413, 37.597088, 39.412674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039524, 37.833282, 39.467594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349783, -0.261954, -0.899462,
		-0.495154, 0.763351, -0.414870,
		0.795282, 0.590487, 0.137300,
		34.278111, 38.010429, 39.508785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736427, 38.006104, 38.739532>,  <33.721413, 37.597088, 39.412674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736427, 38.006104, 38.739532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.087547, 38.008423, 38.931129>,  <34.298218, 38.009815, 39.046085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.087547, 38.008423, 38.931129>,  <33.736427, 38.006104, 38.739532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087547, 38.008423, 38.931129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426910, -0.463031, -0.776756,
		0.217287, 0.886323, -0.408923,
		0.877801, 0.005795, 0.478990,
		34.350887, 38.010162, 39.074825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214062, 38.326530, 38.321213>,  <33.736427, 38.006104, 38.739532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214062, 38.326530, 38.321213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421097, 38.108154, 38.584743>,  <34.545319, 37.977127, 38.742863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421097, 38.108154, 38.584743>,  <34.214062, 38.326530, 38.321213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421097, 38.108154, 38.584743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464667, -0.467202, -0.752202,
		0.718462, 0.695465, 0.011863,
		0.517587, -0.545941, 0.658826,
		34.576374, 37.944370, 38.782391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896530, 38.330566, 38.008621>,  <34.214062, 38.326530, 38.321213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896530, 38.330566, 38.008621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.941250, 38.037491, 38.277145>,  <34.968082, 37.861645, 38.438259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.941250, 38.037491, 38.277145>,  <34.896530, 38.330566, 38.008621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941250, 38.037491, 38.277145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598958, -0.489365, -0.633855,
		0.792938, 0.472951, 0.384144,
		0.111796, -0.732693, 0.671314,
		34.974789, 37.817684, 38.478539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623798, 38.283993, 38.070129>,  <34.896530, 38.330566, 38.008621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623798, 38.283993, 38.070129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421314, 37.954910, 38.173584>,  <35.299824, 37.757462, 38.235657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421314, 37.954910, 38.173584>,  <35.623798, 38.283993, 38.070129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421314, 37.954910, 38.173584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435435, -0.502695, -0.746789,
		0.744408, -0.265414, 0.612709,
		-0.506214, -0.822711, 0.258640,
		35.269451, 37.708096, 38.251175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014683, 37.768887, 37.916561>,  <35.623798, 38.283993, 38.070129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014683, 37.768887, 37.916561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676426, 37.559864, 37.960052>,  <35.473473, 37.434452, 37.986149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676426, 37.559864, 37.960052>,  <36.014683, 37.768887, 37.916561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676426, 37.559864, 37.960052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221545, -0.528973, -0.819210,
		0.485599, -0.668671, 0.563092,
		-0.845643, -0.522558, 0.108728,
		35.422733, 37.403095, 37.992672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201595, 36.941013, 37.870113>,  <36.014683, 37.768887, 37.916561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201595, 36.941013, 37.870113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828175, 37.016167, 37.748009>,  <35.604122, 37.061256, 37.674747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828175, 37.016167, 37.748009>,  <36.201595, 36.941013, 37.870113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828175, 37.016167, 37.748009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234385, -0.324367, -0.916433,
		-0.271196, -0.927085, 0.258777,
		-0.933550, 0.187879, -0.305262,
		35.548111, 37.072533, 37.656429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899899, 36.589050, 37.432186>,  <36.201595, 36.941013, 37.870113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899899, 36.589050, 37.432186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.259979, 36.734112, 37.528622>,  <37.476028, 36.821148, 37.586483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.259979, 36.734112, 37.528622>,  <36.899899, 36.589050, 37.432186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259979, 36.734112, 37.528622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260799, 0.005596, 0.965377,
		0.348747, -0.931908, 0.099617,
		0.900200, 0.362652, 0.241089,
		37.530041, 36.842907, 37.600948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041668, 36.220947, 38.015690>,  <36.899899, 36.589050, 37.432186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041668, 36.220947, 38.015690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275379, 36.545483, 38.008163>,  <37.415604, 36.740204, 38.003647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275379, 36.545483, 38.008163>,  <37.041668, 36.220947, 38.015690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275379, 36.545483, 38.008163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152271, 0.132373, 0.979434,
		0.797142, -0.569394, 0.200885,
		0.584276, 0.811337, -0.018819,
		37.450661, 36.788883, 38.002518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227844, 36.162373, 38.643646>,  <37.041668, 36.220947, 38.015690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227844, 36.162373, 38.643646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.329018, 36.534077, 38.535946>,  <37.389721, 36.757099, 38.471325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.329018, 36.534077, 38.535946>,  <37.227844, 36.162373, 38.643646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329018, 36.534077, 38.535946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124829, 0.307316, 0.943385,
		0.959397, -0.205004, 0.193730,
		0.252934, 0.929263, -0.269247,
		37.404900, 36.812855, 38.455173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711208, 36.296108, 39.195900>,  <37.227844, 36.162373, 38.643646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711208, 36.296108, 39.195900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.592731, 36.630486, 39.011086>,  <37.521645, 36.831112, 38.900196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.592731, 36.630486, 39.011086>,  <37.711208, 36.296108, 39.195900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592731, 36.630486, 39.011086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087152, 0.458072, 0.884632,
		0.951145, 0.302286, -0.062822,
		-0.296189, 0.835939, -0.462038,
		37.503876, 36.881268, 38.872475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044426, 36.781811, 39.438782>,  <37.711208, 36.296108, 39.195900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044426, 36.781811, 39.438782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728077, 36.968117, 39.279995>,  <37.538269, 37.079899, 39.184723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728077, 36.968117, 39.279995>,  <38.044426, 36.781811, 39.438782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728077, 36.968117, 39.279995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214015, 0.397213, 0.892423,
		0.573341, 0.790749, -0.214464,
		-0.790871, 0.465765, -0.396971,
		37.490814, 37.107845, 39.160904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139301, 37.650852, 39.563419>,  <38.044426, 36.781811, 39.438782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139301, 37.650852, 39.563419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751053, 37.577686, 39.500881>,  <37.518105, 37.533787, 39.463360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751053, 37.577686, 39.500881>,  <38.139301, 37.650852, 39.563419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751053, 37.577686, 39.500881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191553, 0.194137, 0.962090,
		-0.145632, 0.963769, -0.223471,
		-0.970618, -0.182918, -0.156341,
		37.459869, 37.522812, 39.453979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794369, 38.119694, 39.851009>,  <38.139301, 37.650852, 39.563419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794369, 38.119694, 39.851009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494591, 37.855122, 39.839382>,  <37.314724, 37.696377, 39.832405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494591, 37.855122, 39.839382>,  <37.794369, 38.119694, 39.851009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494591, 37.855122, 39.839382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297256, 0.296933, 0.907452,
		-0.591586, 0.688724, -0.419149,
		-0.749443, -0.661430, -0.029066,
		37.269756, 37.656693, 39.830662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171261, 38.504616, 40.133373>,  <37.794369, 38.119694, 39.851009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171261, 38.504616, 40.133373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108765, 38.111885, 40.176460>,  <37.071266, 37.876247, 40.202312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108765, 38.111885, 40.176460>,  <37.171261, 38.504616, 40.133373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108765, 38.111885, 40.176460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412428, 0.163949, 0.896116,
		-0.897492, 0.095583, -0.430549,
		-0.156242, -0.981827, 0.107722,
		37.061893, 37.817337, 40.208778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609200, 38.483574, 40.566730>,  <37.171261, 38.504616, 40.133373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609200, 38.483574, 40.566730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769611, 38.118526, 40.598492>,  <36.865860, 37.899498, 40.617550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769611, 38.118526, 40.598492>,  <36.609200, 38.483574, 40.566730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769611, 38.118526, 40.598492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302002, -0.049879, 0.952001,
		-0.864853, -0.405760, -0.295616,
		0.401029, -0.912618, 0.079403,
		36.889919, 37.844742, 40.622311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086147, 38.140064, 40.943218>,  <36.609200, 38.483574, 40.566730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086147, 38.140064, 40.943218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406731, 37.903713, 40.980164>,  <36.599079, 37.761902, 41.002331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406731, 37.903713, 40.980164>,  <36.086147, 38.140064, 40.943218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406731, 37.903713, 40.980164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156132, -0.057646, 0.986053,
		-0.577313, -0.804698, -0.138456,
		0.801457, -0.590878, 0.092359,
		36.647167, 37.726448, 41.007870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923885, 37.540802, 41.379517>,  <36.086147, 38.140064, 40.943218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923885, 37.540802, 41.379517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314316, 37.625038, 41.401173>,  <36.548573, 37.675579, 41.414165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314316, 37.625038, 41.401173>,  <35.923885, 37.540802, 41.379517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314316, 37.625038, 41.401173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102063, 0.223885, 0.969257,
		0.191985, -0.951594, 0.240021,
		0.976076, 0.210580, 0.054140,
		36.607140, 37.688213, 41.417416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923660, 37.398537, 41.995205>,  <35.923885, 37.540802, 41.379517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923660, 37.398537, 41.995205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.278610, 37.567493, 41.921284>,  <36.491581, 37.668869, 41.876930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.278610, 37.567493, 41.921284>,  <35.923660, 37.398537, 41.995205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278610, 37.567493, 41.921284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069576, 0.273560, 0.959335,
		0.455776, -0.864144, 0.213361,
		0.887371, 0.422397, -0.184806,
		36.544823, 37.694214, 41.865841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324123, 37.094948, 42.504475>,  <35.923660, 37.398537, 41.995205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324123, 37.094948, 42.504475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468899, 37.435986, 42.353699>,  <36.555763, 37.640610, 42.263233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468899, 37.435986, 42.353699>,  <36.324123, 37.094948, 42.504475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468899, 37.435986, 42.353699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148141, 0.451816, 0.879725,
		0.920357, -0.262564, 0.289833,
		0.361936, 0.852597, -0.376935,
		36.577480, 37.691765, 42.240620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829689, 37.357594, 42.996315>,  <36.324123, 37.094948, 42.504475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829689, 37.357594, 42.996315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727974, 37.680439, 42.783184>,  <36.666946, 37.874146, 42.655304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727974, 37.680439, 42.783184>,  <36.829689, 37.357594, 42.996315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727974, 37.680439, 42.783184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134465, 0.516080, 0.845920,
		0.957736, 0.286751, -0.022702,
		-0.254284, 0.807116, -0.532826,
		36.651688, 37.922573, 42.623337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029510, 37.938145, 43.400459>,  <36.829689, 37.357594, 42.996315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029510, 37.938145, 43.400459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.790413, 38.130390, 43.143799>,  <36.646954, 38.245739, 42.989803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.790413, 38.130390, 43.143799>,  <37.029510, 37.938145, 43.400459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790413, 38.130390, 43.143799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322364, 0.588722, 0.741274,
		0.734022, 0.649935, -0.196970,
		-0.597740, 0.480615, -0.641651,
		36.611092, 38.274574, 42.951305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169361, 38.721554, 43.453239>,  <37.029510, 37.938145, 43.400459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169361, 38.721554, 43.453239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.806999, 38.639767, 43.304901>,  <36.589581, 38.590694, 43.215900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.806999, 38.639767, 43.304901>,  <37.169361, 38.721554, 43.453239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806999, 38.639767, 43.304901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421349, 0.522924, 0.740956,
		0.042419, 0.827491, -0.559874,
		-0.905906, -0.204472, -0.370844,
		36.535229, 38.578426, 43.193649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769093, 39.358555, 43.373608>,  <37.169361, 38.721554, 43.453239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769093, 39.358555, 43.373608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490654, 39.071632, 43.385715>,  <36.323589, 38.899479, 43.392979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490654, 39.071632, 43.385715>,  <36.769093, 39.358555, 43.373608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490654, 39.071632, 43.385715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478548, 0.494999, 0.725236,
		-0.535201, 0.490351, -0.687835,
		-0.696098, -0.717309, 0.030268,
		36.281826, 38.856441, 43.394794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284992, 39.742950, 43.567745>,  <36.769093, 39.358555, 43.373608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284992, 39.742950, 43.567745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145809, 39.371433, 43.618771>,  <36.062302, 39.148521, 43.649384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145809, 39.371433, 43.618771>,  <36.284992, 39.742950, 43.567745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145809, 39.371433, 43.618771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618149, 0.329588, 0.713627,
		-0.704854, 0.169458, -0.688814,
		-0.347955, -0.928792, 0.127561,
		36.041424, 39.092796, 43.657040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.577705, 39.760094, 43.772713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.669006, 39.397762, 43.915466>,  <35.723789, 39.180363, 44.001118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.669006, 39.397762, 43.915466>,  <35.577705, 39.760094, 43.772713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669006, 39.397762, 43.915466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431035, 0.234663, 0.871288,
		-0.872988, -0.352707, -0.336882,
		0.228256, -0.905832, 0.356887,
		35.737484, 39.126015, 44.022533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025238, 39.585796, 44.294304>,  <35.577705, 39.760094, 43.772713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025238, 39.585796, 44.294304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.319641, 39.332077, 44.388924>,  <35.496284, 39.179844, 44.445698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.319641, 39.332077, 44.388924>,  <35.025238, 39.585796, 44.294304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319641, 39.332077, 44.388924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047058, 0.300645, 0.952574,
		-0.675334, -0.712235, 0.191429,
		0.736009, -0.634298, 0.236553,
		35.540443, 39.141788, 44.459888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811562, 39.027603, 44.659752>,  <35.025238, 39.585796, 44.294304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811562, 39.027603, 44.659752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.196255, 39.086231, 44.752350>,  <35.427071, 39.121410, 44.807911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.196255, 39.086231, 44.752350>,  <34.811562, 39.027603, 44.659752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196255, 39.086231, 44.752350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245131, 0.082797, 0.965948,
		0.122416, -0.985729, 0.115559,
		0.961730, 0.146574, 0.231496,
		35.484776, 39.130203, 44.821800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946350, 38.811913, 45.353359>,  <34.811562, 39.027603, 44.659752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946350, 38.811913, 45.353359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281639, 39.027081, 45.317528>,  <35.482811, 39.156181, 45.296028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281639, 39.027081, 45.317528>,  <34.946350, 38.811913, 45.353359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281639, 39.027081, 45.317528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050993, 0.240859, 0.969220,
		0.542939, -0.807854, 0.229324,
		0.838223, 0.537921, -0.089577,
		35.533108, 39.188457, 45.290653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303040, 38.695385, 46.008598>,  <34.946350, 38.811913, 45.353359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303040, 38.695385, 46.008598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465271, 39.024883, 45.850132>,  <35.562611, 39.222584, 45.755054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465271, 39.024883, 45.850132>,  <35.303040, 38.695385, 46.008598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465271, 39.024883, 45.850132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104005, 0.389006, 0.915345,
		0.908124, -0.412447, 0.072098,
		0.405578, 0.823749, -0.396162,
		35.586945, 39.272007, 45.731285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877975, 38.767395, 46.404224>,  <35.303040, 38.695385, 46.008598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877975, 38.767395, 46.404224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771362, 39.123928, 46.257534>,  <35.707394, 39.337849, 46.169521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771362, 39.123928, 46.257534>,  <35.877975, 38.767395, 46.404224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771362, 39.123928, 46.257534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161233, 0.416362, 0.894789,
		0.950243, 0.179366, -0.254688,
		-0.266537, 0.891331, -0.366726,
		35.691402, 39.391327, 46.147518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339954, 39.243595, 46.801151>,  <35.877975, 38.767395, 46.404224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339954, 39.243595, 46.801151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.040119, 39.469364, 46.662849>,  <35.860218, 39.604828, 46.579868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.040119, 39.469364, 46.662849>,  <36.339954, 39.243595, 46.801151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040119, 39.469364, 46.662849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097538, 0.422465, 0.901116,
		0.654681, 0.709188, -0.261620,
		-0.749586, 0.564425, -0.345752,
		35.815243, 39.638691, 46.559124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569698, 39.941128, 47.004333>,  <36.339954, 39.243595, 46.801151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569698, 39.941128, 47.004333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173664, 39.934238, 46.948574>,  <35.936043, 39.930103, 46.915119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173664, 39.934238, 46.948574>,  <36.569698, 39.941128, 47.004333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173664, 39.934238, 46.948574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129075, 0.502955, 0.854620,
		0.055390, 0.864141, -0.500192,
		-0.990087, -0.017225, -0.139398,
		35.876637, 39.929070, 46.906754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321945, 40.519730, 47.385490>,  <36.569698, 39.941128, 47.004333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321945, 40.519730, 47.385490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.973118, 40.324612, 47.369762>,  <35.763821, 40.207542, 47.360325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.973118, 40.324612, 47.369762>,  <36.321945, 40.519730, 47.385490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973118, 40.324612, 47.369762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260091, 0.393929, 0.881574,
		-0.414537, 0.779023, -0.470406,
		-0.872073, -0.487793, -0.039319,
		35.711494, 40.178272, 47.357967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752930, 41.026104, 47.470272>,  <36.321945, 40.519730, 47.385490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752930, 41.026104, 47.470272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.635788, 40.658169, 47.574677>,  <35.565502, 40.437408, 47.637321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.635788, 40.658169, 47.574677>,  <35.752930, 41.026104, 47.470272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635788, 40.658169, 47.574677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554655, 0.385785, 0.737243,
		-0.778843, 0.071130, -0.623173,
		-0.292851, -0.919843, 0.261013,
		35.547932, 40.382217, 47.652981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268234, 41.182514, 48.044762>,  <35.752930, 41.026104, 47.470272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268234, 41.182514, 48.044762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337234, 40.789520, 48.072937>,  <35.378635, 40.553722, 48.089844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337234, 40.789520, 48.072937>,  <35.268234, 41.182514, 48.044762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337234, 40.789520, 48.072937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197249, 0.035607, 0.979706,
		-0.965057, -0.182894, -0.187653,
		0.172501, -0.982487, 0.070438,
		35.388985, 40.494774, 48.094070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681049, 40.957474, 48.355289>,  <35.268234, 41.182514, 48.044762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681049, 40.957474, 48.355289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.955078, 40.675396, 48.428371>,  <35.119495, 40.506149, 48.472221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.955078, 40.675396, 48.428371>,  <34.681049, 40.957474, 48.355289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955078, 40.675396, 48.428371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304786, -0.049663, 0.951125,
		-0.661650, -0.707277, -0.248955,
		0.685073, -0.705191, 0.182708,
		35.160599, 40.463840, 48.483185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417233, 40.519299, 48.815899>,  <34.681049, 40.957474, 48.355289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417233, 40.519299, 48.815899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803139, 40.416866, 48.840065>,  <35.034683, 40.355408, 48.854565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803139, 40.416866, 48.840065>,  <34.417233, 40.519299, 48.815899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803139, 40.416866, 48.840065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074686, -0.046376, 0.996128,
		-0.252286, -0.965543, -0.063867,
		0.964766, -0.256079, 0.060413,
		35.092567, 40.340042, 48.858189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432346, 39.929131, 49.277874>,  <34.417233, 40.519299, 48.815899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432346, 39.929131, 49.277874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807457, 40.067902, 49.272007>,  <35.032524, 40.151165, 49.268486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807457, 40.067902, 49.272007>,  <34.432346, 39.929131, 49.277874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807457, 40.067902, 49.272007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120141, -0.284533, 0.951108,
		0.325788, -0.893691, -0.308509,
		0.937779, 0.346924, -0.014672,
		35.088791, 40.171978, 49.267605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830055, 39.454380, 49.654556>,  <34.432346, 39.929131, 49.277874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830055, 39.454380, 49.654556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037243, 39.796501, 49.649391>,  <35.161556, 40.001774, 49.646290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037243, 39.796501, 49.649391>,  <34.830055, 39.454380, 49.654556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037243, 39.796501, 49.649391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335223, -0.189076, 0.922971,
		0.786975, -0.482403, -0.384652,
		0.517973, 0.855300, -0.012915,
		35.192635, 40.053093, 49.645515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401005, 39.212917, 50.058098>,  <34.830055, 39.454380, 49.654556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401005, 39.212917, 50.058098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387600, 39.612679, 50.061398>,  <35.379559, 39.852535, 50.063377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387600, 39.612679, 50.061398>,  <35.401005, 39.212917, 50.058098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387600, 39.612679, 50.061398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220196, -0.000665, 0.975456,
		0.974880, 0.034501, -0.220043,
		-0.033508, 0.999405, 0.008245,
		35.377548, 39.912498, 50.063869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942757, 39.306267, 50.514091>,  <35.401005, 39.212917, 50.058098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942757, 39.306267, 50.514091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730377, 39.645123, 50.505642>,  <35.602947, 39.848434, 50.500572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730377, 39.645123, 50.505642>,  <35.942757, 39.306267, 50.514091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730377, 39.645123, 50.505642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001327, 0.024092, 0.999709,
		0.847402, 0.530824, -0.011668,
		-0.530950, 0.847140, -0.021120,
		35.571091, 39.899265, 50.499306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202541, 39.608486, 50.967197>,  <35.942757, 39.306267, 50.514091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202541, 39.608486, 50.967197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860161, 39.812801, 50.935108>,  <35.654732, 39.935390, 50.915855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860161, 39.812801, 50.935108>,  <36.202541, 39.608486, 50.967197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860161, 39.812801, 50.935108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056008, 0.062655, 0.996462,
		0.514006, 0.857421, -0.025022,
		-0.855956, 0.510787, -0.080227,
		35.603374, 39.966038, 50.911041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268700, 40.287647, 51.288879>,  <36.202541, 39.608486, 50.967197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268700, 40.287647, 51.288879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892624, 40.151421, 51.291977>,  <35.666977, 40.069687, 51.293835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892624, 40.151421, 51.291977>,  <36.268700, 40.287647, 51.288879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892624, 40.151421, 51.291977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058642, 0.184205, 0.981137,
		-0.335567, 0.922000, -0.193159,
		-0.940189, -0.340565, 0.007745,
		35.610569, 40.049252, 51.294300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778370, 40.861862, 51.596329>,  <36.268700, 40.287647, 51.288879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778370, 40.861862, 51.596329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.600586, 40.505657, 51.635208>,  <35.493916, 40.291935, 51.658535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.600586, 40.505657, 51.635208>,  <35.778370, 40.861862, 51.596329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600586, 40.505657, 51.635208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255614, 0.230072, 0.939004,
		-0.858556, 0.392502, -0.329884,
		-0.444458, -0.890510, 0.097201,
		35.467247, 40.238503, 51.664368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106911, 40.927380, 51.976643>,  <35.778370, 40.861862, 51.596329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106911, 40.927380, 51.976643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229153, 40.552795, 52.045509>,  <35.302498, 40.328045, 52.086830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229153, 40.552795, 52.045509>,  <35.106911, 40.927380, 51.976643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229153, 40.552795, 52.045509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175974, 0.122157, 0.976786,
		-0.935755, -0.328810, -0.127462,
		0.305607, -0.936462, 0.172171,
		35.320835, 40.271858, 52.097160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937443, 40.850613, 52.614609>,  <35.106911, 40.927380, 51.976643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937443, 40.850613, 52.614609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144573, 40.508659, 52.601746>,  <35.268852, 40.303486, 52.594028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144573, 40.508659, 52.601746>,  <34.937443, 40.850613, 52.614609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144573, 40.508659, 52.601746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114793, -0.106689, 0.987644,
		-0.847750, -0.507734, -0.153381,
		0.517824, -0.854882, -0.032161,
		35.299919, 40.252193, 52.592098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258423, 40.778713, 52.963570>,  <34.937443, 40.850613, 52.614609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258423, 40.778713, 52.963570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121666, 40.478447, 53.189705>,  <34.039612, 40.298286, 53.325386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121666, 40.478447, 53.189705>,  <34.258423, 40.778713, 52.963570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121666, 40.478447, 53.189705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679321, -0.218262, -0.700632,
		0.649333, -0.623589, -0.435320,
		-0.341892, -0.750665, 0.565341,
		34.019096, 40.253246, 53.359306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449493, 40.116081, 52.621407>,  <34.258423, 40.778713, 52.963570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449493, 40.116081, 52.621407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119198, 40.105106, 52.846760>,  <33.921021, 40.098522, 52.981972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119198, 40.105106, 52.846760>,  <34.449493, 40.116081, 52.621407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119198, 40.105106, 52.846760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528278, -0.312431, -0.789499,
		0.197684, -0.949544, 0.243490,
		-0.825738, -0.027441, 0.563386,
		33.871475, 40.096874, 53.015774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229458, 39.473839, 52.423252>,  <34.449493, 40.116081, 52.621407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229458, 39.473839, 52.423252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942116, 39.720490, 52.552082>,  <33.769711, 39.868481, 52.629379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942116, 39.720490, 52.552082>,  <34.229458, 39.473839, 52.423252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942116, 39.720490, 52.552082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557486, -0.233319, -0.796726,
		-0.416137, -0.751886, 0.511368,
		-0.718359, 0.616627, 0.322074,
		33.726608, 39.905476, 52.648705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669888, 39.301369, 51.989170>,  <34.229458, 39.473839, 52.423252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669888, 39.301369, 51.989170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.518082, 39.626308, 52.166283>,  <33.426998, 39.821274, 52.272552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.518082, 39.626308, 52.166283>,  <33.669888, 39.301369, 51.989170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518082, 39.626308, 52.166283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750787, 0.009255, -0.660480,
		-0.540640, -0.583095, 0.606390,
		-0.379510, 0.812351, 0.442784,
		33.404228, 39.870014, 52.299118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039787, 39.075962, 52.072865>,  <33.669888, 39.301369, 51.989170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039787, 39.075962, 52.072865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.013172, 39.475075, 52.071415>,  <32.997204, 39.714542, 52.070545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.013172, 39.475075, 52.071415>,  <33.039787, 39.075962, 52.072865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013172, 39.475075, 52.071415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754323, -0.052677, -0.654387,
		-0.653123, -0.040807, 0.756151,
		-0.066535, 0.997777, -0.003623,
		32.993210, 39.774406, 52.070328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372341, 39.115627, 51.823330>,  <33.039787, 39.075962, 52.072865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372341, 39.115627, 51.823330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542870, 39.474693, 51.778709>,  <32.645187, 39.690132, 51.751938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542870, 39.474693, 51.778709>,  <32.372341, 39.115627, 51.823330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542870, 39.474693, 51.778709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589500, 0.182174, -0.786958,
		-0.686103, 0.401260, 0.606839,
		0.426325, 0.897665, -0.111552,
		32.670769, 39.743992, 51.745243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818117, 39.496159, 51.687351>,  <32.372341, 39.115627, 51.823330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818117, 39.496159, 51.687351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.129387, 39.712303, 51.559319>,  <32.316147, 39.841991, 51.482498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.129387, 39.712303, 51.559319>,  <31.818117, 39.496159, 51.687351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129387, 39.712303, 51.559319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503750, 0.232658, -0.831929,
		-0.375074, 0.808627, 0.453256,
		0.778174, 0.540363, -0.320082,
		32.362839, 39.874413, 51.463295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520241, 40.079414, 51.443817>,  <31.818117, 39.496159, 51.687351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520241, 40.079414, 51.443817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.879490, 40.049267, 51.270523>,  <32.095039, 40.031178, 51.166546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.879490, 40.049267, 51.270523>,  <31.520241, 40.079414, 51.443817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879490, 40.049267, 51.270523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426585, 0.089871, -0.899972,
		0.106767, 0.993097, 0.048563,
		0.898124, -0.075371, -0.433236,
		32.148926, 40.026657, 51.140553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562943, 40.746105, 51.003139>,  <31.520241, 40.079414, 51.443817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562943, 40.746105, 51.003139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806971, 40.453102, 50.882309>,  <31.953386, 40.277302, 50.809811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806971, 40.453102, 50.882309>,  <31.562943, 40.746105, 51.003139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806971, 40.453102, 50.882309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455531, -0.012312, -0.890135,
		0.648312, 0.680647, -0.341191,
		0.610068, -0.732508, -0.302073,
		31.989990, 40.233349, 50.791687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799269, 41.045231, 50.339928>,  <31.562943, 40.746105, 51.003139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799269, 41.045231, 50.339928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.945900, 40.676151, 50.292179>,  <32.033878, 40.454704, 50.263531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.945900, 40.676151, 50.292179>,  <31.799269, 41.045231, 50.339928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945900, 40.676151, 50.292179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122429, 0.079346, -0.989300,
		0.922297, 0.377271, -0.083878,
		0.366579, -0.922698, -0.119369,
		32.055874, 40.399342, 50.256367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339333, 40.975185, 49.771969>,  <31.799269, 41.045231, 50.339928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339333, 40.975185, 49.771969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.206890, 40.599663, 49.809952>,  <32.127426, 40.374352, 49.832741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.206890, 40.599663, 49.809952>,  <32.339333, 40.975185, 49.771969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206890, 40.599663, 49.809952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061223, -0.121795, -0.990666,
		0.941606, -0.322200, 0.097803,
		-0.331104, -0.938804, 0.094957,
		32.107559, 40.318020, 49.838440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911701, 40.556614, 49.676090>,  <32.339333, 40.975185, 49.771969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911701, 40.556614, 49.676090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595104, 40.334705, 49.573517>,  <32.405144, 40.201561, 49.511971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595104, 40.334705, 49.573517>,  <32.911701, 40.556614, 49.676090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595104, 40.334705, 49.573517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387029, -0.130234, -0.912824,
		0.473013, -0.821746, 0.317793,
		-0.791497, -0.554772, -0.256437,
		32.357655, 40.168274, 49.496586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216358, 39.989990, 49.445740>,  <32.911701, 40.556614, 49.676090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216358, 39.989990, 49.445740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.845249, 39.997681, 49.296677>,  <32.622585, 40.002296, 49.207237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.845249, 39.997681, 49.296677>,  <33.216358, 39.989990, 49.445740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845249, 39.997681, 49.296677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335026, -0.396872, -0.854547,
		-0.164329, -0.917672, 0.361764,
		-0.927768, 0.019226, -0.372662,
		32.566917, 40.003448, 49.184879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998852, 39.327244, 49.077999>,  <33.216358, 39.989990, 49.445740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998852, 39.327244, 49.077999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.737339, 39.588360, 48.924931>,  <32.580433, 39.745029, 48.833088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.737339, 39.588360, 48.924931>,  <32.998852, 39.327244, 49.077999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737339, 39.588360, 48.924931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370549, -0.164737, -0.914087,
		-0.659747, -0.739410, -0.134189,
		-0.653779, 0.652790, -0.382672,
		32.541206, 39.784195, 48.810127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796570, 38.945377, 48.493801>,  <32.998852, 39.327244, 49.077999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796570, 38.945377, 48.493801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.684467, 39.323769, 48.428574>,  <32.617207, 39.550804, 48.389439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.684467, 39.323769, 48.428574>,  <32.796570, 38.945377, 48.493801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684467, 39.323769, 48.428574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125938, -0.132176, -0.983193,
		-0.951629, -0.296080, -0.082091,
		-0.280254, 0.945974, -0.163070,
		32.600391, 39.607559, 48.379654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525837, 39.004448, 47.886303>,  <32.796570, 38.945377, 48.493801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525837, 39.004448, 47.886303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.610489, 39.393051, 47.928989>,  <32.661282, 39.626213, 47.954601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.610489, 39.393051, 47.928989>,  <32.525837, 39.004448, 47.886303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610489, 39.393051, 47.928989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298946, 0.039612, -0.953448,
		-0.930507, 0.233683, -0.282044,
		0.211632, 0.971506, 0.106718,
		32.673977, 39.684502, 47.961006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116234, 39.436653, 47.325397>,  <32.525837, 39.004448, 47.886303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116234, 39.436653, 47.325397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.417137, 39.680214, 47.426071>,  <32.597679, 39.826351, 47.486477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.417137, 39.680214, 47.426071>,  <32.116234, 39.436653, 47.325397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417137, 39.680214, 47.426071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245429, 0.095537, -0.964695,
		-0.611448, 0.787473, -0.077573,
		0.752260, 0.608900, 0.251685,
		32.642815, 39.862885, 47.501575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060802, 39.869366, 46.760040>,  <32.116234, 39.436653, 47.325397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060802, 39.869366, 46.760040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.406319, 39.965855, 46.936977>,  <32.613628, 40.023746, 47.043140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.406319, 39.965855, 46.936977>,  <32.060802, 39.869366, 46.760040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406319, 39.965855, 46.936977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408007, 0.180217, -0.895015,
		-0.295617, 0.953590, 0.057250,
		0.863795, 0.241223, 0.442346,
		32.665459, 40.038223, 47.069683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195267, 40.472237, 46.533356>,  <32.060802, 39.869366, 46.760040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195267, 40.472237, 46.533356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541767, 40.297668, 46.630642>,  <32.749668, 40.192928, 46.689014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541767, 40.297668, 46.630642>,  <32.195267, 40.472237, 46.533356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541767, 40.297668, 46.630642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322761, 0.117234, -0.939192,
		0.381366, 0.892074, 0.242412,
		0.866248, -0.436417, 0.243218,
		32.801643, 40.166744, 46.703606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709728, 40.832130, 46.172752>,  <32.195267, 40.472237, 46.533356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709728, 40.832130, 46.172752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.857838, 40.472218, 46.265083>,  <32.946705, 40.256268, 46.320480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.857838, 40.472218, 46.265083>,  <32.709728, 40.832130, 46.172752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857838, 40.472218, 46.265083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282198, -0.127789, -0.950807,
		0.885021, 0.417199, 0.206601,
		0.370274, -0.899786, 0.230828,
		32.968922, 40.202282, 46.334332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348244, 40.904354, 45.860443>,  <32.709728, 40.832130, 46.172752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348244, 40.904354, 45.860443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.330479, 40.512859, 45.940548>,  <33.319820, 40.277962, 45.988609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.330479, 40.512859, 45.940548>,  <33.348244, 40.904354, 45.860443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330479, 40.512859, 45.940548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210527, -0.205123, -0.955826,
		0.976579, -0.000290, 0.215160,
		-0.044411, -0.978736, 0.200258,
		33.317154, 40.219238, 46.000626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956120, 40.626835, 45.582241>,  <33.348244, 40.904354, 45.860443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956120, 40.626835, 45.582241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.697655, 40.323483, 45.616489>,  <33.542576, 40.141472, 45.637039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.697655, 40.323483, 45.616489>,  <33.956120, 40.626835, 45.582241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697655, 40.323483, 45.616489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190454, -0.268873, -0.944158,
		0.739053, -0.593773, 0.318173,
		-0.646164, -0.758380, 0.085625,
		33.503807, 40.095970, 45.642178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.281769, 28.225956, 30.207415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.881939, 28.225346, 30.219004>,  <40.642040, 28.224979, 30.225958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.881939, 28.225346, 30.219004>,  <41.281769, 28.225956, 30.207415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881939, 28.225346, 30.219004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022755, 0.578291, 0.815513,
		-0.017998, 0.815829, -0.578012,
		-0.999579, -0.001525, 0.028973,
		40.582066, 28.224888, 30.227695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069508, 28.936733, 30.107635>,  <41.281769, 28.225956, 30.207415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069508, 28.936733, 30.107635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.776890, 28.743982, 30.300566>,  <40.601318, 28.628332, 30.416325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.776890, 28.743982, 30.300566>,  <41.069508, 28.936733, 30.107635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776890, 28.743982, 30.300566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061445, 0.657961, 0.750541,
		-0.679021, 0.578689, -0.451718,
		-0.731543, -0.481878, 0.482327,
		40.557426, 28.599419, 30.445263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593372, 29.397579, 30.289967>,  <41.069508, 28.936733, 30.107635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593372, 29.397579, 30.289967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.551750, 29.101667, 30.555868>,  <40.526775, 28.924120, 30.715410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.551750, 29.101667, 30.555868>,  <40.593372, 29.397579, 30.289967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551750, 29.101667, 30.555868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000786, 0.668445, 0.743761,
		-0.994571, 0.076869, -0.070137,
		-0.104055, -0.739779, 0.664755,
		40.520535, 28.879734, 30.755295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227642, 29.664125, 30.836029>,  <40.593372, 29.397579, 30.289967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227642, 29.664125, 30.836029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.370872, 29.333582, 31.009884>,  <40.456810, 29.135256, 31.114197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.370872, 29.333582, 31.009884>,  <40.227642, 29.664125, 30.836029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370872, 29.333582, 31.009884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110454, 0.499725, 0.859113,
		-0.927135, -0.259622, 0.270216,
		0.358078, -0.826360, 0.434636,
		40.478294, 29.085674, 31.140274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753654, 29.517527, 31.409353>,  <40.227642, 29.664125, 30.836029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753654, 29.517527, 31.409353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.085560, 29.307884, 31.486097>,  <40.284702, 29.182098, 31.532145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.085560, 29.307884, 31.486097>,  <39.753654, 29.517527, 31.409353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085560, 29.307884, 31.486097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137251, 0.524824, 0.840073,
		-0.540981, -0.670726, 0.507412,
		0.829760, -0.524106, 0.191861,
		40.334488, 29.150652, 31.543655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775280, 29.331875, 32.099426>,  <39.753654, 29.517527, 31.409353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775280, 29.331875, 32.099426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.157871, 29.316271, 31.983749>,  <40.387424, 29.306908, 31.914343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.157871, 29.316271, 31.983749>,  <39.775280, 29.331875, 32.099426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157871, 29.316271, 31.983749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257655, 0.578167, 0.774169,
		0.137000, -0.814985, 0.563054,
		0.956475, -0.039012, -0.289194,
		40.444813, 29.304567, 31.896992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190258, 29.197126, 32.686123>,  <39.775280, 29.331875, 32.099426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190258, 29.197126, 32.686123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.397270, 29.378195, 32.395676>,  <40.521477, 29.486835, 32.221405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.397270, 29.378195, 32.395676>,  <40.190258, 29.197126, 32.686123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397270, 29.378195, 32.395676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232464, 0.742305, 0.628445,
		0.823484, -0.494034, 0.278934,
		0.517527, 0.452673, -0.726122,
		40.552528, 29.513996, 32.177837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691460, 29.516479, 33.068096>,  <40.190258, 29.197126, 32.686123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691460, 29.516479, 33.068096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.778240, 29.666428, 32.707561>,  <40.830307, 29.756395, 32.491241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.778240, 29.666428, 32.707561>,  <40.691460, 29.516479, 33.068096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778240, 29.666428, 32.707561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419214, 0.798074, 0.432824,
		0.881586, -0.471752, 0.015989,
		0.216947, 0.374869, -0.901336,
		40.843323, 29.778889, 32.437160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313423, 29.684761, 33.096069>,  <40.691460, 29.516479, 33.068096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313423, 29.684761, 33.096069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.159527, 29.924347, 32.815151>,  <41.067188, 30.068098, 32.646599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.159527, 29.924347, 32.815151>,  <41.313423, 29.684761, 33.096069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159527, 29.924347, 32.815151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524508, 0.767950, 0.367621,
		0.759519, -0.226922, -0.609621,
		-0.384737, 0.598966, -0.702295,
		41.044106, 30.104036, 32.604462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858349, 29.979759, 32.724823>,  <41.313423, 29.684761, 33.096069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858349, 29.979759, 32.724823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.555000, 30.236635, 32.680157>,  <41.372993, 30.390760, 32.653358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.555000, 30.236635, 32.680157>,  <41.858349, 29.979759, 32.724823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555000, 30.236635, 32.680157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571081, 0.737188, 0.361138,
		0.314238, 0.210105, -0.925803,
		-0.758367, 0.642191, -0.111665,
		41.327492, 30.429293, 32.646656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144772, 30.598068, 32.373901>,  <41.858349, 29.979759, 32.724823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144772, 30.598068, 32.373901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.813457, 30.705519, 32.570591>,  <41.614670, 30.769989, 32.688602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.813457, 30.705519, 32.570591>,  <42.144772, 30.598068, 32.373901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813457, 30.705519, 32.570591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468045, 0.814157, 0.343632,
		-0.308029, 0.514771, -0.800081,
		-0.828283, 0.268625, 0.491719,
		41.564972, 30.786106, 32.718105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262157, 31.237059, 32.630981>,  <42.144772, 30.598068, 32.373901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262157, 31.237059, 32.630981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.895443, 31.226913, 32.790413>,  <41.675415, 31.220827, 32.886070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.895443, 31.226913, 32.790413>,  <42.262157, 31.237059, 32.630981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895443, 31.226913, 32.790413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050464, 0.982626, 0.178603,
		-0.396181, 0.183855, -0.899576,
		-0.916784, -0.025363, 0.398576,
		41.620407, 31.219305, 32.909985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821178, 31.828535, 32.367683>,  <42.262157, 31.237059, 32.630981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821178, 31.828535, 32.367683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700157, 31.690289, 32.722988>,  <41.627544, 31.607340, 32.936172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700157, 31.690289, 32.722988>,  <41.821178, 31.828535, 32.367683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700157, 31.690289, 32.722988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043957, 0.936009, 0.349222,
		-0.952118, 0.066613, -0.298384,
		-0.302553, -0.345616, 0.888263,
		41.609390, 31.586603, 32.989468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494644, 32.437607, 32.678783>,  <41.821178, 31.828535, 32.367683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494644, 32.437607, 32.678783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.568493, 32.192684, 32.986286>,  <41.612801, 32.045731, 33.170788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.568493, 32.192684, 32.986286>,  <41.494644, 32.437607, 32.678783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568493, 32.192684, 32.986286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168684, 0.790341, 0.588988,
		-0.968225, 0.020937, 0.249201,
		0.184622, -0.612309, 0.768760,
		41.623878, 32.008991, 33.216915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048908, 32.651920, 33.144890>,  <41.494644, 32.437607, 32.678783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048908, 32.651920, 33.144890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.329987, 32.462498, 33.357292>,  <41.498634, 32.348846, 33.484734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.329987, 32.462498, 33.357292>,  <41.048908, 32.651920, 33.144890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329987, 32.462498, 33.357292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247303, 0.862359, 0.441791,
		-0.667133, -0.179122, 0.723083,
		0.702691, -0.473554, 0.531010,
		41.540794, 32.320431, 33.516594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847435, 32.763115, 33.843342>,  <41.048908, 32.651920, 33.144890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847435, 32.763115, 33.843342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237675, 32.676781, 33.859474>,  <41.471817, 32.624981, 33.869156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237675, 32.676781, 33.859474>,  <40.847435, 32.763115, 33.843342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237675, 32.676781, 33.859474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163923, 0.838145, 0.520232,
		-0.146092, -0.500925, 0.853072,
		0.975595, -0.215840, 0.040333,
		41.530354, 32.612030, 33.871574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979130, 32.882404, 34.524170>,  <40.847435, 32.763115, 33.843342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979130, 32.882404, 34.524170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.324425, 32.891869, 34.322475>,  <41.531601, 32.897549, 34.201458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.324425, 32.891869, 34.322475>,  <40.979130, 32.882404, 34.524170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324425, 32.891869, 34.322475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269090, 0.823567, 0.499327,
		0.427089, -0.566725, 0.704569,
		0.863241, 0.023665, -0.504237,
		41.583397, 32.898968, 34.171204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497360, 32.814762, 35.097424>,  <40.979130, 32.882404, 34.524170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497360, 32.814762, 35.097424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674984, 32.980251, 34.779518>,  <41.781559, 33.079544, 34.588776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674984, 32.980251, 34.779518>,  <41.497360, 32.814762, 35.097424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674984, 32.980251, 34.779518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303053, 0.765382, 0.567758,
		0.843192, -0.492971, 0.214491,
		0.444056, 0.413727, -0.794761,
		41.808201, 33.104370, 34.541088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159706, 33.037441, 35.427483>,  <41.497360, 32.814762, 35.097424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159706, 33.037441, 35.427483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.121674, 33.248268, 35.089687>,  <42.098854, 33.374763, 34.887009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.121674, 33.248268, 35.089687>,  <42.159706, 33.037441, 35.427483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121674, 33.248268, 35.089687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615972, 0.697575, 0.366016,
		0.782009, -0.485380, -0.390985,
		-0.095084, 0.527063, -0.844490,
		42.093147, 33.406387, 34.836342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858433, 33.106796, 35.172985>,  <42.159706, 33.037441, 35.427483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858433, 33.106796, 35.172985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.646770, 33.390064, 34.986012>,  <42.519775, 33.560024, 34.873829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.646770, 33.390064, 34.986012>,  <42.858433, 33.106796, 35.172985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646770, 33.390064, 34.986012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579380, 0.704014, 0.410710,
		0.619933, -0.053494, -0.782829,
		-0.529152, 0.708169, -0.467435,
		42.488026, 33.602516, 34.845779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326694, 33.502987, 35.009644>,  <42.858433, 33.106796, 35.172985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326694, 33.502987, 35.009644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001839, 33.735928, 34.995247>,  <42.806927, 33.875694, 34.986610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001839, 33.735928, 34.995247>,  <43.326694, 33.502987, 35.009644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001839, 33.735928, 34.995247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522156, 0.752943, 0.400539,
		0.260354, 0.306500, -0.915573,
		-0.812139, 0.582353, -0.035991,
		42.758198, 33.910633, 34.984451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512661, 34.107796, 34.588562>,  <43.326694, 33.502987, 35.009644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512661, 34.107796, 34.588562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.213638, 34.163055, 34.848431>,  <43.034225, 34.196213, 35.004353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.213638, 34.163055, 34.848431>,  <43.512661, 34.107796, 34.588562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213638, 34.163055, 34.848431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462857, 0.809875, 0.360370,
		-0.476369, 0.570102, -0.669370,
		-0.747553, 0.138153, 0.649675,
		42.989372, 34.204502, 35.043335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663063, 34.764446, 34.783348>,  <43.512661, 34.107796, 34.588562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663063, 34.764446, 34.783348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.051414, 34.749390, 34.688705>,  <44.284424, 34.740356, 34.631920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.051414, 34.749390, 34.688705>,  <43.663063, 34.764446, 34.783348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051414, 34.749390, 34.688705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199742, -0.672500, -0.712633,
		-0.132297, 0.739139, -0.660432,
		0.970876, -0.037637, -0.236607,
		44.342678, 34.738098, 34.617722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748123, 35.042622, 34.140366>,  <43.663063, 34.764446, 34.783348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748123, 35.042622, 34.140366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.054646, 34.792236, 34.198254>,  <44.238560, 34.642006, 34.232986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.054646, 34.792236, 34.198254>,  <43.748123, 35.042622, 34.140366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054646, 34.792236, 34.198254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286128, -0.534188, -0.795471,
		0.575241, 0.568168, -0.588458,
		0.766309, -0.625962, 0.144718,
		44.284538, 34.604446, 34.241669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105167, 34.956081, 33.433228>,  <43.748123, 35.042622, 34.140366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105167, 34.956081, 33.433228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.246128, 34.672523, 33.677612>,  <44.330704, 34.502388, 33.824245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.246128, 34.672523, 33.677612>,  <44.105167, 34.956081, 33.433228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246128, 34.672523, 33.677612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129242, -0.683455, -0.718460,
		0.926881, 0.174227, -0.332472,
		0.352404, -0.708896, 0.610964,
		44.351849, 34.459854, 33.860901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706303, 34.720051, 33.018314>,  <44.105167, 34.956081, 33.433228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706303, 34.720051, 33.018314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553711, 34.446716, 33.267323>,  <44.462158, 34.282715, 33.416729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553711, 34.446716, 33.267323>,  <44.706303, 34.720051, 33.018314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553711, 34.446716, 33.267323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092401, -0.641887, -0.761212,
		0.919749, -0.347905, 0.181724,
		-0.381475, -0.683333, 0.622521,
		44.439270, 34.241718, 33.454079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985268, 34.086720, 32.812294>,  <44.706303, 34.720051, 33.018314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.985268, 34.086720, 32.812294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661762, 33.971058, 33.017155>,  <44.467659, 33.901661, 33.140072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661762, 33.971058, 33.017155>,  <44.985268, 34.086720, 32.812294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661762, 33.971058, 33.017155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194667, -0.690106, -0.697035,
		0.554990, -0.663432, 0.501840,
		-0.808758, -0.289156, 0.512150,
		44.419136, 33.884312, 33.170799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993267, 33.321224, 32.849125>,  <44.985268, 34.086720, 32.812294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993267, 33.321224, 32.849125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611935, 33.426842, 32.907688>,  <44.383133, 33.490211, 32.942825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611935, 33.426842, 32.907688>,  <44.993267, 33.321224, 32.849125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611935, 33.426842, 32.907688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300872, -0.790529, -0.533423,
		-0.025111, -0.552580, 0.833082,
		-0.953334, 0.264046, 0.146405,
		44.325935, 33.506054, 32.951611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659615, 32.769718, 32.710873>,  <44.993267, 33.321224, 32.849125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659615, 32.769718, 32.710873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.334492, 33.001228, 32.737305>,  <44.139420, 33.140133, 32.753162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.334492, 33.001228, 32.737305>,  <44.659615, 32.769718, 32.710873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334492, 33.001228, 32.737305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443936, -0.541974, -0.713572,
		-0.377184, -0.609330, 0.697459,
		-0.812805, 0.578776, 0.066080,
		44.090649, 33.174862, 32.757130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064274, 32.414932, 32.945030>,  <44.659615, 32.769718, 32.710873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064274, 32.414932, 32.945030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.930092, 32.719543, 32.723206>,  <43.849583, 32.902309, 32.590111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.930092, 32.719543, 32.723206>,  <44.064274, 32.414932, 32.945030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930092, 32.719543, 32.723206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512185, -0.641497, -0.571094,
		-0.790657, 0.092465, 0.605237,
		-0.335451, 0.761533, -0.554564,
		43.829456, 32.948002, 32.556835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322643, 32.247753, 32.968700>,  <44.064274, 32.414932, 32.945030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322643, 32.247753, 32.968700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396751, 32.501297, 32.668331>,  <43.441216, 32.653423, 32.488110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396751, 32.501297, 32.668331>,  <43.322643, 32.247753, 32.968700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396751, 32.501297, 32.668331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430837, -0.634403, -0.641804,
		-0.883206, 0.442436, 0.155555,
		0.185273, 0.633864, -0.750926,
		43.452332, 32.691456, 32.443054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822643, 32.188179, 32.527458>,  <43.322643, 32.247753, 32.968700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822643, 32.188179, 32.527458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082470, 32.351433, 32.270866>,  <43.238365, 32.449387, 32.116913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082470, 32.351433, 32.270866>,  <42.822643, 32.188179, 32.527458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082470, 32.351433, 32.270866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356035, -0.582204, -0.730943,
		-0.671794, 0.703182, -0.232868,
		0.649563, 0.408134, -0.641478,
		43.277340, 32.473873, 32.078423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435162, 32.385250, 31.867878>,  <42.822643, 32.188179, 32.527458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435162, 32.385250, 31.867878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.813896, 32.352074, 31.743538>,  <43.041138, 32.332169, 31.668934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.813896, 32.352074, 31.743538>,  <42.435162, 32.385250, 31.867878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813896, 32.352074, 31.743538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298299, -0.588262, -0.751642,
		-0.120518, 0.804406, -0.581728,
		0.946833, -0.082942, -0.310849,
		43.097946, 32.327190, 31.650284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284927, 32.514774, 31.179682>,  <42.435162, 32.385250, 31.867878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284927, 32.514774, 31.179682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.651199, 32.356693, 31.208904>,  <42.870964, 32.261845, 31.226439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.651199, 32.356693, 31.208904>,  <42.284927, 32.514774, 31.179682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651199, 32.356693, 31.208904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149830, -0.504358, -0.850396,
		0.372928, 0.767748, -0.521046,
		0.915683, -0.395205, 0.073057,
		42.925903, 32.238132, 31.230822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413784, 32.412529, 30.536547>,  <42.284927, 32.514774, 31.179682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413784, 32.412529, 30.536547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.692497, 32.168713, 30.687784>,  <42.859726, 32.022423, 30.778526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.692497, 32.168713, 30.687784>,  <42.413784, 32.412529, 30.536547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692497, 32.168713, 30.687784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129582, -0.625417, -0.769456,
		0.705478, 0.487152, -0.514767,
		0.696785, -0.609538, 0.378092,
		42.901531, 31.985851, 30.801212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796062, 32.326717, 30.023325>,  <42.413784, 32.412529, 30.536547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796062, 32.326717, 30.023325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.885220, 32.001511, 30.238478>,  <42.938713, 31.806385, 30.367569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.885220, 32.001511, 30.238478>,  <42.796062, 32.326717, 30.023325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885220, 32.001511, 30.238478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166414, -0.575397, -0.800765,
		0.960533, 0.088976, -0.263551,
		0.222895, -0.813020, 0.537881,
		42.952087, 31.757605, 30.399841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214470, 31.907129, 29.615791>,  <42.796062, 32.326717, 30.023325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214470, 31.907129, 29.615791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.072685, 31.647373, 29.884909>,  <42.987614, 31.491520, 30.046379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.072685, 31.647373, 29.884909>,  <43.214470, 31.907129, 29.615791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072685, 31.647373, 29.884909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068858, -0.699429, -0.711377,
		0.932531, -0.298484, 0.203205,
		-0.354462, -0.649389, 0.672792,
		42.966347, 31.452557, 30.086746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608368, 31.269938, 29.470684>,  <43.214470, 31.907129, 29.615791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608368, 31.269938, 29.470684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.272411, 31.175060, 29.665958>,  <43.070839, 31.118134, 29.783123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.272411, 31.175060, 29.665958>,  <43.608368, 31.269938, 29.470684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272411, 31.175060, 29.665958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063989, -0.849910, -0.523028,
		0.538972, -0.470524, 0.698653,
		-0.839890, -0.237191, 0.488187,
		43.020443, 31.103903, 29.812414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592884, 30.633934, 29.353825>,  <43.608368, 31.269938, 29.470684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592884, 30.633934, 29.353825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.226051, 30.698681, 29.499569>,  <43.005951, 30.737528, 29.587015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.226051, 30.698681, 29.499569>,  <43.592884, 30.633934, 29.353825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226051, 30.698681, 29.499569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351463, -0.759687, -0.547129,
		0.188240, -0.629822, 0.753585,
		-0.917082, 0.161866, 0.364362,
		42.950928, 30.747240, 29.608877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176460, 29.966087, 29.544292>,  <43.592884, 30.633934, 29.353825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176460, 29.966087, 29.544292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897240, 30.237122, 29.451687>,  <42.729706, 30.399742, 29.396124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897240, 30.237122, 29.451687>,  <43.176460, 29.966087, 29.544292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897240, 30.237122, 29.451687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563010, -0.719154, -0.407233,
		-0.442428, -0.153927, 0.883496,
		-0.698053, 0.677587, -0.231511,
		42.687824, 30.440397, 29.382233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484695, 29.676432, 29.738516>,  <43.176460, 29.966087, 29.544292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484695, 29.676432, 29.738516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.408268, 29.955145, 29.461969>,  <42.362411, 30.122374, 29.296041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.408268, 29.955145, 29.461969>,  <42.484695, 29.676432, 29.738516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408268, 29.955145, 29.461969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650563, -0.617316, -0.442366,
		-0.735025, 0.365256, 0.571249,
		-0.191065, 0.696784, -0.691365,
		42.350948, 30.164181, 29.254560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849121, 29.624966, 29.657675>,  <42.484695, 29.676432, 29.738516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849121, 29.624966, 29.657675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.929642, 29.832516, 29.325350>,  <41.977955, 29.957045, 29.125956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.929642, 29.832516, 29.325350>,  <41.849121, 29.624966, 29.657675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929642, 29.832516, 29.325350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702614, -0.514494, -0.491558,
		-0.682504, 0.682690, 0.261002,
		0.201298, 0.518874, -0.830812,
		41.990032, 29.988178, 29.076107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.637554, 38.330429, 41.674576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308521, 38.115528, 41.749111>,  <37.111103, 37.986588, 41.793835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308521, 38.115528, 41.749111>,  <37.637554, 38.330429, 41.674576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308521, 38.115528, 41.749111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132833, -0.500168, -0.855680,
		0.552916, -0.679114, 0.482793,
		-0.822581, -0.537249, 0.186342,
		37.061749, 37.954353, 41.805016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851116, 37.668003, 41.518963>,  <37.637554, 38.330429, 41.674576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851116, 37.668003, 41.518963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454468, 37.688343, 41.471447>,  <37.216480, 37.700546, 41.442936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454468, 37.688343, 41.471447>,  <37.851116, 37.668003, 41.518963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454468, 37.688343, 41.471447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076856, -0.506907, -0.858568,
		-0.103874, -0.860500, 0.498749,
		-0.991617, 0.050851, -0.118789,
		37.156982, 37.703598, 41.435810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824635, 37.127735, 41.056900>,  <37.851116, 37.668003, 41.518963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824635, 37.127735, 41.056900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457993, 37.287178, 41.044556>,  <37.238007, 37.382843, 41.037151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457993, 37.287178, 41.044556>,  <37.824635, 37.127735, 41.056900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457993, 37.287178, 41.044556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072374, -0.241342, -0.967737,
		-0.393199, -0.884795, 0.250063,
		-0.916600, 0.398612, -0.030859,
		37.183014, 37.406761, 41.035297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334698, 36.648750, 40.667530>,  <37.824635, 37.127735, 41.056900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334698, 36.648750, 40.667530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197693, 37.023766, 40.643162>,  <37.115490, 37.248775, 40.628540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197693, 37.023766, 40.643162>,  <37.334698, 36.648750, 40.667530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197693, 37.023766, 40.643162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093812, -0.098650, -0.990690,
		-0.934816, -0.333613, 0.121741,
		-0.342517, 0.937535, -0.060923,
		37.094936, 37.305027, 40.624886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687191, 36.591579, 40.328125>,  <37.334698, 36.648750, 40.667530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687191, 36.591579, 40.328125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820389, 36.966480, 40.286819>,  <36.900307, 37.191422, 40.262035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820389, 36.966480, 40.286819>,  <36.687191, 36.591579, 40.328125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820389, 36.966480, 40.286819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061121, -0.087829, -0.994259,
		-0.940945, 0.337397, 0.028040,
		0.332997, 0.937257, -0.103264,
		36.920288, 37.247658, 40.255840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260792, 36.847965, 39.731781>,  <36.687191, 36.591579, 40.328125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260792, 36.847965, 39.731781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571045, 37.096210, 39.777809>,  <36.757195, 37.245155, 39.805424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571045, 37.096210, 39.777809>,  <36.260792, 36.847965, 39.731781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571045, 37.096210, 39.777809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132002, 0.018781, -0.991072,
		-0.617231, 0.783893, -0.067355,
		0.775629, 0.620611, 0.115068,
		36.803734, 37.282394, 39.812328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169781, 37.355553, 39.258808>,  <36.260792, 36.847965, 39.731781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169781, 37.355553, 39.258808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564342, 37.344124, 39.323547>,  <36.801079, 37.337265, 39.362392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564342, 37.344124, 39.323547>,  <36.169781, 37.355553, 39.258808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564342, 37.344124, 39.323547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163815, 0.091483, -0.982240,
		0.013261, 0.995397, 0.094920,
		0.986402, -0.028574, 0.161847,
		36.860264, 37.335552, 39.372101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382885, 37.629654, 38.641701>,  <36.169781, 37.355553, 39.258808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382885, 37.629654, 38.641701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721912, 37.492287, 38.803535>,  <36.925331, 37.409866, 38.900635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721912, 37.492287, 38.803535>,  <36.382885, 37.629654, 38.641701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721912, 37.492287, 38.803535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403073, -0.079305, -0.911725,
		0.345187, 0.935829, 0.071206,
		0.847572, -0.343417, 0.404582,
		36.976185, 37.389263, 38.924911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906132, 37.921913, 38.276600>,  <36.382885, 37.629654, 38.641701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906132, 37.921913, 38.276600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110062, 37.635868, 38.467888>,  <37.232418, 37.464241, 38.582661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110062, 37.635868, 38.467888>,  <36.906132, 37.921913, 38.276600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110062, 37.635868, 38.467888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536414, -0.170338, -0.826586,
		0.672563, 0.677934, 0.296756,
		0.509823, -0.715115, 0.478216,
		37.263008, 37.421333, 38.611351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559509, 38.085266, 38.122410>,  <36.906132, 37.921913, 38.276600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559509, 38.085266, 38.122410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548138, 37.698681, 38.224503>,  <37.541313, 37.466728, 38.285759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548138, 37.698681, 38.224503>,  <37.559509, 38.085266, 38.122410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548138, 37.698681, 38.224503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567021, -0.225870, -0.792130,
		0.823212, 0.122199, 0.554427,
		-0.028431, -0.966463, 0.255228,
		37.539608, 37.408741, 38.301071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194508, 37.839409, 37.950024>,  <37.559509, 38.085266, 38.122410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194508, 37.839409, 37.950024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983147, 37.500252, 37.967350>,  <37.856331, 37.296757, 37.977745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983147, 37.500252, 37.967350>,  <38.194508, 37.839409, 37.950024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983147, 37.500252, 37.967350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571694, -0.393068, -0.720183,
		0.627664, -0.355778, 0.692430,
		-0.528398, -0.847891, 0.043319,
		37.824627, 37.245884, 37.980347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705219, 37.346676, 37.850716>,  <38.194508, 37.839409, 37.950024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705219, 37.346676, 37.850716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344116, 37.196468, 37.766804>,  <38.127453, 37.106342, 37.716457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344116, 37.196468, 37.766804>,  <38.705219, 37.346676, 37.850716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344116, 37.196468, 37.766804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318305, -0.255191, -0.912995,
		0.289316, -0.890989, 0.349906,
		-0.902762, -0.375521, -0.209775,
		38.073288, 37.083813, 37.703873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702946, 36.642860, 37.651924>,  <38.705219, 37.346676, 37.850716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702946, 36.642860, 37.651924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388618, 36.816902, 37.476116>,  <38.200020, 36.921326, 37.370632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388618, 36.816902, 37.476116>,  <38.702946, 36.642860, 37.651924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388618, 36.816902, 37.476116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484219, -0.009244, -0.874898,
		-0.384733, -0.900334, -0.203420,
		-0.785820, 0.435102, -0.439515,
		38.152874, 36.947433, 37.344261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453766, 36.412350, 37.723370>,  <38.702946, 36.642860, 37.651924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453766, 36.412350, 37.723370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259087, 36.320980, 37.386097>,  <39.142281, 36.266159, 37.183735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259087, 36.320980, 37.386097>,  <39.453766, 36.412350, 37.723370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259087, 36.320980, 37.386097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469317, -0.882456, -0.031829,
		-0.736796, -0.411208, 0.536693,
		-0.486696, -0.228427, -0.843177,
		39.113079, 36.252453, 37.133144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922977, 35.721943, 37.814423>,  <39.453766, 36.412350, 37.723370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922977, 35.721943, 37.814423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932999, 35.331631, 37.901340>,  <39.939011, 35.097443, 37.953491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932999, 35.331631, 37.901340>,  <39.922977, 35.721943, 37.814423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932999, 35.331631, 37.901340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479533, 0.178993, 0.859075,
		-0.877166, -0.125722, -0.463437,
		0.025053, -0.975784, 0.217295,
		39.940514, 35.038895, 37.966530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320454, 35.540955, 38.090839>,  <39.922977, 35.721943, 37.814423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320454, 35.540955, 38.090839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568645, 35.269516, 38.248070>,  <39.717560, 35.106655, 38.342407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568645, 35.269516, 38.248070>,  <39.320454, 35.540955, 38.090839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568645, 35.269516, 38.248070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586665, -0.069037, 0.806882,
		-0.520409, -0.731261, -0.440944,
		0.620483, -0.678595, 0.393077,
		39.754791, 35.065937, 38.365993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886127, 35.002350, 38.473698>,  <39.320454, 35.540955, 38.090839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886127, 35.002350, 38.473698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255363, 34.941719, 38.615074>,  <39.476906, 34.905342, 38.699902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255363, 34.941719, 38.615074>,  <38.886127, 35.002350, 38.473698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255363, 34.941719, 38.615074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352920, 0.031259, 0.935131,
		-0.152792, -0.987951, -0.024640,
		0.923094, -0.151576, 0.353444,
		39.532291, 34.896248, 38.721107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871532, 34.457546, 38.904915>,  <38.886127, 35.002350, 38.473698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871532, 34.457546, 38.904915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195095, 34.653961, 39.034252>,  <39.389233, 34.771809, 39.111855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195095, 34.653961, 39.034252>,  <38.871532, 34.457546, 38.904915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195095, 34.653961, 39.034252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351736, -0.036502, 0.935387,
		0.471112, -0.870374, 0.143189,
		0.808910, 0.491037, 0.323339,
		39.437767, 34.801273, 39.131252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982868, 34.148438, 39.512390>,  <38.871532, 34.457546, 38.904915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982868, 34.148438, 39.512390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197235, 34.484127, 39.549267>,  <39.325855, 34.685539, 39.571392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197235, 34.484127, 39.549267>,  <38.982868, 34.148438, 39.512390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197235, 34.484127, 39.549267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283937, 0.076317, 0.955801,
		0.795093, -0.538407, 0.279186,
		0.535917, 0.839222, 0.092195,
		39.358009, 34.735893, 39.576927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156841, 34.157761, 40.164742>,  <38.982868, 34.148438, 39.512390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156841, 34.157761, 40.164742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254002, 34.540981, 40.103905>,  <39.312298, 34.770916, 40.067402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254002, 34.540981, 40.103905>,  <39.156841, 34.157761, 40.164742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254002, 34.540981, 40.103905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150834, 0.192179, 0.969699,
		0.958252, -0.212602, 0.191188,
		0.242902, 0.958054, -0.152088,
		39.326874, 34.828396, 40.058277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673386, 34.423355, 40.748634>,  <39.156841, 34.157761, 40.164742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673386, 34.423355, 40.748634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472858, 34.738277, 40.605061>,  <39.352543, 34.927231, 40.518917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472858, 34.738277, 40.605061>,  <39.673386, 34.423355, 40.748634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472858, 34.738277, 40.605061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400270, 0.156759, 0.902890,
		0.767117, 0.596301, 0.236549,
		-0.501314, 0.787306, -0.358934,
		39.322464, 34.974468, 40.497379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743294, 34.902733, 41.265629>,  <39.673386, 34.423355, 40.748634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743294, 34.902733, 41.265629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468285, 35.084023, 41.038685>,  <39.303280, 35.192795, 40.902519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468285, 35.084023, 41.038685>,  <39.743294, 34.902733, 41.265629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468285, 35.084023, 41.038685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297820, 0.536586, 0.789543,
		0.662276, 0.711803, -0.233938,
		-0.687527, 0.453224, -0.567357,
		39.262028, 35.219990, 40.868477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833691, 35.654476, 41.233685>,  <39.743294, 34.902733, 41.265629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833691, 35.654476, 41.233685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448101, 35.577904, 41.159809>,  <39.216747, 35.531960, 41.115482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448101, 35.577904, 41.159809>,  <39.833691, 35.654476, 41.233685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448101, 35.577904, 41.159809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263508, 0.592416, 0.761319,
		-0.036325, 0.782558, -0.621517,
		-0.963973, -0.191430, -0.184691,
		39.158909, 35.520473, 41.104401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498592, 36.282520, 41.290028>,  <39.833691, 35.654476, 41.233685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498592, 36.282520, 41.290028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208828, 36.011227, 41.339390>,  <39.034969, 35.848450, 41.369007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208828, 36.011227, 41.339390>,  <39.498592, 36.282520, 41.290028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208828, 36.011227, 41.339390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326733, 0.495423, 0.804861,
		-0.607018, 0.542732, -0.580492,
		-0.724413, -0.678231, 0.123402,
		38.991505, 35.807758, 41.376411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955711, 36.695583, 41.330601>,  <39.498592, 36.282520, 41.290028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955711, 36.695583, 41.330601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818611, 36.346378, 41.469383>,  <38.736351, 36.136856, 41.552654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818611, 36.346378, 41.469383>,  <38.955711, 36.695583, 41.330601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818611, 36.346378, 41.469383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419848, 0.472744, 0.774752,
		-0.840389, 0.119873, -0.528562,
		-0.342746, -0.873008, 0.346961,
		38.715786, 36.084476, 41.573471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351639, 36.958523, 41.670746>,  <38.955711, 36.695583, 41.330601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351639, 36.958523, 41.670746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425179, 36.587440, 41.800701>,  <38.469303, 36.364792, 41.878674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425179, 36.587440, 41.800701>,  <38.351639, 36.958523, 41.670746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425179, 36.587440, 41.800701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439105, 0.218197, 0.871537,
		-0.879424, -0.302893, -0.367246,
		0.183850, -0.927710, 0.324889,
		38.480335, 36.309128, 41.898167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753227, 36.716457, 41.906075>,  <38.351639, 36.958523, 41.670746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753227, 36.716457, 41.906075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034492, 36.512806, 42.104610>,  <38.203251, 36.390614, 42.223732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034492, 36.512806, 42.104610>,  <37.753227, 36.716457, 41.906075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034492, 36.512806, 42.104610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365556, 0.339872, 0.866519,
		-0.609864, -0.790740, 0.052868,
		0.703160, -0.509133, 0.496336,
		38.245441, 36.360065, 42.253510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400337, 36.279762, 42.482769>,  <37.753227, 36.716457, 41.906075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400337, 36.279762, 42.482769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783398, 36.321259, 42.590214>,  <38.013233, 36.346157, 42.654678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783398, 36.321259, 42.590214>,  <37.400337, 36.279762, 42.482769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783398, 36.321259, 42.590214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287921, 0.333139, 0.897842,
		0.003656, -0.937153, 0.348898,
		0.957647, 0.103738, 0.268608,
		38.070690, 36.352379, 42.670795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309914, 35.556198, 42.774193>,  <37.400337, 36.279762, 42.482769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309914, 35.556198, 42.774193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063957, 35.248066, 42.841724>,  <36.916382, 35.063187, 42.882244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063957, 35.248066, 42.841724>,  <37.309914, 35.556198, 42.774193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063957, 35.248066, 42.841724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048467, -0.250595, -0.966878,
		0.787122, -0.586341, 0.191423,
		-0.614890, -0.770329, 0.168830,
		36.879490, 35.016968, 42.892372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666904, 34.948967, 42.468811>,  <37.309914, 35.556198, 42.774193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666904, 34.948967, 42.468811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273525, 34.881908, 42.496292>,  <37.037498, 34.841675, 42.512779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273525, 34.881908, 42.496292>,  <37.666904, 34.948967, 42.468811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273525, 34.881908, 42.496292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063206, -0.037913, -0.997280,
		0.169796, -0.985118, 0.026689,
		-0.983450, -0.167647, 0.068703,
		36.978489, 34.831615, 42.516903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456287, 34.316700, 42.099770>,  <37.666904, 34.948967, 42.468811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456287, 34.316700, 42.099770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101921, 34.501656, 42.085075>,  <36.889301, 34.612629, 42.076260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101921, 34.501656, 42.085075>,  <37.456287, 34.316700, 42.099770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101921, 34.501656, 42.085075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185221, -0.425258, -0.885917,
		-0.425258, -0.778045, 0.462387,
		0.885917, -0.462387, 0.036733,
		36.836147, 34.640373, 42.074055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108913, 33.936417, 41.596981>,  <37.456287, 34.316700, 42.099770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108913, 33.936417, 41.596981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835194, 34.223282, 41.649769>,  <36.670963, 34.395401, 41.681442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835194, 34.223282, 41.649769>,  <37.108913, 33.936417, 41.596981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835194, 34.223282, 41.649769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377443, -0.193507, -0.905590,
		-0.623916, -0.669505, 0.403103,
		-0.684300, 0.717160, 0.131968,
		36.629902, 34.438431, 41.689358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453087, 33.700401, 41.336521>,  <37.108913, 33.936417, 41.596981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453087, 33.700401, 41.336521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379593, 34.093220, 41.353638>,  <36.335495, 34.328911, 41.363907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379593, 34.093220, 41.353638>,  <36.453087, 33.700401, 41.336521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379593, 34.093220, 41.353638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553215, -0.067326, -0.830314,
		-0.812523, -0.176233, 0.555651,
		-0.183739, 0.982044, 0.042791,
		36.324471, 34.387833, 41.366474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740242, 33.789036, 41.114758>,  <36.453087, 33.700401, 41.336521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740242, 33.789036, 41.114758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950317, 34.122452, 41.046181>,  <36.076363, 34.322502, 41.005035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950317, 34.122452, 41.046181>,  <35.740242, 33.789036, 41.114758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950317, 34.122452, 41.046181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485595, 0.128096, -0.864748,
		-0.698840, 0.537406, 0.472036,
		0.525187, 0.833539, -0.171443,
		36.107872, 34.372513, 40.994747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282204, 34.264729, 40.778065>,  <35.740242, 33.789036, 41.114758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282204, 34.264729, 40.778065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647873, 34.407875, 40.701935>,  <35.867275, 34.493763, 40.656258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647873, 34.407875, 40.701935>,  <35.282204, 34.264729, 40.778065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647873, 34.407875, 40.701935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279205, 0.215591, -0.935716,
		-0.293829, 0.908544, 0.297005,
		0.914171, 0.357866, -0.190323,
		35.922123, 34.515236, 40.644836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207756, 34.880943, 40.327541>,  <35.282204, 34.264729, 40.778065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207756, 34.880943, 40.327541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578964, 34.748802, 40.258663>,  <35.801689, 34.669518, 40.217335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578964, 34.748802, 40.258663>,  <35.207756, 34.880943, 40.327541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578964, 34.748802, 40.258663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179137, 0.009573, -0.983778,
		0.326644, 0.943809, -0.050294,
		0.928016, -0.330354, -0.172198,
		35.857368, 34.649696, 40.207005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440022, 35.360596, 39.881153>,  <35.207756, 34.880943, 40.327541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440022, 35.360596, 39.881153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685432, 35.052948, 39.809559>,  <35.832680, 34.868359, 39.766602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685432, 35.052948, 39.809559>,  <35.440022, 35.360596, 39.881153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685432, 35.052948, 39.809559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104891, 0.145276, -0.983815,
		0.782674, 0.622374, 0.008457,
		0.613530, -0.769120, -0.178985,
		35.869492, 34.822212, 39.755863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979691, 35.602177, 39.379196>,  <35.440022, 35.360596, 39.881153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979691, 35.602177, 39.379196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977047, 35.203316, 39.349148>,  <35.975460, 34.964001, 39.331120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977047, 35.203316, 39.349148>,  <35.979691, 35.602177, 39.379196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977047, 35.203316, 39.349148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127897, 0.075352, -0.988921,
		0.991766, 0.003075, -0.128030,
		-0.006606, -0.997153, -0.075125,
		35.975063, 34.904171, 39.326611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194630, 35.555569, 38.682117>,  <35.979691, 35.602177, 39.379196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194630, 35.555569, 38.682117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081192, 35.174068, 38.721989>,  <36.013130, 34.945168, 38.745911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081192, 35.174068, 38.721989>,  <36.194630, 35.555569, 38.682117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081192, 35.174068, 38.721989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064503, -0.084742, -0.994313,
		0.956772, -0.288414, -0.037487,
		-0.283597, -0.953749, 0.099682,
		35.996113, 34.887943, 38.751892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632721, 35.229988, 38.238255>,  <36.194630, 35.555569, 38.682117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632721, 35.229988, 38.238255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305550, 35.007362, 38.296535>,  <36.109245, 34.873787, 38.331505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305550, 35.007362, 38.296535>,  <36.632721, 35.229988, 38.238255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305550, 35.007362, 38.296535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053894, -0.178022, -0.982550,
		0.572786, -0.811510, 0.115615,
		-0.817931, -0.556560, 0.145704,
		36.060169, 34.840393, 38.340248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.562511, 34.624523, 46.573128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.170998, 34.630379, 46.491390>,  <36.936089, 34.633892, 46.442348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.170998, 34.630379, 46.491390>,  <37.562511, 34.624523, 46.573128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170998, 34.630379, 46.491390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204292, -0.005223, -0.978896,
		-0.015416, -0.999879, 0.002118,
		-0.978788, 0.014658, -0.204348,
		36.877361, 34.634769, 46.430084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528236, 34.235970, 46.051537>,  <37.562511, 34.624523, 46.573128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528236, 34.235970, 46.051537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169548, 34.407692, 46.008461>,  <36.954334, 34.510723, 45.982616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169548, 34.407692, 46.008461>,  <37.528236, 34.235970, 46.051537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169548, 34.407692, 46.008461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056069, -0.131170, -0.989773,
		-0.439040, -0.893584, 0.093551,
		-0.896717, 0.429304, -0.107691,
		36.900532, 34.536484, 45.976154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232563, 33.900799, 45.578842>,  <37.528236, 34.235970, 46.051537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232563, 33.900799, 45.578842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984692, 34.214630, 45.587166>,  <36.835968, 34.402927, 45.592159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984692, 34.214630, 45.587166>,  <37.232563, 33.900799, 45.578842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984692, 34.214630, 45.587166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032264, 0.001029, -0.999479,
		-0.784189, -0.620031, 0.024676,
		-0.619682, 0.784577, 0.020812,
		36.798786, 34.450005, 45.593410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688637, 33.708099, 45.188435>,  <37.232563, 33.900799, 45.578842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688637, 33.708099, 45.188435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.678360, 34.107922, 45.194397>,  <36.672195, 34.347816, 45.197975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.678360, 34.107922, 45.194397>,  <36.688637, 33.708099, 45.188435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678360, 34.107922, 45.194397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072983, 0.012996, -0.997249,
		-0.997002, -0.026708, 0.072617,
		-0.025691, 0.999559, 0.014907,
		36.670654, 34.407791, 45.198868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090023, 34.070091, 44.724651>,  <36.688637, 33.708099, 45.188435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090023, 34.070091, 44.724651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.364193, 34.357464, 44.772057>,  <36.528694, 34.529888, 44.800499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.364193, 34.357464, 44.772057>,  <36.090023, 34.070091, 44.724651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364193, 34.357464, 44.772057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160234, 0.307594, -0.937929,
		-0.710296, 0.623888, 0.325950,
		0.685423, 0.718436, 0.118515,
		36.569820, 34.572994, 44.807610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837193, 34.554852, 44.416553>,  <36.090023, 34.070091, 44.724651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837193, 34.554852, 44.416553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.221321, 34.666058, 44.425480>,  <36.451797, 34.732780, 44.430836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.221321, 34.666058, 44.425480>,  <35.837193, 34.554852, 44.416553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221321, 34.666058, 44.425480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076834, 0.340606, -0.937061,
		-0.268115, 0.898163, 0.348451,
		0.960318, 0.278013, 0.022312,
		36.509415, 34.749462, 44.432175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876503, 35.232796, 44.110107>,  <35.837193, 34.554852, 44.416553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876503, 35.232796, 44.110107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.250332, 35.096710, 44.068474>,  <36.474628, 35.015057, 44.043491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.250332, 35.096710, 44.068474>,  <35.876503, 35.232796, 44.110107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250332, 35.096710, 44.068474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066801, 0.119561, -0.990577,
		0.349454, 0.932716, 0.089011,
		0.934569, -0.340215, -0.104087,
		36.530704, 34.994644, 44.037247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215427, 35.624645, 43.608429>,  <35.876503, 35.232796, 44.110107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215427, 35.624645, 43.608429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.466465, 35.314030, 43.630711>,  <36.617088, 35.127659, 43.644081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.466465, 35.314030, 43.630711>,  <36.215427, 35.624645, 43.608429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466465, 35.314030, 43.630711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150740, 0.051007, -0.987257,
		0.763805, 0.627997, 0.149068,
		0.627598, -0.776542, 0.055705,
		36.654743, 35.081066, 43.647423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854992, 35.846718, 43.286686>,  <36.215427, 35.624645, 43.608429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854992, 35.846718, 43.286686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.812641, 35.448967, 43.285751>,  <36.787231, 35.210316, 43.285191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.812641, 35.448967, 43.285751>,  <36.854992, 35.846718, 43.286686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812641, 35.448967, 43.285751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012709, 0.000996, -0.999919,
		0.994298, -0.105901, 0.012532,
		-0.105880, -0.994376, -0.002336,
		36.780876, 35.150654, 43.285049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612076, 35.736080, 43.441296>,  <36.854992, 35.846718, 43.286686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612076, 35.736080, 43.441296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925373, 35.965813, 43.346062>,  <38.113350, 36.103653, 43.288921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925373, 35.965813, 43.346062>,  <37.612076, 35.736080, 43.441296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925373, 35.965813, 43.346062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132854, 0.219483, 0.966528,
		0.607358, -0.788654, 0.095606,
		0.783240, 0.574327, -0.238081,
		38.160347, 36.138111, 43.274639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305813, 35.441917, 43.776749>,  <37.612076, 35.736080, 43.441296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305813, 35.441917, 43.776749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.320213, 35.831444, 43.686966>,  <38.328854, 36.065159, 43.633099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.320213, 35.831444, 43.686966>,  <38.305813, 35.441917, 43.776749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320213, 35.831444, 43.686966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225973, 0.210849, 0.951041,
		0.973468, -0.084962, -0.212466,
		0.036005, 0.973819, -0.224454,
		38.331017, 36.123589, 43.619629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890182, 35.661968, 44.181713>,  <38.305813, 35.441917, 43.776749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890182, 35.661968, 44.181713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.688568, 35.996761, 44.096474>,  <38.567600, 36.197636, 44.045330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.688568, 35.996761, 44.096474>,  <38.890182, 35.661968, 44.181713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688568, 35.996761, 44.096474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294223, 0.398371, 0.868754,
		0.812023, 0.375185, -0.447052,
		-0.504036, 0.836981, -0.213099,
		38.537357, 36.247856, 44.032543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388054, 36.195614, 44.200420>,  <38.890182, 35.661968, 44.181713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388054, 36.195614, 44.200420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023849, 36.357922, 44.232231>,  <38.805328, 36.455307, 44.251320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023849, 36.357922, 44.232231>,  <39.388054, 36.195614, 44.200420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023849, 36.357922, 44.232231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283717, 0.473167, 0.834037,
		0.300793, 0.781963, -0.545946,
		-0.910510, 0.405767, 0.079531,
		38.750698, 36.479652, 44.256092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493168, 36.917072, 44.291328>,  <39.388054, 36.195614, 44.200420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493168, 36.917072, 44.291328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.131504, 36.830017, 44.438374>,  <38.914505, 36.777786, 44.526600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.131504, 36.830017, 44.438374>,  <39.493168, 36.917072, 44.291328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131504, 36.830017, 44.438374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233294, 0.469325, 0.851650,
		-0.357879, 0.855786, -0.373569,
		-0.904155, -0.217636, 0.367611,
		38.860256, 36.764725, 44.548656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297230, 37.502701, 44.715050>,  <39.493168, 36.917072, 44.291328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297230, 37.502701, 44.715050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.075253, 37.187256, 44.820980>,  <38.942066, 36.997990, 44.884541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.075253, 37.187256, 44.820980>,  <39.297230, 37.502701, 44.715050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075253, 37.187256, 44.820980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085026, 0.262909, 0.961067,
		-0.827533, 0.555853, -0.078847,
		-0.554941, -0.788610, 0.264828,
		38.908772, 36.950672, 44.900429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928009, 37.843220, 45.248241>,  <39.297230, 37.502701, 44.715050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928009, 37.843220, 45.248241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.887413, 37.445786, 45.268185>,  <38.863056, 37.207325, 45.280151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.887413, 37.445786, 45.268185>,  <38.928009, 37.843220, 45.248241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887413, 37.445786, 45.268185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016461, 0.048433, 0.998691,
		-0.994701, 0.102175, 0.011440,
		-0.101487, -0.993587, 0.049858,
		38.856968, 37.147709, 45.283142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413280, 37.690258, 45.775318>,  <38.928009, 37.843220, 45.248241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413280, 37.690258, 45.775318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.612980, 37.343838, 45.764732>,  <38.732800, 37.135986, 45.758381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.612980, 37.343838, 45.764732>,  <38.413280, 37.690258, 45.775318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612980, 37.343838, 45.764732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012360, -0.023427, 0.999649,
		-0.866371, -0.499400, -0.000992,
		0.499248, -0.866055, -0.026469,
		38.762753, 37.084023, 45.756790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130554, 37.338547, 46.267761>,  <38.413280, 37.690258, 45.775318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130554, 37.338547, 46.267761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.468365, 37.128914, 46.223728>,  <38.671051, 37.003136, 46.197308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.468365, 37.128914, 46.223728>,  <38.130554, 37.338547, 46.267761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468365, 37.128914, 46.223728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126763, -0.004086, 0.991925,
		-0.520297, -0.851660, 0.062983,
		0.844525, -0.524079, -0.110084,
		38.721722, 36.971691, 46.190704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096874, 36.865196, 46.746548>,  <38.130554, 37.338547, 46.267761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096874, 36.865196, 46.746548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486115, 36.874947, 46.654911>,  <38.719658, 36.880795, 46.599930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486115, 36.874947, 46.654911>,  <38.096874, 36.865196, 46.746548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486115, 36.874947, 46.654911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229691, -0.025668, 0.972925,
		0.017832, -0.999373, -0.030576,
		0.973100, 0.024372, -0.229090,
		38.778046, 36.882259, 46.586185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408138, 36.370510, 47.240360>,  <38.096874, 36.865196, 46.746548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408138, 36.370510, 47.240360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.699909, 36.613178, 47.113949>,  <38.874973, 36.758781, 47.038101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.699909, 36.613178, 47.113949>,  <38.408138, 36.370510, 47.240360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699909, 36.613178, 47.113949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337556, 0.082599, 0.937675,
		0.594968, -0.790647, -0.144536,
		0.729431, 0.606675, -0.316031,
		38.918739, 36.795181, 47.019138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097477, 36.135502, 47.590675>,  <38.408138, 36.370510, 47.240360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097477, 36.135502, 47.590675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.163498, 36.501614, 47.443695>,  <39.203110, 36.721279, 47.355507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.163498, 36.501614, 47.443695>,  <39.097477, 36.135502, 47.590675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163498, 36.501614, 47.443695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245118, 0.322809, 0.914173,
		0.955340, -0.240956, -0.171071,
		0.165052, 0.915278, -0.367455,
		39.213013, 36.776196, 47.333458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685017, 36.327404, 47.913555>,  <39.097477, 36.135502, 47.590675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685017, 36.327404, 47.913555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.510998, 36.670238, 47.803185>,  <39.406586, 36.875938, 47.736961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.510998, 36.670238, 47.803185>,  <39.685017, 36.327404, 47.913555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510998, 36.670238, 47.803185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003267, 0.307944, 0.951399,
		0.900400, 0.413005, -0.136771,
		-0.435051, 0.857086, -0.275923,
		39.380482, 36.927364, 47.720406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115051, 36.837219, 48.120823>,  <39.685017, 36.327404, 47.913555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115051, 36.837219, 48.120823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.752708, 37.004135, 48.091721>,  <39.535301, 37.104282, 48.074261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.752708, 37.004135, 48.091721>,  <40.115051, 36.837219, 48.120823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752708, 37.004135, 48.091721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115036, 0.407661, 0.905858,
		0.407661, 0.812210, -0.417286,
		-0.905858, 0.417286, -0.072755,
		39.480949, 37.129322, 48.069893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.433254, 39.300365, 46.694118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.765596, 39.105762, 46.802185>,  <29.965002, 38.989002, 46.867023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.765596, 39.105762, 46.802185>,  <29.433254, 39.300365, 46.694118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765596, 39.105762, 46.802185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446095, 0.292044, -0.845996,
		0.332680, 0.823422, 0.459674,
		0.830857, -0.486504, 0.270168,
		30.014853, 38.959812, 46.883236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974777, 39.817581, 46.561764>,  <29.433254, 39.300365, 46.694118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974777, 39.817581, 46.561764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.110579, 39.441498, 46.550800>,  <30.192060, 39.215847, 46.544224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.110579, 39.441498, 46.550800>,  <29.974777, 39.817581, 46.561764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110579, 39.441498, 46.550800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389431, 0.167027, -0.905784,
		0.856201, 0.296844, 0.422852,
		0.339504, -0.940205, -0.027408,
		30.212429, 39.159435, 46.542580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635647, 39.912994, 46.240536>,  <29.974777, 39.817581, 46.561764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635647, 39.912994, 46.240536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553291, 39.524292, 46.194405>,  <30.503878, 39.291069, 46.166725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553291, 39.524292, 46.194405>,  <30.635647, 39.912994, 46.240536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553291, 39.524292, 46.194405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471187, 0.004847, -0.882020,
		0.857667, -0.235940, 0.456880,
		-0.205889, -0.971756, -0.115329,
		30.491524, 39.232765, 46.159805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230202, 39.572849, 46.061409>,  <30.635647, 39.912994, 46.240536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230202, 39.572849, 46.061409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.944393, 39.317230, 45.947514>,  <30.772907, 39.163857, 45.879177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.944393, 39.317230, 45.947514>,  <31.230202, 39.572849, 46.061409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944393, 39.317230, 45.947514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571393, -0.298212, -0.764578,
		0.403692, -0.709003, 0.578228,
		-0.714522, -0.639050, -0.284734,
		30.730036, 39.125515, 45.862095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565340, 38.973759, 45.920391>,  <31.230202, 39.572849, 46.061409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565340, 38.973759, 45.920391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.219894, 38.884579, 45.739521>,  <31.012627, 38.831070, 45.631001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.219894, 38.884579, 45.739521>,  <31.565340, 38.973759, 45.920391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219894, 38.884579, 45.739521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503895, -0.353068, -0.788310,
		0.016105, -0.908645, 0.417259,
		-0.863615, -0.222950, -0.452175,
		30.960810, 38.817692, 45.603870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627699, 38.388039, 45.672466>,  <31.565340, 38.973759, 45.920391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627699, 38.388039, 45.672466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.360435, 38.557667, 45.427933>,  <31.200077, 38.659443, 45.281212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.360435, 38.557667, 45.427933>,  <31.627699, 38.388039, 45.672466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360435, 38.557667, 45.427933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519974, -0.321541, -0.791352,
		-0.532157, -0.846627, -0.005664,
		-0.668159, 0.424068, -0.611334,
		31.159988, 38.684887, 45.244534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487888, 37.909523, 45.093506>,  <31.627699, 38.388039, 45.672466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487888, 37.909523, 45.093506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.349609, 38.250557, 44.936741>,  <31.266642, 38.455177, 44.842682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.349609, 38.250557, 44.936741>,  <31.487888, 37.909523, 45.093506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349609, 38.250557, 44.936741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170486, -0.353648, -0.919711,
		-0.922729, -0.384756, -0.023099,
		-0.345695, 0.852582, -0.391916,
		31.245901, 38.506332, 44.819164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851137, 37.755737, 44.716190>,  <31.487888, 37.909523, 45.093506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851137, 37.755737, 44.716190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.000359, 38.097286, 44.571011>,  <31.089891, 38.302216, 44.483902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.000359, 38.097286, 44.571011>,  <30.851137, 37.755737, 44.716190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000359, 38.097286, 44.571011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012350, -0.386585, -0.922171,
		-0.927728, 0.348500, -0.133671,
		0.373052, 0.853873, -0.362950,
		31.112274, 38.353447, 44.462124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503033, 37.875835, 44.069489>,  <30.851137, 37.755737, 44.716190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503033, 37.875835, 44.069489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.827259, 38.108242, 44.040096>,  <31.021795, 38.247688, 44.022461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.827259, 38.108242, 44.040096>,  <30.503033, 37.875835, 44.069489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827259, 38.108242, 44.040096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091325, -0.249335, -0.964102,
		-0.578484, 0.774757, -0.255164,
		0.810565, 0.581020, -0.073481,
		31.070429, 38.282547, 44.018051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358435, 38.293907, 43.498737>,  <30.503033, 37.875835, 44.069489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358435, 38.293907, 43.498737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.754297, 38.294975, 43.556114>,  <30.991814, 38.295616, 43.590542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.754297, 38.294975, 43.556114>,  <30.358435, 38.293907, 43.498737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754297, 38.294975, 43.556114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140199, -0.230235, -0.962983,
		0.030453, 0.973131, -0.228228,
		0.989655, 0.002672, 0.143443,
		31.051193, 38.295776, 43.599148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592863, 38.774841, 42.908886>,  <30.358435, 38.293907, 43.498737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592863, 38.774841, 42.908886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.869696, 38.516979, 43.038773>,  <31.035795, 38.362263, 43.116703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.869696, 38.516979, 43.038773>,  <30.592863, 38.774841, 42.908886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869696, 38.516979, 43.038773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285689, -0.168482, -0.943396,
		0.662877, 0.745673, 0.067569,
		0.692080, -0.644659, 0.324714,
		31.077320, 38.323582, 43.136189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068499, 38.879032, 42.400856>,  <30.592863, 38.774841, 42.908886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068499, 38.879032, 42.400856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.219387, 38.560463, 42.589920>,  <31.309921, 38.369320, 42.703358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.219387, 38.560463, 42.589920>,  <31.068499, 38.879032, 42.400856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219387, 38.560463, 42.589920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509719, -0.247574, -0.823950,
		0.773233, 0.551739, 0.312562,
		0.377223, -0.796424, 0.472664,
		31.332554, 38.321537, 42.731720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741930, 38.909409, 42.181107>,  <31.068499, 38.879032, 42.400856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741930, 38.909409, 42.181107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654629, 38.536572, 42.296738>,  <31.602247, 38.312870, 42.366116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654629, 38.536572, 42.296738>,  <31.741930, 38.909409, 42.181107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654629, 38.536572, 42.296738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338152, -0.350100, -0.873546,
		0.915433, -0.092903, 0.391600,
		-0.218254, -0.932094, 0.289078,
		31.589153, 38.256943, 42.383461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390194, 38.382042, 42.125576>,  <31.741930, 38.909409, 42.181107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390194, 38.382042, 42.125576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039551, 38.191109, 42.101200>,  <31.829165, 38.076550, 42.086575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039551, 38.191109, 42.101200>,  <32.390194, 38.382042, 42.125576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039551, 38.191109, 42.101200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197469, -0.241350, -0.950135,
		0.438820, -0.844930, 0.305828,
		-0.876609, -0.477330, -0.060938,
		31.776567, 38.047909, 42.082920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220879, 38.007355, 42.060696>,  <32.390194, 38.382042, 42.125576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220879, 38.007355, 42.060696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483669, 38.295467, 41.971638>,  <33.641346, 38.468334, 41.918205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483669, 38.295467, 41.971638>,  <33.220879, 38.007355, 42.060696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483669, 38.295467, 41.971638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075113, 0.231312, 0.969976,
		0.750156, -0.653978, 0.097865,
		0.656980, 0.720282, -0.222642,
		33.680763, 38.511551, 41.904846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655735, 38.040806, 42.633049>,  <33.220879, 38.007355, 42.060696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655735, 38.040806, 42.633049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683800, 38.398605, 42.456436>,  <33.700638, 38.613285, 42.350468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683800, 38.398605, 42.456436>,  <33.655735, 38.040806, 42.633049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683800, 38.398605, 42.456436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119242, 0.431933, 0.893988,
		0.990383, -0.115374, -0.076357,
		0.070162, 0.894496, -0.441536,
		33.704849, 38.666954, 42.323975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242062, 38.439171, 42.946640>,  <33.655735, 38.040806, 42.633049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242062, 38.439171, 42.946640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.001255, 38.705608, 42.770504>,  <33.856770, 38.865471, 42.664822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.001255, 38.705608, 42.770504>,  <34.242062, 38.439171, 42.946640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001255, 38.705608, 42.770504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040691, 0.525156, 0.850033,
		0.797446, 0.529652, -0.289048,
		-0.602017, 0.666093, -0.440336,
		33.820648, 38.905437, 42.638405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541637, 39.001587, 43.250504>,  <34.242062, 38.439171, 42.946640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541637, 39.001587, 43.250504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.182262, 39.094044, 43.101170>,  <33.966637, 39.149517, 43.011570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.182262, 39.094044, 43.101170>,  <34.541637, 39.001587, 43.250504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182262, 39.094044, 43.101170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166584, 0.607242, 0.776857,
		0.406269, 0.760151, -0.507067,
		-0.898441, 0.231144, -0.373332,
		33.912731, 39.163387, 42.989170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441380, 39.756847, 43.266121>,  <34.541637, 39.001587, 43.250504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441380, 39.756847, 43.266121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.070164, 39.610626, 43.294720>,  <33.847435, 39.522892, 43.311878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.070164, 39.610626, 43.294720>,  <34.441380, 39.756847, 43.266121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070164, 39.610626, 43.294720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190882, 0.631570, 0.751454,
		-0.319856, 0.683730, -0.655900,
		-0.928039, -0.365557, 0.071500,
		33.791752, 39.500957, 43.316170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080090, 40.311226, 43.548786>,  <34.441380, 39.756847, 43.266121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080090, 40.311226, 43.548786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.854465, 39.984932, 43.600033>,  <33.719093, 39.789154, 43.630779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.854465, 39.984932, 43.600033>,  <34.080090, 40.311226, 43.548786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854465, 39.984932, 43.600033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269199, 0.328338, 0.905387,
		-0.780622, 0.476203, -0.404797,
		-0.564058, -0.815736, 0.128114,
		33.685249, 39.740211, 43.638466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391979, 40.544991, 43.783077>,  <34.080090, 40.311226, 43.548786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391979, 40.544991, 43.783077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.410755, 40.164848, 43.906120>,  <33.422020, 39.936764, 43.979946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.410755, 40.164848, 43.906120>,  <33.391979, 40.544991, 43.783077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410755, 40.164848, 43.906120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374649, 0.268716, 0.887372,
		-0.925978, -0.156898, -0.343436,
		0.046940, -0.950355, 0.307606,
		33.424839, 39.879742, 43.998402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728745, 40.425121, 44.144085>,  <33.391979, 40.544991, 43.783077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728745, 40.425121, 44.144085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.962101, 40.119244, 44.253559>,  <33.102116, 39.935719, 44.319244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.962101, 40.119244, 44.253559>,  <32.728745, 40.425121, 44.144085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962101, 40.119244, 44.253559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337237, 0.078485, 0.938143,
		-0.738870, -0.639599, -0.212095,
		0.583389, -0.764692, 0.273687,
		33.137119, 39.889835, 44.335667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379601, 40.082909, 44.597408>,  <32.728745, 40.425121, 44.144085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379601, 40.082909, 44.597408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.750195, 39.963860, 44.689537>,  <32.972549, 39.892429, 44.744816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.750195, 39.963860, 44.689537>,  <32.379601, 40.082909, 44.597408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750195, 39.963860, 44.689537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170147, 0.214635, 0.961760,
		-0.335681, -0.930242, 0.148215,
		0.926482, -0.297627, 0.230327,
		33.028137, 39.874573, 44.758636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360382, 39.652748, 45.133114>,  <32.379601, 40.082909, 44.597408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360382, 39.652748, 45.133114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.751945, 39.726200, 45.168945>,  <32.986881, 39.770271, 45.190445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.751945, 39.726200, 45.168945>,  <32.360382, 39.652748, 45.133114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751945, 39.726200, 45.168945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079054, -0.063872, 0.994822,
		0.188400, -0.980918, -0.048008,
		0.978905, 0.183630, 0.089579,
		33.045616, 39.781288, 45.195820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625751, 39.165585, 45.580910>,  <32.360382, 39.652748, 45.133114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625751, 39.165585, 45.580910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.898117, 39.457001, 45.610790>,  <33.061539, 39.631851, 45.628719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.898117, 39.457001, 45.610790>,  <32.625751, 39.165585, 45.580910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898117, 39.457001, 45.610790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026485, -0.077443, 0.996645,
		0.731882, -0.680611, -0.033437,
		0.680917, 0.728541, 0.074705,
		33.102390, 39.675564, 45.633202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096443, 38.946346, 46.145760>,  <32.625751, 39.165585, 45.580910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096443, 38.946346, 46.145760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.163822, 39.339085, 46.110870>,  <33.204250, 39.574726, 46.089935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.163822, 39.339085, 46.110870>,  <33.096443, 38.946346, 46.145760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163822, 39.339085, 46.110870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009168, 0.090044, 0.995896,
		0.985668, -0.166955, 0.024169,
		0.168446, 0.981844, -0.087222,
		33.214355, 39.633636, 46.084705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546074, 39.097698, 46.678150>,  <33.096443, 38.946346, 46.145760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546074, 39.097698, 46.678150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.354309, 39.430805, 46.567394>,  <33.239250, 39.630669, 46.500938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.354309, 39.430805, 46.567394>,  <33.546074, 39.097698, 46.678150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354309, 39.430805, 46.567394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146830, 0.234955, 0.960852,
		0.865220, 0.501300, 0.009634,
		-0.479412, 0.832763, -0.276893,
		33.210487, 39.680634, 46.484325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937622, 39.695454, 46.948860>,  <33.546074, 39.097698, 46.678150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937622, 39.695454, 46.948860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.545322, 39.757988, 46.902058>,  <33.309944, 39.795509, 46.873978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.545322, 39.757988, 46.902058>,  <33.937622, 39.695454, 46.948860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545322, 39.757988, 46.902058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081315, 0.217802, 0.972600,
		0.177533, 0.963391, -0.200897,
		-0.980750, 0.156333, -0.117005,
		33.251099, 39.804886, 46.866955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569065, 40.160374, 46.821484>,  <33.937622, 39.695454, 46.948860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569065, 40.160374, 46.821484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.953903, 40.054726, 46.848656>,  <35.184807, 39.991337, 46.864960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.953903, 40.054726, 46.848656>,  <34.569065, 40.160374, 46.821484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953903, 40.054726, 46.848656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047681, -0.082342, -0.995463,
		0.268518, 0.960968, -0.066626,
		0.962094, -0.264123, 0.067930,
		35.242531, 39.975491, 46.869034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755154, 40.347939, 46.159779>,  <34.569065, 40.160374, 46.821484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755154, 40.347939, 46.159779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.090874, 40.159275, 46.267937>,  <35.292305, 40.046078, 46.332832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.090874, 40.159275, 46.267937>,  <34.755154, 40.347939, 46.159779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090874, 40.159275, 46.267937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166012, -0.251262, -0.953576,
		0.517703, 0.845225, -0.132583,
		0.839300, -0.471659, 0.270396,
		35.342663, 40.017776, 46.349056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441936, 40.585251, 45.643341>,  <34.755154, 40.347939, 46.159779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441936, 40.585251, 45.643341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515911, 40.215755, 45.777508>,  <35.560295, 39.994061, 45.858009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515911, 40.215755, 45.777508>,  <35.441936, 40.585251, 45.643341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515911, 40.215755, 45.777508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213641, -0.295356, -0.931194,
		0.959247, 0.243876, 0.142725,
		0.184941, -0.923737, 0.335421,
		35.571392, 39.938633, 45.878136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075981, 40.423111, 45.284164>,  <35.441936, 40.585251, 45.643341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075981, 40.423111, 45.284164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.931305, 40.077900, 45.425224>,  <35.844498, 39.870773, 45.509861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.931305, 40.077900, 45.425224>,  <36.075981, 40.423111, 45.284164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931305, 40.077900, 45.425224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208431, -0.443538, -0.871682,
		0.908700, -0.241778, 0.340306,
		-0.361692, -0.863028, 0.352649,
		35.822796, 39.818993, 45.531017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634327, 39.869385, 45.224110>,  <36.075981, 40.423111, 45.284164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634327, 39.869385, 45.224110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287590, 39.670383, 45.237270>,  <36.079548, 39.550983, 45.245167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287590, 39.670383, 45.237270>,  <36.634327, 39.869385, 45.224110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287590, 39.670383, 45.237270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329106, -0.620511, -0.711797,
		0.374536, -0.606185, 0.701614,
		-0.866840, -0.497499, 0.032905,
		36.027538, 39.521133, 45.247143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795448, 39.197834, 45.017380>,  <36.634327, 39.869385, 45.224110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795448, 39.197834, 45.017380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402103, 39.157173, 44.957157>,  <36.166096, 39.132774, 44.921024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402103, 39.157173, 44.957157>,  <36.795448, 39.197834, 45.017380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402103, 39.157173, 44.957157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175323, -0.314025, -0.933086,
		0.047575, -0.943956, 0.326623,
		-0.983361, -0.101656, -0.150558,
		36.107094, 39.126678, 44.911991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613419, 38.479218, 44.794888>,  <36.795448, 39.197834, 45.017380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613419, 38.479218, 44.794888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.311600, 38.717541, 44.684853>,  <36.130508, 38.860535, 44.618832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.311600, 38.717541, 44.684853>,  <36.613419, 38.479218, 44.794888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311600, 38.717541, 44.684853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070737, -0.490584, -0.868518,
		-0.652419, -0.635881, 0.412315,
		-0.754550, 0.595804, -0.275086,
		36.085236, 38.896282, 44.602325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025684, 37.978546, 44.559292>,  <36.613419, 38.479218, 44.794888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025684, 37.978546, 44.559292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.953552, 38.326782, 44.376183>,  <35.910275, 38.535725, 44.266315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.953552, 38.326782, 44.376183>,  <36.025684, 37.978546, 44.559292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953552, 38.326782, 44.376183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022373, -0.468916, -0.882959,
		-0.983352, -0.148978, 0.104036,
		-0.180326, 0.870588, -0.457776,
		35.899456, 38.587959, 44.238850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463127, 37.876495, 43.924850>,  <36.025684, 37.978546, 44.559292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463127, 37.876495, 43.924850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616505, 38.230785, 43.820190>,  <35.708530, 38.443359, 43.757393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616505, 38.230785, 43.820190>,  <35.463127, 37.876495, 43.924850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616505, 38.230785, 43.820190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170808, -0.346427, -0.922395,
		-0.907634, 0.308991, -0.284123,
		0.383440, 0.885728, -0.261650,
		35.731537, 38.496502, 43.741695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286163, 38.069378, 43.239216>,  <35.463127, 37.876495, 43.924850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286163, 38.069378, 43.239216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.587219, 38.327457, 43.291748>,  <35.767853, 38.482304, 43.323265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.587219, 38.327457, 43.291748>,  <35.286163, 38.069378, 43.239216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587219, 38.327457, 43.291748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374199, -0.255033, -0.891590,
		-0.541761, 0.720191, -0.433381,
		0.752642, 0.645200, 0.131327,
		35.813011, 38.521019, 43.331146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368664, 38.439049, 42.636189>,  <35.286163, 38.069378, 43.239216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368664, 38.439049, 42.636189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.731953, 38.510471, 42.787579>,  <35.949928, 38.553326, 42.878410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.731953, 38.510471, 42.787579>,  <35.368664, 38.439049, 42.636189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731953, 38.510471, 42.787579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406999, -0.166518, -0.898122,
		-0.097343, 0.969737, -0.223908,
		0.908227, 0.178556, 0.378473,
		36.004421, 38.564037, 42.901119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749725, 38.755680, 42.102100>,  <35.368664, 38.439049, 42.636189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749725, 38.755680, 42.102100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.032192, 38.626873, 42.354332>,  <36.201672, 38.549591, 42.505672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.032192, 38.626873, 42.354332>,  <35.749725, 38.755680, 42.102100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032192, 38.626873, 42.354332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509062, -0.388094, -0.768270,
		0.492118, 0.863534, -0.110136,
		0.706170, -0.322013, 0.630580,
		36.244041, 38.530270, 42.543507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323345, 39.004173, 41.933613>,  <35.749725, 38.755680, 42.102100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323345, 39.004173, 41.933613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.410404, 38.668480, 42.132938>,  <36.462639, 38.467064, 42.252533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.410404, 38.668480, 42.132938>,  <36.323345, 39.004173, 41.933613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410404, 38.668480, 42.132938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444526, -0.369290, -0.816102,
		0.868922, 0.399138, 0.292684,
		0.217652, -0.839234, 0.498311,
		36.475700, 38.416710, 42.282433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018406, 38.847282, 41.809383>,  <36.323345, 39.004173, 41.933613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018406, 38.847282, 41.809383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.886257, 38.491047, 41.934418>,  <36.806969, 38.277306, 42.009438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.886257, 38.491047, 41.934418>,  <37.018406, 38.847282, 41.809383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886257, 38.491047, 41.934418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437215, -0.437907, -0.785544,
		0.836479, -0.122853, 0.534050,
		-0.330371, -0.890586, 0.312587,
		36.787148, 38.223869, 42.028194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.597799, 33.801346, 27.689739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447985, 33.509613, 27.918755>,  <26.358095, 33.334576, 28.056164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447985, 33.509613, 27.918755>,  <26.597799, 33.801346, 27.689739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447985, 33.509613, 27.918755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207835, 0.667807, 0.714730,
		-0.903619, 0.148699, -0.401698,
		-0.374536, -0.729330, 0.572538,
		26.335625, 33.290813, 28.090517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934841, 34.018848, 27.902889>,  <26.597799, 33.801346, 27.689739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934841, 34.018848, 27.902889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.077585, 33.751301, 28.163740>,  <26.163231, 33.590771, 28.320250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.077585, 33.751301, 28.163740>,  <25.934841, 34.018848, 27.902889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077585, 33.751301, 28.163740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115811, 0.661027, 0.741372,
		-0.926952, -0.340088, 0.158431,
		0.356859, -0.668868, 0.652126,
		26.184643, 33.550640, 28.359377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.465933, 34.117165, 28.457006>,  <25.934841, 34.018848, 27.902889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.465933, 34.117165, 28.457006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.805805, 33.959961, 28.597628>,  <26.009729, 33.865639, 28.682001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.805805, 33.959961, 28.597628>,  <25.465933, 34.117165, 28.457006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805805, 33.959961, 28.597628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033421, 0.625229, 0.779725,
		-0.526237, -0.674267, 0.518110,
		0.849681, -0.393005, 0.351554,
		26.060709, 33.842060, 28.703094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337286, 33.898262, 29.230104>,  <25.465933, 34.117165, 28.457006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337286, 33.898262, 29.230104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.732002, 33.943935, 29.184137>,  <25.968832, 33.971340, 29.156557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.732002, 33.943935, 29.184137>,  <25.337286, 33.898262, 29.230104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732002, 33.943935, 29.184137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012263, 0.654686, 0.755802,
		0.161535, -0.747227, 0.644637,
		0.986791, 0.114183, -0.114918,
		26.028040, 33.978191, 29.149662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496584, 33.973274, 29.851255>,  <25.337286, 33.898262, 29.230104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496584, 33.973274, 29.851255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.834345, 34.094685, 29.674685>,  <26.037001, 34.167530, 29.568741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.834345, 34.094685, 29.674685>,  <25.496584, 33.973274, 29.851255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834345, 34.094685, 29.674685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203022, 0.581229, 0.788007,
		0.495748, -0.755015, 0.429170,
		0.844403, 0.303522, -0.441427,
		26.087666, 34.185741, 29.542255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127802, 33.806431, 30.386940>,  <25.496584, 33.973274, 29.851255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127802, 33.806431, 30.386940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.215996, 34.113190, 30.145855>,  <26.268913, 34.297245, 30.001204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.215996, 34.113190, 30.145855>,  <26.127802, 33.806431, 30.386940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215996, 34.113190, 30.145855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205841, 0.567417, 0.797287,
		0.953423, -0.299854, -0.032750,
		0.220487, 0.766893, -0.602711,
		26.282143, 34.343258, 29.965042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682024, 34.076923, 30.618792>,  <26.127802, 33.806431, 30.386940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682024, 34.076923, 30.618792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.557589, 34.385918, 30.397345>,  <26.482927, 34.571312, 30.264477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.557589, 34.385918, 30.397345>,  <26.682024, 34.076923, 30.618792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557589, 34.385918, 30.397345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156721, 0.616245, 0.771803,
		0.937369, 0.153337, -0.312772,
		-0.311090, 0.772483, -0.553618,
		26.464262, 34.617664, 30.231258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161633, 34.433559, 30.680048>,  <26.682024, 34.076923, 30.618792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161633, 34.433559, 30.680048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.857346, 34.676151, 30.587540>,  <26.674772, 34.821705, 30.532034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.857346, 34.676151, 30.587540>,  <27.161633, 34.433559, 30.680048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857346, 34.676151, 30.587540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123455, 0.484996, 0.865759,
		0.637232, 0.630048, -0.443819,
		-0.760719, 0.606481, -0.231273,
		26.629129, 34.858097, 30.518158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463850, 35.191486, 30.718983>,  <27.161633, 34.433559, 30.680048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463850, 35.191486, 30.718983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065687, 35.229641, 30.722322>,  <26.826790, 35.252533, 30.724325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065687, 35.229641, 30.722322>,  <27.463850, 35.191486, 30.718983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065687, 35.229641, 30.722322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067914, 0.641861, 0.763808,
		0.067499, 0.760866, -0.645390,
		-0.995405, 0.095387, 0.008349,
		26.767065, 35.258259, 30.724827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404318, 35.921989, 30.948406>,  <27.463850, 35.191486, 30.718983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404318, 35.921989, 30.948406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033047, 35.776432, 30.979574>,  <26.810284, 35.689098, 30.998274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033047, 35.776432, 30.979574>,  <27.404318, 35.921989, 30.948406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033047, 35.776432, 30.979574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160245, 0.579792, 0.798850,
		-0.335871, 0.728988, -0.596462,
		-0.928177, -0.363891, 0.077919,
		26.754593, 35.667263, 31.002951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954132, 36.466389, 31.135294>,  <27.404318, 35.921989, 30.948406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954132, 36.466389, 31.135294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.774155, 36.125042, 31.240608>,  <26.666168, 35.920235, 31.303797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.774155, 36.125042, 31.240608>,  <26.954132, 36.466389, 31.135294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774155, 36.125042, 31.240608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113795, 0.347195, 0.930863,
		-0.885778, 0.388875, -0.253326,
		-0.449943, -0.853365, 0.263285,
		26.639172, 35.869034, 31.319593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424736, 36.694378, 31.733772>,  <26.954132, 36.466389, 31.135294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424736, 36.694378, 31.733772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.435684, 36.296139, 31.769615>,  <26.442253, 36.057194, 31.791121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.435684, 36.296139, 31.769615>,  <26.424736, 36.694378, 31.733772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435684, 36.296139, 31.769615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274618, 0.078704, 0.958327,
		-0.961164, -0.050839, -0.271256,
		0.027371, -0.995601, 0.089608,
		26.443895, 35.997459, 31.796497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002253, 36.635231, 32.291466>,  <26.424736, 36.694378, 31.733772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002253, 36.635231, 32.291466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.208002, 36.293835, 32.258068>,  <26.331451, 36.088997, 32.238029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.208002, 36.293835, 32.258068>,  <26.002253, 36.635231, 32.291466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208002, 36.293835, 32.258068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094136, -0.152974, 0.983736,
		-0.852383, -0.498149, -0.159030,
		0.514374, -0.853491, -0.083499,
		26.362314, 36.037788, 32.233017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708883, 36.154144, 32.760921>,  <26.002253, 36.635231, 32.291466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708883, 36.154144, 32.760921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.082924, 36.025085, 32.702290>,  <26.307348, 35.947651, 32.667110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.082924, 36.025085, 32.702290>,  <25.708883, 36.154144, 32.760921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082924, 36.025085, 32.702290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044507, -0.303427, 0.951815,
		-0.351582, -0.896564, -0.269374,
		0.935098, -0.322652, -0.146583,
		26.363453, 35.928291, 32.658314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693029, 35.482918, 33.023468>,  <25.708883, 36.154144, 32.760921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693029, 35.482918, 33.023468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.075563, 35.599705, 33.018105>,  <26.305084, 35.669777, 33.014889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.075563, 35.599705, 33.018105>,  <25.693029, 35.482918, 33.023468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075563, 35.599705, 33.018105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102136, -0.290869, 0.951296,
		0.273844, -0.911127, -0.307988,
		0.956335, 0.291964, -0.013407,
		26.362465, 35.687294, 33.014084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036266, 34.980785, 33.255146>,  <25.693029, 35.482918, 33.023468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036266, 34.980785, 33.255146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.278419, 35.286900, 33.342640>,  <26.423712, 35.470570, 33.395138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.278419, 35.286900, 33.342640>,  <26.036266, 34.980785, 33.255146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278419, 35.286900, 33.342640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177834, -0.397922, 0.900019,
		0.775812, -0.505959, -0.376990,
		0.605385, 0.765287, 0.218736,
		26.460035, 35.516487, 33.408260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483156, 34.578762, 33.669674>,  <26.036266, 34.980785, 33.255146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483156, 34.578762, 33.669674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.578264, 34.961533, 33.736309>,  <26.635330, 35.191196, 33.776291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.578264, 34.961533, 33.736309>,  <26.483156, 34.578762, 33.669674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578264, 34.961533, 33.736309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309172, -0.237144, 0.920964,
		0.920803, -0.167476, -0.352242,
		0.237772, 0.956930, 0.166584,
		26.649595, 35.248611, 33.786285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223961, 34.588657, 33.712719>,  <26.483156, 34.578762, 33.669674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223961, 34.588657, 33.712719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041180, 34.883179, 33.912338>,  <26.931511, 35.059891, 34.032108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041180, 34.883179, 33.912338>,  <27.223961, 34.588657, 33.712719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041180, 34.883179, 33.912338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513515, -0.239735, 0.823911,
		0.726288, 0.632759, -0.268555,
		-0.456955, 0.736304, 0.499048,
		26.904093, 35.104069, 34.062054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690542, 34.890999, 34.263245>,  <27.223961, 34.588657, 33.712719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690542, 34.890999, 34.263245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.328011, 35.007858, 34.385368>,  <27.110491, 35.077976, 34.458641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.328011, 35.007858, 34.385368>,  <27.690542, 34.890999, 34.263245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328011, 35.007858, 34.385368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271864, -0.149982, 0.950576,
		0.323502, 0.944539, 0.056508,
		-0.906331, 0.292151, 0.305305,
		27.056110, 35.095505, 34.476959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791040, 35.103069, 34.922256>,  <27.690542, 34.890999, 34.263245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791040, 35.103069, 34.922256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391350, 35.106716, 34.937569>,  <27.151535, 35.108906, 34.946758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391350, 35.106716, 34.937569>,  <27.791040, 35.103069, 34.922256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391350, 35.106716, 34.937569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037031, -0.111448, 0.993080,
		0.013321, 0.993728, 0.111024,
		-0.999225, 0.009118, 0.038283,
		27.091581, 35.109451, 34.949055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517824, 35.179985, 34.857479>,  <27.791040, 35.103069, 34.922256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517824, 35.179985, 34.857479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.749928, 34.889275, 35.004501>,  <28.889189, 34.714848, 35.092712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.749928, 34.889275, 35.004501>,  <28.517824, 35.179985, 34.857479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749928, 34.889275, 35.004501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103103, -0.382115, -0.918345,
		0.807881, 0.570772, -0.146791,
		0.580257, -0.726779, 0.367552,
		28.924004, 34.671242, 35.114765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199308, 35.162621, 34.538490>,  <28.517824, 35.179985, 34.857479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199308, 35.162621, 34.538490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139265, 34.788528, 34.666748>,  <29.103239, 34.564075, 34.743702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139265, 34.788528, 34.666748>,  <29.199308, 35.162621, 34.538490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139265, 34.788528, 34.666748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403137, -0.354035, -0.843884,
		0.902744, 0.002589, 0.430170,
		-0.150111, -0.935228, 0.320647,
		29.094233, 34.507961, 34.762943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789591, 34.864426, 34.423985>,  <29.199308, 35.162621, 34.538490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789591, 34.864426, 34.423985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.526300, 34.563492, 34.434830>,  <29.368326, 34.382931, 34.441338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.526300, 34.563492, 34.434830>,  <29.789591, 34.864426, 34.423985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526300, 34.563492, 34.434830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429433, -0.404809, -0.807290,
		0.618327, -0.519735, 0.589531,
		-0.658225, -0.752333, 0.027113,
		29.328833, 34.337791, 34.442963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131723, 34.256950, 34.458031>,  <29.789591, 34.864426, 34.423985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131723, 34.256950, 34.458031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768696, 34.164295, 34.317936>,  <29.550880, 34.108704, 34.233879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768696, 34.164295, 34.317936>,  <30.131723, 34.256950, 34.458031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768696, 34.164295, 34.317936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413826, -0.351953, -0.839570,
		0.071206, -0.906904, 0.415277,
		-0.907567, -0.231635, -0.350239,
		29.496426, 34.094803, 34.212864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219444, 33.733128, 34.056095>,  <30.131723, 34.256950, 34.458031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219444, 33.733128, 34.056095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.841265, 33.758026, 33.928188>,  <29.614357, 33.772964, 33.851444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.841265, 33.758026, 33.928188>,  <30.219444, 33.733128, 34.056095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841265, 33.758026, 33.928188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263144, -0.432721, -0.862269,
		-0.192037, -0.899377, 0.392738,
		-0.945450, 0.062241, -0.319765,
		29.557631, 33.776699, 33.832260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006878, 33.073853, 33.739536>,  <30.219444, 33.733128, 34.056095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006878, 33.073853, 33.739536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771879, 33.349625, 33.570049>,  <29.630880, 33.515087, 33.468357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771879, 33.349625, 33.570049>,  <30.006878, 33.073853, 33.739536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771879, 33.349625, 33.570049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262607, -0.332843, -0.905678,
		-0.765431, -0.643354, 0.014495,
		-0.587497, 0.689428, -0.423718,
		29.595631, 33.556454, 33.442932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786985, 32.764408, 33.003899>,  <30.006878, 33.073853, 33.739536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786985, 32.764408, 33.003899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701571, 33.155056, 32.993942>,  <29.650322, 33.389442, 32.987968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701571, 33.155056, 32.993942>,  <29.786985, 32.764408, 33.003899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701571, 33.155056, 32.993942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089064, -0.005910, -0.996009,
		-0.972866, -0.214904, -0.085719,
		-0.213539, 0.976618, -0.024890,
		29.637508, 33.448040, 32.986477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231165, 32.878292, 32.628487>,  <29.786985, 32.764408, 33.003899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231165, 32.878292, 32.628487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398623, 33.239182, 32.587070>,  <29.499098, 33.455715, 32.562222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398623, 33.239182, 32.587070>,  <29.231165, 32.878292, 32.628487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398623, 33.239182, 32.587070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119889, -0.058108, -0.991085,
		-0.900201, 0.427327, 0.083840,
		0.418646, 0.902228, -0.103540,
		29.524216, 33.509850, 32.556007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691669, 33.355923, 32.333923>,  <29.231165, 32.878292, 32.628487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691669, 33.355923, 32.333923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.055069, 33.515324, 32.283607>,  <29.273109, 33.610966, 32.253418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.055069, 33.515324, 32.283607>,  <28.691669, 33.355923, 32.333923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055069, 33.515324, 32.283607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249926, 0.276910, -0.927824,
		-0.334907, 0.874367, 0.351169,
		0.908501, 0.398501, -0.125788,
		29.327620, 33.634872, 32.245872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613613, 33.985443, 31.927570>,  <28.691669, 33.355923, 32.333923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613613, 33.985443, 31.927570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989820, 33.885715, 31.835253>,  <29.215544, 33.825878, 31.779861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989820, 33.885715, 31.835253>,  <28.613613, 33.985443, 31.927570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989820, 33.885715, 31.835253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191549, 0.171927, -0.966307,
		0.280602, 0.953037, 0.113943,
		0.940517, -0.249322, -0.230796,
		29.271975, 33.810917, 31.766014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640141, 34.157055, 31.288395>,  <28.613613, 33.985443, 31.927570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640141, 34.157055, 31.288395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989218, 33.962059, 31.299454>,  <29.198664, 33.845062, 31.306089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989218, 33.962059, 31.299454>,  <28.640141, 34.157055, 31.288395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989218, 33.962059, 31.299454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089885, -0.216052, -0.972236,
		0.479924, 0.845979, -0.232364,
		0.872694, -0.487485, 0.027648,
		29.251026, 33.815815, 31.307749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888844, 34.277443, 30.668121>,  <28.640141, 34.157055, 31.288395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888844, 34.277443, 30.668121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113682, 33.963959, 30.773838>,  <29.248585, 33.775867, 30.837269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113682, 33.963959, 30.773838>,  <28.888844, 34.277443, 30.668121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113682, 33.963959, 30.773838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054202, -0.353770, -0.933761,
		0.825295, 0.510536, -0.241331,
		0.562094, -0.783709, 0.264293,
		29.282310, 33.728848, 30.853127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390793, 34.118988, 30.082905>,  <28.888844, 34.277443, 30.668121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390793, 34.118988, 30.082905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.366953, 33.769394, 30.275820>,  <29.352648, 33.559639, 30.391569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.366953, 33.769394, 30.275820>,  <29.390793, 34.118988, 30.082905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366953, 33.769394, 30.275820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036672, -0.480905, -0.876006,
		0.997548, -0.069898, -0.003387,
		-0.059602, -0.873982, 0.482289,
		29.349072, 33.507198, 30.420506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828508, 33.647480, 29.715408>,  <29.390793, 34.118988, 30.082905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828508, 33.647480, 29.715408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.579323, 33.405224, 29.913446>,  <29.429811, 33.259872, 30.032270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.579323, 33.405224, 29.913446>,  <29.828508, 33.647480, 29.715408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579323, 33.405224, 29.913446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167589, -0.514888, -0.840717,
		0.764089, -0.606708, 0.219257,
		-0.622962, -0.605638, 0.495098,
		29.392435, 33.223534, 30.061975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964224, 32.958225, 29.452202>,  <29.828508, 33.647480, 29.715408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964224, 32.958225, 29.452202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.609539, 32.909473, 29.630589>,  <29.396729, 32.880222, 29.737621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.609539, 32.909473, 29.630589>,  <29.964224, 32.958225, 29.452202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609539, 32.909473, 29.630589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262421, -0.661489, -0.702543,
		0.380626, -0.739985, 0.554568,
		-0.886713, -0.121876, 0.445967,
		29.343525, 32.872910, 29.764380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881430, 32.289913, 29.628401>,  <29.964224, 32.958225, 29.452202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881430, 32.289913, 29.628401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506266, 32.426987, 29.606890>,  <29.281168, 32.509232, 29.593983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506266, 32.426987, 29.606890>,  <29.881430, 32.289913, 29.628401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506266, 32.426987, 29.606890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226688, -0.722865, -0.652747,
		-0.262561, -0.600027, 0.755665,
		-0.937909, 0.342687, -0.053777,
		29.224894, 32.529793, 29.590757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475798, 31.698671, 29.577139>,  <29.881430, 32.289913, 29.628401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475798, 31.698671, 29.577139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.222097, 31.979006, 29.446569>,  <29.069878, 32.147205, 29.368227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.222097, 31.979006, 29.446569>,  <29.475798, 31.698671, 29.577139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222097, 31.979006, 29.446569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334882, -0.629589, -0.701050,
		-0.696835, -0.335329, 0.634015,
		-0.634251, 0.700837, -0.326424,
		29.031822, 32.189259, 29.348642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842911, 31.255085, 29.417114>,  <29.475798, 31.698671, 29.577139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842911, 31.255085, 29.417114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.861952, 31.603540, 29.221622>,  <28.873377, 31.812613, 29.104328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.861952, 31.603540, 29.221622>,  <28.842911, 31.255085, 29.417114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861952, 31.603540, 29.221622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284148, -0.457258, -0.842718,
		-0.957598, 0.178986, 0.225766,
		0.047602, 0.871137, -0.488728,
		28.876232, 31.864882, 29.075005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354752, 31.280384, 29.000984>,  <28.842911, 31.255085, 29.417114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354752, 31.280384, 29.000984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.555620, 31.572643, 28.815952>,  <28.676142, 31.747997, 28.704933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.555620, 31.572643, 28.815952>,  <28.354752, 31.280384, 29.000984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555620, 31.572643, 28.815952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261187, -0.381790, -0.886576,
		-0.824382, 0.566033, -0.000889,
		0.502171, 0.730646, -0.462581,
		28.706272, 31.791838, 28.677177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942549, 31.519510, 28.420715>,  <28.354752, 31.280384, 29.000984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942549, 31.519510, 28.420715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.311354, 31.641659, 28.325516>,  <28.532637, 31.714949, 28.268396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.311354, 31.641659, 28.325516>,  <27.942549, 31.519510, 28.420715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311354, 31.641659, 28.325516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093905, -0.419988, -0.902658,
		-0.375603, 0.854610, -0.358558,
		0.922011, 0.305370, -0.238001,
		28.587957, 31.733271, 28.254116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915087, 31.871708, 27.717325>,  <27.942549, 31.519510, 28.420715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915087, 31.871708, 27.717325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.282244, 31.726915, 27.782366>,  <28.502539, 31.640039, 27.821390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.282244, 31.726915, 27.782366>,  <27.915087, 31.871708, 27.717325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282244, 31.726915, 27.782366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031225, -0.474375, -0.879769,
		0.395595, 0.802458, -0.446729,
		0.917894, -0.361981, 0.162603,
		28.557611, 31.618320, 27.831146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278112, 32.027393, 27.054840>,  <27.915087, 31.871708, 27.717325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278112, 32.027393, 27.054840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475952, 31.742685, 27.254339>,  <28.594656, 31.571859, 27.374039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475952, 31.742685, 27.254339>,  <28.278112, 32.027393, 27.054840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475952, 31.742685, 27.254339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231499, -0.445232, -0.864972,
		0.837722, 0.543276, -0.055438,
		0.494601, -0.711772, 0.498748,
		28.624332, 31.529154, 27.403963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.876862, 38.159843, 48.250034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.588463, 37.888512, 48.306656>,  <39.415424, 37.725712, 48.340630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.588463, 37.888512, 48.306656>,  <39.876862, 38.159843, 48.250034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588463, 37.888512, 48.306656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350706, 0.533395, 0.769737,
		-0.597638, 0.505333, -0.622469,
		-0.720996, -0.678328, 0.141553,
		39.372166, 37.685013, 48.349121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349476, 38.598282, 48.420578>,  <39.876862, 38.159843, 48.250034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349476, 38.598282, 48.420578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.229046, 38.239029, 48.548771>,  <39.156788, 38.023476, 48.625687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.229046, 38.239029, 48.548771>,  <39.349476, 38.598282, 48.420578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229046, 38.239029, 48.548771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460097, 0.431184, 0.776139,
		-0.835263, 0.086225, -0.543048,
		-0.301076, -0.898135, 0.320480,
		39.138721, 37.969589, 48.644917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699970, 38.754120, 48.870949>,  <39.349476, 38.598282, 48.420578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699970, 38.754120, 48.870949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.783863, 38.369957, 48.944302>,  <38.834198, 38.139458, 48.988312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.783863, 38.369957, 48.944302>,  <38.699970, 38.754120, 48.870949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783863, 38.369957, 48.944302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439524, 0.074929, 0.895100,
		-0.873401, -0.268335, -0.406407,
		0.209735, -0.960407, 0.183383,
		38.846783, 38.081837, 48.999317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109806, 38.456398, 49.138073>,  <38.699970, 38.754120, 48.870949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109806, 38.456398, 49.138073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409737, 38.221073, 49.259171>,  <38.589695, 38.079880, 49.331829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409737, 38.221073, 49.259171>,  <38.109806, 38.456398, 49.138073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409737, 38.221073, 49.259171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411380, -0.056175, 0.909731,
		-0.518196, -0.806683, -0.284139,
		0.749826, -0.588309, 0.302744,
		38.634686, 38.044582, 49.349995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720215, 38.091995, 49.503716>,  <38.109806, 38.456398, 49.138073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720215, 38.091995, 49.503716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093185, 38.032654, 49.635513>,  <38.316967, 37.997051, 49.714592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093185, 38.032654, 49.635513>,  <37.720215, 38.091995, 49.503716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093185, 38.032654, 49.635513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350809, -0.153009, 0.923862,
		-0.086637, -0.977027, -0.194712,
		0.932431, -0.148347, 0.329494,
		38.372913, 37.988148, 49.734360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766525, 37.401100, 49.798691>,  <37.720215, 38.091995, 49.503716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766525, 37.401100, 49.798691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061794, 37.617359, 49.960087>,  <38.238956, 37.747116, 50.056923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061794, 37.617359, 49.960087>,  <37.766525, 37.401100, 49.798691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061794, 37.617359, 49.960087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320143, -0.245722, 0.914948,
		0.593809, -0.804563, -0.008301,
		0.738173, 0.540647, 0.403487,
		38.283245, 37.779552, 50.081135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896446, 36.976795, 50.336395>,  <37.766525, 37.401100, 49.798691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896446, 36.976795, 50.336395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091721, 37.308788, 50.444321>,  <38.208885, 37.507984, 50.509075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091721, 37.308788, 50.444321>,  <37.896446, 36.976795, 50.336395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091721, 37.308788, 50.444321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358734, -0.090991, 0.928994,
		0.795601, -0.550315, 0.253323,
		0.488190, 0.829984, 0.269809,
		38.238178, 37.557785, 50.525265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239243, 36.848392, 50.950626>,  <37.896446, 36.976795, 50.336395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239243, 36.848392, 50.950626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.216663, 37.247753, 50.951958>,  <38.203117, 37.487370, 50.952755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.216663, 37.247753, 50.951958>,  <38.239243, 36.848392, 50.950626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216663, 37.247753, 50.951958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456264, -0.028758, 0.889380,
		0.888053, 0.048686, 0.457157,
		-0.056447, 0.998400, 0.003325,
		38.199730, 37.547272, 50.952957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550243, 37.173260, 51.626450>,  <38.239243, 36.848392, 50.950626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550243, 37.173260, 51.626450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.313148, 37.453072, 51.466785>,  <38.170891, 37.620956, 51.370987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.313148, 37.453072, 51.466785>,  <38.550243, 37.173260, 51.626450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313148, 37.453072, 51.466785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534397, 0.029201, 0.844729,
		0.602566, 0.714010, 0.356516,
		-0.592734, 0.699526, -0.399160,
		38.135326, 37.662930, 51.347038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423820, 37.470863, 52.289806>,  <38.550243, 37.173260, 51.626450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423820, 37.470863, 52.289806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.180931, 37.641579, 52.021736>,  <38.035198, 37.744007, 51.860893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.180931, 37.641579, 52.021736>,  <38.423820, 37.470863, 52.289806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180931, 37.641579, 52.021736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541950, 0.394323, 0.742159,
		0.581011, 0.813855, -0.008142,
		-0.607220, 0.426790, -0.670175,
		37.998764, 37.769615, 51.820683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330196, 38.150394, 52.396717>,  <38.423820, 37.470863, 52.289806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330196, 38.150394, 52.396717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008240, 38.048241, 52.182457>,  <37.815067, 37.986946, 52.053902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008240, 38.048241, 52.182457>,  <38.330196, 38.150394, 52.396717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008240, 38.048241, 52.182457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593314, 0.363491, 0.718229,
		0.011278, 0.895908, -0.444097,
		-0.804892, -0.255388, -0.535654,
		37.766773, 37.971622, 52.021759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878296, 38.790459, 52.408840>,  <38.330196, 38.150394, 52.396717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878296, 38.790459, 52.408840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654041, 38.465508, 52.344669>,  <37.519489, 38.270538, 52.306168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654041, 38.465508, 52.344669>,  <37.878296, 38.790459, 52.408840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654041, 38.465508, 52.344669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539827, 0.211654, 0.814733,
		-0.627915, 0.543367, -0.557203,
		-0.560633, -0.812376, -0.160423,
		37.485851, 38.221794, 52.296543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078037, 38.969872, 52.271069>,  <37.878296, 38.790459, 52.408840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078037, 38.969872, 52.271069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120972, 38.598076, 52.412224>,  <37.146732, 38.375000, 52.496918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120972, 38.598076, 52.412224>,  <37.078037, 38.969872, 52.271069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120972, 38.598076, 52.412224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656319, 0.200366, 0.727392,
		-0.746809, -0.309682, -0.588535,
		0.107338, -0.929490, 0.352885,
		37.153172, 38.319229, 52.518089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505322, 38.919964, 52.721233>,  <37.078037, 38.969872, 52.271069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505322, 38.919964, 52.721233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.708813, 38.579983, 52.776039>,  <36.830910, 38.375996, 52.808922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.708813, 38.579983, 52.776039>,  <36.505322, 38.919964, 52.721233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708813, 38.579983, 52.776039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383610, -0.081317, 0.919908,
		-0.770738, -0.520543, -0.367419,
		0.508730, -0.849954, 0.137011,
		36.861431, 38.324997, 52.817142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828030, 39.115250, 52.510002>,  <36.505322, 38.919964, 52.721233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828030, 39.115250, 52.510002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648106, 39.472034, 52.528229>,  <35.540150, 39.686104, 52.539165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648106, 39.472034, 52.528229>,  <35.828030, 39.115250, 52.510002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648106, 39.472034, 52.528229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368660, -0.138961, -0.919119,
		-0.813488, -0.430225, 0.391337,
		-0.449809, 0.891962, 0.045564,
		35.513165, 39.739624, 52.541897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043732, 39.058208, 52.354542>,  <35.828030, 39.115250, 52.510002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043732, 39.058208, 52.354542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172195, 39.424454, 52.257790>,  <35.249275, 39.644199, 52.199738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172195, 39.424454, 52.257790>,  <35.043732, 39.058208, 52.354542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172195, 39.424454, 52.257790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249158, -0.164720, -0.954352,
		-0.913660, 0.366769, 0.175231,
		0.321163, 0.915614, -0.241881,
		35.268543, 39.699139, 52.185226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779285, 39.098186, 51.742279>,  <35.043732, 39.058208, 52.354542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779285, 39.098186, 51.742279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.990765, 39.437584, 51.732964>,  <35.117653, 39.641220, 51.727375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.990765, 39.437584, 51.732964>,  <34.779285, 39.098186, 51.742279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990765, 39.437584, 51.732964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182854, 0.087058, -0.979278,
		-0.828880, 0.522002, 0.201178,
		0.528699, 0.848490, -0.023289,
		35.149376, 39.692131, 51.725975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397072, 39.582050, 51.292606>,  <34.779285, 39.098186, 51.742279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397072, 39.582050, 51.292606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777874, 39.703697, 51.306484>,  <35.006355, 39.776684, 51.314812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777874, 39.703697, 51.306484>,  <34.397072, 39.582050, 51.292606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777874, 39.703697, 51.306484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000335, 0.114392, -0.993436,
		-0.306087, 0.945743, 0.109004,
		0.952003, 0.304115, 0.034697,
		35.063477, 39.794933, 51.316895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389954, 40.287060, 51.088146>,  <34.397072, 39.582050, 51.292606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389954, 40.287060, 51.088146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757648, 40.150383, 51.009922>,  <34.978268, 40.068378, 50.962986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757648, 40.150383, 51.009922>,  <34.389954, 40.287060, 51.088146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757648, 40.150383, 51.009922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060420, 0.368402, -0.927701,
		0.389032, 0.864596, 0.318005,
		0.919241, -0.341692, -0.195559,
		35.033421, 40.047874, 50.951256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808235, 40.873638, 50.791637>,  <34.389954, 40.287060, 51.088146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808235, 40.873638, 50.791637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031178, 40.563496, 50.672863>,  <35.164944, 40.377411, 50.601597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031178, 40.563496, 50.672863>,  <34.808235, 40.873638, 50.791637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031178, 40.563496, 50.672863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022585, 0.371669, -0.928091,
		0.829964, 0.510574, 0.224664,
		0.557360, -0.775356, -0.296940,
		35.198387, 40.330891, 50.583782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272503, 41.203217, 50.212803>,  <34.808235, 40.873638, 50.791637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272503, 41.203217, 50.212803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.342514, 40.813255, 50.157780>,  <35.384521, 40.579277, 50.124763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.342514, 40.813255, 50.157780>,  <35.272503, 41.203217, 50.212803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342514, 40.813255, 50.157780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026155, 0.144274, -0.989192,
		0.984216, 0.169538, 0.050750,
		0.175027, -0.974906, -0.137562,
		35.395023, 40.520782, 50.116512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851524, 41.170120, 49.658863>,  <35.272503, 41.203217, 50.212803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851524, 41.170120, 49.658863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658611, 40.819988, 49.672688>,  <35.542862, 40.609909, 49.680981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658611, 40.819988, 49.672688>,  <35.851524, 41.170120, 49.658863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658611, 40.819988, 49.672688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126569, 0.030588, -0.991486,
		0.866823, -0.482553, -0.125542,
		-0.482284, -0.875333, 0.034562,
		35.513927, 40.557388, 49.683056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250526, 40.787086, 49.348454>,  <35.851524, 41.170120, 49.658863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250526, 40.787086, 49.348454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.896099, 40.603523, 49.322254>,  <35.683441, 40.493385, 49.306534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.896099, 40.603523, 49.322254>,  <36.250526, 40.787086, 49.348454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896099, 40.603523, 49.322254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087488, -0.026803, -0.995805,
		0.455225, -0.888080, 0.063898,
		-0.886068, -0.458906, -0.065495,
		35.630280, 40.465851, 49.302605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347069, 40.134140, 48.976875>,  <36.250526, 40.787086, 49.348454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347069, 40.134140, 48.976875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955566, 40.203754, 48.933514>,  <35.720665, 40.245525, 48.907497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955566, 40.203754, 48.933514>,  <36.347069, 40.134140, 48.976875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955566, 40.203754, 48.933514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081838, -0.153176, -0.984805,
		-0.188009, -0.972751, 0.135677,
		-0.978752, 0.174049, -0.108406,
		35.661942, 40.255966, 48.900993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131905, 39.559170, 48.580345>,  <36.347069, 40.134140, 48.976875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131905, 39.559170, 48.580345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843708, 39.834728, 48.548538>,  <35.670792, 40.000061, 48.529453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843708, 39.834728, 48.548538>,  <36.131905, 39.559170, 48.580345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843708, 39.834728, 48.548538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032113, -0.147684, -0.988513,
		-0.692722, -0.709660, 0.128527,
		-0.720489, 0.688892, -0.079515,
		35.627560, 40.041397, 48.524685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717026, 39.249176, 48.071926>,  <36.131905, 39.559170, 48.580345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717026, 39.249176, 48.071926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586601, 39.626873, 48.090214>,  <35.508347, 39.853493, 48.101189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586601, 39.626873, 48.090214>,  <35.717026, 39.249176, 48.071926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586601, 39.626873, 48.090214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204492, -0.023229, -0.978593,
		-0.922966, -0.328432, 0.200664,
		-0.326062, 0.944242, 0.045722,
		35.488781, 39.910145, 48.103931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991314, 39.261204, 47.763680>,  <35.717026, 39.249176, 48.071926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991314, 39.261204, 47.763680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170990, 39.616791, 47.727966>,  <35.278793, 39.830143, 47.706539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170990, 39.616791, 47.727966>,  <34.991314, 39.261204, 47.763680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170990, 39.616791, 47.727966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109594, -0.044352, -0.992986,
		-0.886690, 0.455822, 0.077503,
		0.449188, 0.888965, -0.089282,
		35.305748, 39.883480, 47.701183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516808, 39.760693, 47.434299>,  <34.991314, 39.261204, 47.763680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516808, 39.760693, 47.434299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901783, 39.848324, 47.370152>,  <35.132767, 39.900902, 47.331661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901783, 39.848324, 47.370152>,  <34.516808, 39.760693, 47.434299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901783, 39.848324, 47.370152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162616, -0.007867, -0.986658,
		-0.217416, 0.975676, 0.028054,
		0.962438, 0.219077, -0.160371,
		35.190514, 39.914047, 47.322041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851154, 40.180485, 47.469803>,  <34.516808, 39.760693, 47.434299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851154, 40.180485, 47.469803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.473015, 40.116756, 47.356007>,  <33.246132, 40.078518, 47.287731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.473015, 40.116756, 47.356007>,  <33.851154, 40.180485, 47.469803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473015, 40.116756, 47.356007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303853, 0.113951, 0.945880,
		-0.118280, 0.980629, -0.156133,
		-0.945348, -0.159320, -0.284488,
		33.189411, 40.068962, 47.270660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532551, 40.725945, 47.748470>,  <33.851154, 40.180485, 47.469803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532551, 40.725945, 47.748470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.260647, 40.439190, 47.686497>,  <33.097504, 40.267139, 47.649315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.260647, 40.439190, 47.686497>,  <33.532551, 40.725945, 47.748470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260647, 40.439190, 47.686497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278960, 0.057347, 0.958589,
		-0.678313, 0.694829, -0.238965,
		-0.679760, -0.716885, -0.154930,
		33.056721, 40.224125, 47.640018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000965, 40.891232, 48.126167>,  <33.532551, 40.725945, 47.748470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000965, 40.891232, 48.126167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878521, 40.514893, 48.068058>,  <32.805054, 40.289089, 48.033192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878521, 40.514893, 48.068058>,  <33.000965, 40.891232, 48.126167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878521, 40.514893, 48.068058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433951, 0.002076, 0.900934,
		-0.847340, 0.338824, -0.408917,
		-0.306107, -0.940847, -0.145274,
		32.786690, 40.232639, 48.024475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294697, 40.835503, 48.158710>,  <33.000965, 40.891232, 48.126167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294697, 40.835503, 48.158710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406254, 40.461716, 48.247238>,  <32.473190, 40.237442, 48.300354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406254, 40.461716, 48.247238>,  <32.294697, 40.835503, 48.158710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406254, 40.461716, 48.247238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709633, -0.045268, 0.703116,
		-0.647023, -0.353149, -0.675757,
		0.278895, -0.934472, 0.221317,
		32.489922, 40.181374, 48.313633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661173, 40.570408, 48.315350>,  <32.294697, 40.835503, 48.158710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661173, 40.570408, 48.315350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.940727, 40.327751, 48.466900>,  <32.108459, 40.182159, 48.557831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.940727, 40.327751, 48.466900>,  <31.661173, 40.570408, 48.315350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940727, 40.327751, 48.466900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574198, -0.160051, 0.802920,
		-0.426444, -0.778699, -0.460189,
		0.698886, -0.606640, 0.378874,
		32.150394, 40.145760, 48.580563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304321, 40.057617, 48.735523>,  <31.661173, 40.570408, 48.315350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304321, 40.057617, 48.735523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676680, 40.068752, 48.881210>,  <31.900095, 40.075432, 48.968624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676680, 40.068752, 48.881210>,  <31.304321, 40.057617, 48.735523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676680, 40.068752, 48.881210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362396, -0.054694, 0.930418,
		0.045826, -0.998115, -0.040825,
		0.930897, 0.027843, 0.364219,
		31.955948, 40.077103, 48.990475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322170, 39.476070, 49.251194>,  <31.304321, 40.057617, 48.735523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322170, 39.476070, 49.251194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.640543, 39.707985, 49.320873>,  <31.831566, 39.847134, 49.362682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.640543, 39.707985, 49.320873>,  <31.322170, 39.476070, 49.251194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640543, 39.707985, 49.320873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121176, -0.129349, 0.984167,
		0.593135, -0.804439, -0.032697,
		0.795932, 0.579782, 0.174200,
		31.879322, 39.881920, 49.373135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403645, 38.741322, 49.294678>,  <31.322170, 39.476070, 49.251194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403645, 38.741322, 49.294678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.070194, 38.528530, 49.354095>,  <30.870125, 38.400856, 49.389744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.070194, 38.528530, 49.354095>,  <31.403645, 38.741322, 49.294678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070194, 38.528530, 49.354095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317134, 0.240828, -0.917294,
		0.452211, -0.811786, -0.369470,
		-0.833626, -0.531982, 0.148540,
		30.820107, 38.368935, 49.398659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447216, 38.165085, 48.834255>,  <31.403645, 38.741322, 49.294678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447216, 38.165085, 48.834255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.061947, 38.208557, 48.932629>,  <30.830786, 38.234642, 48.991653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.061947, 38.208557, 48.932629>,  <31.447216, 38.165085, 48.834255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061947, 38.208557, 48.932629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247116, 0.002679, -0.968982,
		-0.105972, -0.994073, 0.024277,
		-0.963174, 0.108684, 0.245935,
		30.772995, 38.241161, 49.006409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072853, 37.666405, 48.485123>,  <31.447216, 38.165085, 48.834255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072853, 37.666405, 48.485123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.802032, 37.946205, 48.576599>,  <30.639540, 38.114086, 48.631485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.802032, 37.946205, 48.576599>,  <31.072853, 37.666405, 48.485123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802032, 37.946205, 48.576599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320325, -0.000331, -0.947308,
		-0.662565, -0.714634, 0.224291,
		-0.677052, 0.699499, 0.228696,
		30.598917, 38.156055, 48.645206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441153, 37.541145, 48.139290>,  <31.072853, 37.666405, 48.485123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441153, 37.541145, 48.139290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.381411, 37.924328, 48.237282>,  <30.345566, 38.154236, 48.296078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.381411, 37.924328, 48.237282>,  <30.441153, 37.541145, 48.139290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381411, 37.924328, 48.237282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337172, 0.183565, -0.923373,
		-0.929520, -0.220511, 0.295580,
		-0.149356, 0.957955, 0.244978,
		30.336603, 38.211716, 48.310776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738407, 37.749844, 47.930771>,  <30.441153, 37.541145, 48.139290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738407, 37.749844, 47.930771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.911373, 38.107929, 47.973873>,  <30.015154, 38.322781, 47.999733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.911373, 38.107929, 47.973873>,  <29.738407, 37.749844, 47.930771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911373, 38.107929, 47.973873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180602, 0.203073, -0.962364,
		-0.883402, 0.396681, 0.249490,
		0.432416, 0.895212, 0.107753,
		30.041098, 38.376492, 48.006199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351837, 38.152313, 47.491562>,  <29.738407, 37.749844, 47.930771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351837, 38.152313, 47.491562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.682371, 38.366085, 47.562618>,  <29.880692, 38.494347, 47.605251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.682371, 38.366085, 47.562618>,  <29.351837, 38.152313, 47.491562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682371, 38.366085, 47.562618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006896, 0.324999, -0.945689,
		-0.563135, 0.780233, 0.272244,
		0.826336, 0.534428, 0.177638,
		29.930271, 38.526413, 47.615910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230970, 38.747665, 47.190136>,  <29.351837, 38.152313, 47.491562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230970, 38.747665, 47.190136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.628481, 38.751232, 47.234558>,  <29.866987, 38.753372, 47.261211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.628481, 38.751232, 47.234558>,  <29.230970, 38.747665, 47.190136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628481, 38.751232, 47.234558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100282, 0.362681, -0.926502,
		-0.048536, 0.931871, 0.359530,
		0.993774, 0.008914, 0.111053,
		29.926613, 38.753906, 47.267876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.960255, 35.854141, 53.046791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.004913, 35.873325, 53.443829>,  <35.031708, 35.884834, 53.682049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.004913, 35.873325, 53.443829>,  <34.960255, 35.854141, 53.046791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004913, 35.873325, 53.443829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434286, 0.900759, 0.005328,
		-0.893829, -0.431663, 0.121393,
		0.111645, 0.047957, 0.992590,
		35.038406, 35.887714, 53.741604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046078, 36.198574, 52.342411>,  <34.960255, 35.854141, 53.046791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046078, 36.198574, 52.342411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433708, 36.288712, 52.382629>,  <35.666286, 36.342793, 52.406761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433708, 36.288712, 52.382629>,  <35.046078, 36.198574, 52.342411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433708, 36.288712, 52.382629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124940, -0.096698, -0.987441,
		-0.212792, 0.969469, -0.121862,
		0.969077, 0.225345, 0.100549,
		35.724430, 36.356316, 52.412792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113258, 36.707790, 51.914211>,  <35.046078, 36.198574, 52.342411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113258, 36.707790, 51.914211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.471939, 36.535313, 51.954197>,  <35.687149, 36.431824, 51.978188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.471939, 36.535313, 51.954197>,  <35.113258, 36.707790, 51.914211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471939, 36.535313, 51.954197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032026, -0.162046, -0.986263,
		0.441475, 0.887586, -0.131497,
		0.896702, -0.431199, 0.099965,
		35.740952, 36.405952, 51.984188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596062, 37.086475, 51.420681>,  <35.113258, 36.707790, 51.914211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596062, 37.086475, 51.420681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.700394, 36.706738, 51.490768>,  <35.762993, 36.478893, 51.532822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.700394, 36.706738, 51.490768>,  <35.596062, 37.086475, 51.420681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700394, 36.706738, 51.490768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104984, -0.152535, -0.982706,
		0.959658, 0.274718, 0.059881,
		0.260834, -0.949349, 0.175222,
		35.778645, 36.421932, 51.543335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137516, 36.945183, 50.802483>,  <35.596062, 37.086475, 51.420681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137516, 36.945183, 50.802483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086887, 36.586468, 50.972073>,  <36.056511, 36.371239, 51.073826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086887, 36.586468, 50.972073>,  <36.137516, 36.945183, 50.802483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086887, 36.586468, 50.972073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153415, -0.439968, -0.884812,
		0.980022, -0.046949, 0.193269,
		-0.126573, -0.896785, 0.423976,
		36.048916, 36.317432, 51.099266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705494, 36.448334, 50.650898>,  <36.137516, 36.945183, 50.802483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705494, 36.448334, 50.650898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.374912, 36.231976, 50.713383>,  <36.176563, 36.102161, 50.750874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.374912, 36.231976, 50.713383>,  <36.705494, 36.448334, 50.650898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374912, 36.231976, 50.713383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077143, -0.383646, -0.920253,
		0.557690, -0.748498, 0.358793,
		-0.826457, -0.540894, 0.156214,
		36.126976, 36.069706, 50.760246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869930, 35.787292, 50.400612>,  <36.705494, 36.448334, 50.650898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869930, 35.787292, 50.400612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.473427, 35.748234, 50.436096>,  <36.235523, 35.724800, 50.457386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.473427, 35.748234, 50.436096>,  <36.869930, 35.787292, 50.400612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473427, 35.748234, 50.436096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020409, -0.550851, -0.834354,
		0.130341, -0.828872, 0.544043,
		-0.991259, -0.097647, 0.088715,
		36.176048, 35.718941, 50.462711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846737, 35.142288, 50.260223>,  <36.869930, 35.787292, 50.400612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846737, 35.142288, 50.260223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.465569, 35.252983, 50.210648>,  <36.236870, 35.319401, 50.180901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.465569, 35.252983, 50.210648>,  <36.846737, 35.142288, 50.260223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465569, 35.252983, 50.210648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012560, -0.444422, -0.895729,
		-0.302964, -0.852001, 0.426974,
		-0.952919, 0.276737, -0.123943,
		36.179691, 35.336006, 50.173466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501842, 34.535328, 49.887062>,  <36.846737, 35.142288, 50.260223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501842, 34.535328, 49.887062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.258747, 34.849518, 49.840282>,  <36.112888, 35.038033, 49.812214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.258747, 34.849518, 49.840282>,  <36.501842, 34.535328, 49.887062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258747, 34.849518, 49.840282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175883, -0.276738, -0.944712,
		-0.774413, -0.553572, 0.306337,
		-0.607741, 0.785477, -0.116945,
		36.076424, 35.085159, 49.805199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927151, 34.239777, 49.644646>,  <36.501842, 34.535328, 49.887062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927151, 34.239777, 49.644646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.929008, 34.621956, 49.526592>,  <35.930122, 34.851261, 49.455761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.929008, 34.621956, 49.526592>,  <35.927151, 34.239777, 49.644646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929008, 34.621956, 49.526592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068243, -0.294142, -0.953322,
		-0.997658, 0.024569, 0.063836,
		0.004645, 0.955446, -0.295130,
		35.930401, 34.908588, 49.438053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354855, 34.318951, 49.182465>,  <35.927151, 34.239777, 49.644646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354855, 34.318951, 49.182465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.610249, 34.608627, 49.078243>,  <35.763485, 34.782433, 49.015709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.610249, 34.608627, 49.078243>,  <35.354855, 34.318951, 49.182465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610249, 34.608627, 49.078243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145950, -0.218474, -0.964867,
		-0.755672, 0.654077, -0.033796,
		0.638481, 0.724191, -0.260557,
		35.801792, 34.825886, 49.000076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066830, 34.556419, 48.590572>,  <35.354855, 34.318951, 49.182465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066830, 34.556419, 48.590572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.418968, 34.746124, 48.593555>,  <35.630253, 34.859947, 48.595345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.418968, 34.746124, 48.593555>,  <35.066830, 34.556419, 48.590572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418968, 34.746124, 48.593555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040351, -0.059224, -0.997429,
		-0.472605, 0.878387, -0.071275,
		0.880350, 0.474266, 0.007454,
		35.683075, 34.888405, 48.595791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305603, 34.689217, 48.683010>,  <35.066830, 34.556419, 48.590572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305603, 34.689217, 48.683010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.982861, 34.542980, 48.497395>,  <33.789215, 34.455238, 48.386024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.982861, 34.542980, 48.497395>,  <34.305603, 34.689217, 48.683010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982861, 34.542980, 48.497395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537362, 0.127875, 0.833601,
		-0.245421, 0.921948, -0.299633,
		-0.806852, -0.365595, -0.464037,
		33.740807, 34.433300, 48.358185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830444, 35.135963, 48.794979>,  <34.305603, 34.689217, 48.683010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830444, 35.135963, 48.794979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.629776, 34.799202, 48.715454>,  <33.509377, 34.597145, 48.667740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.629776, 34.799202, 48.715454>,  <33.830444, 35.135963, 48.794979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629776, 34.799202, 48.715454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447509, 0.055890, 0.892531,
		-0.740313, 0.536727, -0.404798,
		-0.501670, -0.841903, -0.198814,
		33.479275, 34.546631, 48.655811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229702, 35.357803, 48.946251>,  <33.830444, 35.135963, 48.794979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229702, 35.357803, 48.946251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.222630, 34.958111, 48.960247>,  <33.218388, 34.718296, 48.968643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.222630, 34.958111, 48.960247>,  <33.229702, 35.357803, 48.946251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222630, 34.958111, 48.960247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470444, 0.039191, 0.881559,
		-0.882253, -0.000876, -0.470776,
		-0.017678, -0.999232, 0.034989,
		33.217327, 34.658340, 48.970745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563103, 35.145340, 49.248333>,  <33.229702, 35.357803, 48.946251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563103, 35.145340, 49.248333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784210, 34.817787, 49.310143>,  <32.916874, 34.621254, 49.347229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784210, 34.817787, 49.310143>,  <32.563103, 35.145340, 49.248333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784210, 34.817787, 49.310143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359248, -0.066847, 0.930845,
		-0.751925, -0.570052, -0.331133,
		0.552765, -0.818885, 0.154526,
		32.950039, 34.572121, 49.356499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125500, 34.715538, 49.606461>,  <32.563103, 35.145340, 49.248333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125500, 34.715538, 49.606461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.485035, 34.556767, 49.680809>,  <32.700756, 34.461506, 49.725418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.485035, 34.556767, 49.680809>,  <32.125500, 34.715538, 49.606461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485035, 34.556767, 49.680809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262665, -0.148336, 0.953417,
		-0.350864, -0.905785, -0.237587,
		0.898834, -0.396926, 0.185872,
		32.754684, 34.437687, 49.736572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016781, 34.072777, 49.947933>,  <32.125500, 34.715538, 49.606461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016781, 34.072777, 49.947933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.383175, 34.200718, 50.044819>,  <32.603012, 34.277485, 50.102951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.383175, 34.200718, 50.044819>,  <32.016781, 34.072777, 49.947933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383175, 34.200718, 50.044819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182346, -0.205876, 0.961439,
		0.357388, -0.924829, -0.130254,
		0.915983, 0.319855, 0.242216,
		32.657970, 34.296673, 50.117485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125023, 33.696159, 50.521553>,  <32.016781, 34.072777, 49.947933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125023, 33.696159, 50.521553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.417870, 33.968342, 50.534100>,  <32.593578, 34.131653, 50.541630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.417870, 33.968342, 50.534100>,  <32.125023, 33.696159, 50.521553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417870, 33.968342, 50.534100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044170, 0.001468, 0.999023,
		0.679747, -0.732785, 0.031130,
		0.732115, 0.680458, 0.031369,
		32.637505, 34.172478, 50.543510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639824, 33.453594, 51.039207>,  <32.125023, 33.696159, 50.521553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639824, 33.453594, 51.039207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.670944, 33.850544, 51.000954>,  <32.689617, 34.088715, 50.978001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.670944, 33.850544, 51.000954>,  <32.639824, 33.453594, 51.039207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670944, 33.850544, 51.000954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057541, 0.100236, 0.993299,
		0.995307, -0.071776, 0.064900,
		0.077801, 0.992372, -0.095635,
		32.694286, 34.148254, 50.972263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904358, 33.687050, 51.687931>,  <32.639824, 33.453594, 51.039207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904358, 33.687050, 51.687931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.736568, 34.012131, 51.526157>,  <32.635895, 34.207180, 51.429092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.736568, 34.012131, 51.526157>,  <32.904358, 33.687050, 51.687931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736568, 34.012131, 51.526157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331346, 0.277706, 0.901715,
		0.845136, 0.512249, 0.152795,
		-0.419470, 0.812700, -0.404431,
		32.610729, 34.255939, 51.404827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053818, 34.269283, 52.093170>,  <32.904358, 33.687050, 51.687931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053818, 34.269283, 52.093170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.739643, 34.407288, 51.887627>,  <32.551136, 34.490089, 51.764301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.739643, 34.407288, 51.887627>,  <33.053818, 34.269283, 52.093170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739643, 34.407288, 51.887627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285621, 0.534508, 0.795438,
		0.549096, 0.771538, -0.321283,
		-0.785439, 0.345007, -0.513863,
		32.504013, 34.510788, 51.733467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916569, 34.975910, 52.402836>,  <33.053818, 34.269283, 52.093170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916569, 34.975910, 52.402836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.576736, 34.902493, 52.205040>,  <32.372837, 34.858444, 52.086365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.576736, 34.902493, 52.205040>,  <32.916569, 34.975910, 52.402836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576736, 34.902493, 52.205040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521535, 0.432340, 0.735583,
		0.078776, 0.882833, -0.463034,
		-0.849585, -0.183542, -0.494487,
		32.321861, 34.847431, 52.056694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509586, 35.688053, 52.394329>,  <32.916569, 34.975910, 52.402836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509586, 35.688053, 52.394329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269203, 35.374348, 52.332657>,  <32.124973, 35.186123, 52.295654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269203, 35.374348, 52.332657>,  <32.509586, 35.688053, 52.394329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269203, 35.374348, 52.332657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578316, 0.293500, 0.761189,
		-0.551721, 0.546612, -0.629936,
		-0.600961, -0.784266, -0.154184,
		32.088913, 35.139069, 52.286400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860682, 36.055275, 52.506325>,  <32.509586, 35.688053, 52.394329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860682, 36.055275, 52.506325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.750063, 35.674171, 52.556549>,  <31.683691, 35.445507, 52.586685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.750063, 35.674171, 52.556549>,  <31.860682, 36.055275, 52.506325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750063, 35.674171, 52.556549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419198, 0.237170, 0.876369,
		-0.864751, 0.189721, -0.464985,
		-0.276546, -0.952762, 0.125563,
		31.667099, 35.388344, 52.594219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138872, 36.074650, 52.592640>,  <31.860682, 36.055275, 52.506325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138872, 36.074650, 52.592640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.232872, 35.716412, 52.743729>,  <31.289272, 35.501469, 52.834381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.232872, 35.716412, 52.743729>,  <31.138872, 36.074650, 52.592640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232872, 35.716412, 52.743729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716753, 0.102819, 0.689705,
		-0.656537, -0.432815, -0.617762,
		0.234997, -0.895600, 0.377725,
		31.303371, 35.447731, 52.857048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297722, 36.473087, 51.909168>,  <31.138872, 36.074650, 52.592640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297722, 36.473087, 51.909168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.261206, 36.858055, 52.011475>,  <31.239296, 37.089035, 52.072861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.261206, 36.858055, 52.011475>,  <31.297722, 36.473087, 51.909168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261206, 36.858055, 52.011475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499818, 0.177863, -0.847671,
		-0.861306, -0.205222, 0.464797,
		-0.091291, 0.962418, 0.255768,
		31.233818, 37.146782, 52.088203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545237, 36.653900, 51.612820>,  <31.297722, 36.473087, 51.909168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545237, 36.653900, 51.612820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.745527, 36.994011, 51.677696>,  <30.865702, 37.198078, 51.716621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.745527, 36.994011, 51.677696>,  <30.545237, 36.653900, 51.612820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745527, 36.994011, 51.677696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413029, 0.399358, -0.818487,
		-0.760710, 0.342851, 0.551157,
		0.500727, 0.850275, 0.162188,
		30.895746, 37.249092, 51.726353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065716, 37.269714, 51.381271>,  <30.545237, 36.653900, 51.612820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065716, 37.269714, 51.381271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.432245, 37.429855, 51.377918>,  <30.652163, 37.525940, 51.375904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.432245, 37.429855, 51.377918>,  <30.065716, 37.269714, 51.381271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432245, 37.429855, 51.377918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269064, 0.600055, -0.753352,
		-0.296575, 0.692570, 0.657564,
		0.916323, 0.400352, -0.008384,
		30.707142, 37.549961, 51.375404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989349, 38.022968, 51.287231>,  <30.065716, 37.269714, 51.381271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989349, 38.022968, 51.287231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.369768, 37.957481, 51.182388>,  <30.598021, 37.918190, 51.119480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.369768, 37.957481, 51.182388>,  <29.989349, 38.022968, 51.287231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369768, 37.957481, 51.182388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183757, 0.382336, -0.905568,
		0.248473, 0.909404, 0.333535,
		0.951049, -0.163720, -0.262110,
		30.655083, 37.908367, 51.103756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134611, 38.568600, 50.889111>,  <29.989349, 38.022968, 51.287231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134611, 38.568600, 50.889111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.436710, 38.327297, 50.786602>,  <30.617970, 38.182514, 50.725098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.436710, 38.327297, 50.786602>,  <30.134611, 38.568600, 50.889111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436710, 38.327297, 50.786602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056723, 0.329367, -0.942497,
		0.652978, 0.726357, 0.214535,
		0.755250, -0.603261, -0.256271,
		30.663284, 38.146320, 50.709721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647005, 39.010113, 50.550442>,  <30.134611, 38.568600, 50.889111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647005, 39.010113, 50.550442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.684895, 38.633663, 50.420635>,  <30.707628, 38.407795, 50.342751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.684895, 38.633663, 50.420635>,  <30.647005, 39.010113, 50.550442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684895, 38.633663, 50.420635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048954, 0.321188, -0.945750,
		0.994299, 0.105471, -0.015648,
		0.094724, -0.941124, -0.324520,
		30.713312, 38.351326, 50.323280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070974, 39.082748, 49.992622>,  <30.647005, 39.010113, 50.550442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070974, 39.082748, 49.992622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.878920, 38.734940, 49.946312>,  <30.763687, 38.526257, 49.918526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.878920, 38.734940, 49.946312>,  <31.070974, 39.082748, 49.992622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878920, 38.734940, 49.946312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175730, 0.224654, -0.958462,
		0.859411, -0.439848, -0.260665,
		-0.480137, -0.869520, -0.115775,
		30.734879, 38.474083, 49.911579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745447, 39.105251, 49.917946>,  <31.070974, 39.082748, 49.992622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745447, 39.105251, 49.917946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.855881, 39.489262, 49.899467>,  <31.922140, 39.719666, 49.888382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.855881, 39.489262, 49.899467>,  <31.745447, 39.105251, 49.917946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855881, 39.489262, 49.899467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082993, 0.024069, 0.996259,
		0.957544, -0.278885, -0.073030,
		0.276084, 0.960023, -0.046192,
		31.938705, 39.777267, 49.885609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346432, 39.123974, 50.276279>,  <31.745447, 39.105251, 49.917946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346432, 39.123974, 50.276279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.256046, 39.513203, 50.258053>,  <32.201817, 39.746738, 50.247116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.256046, 39.513203, 50.258053>,  <32.346432, 39.123974, 50.276279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256046, 39.513203, 50.258053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358426, 0.126542, 0.924942,
		0.905800, 0.192668, -0.377367,
		-0.225959, 0.973071, -0.045564,
		32.188259, 39.805122, 50.244385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933987, 39.474205, 50.340481>,  <32.346432, 39.123974, 50.276279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933987, 39.474205, 50.340481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.632904, 39.698811, 50.477966>,  <32.452255, 39.833576, 50.560459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.632904, 39.698811, 50.477966>,  <32.933987, 39.474205, 50.340481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632904, 39.698811, 50.477966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488523, 0.126389, 0.863349,
		0.441343, 0.817756, -0.369447,
		-0.752703, 0.561516, 0.343712,
		32.407093, 39.867264, 50.581081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301521, 39.921459, 50.588238>,  <32.933987, 39.474205, 50.340481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301521, 39.921459, 50.588238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.951694, 40.007908, 50.761871>,  <32.741798, 40.059776, 50.866051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.951694, 40.007908, 50.761871>,  <33.301521, 39.921459, 50.588238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951694, 40.007908, 50.761871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462488, 0.102717, 0.880656,
		0.145738, 0.970949, -0.189785,
		-0.874566, 0.216118, 0.434082,
		32.689323, 40.072742, 50.892097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289619, 40.573631, 50.951683>,  <33.301521, 39.921459, 50.588238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289619, 40.573631, 50.951683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.011570, 40.349674, 51.132046>,  <32.844738, 40.215298, 51.240265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.011570, 40.349674, 51.132046>,  <33.289619, 40.573631, 50.951683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011570, 40.349674, 51.132046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556896, -0.022751, 0.830270,
		-0.454605, 0.828252, 0.327618,
		-0.695126, -0.559894, 0.450908,
		32.803032, 40.181705, 51.267319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137672, 41.001793, 51.581398>,  <33.289619, 40.573631, 50.951683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137672, 41.001793, 51.581398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.012856, 40.623688, 51.619583>,  <32.937965, 40.396824, 51.642494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.012856, 40.623688, 51.619583>,  <33.137672, 41.001793, 51.581398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012856, 40.623688, 51.619583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441928, -0.055462, 0.895334,
		-0.841029, 0.321571, 0.435044,
		-0.312042, -0.945260, 0.095466,
		32.919243, 40.340111, 51.648224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764156, 41.060036, 52.174900>,  <33.137672, 41.001793, 51.581398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764156, 41.060036, 52.174900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.862137, 40.674797, 52.130276>,  <32.920925, 40.443653, 52.103500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.862137, 40.674797, 52.130276>,  <32.764156, 41.060036, 52.174900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862137, 40.674797, 52.130276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553398, 0.044408, 0.831732,
		-0.796083, -0.265474, 0.543853,
		0.244954, -0.963095, -0.111560,
		32.935623, 40.385868, 52.096809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751514, 40.795334, 52.888504>,  <32.764156, 41.060036, 52.174900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751514, 40.795334, 52.888504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.968258, 40.521969, 52.692818>,  <33.098305, 40.357948, 52.575405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.968258, 40.521969, 52.692818>,  <32.751514, 40.795334, 52.888504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968258, 40.521969, 52.692818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637710, -0.044847, 0.768970,
		-0.547467, -0.728650, 0.411521,
		0.541854, -0.683416, -0.489220,
		33.130814, 40.316944, 52.546051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002525, 40.433605, 53.543762>,  <32.751514, 40.795334, 52.888504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002525, 40.433605, 53.543762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.219563, 40.310162, 53.231262>,  <33.349785, 40.236095, 53.043762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.219563, 40.310162, 53.231262>,  <33.002525, 40.433605, 53.543762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219563, 40.310162, 53.231262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804159, -0.077931, 0.589283,
		-0.242742, -0.947991, 0.205885,
		0.542591, -0.308609, -0.781253,
		33.382339, 40.217579, 52.996887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.288483, 36.899563, 37.362549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671650, 36.956528, 37.462242>,  <34.901550, 36.990707, 37.522060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671650, 36.956528, 37.462242>,  <34.288483, 36.899563, 37.362549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671650, 36.956528, 37.462242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275748, 0.215243, 0.936821,
		0.079766, -0.966121, 0.245453,
		0.957915, 0.142409, 0.249237,
		34.959023, 36.999252, 37.537014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304634, 36.832054, 38.113811>,  <34.288483, 36.899563, 37.362549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304634, 36.832054, 38.113811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669846, 36.993092, 38.087597>,  <34.888973, 37.089714, 38.071869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669846, 36.993092, 38.087597>,  <34.304634, 36.832054, 38.113811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669846, 36.993092, 38.087597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068591, 0.309936, 0.948280,
		0.402082, -0.861313, 0.310595,
		0.913030, 0.402591, -0.065542,
		34.943756, 37.113869, 38.067936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710285, 36.580685, 38.666039>,  <34.304634, 36.832054, 38.113811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710285, 36.580685, 38.666039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868027, 36.922272, 38.530262>,  <34.962669, 37.127224, 38.448795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868027, 36.922272, 38.530262>,  <34.710285, 36.580685, 38.666039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868027, 36.922272, 38.530262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143547, 0.422084, 0.895120,
		0.907680, -0.304265, 0.289034,
		0.394350, 0.853972, -0.339441,
		34.986332, 37.178463, 38.428429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188198, 36.840221, 39.245075>,  <34.710285, 36.580685, 38.666039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188198, 36.840221, 39.245075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114727, 37.152298, 39.005886>,  <35.070644, 37.339542, 38.862373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114727, 37.152298, 39.005886>,  <35.188198, 36.840221, 39.245075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114727, 37.152298, 39.005886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271735, 0.544317, 0.793650,
		0.944682, 0.308265, 0.112026,
		-0.183676, 0.780187, -0.597972,
		35.059624, 37.386353, 38.826496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337559, 37.348412, 39.639149>,  <35.188198, 36.840221, 39.245075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337559, 37.348412, 39.639149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128914, 37.533768, 39.352600>,  <35.003727, 37.644981, 39.180672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128914, 37.533768, 39.352600>,  <35.337559, 37.348412, 39.639149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128914, 37.533768, 39.352600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420928, 0.590568, 0.688512,
		0.742116, 0.660678, -0.112994,
		-0.521616, 0.463394, -0.716368,
		34.972427, 37.672787, 39.137691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528305, 38.057690, 39.611267>,  <35.337559, 37.348412, 39.639149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528305, 38.057690, 39.611267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158955, 38.035950, 39.459251>,  <34.937344, 38.022903, 39.368042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158955, 38.035950, 39.459251>,  <35.528305, 38.057690, 39.611267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158955, 38.035950, 39.459251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335238, 0.596550, 0.729208,
		0.187078, 0.800734, -0.569059,
		-0.923373, -0.054352, -0.380038,
		34.881943, 38.019646, 39.345242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311939, 38.709274, 39.709965>,  <35.528305, 38.057690, 39.611267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311939, 38.709274, 39.709965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985699, 38.482933, 39.661633>,  <34.789955, 38.347130, 39.632633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985699, 38.482933, 39.661633>,  <35.311939, 38.709274, 39.709965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985699, 38.482933, 39.661633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475324, 0.536172, 0.697558,
		-0.329931, 0.626364, -0.706268,
		-0.815606, -0.565852, -0.120826,
		34.741016, 38.313179, 39.625385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719620, 39.087669, 39.794365>,  <35.311939, 38.709274, 39.709965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719620, 39.087669, 39.794365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576294, 38.720692, 39.863541>,  <34.490299, 38.500504, 39.905048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576294, 38.720692, 39.863541>,  <34.719620, 39.087669, 39.794365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576294, 38.720692, 39.863541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493229, 0.343304, 0.799292,
		-0.792677, 0.201098, -0.575520,
		-0.358315, -0.917443, 0.172941,
		34.468800, 38.445457, 39.915424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080944, 39.147709, 40.105644>,  <34.719620, 39.087669, 39.794365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080944, 39.147709, 40.105644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093887, 38.761086, 40.207409>,  <34.101654, 38.529114, 40.268467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093887, 38.761086, 40.207409>,  <34.080944, 39.147709, 40.105644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093887, 38.761086, 40.207409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422084, 0.217520, 0.880074,
		-0.905979, -0.135860, -0.400929,
		0.032357, -0.966554, 0.254413,
		34.103596, 38.471119, 40.283733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472214, 38.985344, 40.412735>,  <34.080944, 39.147709, 40.105644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472214, 38.985344, 40.412735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725159, 38.707043, 40.548992>,  <33.876926, 38.540062, 40.630749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725159, 38.707043, 40.548992>,  <33.472214, 38.985344, 40.412735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725159, 38.707043, 40.548992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323862, 0.162023, 0.932128,
		-0.703725, -0.699767, -0.122871,
		0.632364, -0.695755, 0.340647,
		33.914867, 38.498318, 40.651188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127472, 38.584991, 40.742538>,  <33.472214, 38.985344, 40.412735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127472, 38.584991, 40.742538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492729, 38.551098, 40.902035>,  <33.711884, 38.530762, 40.997730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492729, 38.551098, 40.902035>,  <33.127472, 38.584991, 40.742538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492729, 38.551098, 40.902035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374041, 0.214725, 0.902212,
		-0.162067, -0.972992, 0.164380,
		0.913142, -0.084734, 0.398739,
		33.766670, 38.525677, 41.021656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099148, 38.136864, 41.323456>,  <33.127472, 38.584991, 40.742538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099148, 38.136864, 41.323456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442734, 38.332558, 41.383888>,  <33.648888, 38.449974, 41.420147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442734, 38.332558, 41.383888>,  <33.099148, 38.136864, 41.323456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442734, 38.332558, 41.383888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212561, 0.072265, 0.974472,
		0.465827, -0.869153, 0.166065,
		0.858966, 0.489234, 0.151085,
		33.700424, 38.479328, 41.429214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571087, 37.780785, 41.781025>,  <33.099148, 38.136864, 41.323456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571087, 37.780785, 41.781025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171673, 37.767300, 41.764122>,  <31.932024, 37.759209, 41.753983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171673, 37.767300, 41.764122>,  <32.571087, 37.780785, 41.781025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171673, 37.767300, 41.764122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054013, -0.591685, -0.804358,
		0.002115, -0.805464, 0.592641,
		-0.998538, -0.033712, -0.042254,
		31.872112, 37.757187, 41.751446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537285, 37.172096, 41.612385>,  <32.571087, 37.780785, 41.781025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537285, 37.172096, 41.612385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179981, 37.325603, 41.518742>,  <31.965597, 37.417706, 41.462555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179981, 37.325603, 41.518742>,  <32.537285, 37.172096, 41.612385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179981, 37.325603, 41.518742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064908, -0.625424, -0.777580,
		-0.444821, -0.679389, 0.583578,
		-0.893264, 0.383763, -0.234105,
		31.912003, 37.440731, 41.448509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055347, 36.686886, 41.587357>,  <32.537285, 37.172096, 41.612385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055347, 36.686886, 41.587357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880915, 36.976044, 41.372971>,  <31.776255, 37.149536, 41.244339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880915, 36.976044, 41.372971>,  <32.055347, 36.686886, 41.587357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880915, 36.976044, 41.372971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199683, -0.658462, -0.725640,
		-0.877473, -0.209416, 0.431493,
		-0.436083, 0.722891, -0.535966,
		31.750090, 37.192909, 41.212181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430027, 36.427387, 41.256260>,  <32.055347, 36.686886, 41.587357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430027, 36.427387, 41.256260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549759, 36.741531, 41.039516>,  <31.621597, 36.930019, 40.909470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549759, 36.741531, 41.039516>,  <31.430027, 36.427387, 41.256260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549759, 36.741531, 41.039516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317876, -0.453373, -0.832711,
		-0.899642, 0.421499, 0.113939,
		0.299330, 0.785361, -0.541858,
		31.639559, 36.977139, 40.876961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949463, 36.384514, 40.751308>,  <31.430027, 36.427387, 41.256260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949463, 36.384514, 40.751308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197104, 36.643116, 40.572987>,  <31.345688, 36.798279, 40.465992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197104, 36.643116, 40.572987>,  <30.949463, 36.384514, 40.751308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197104, 36.643116, 40.572987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384927, -0.244988, -0.889838,
		-0.684504, 0.722503, 0.097186,
		0.619101, 0.646507, -0.445806,
		31.382833, 36.837067, 40.439243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527960, 36.702820, 40.299946>,  <30.949463, 36.384514, 40.751308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527960, 36.702820, 40.299946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900351, 36.754696, 40.163441>,  <31.123785, 36.785824, 40.081539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900351, 36.754696, 40.163441>,  <30.527960, 36.702820, 40.299946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900351, 36.754696, 40.163441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277193, -0.357212, -0.891944,
		-0.237582, 0.924975, -0.296607,
		0.930977, 0.129692, -0.341264,
		31.179644, 36.793602, 40.061062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517870, 37.073792, 39.548447>,  <30.527960, 36.702820, 40.299946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517870, 37.073792, 39.548447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870449, 36.885090, 39.557301>,  <31.081997, 36.771870, 39.562614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870449, 36.885090, 39.557301>,  <30.517870, 37.073792, 39.548447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870449, 36.885090, 39.557301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188800, -0.394955, -0.899092,
		0.432898, 0.788324, -0.437201,
		0.881450, -0.471758, 0.022139,
		31.134884, 36.743561, 39.563942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808174, 37.033806, 38.780369>,  <30.517870, 37.073792, 39.548447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808174, 37.033806, 38.780369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023739, 36.754887, 38.969406>,  <31.153078, 36.587536, 39.082829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023739, 36.754887, 38.969406>,  <30.808174, 37.033806, 38.780369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023739, 36.754887, 38.969406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194480, -0.442879, -0.875234,
		0.819605, 0.563584, -0.103061,
		0.538912, -0.697303, 0.472592,
		31.185411, 36.545696, 39.111183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206318, 36.687546, 38.262398>,  <30.808174, 37.033806, 38.780369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206318, 36.687546, 38.262398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255381, 36.448402, 38.579262>,  <31.284819, 36.304916, 38.769382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255381, 36.448402, 38.579262>,  <31.206318, 36.687546, 38.262398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255381, 36.448402, 38.579262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293482, -0.740642, -0.604416,
		0.948063, 0.306622, 0.084615,
		0.122658, -0.597857, 0.792163,
		31.292177, 36.269047, 38.816910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931292, 36.456291, 38.206242>,  <31.206318, 36.687546, 38.262398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931292, 36.456291, 38.206242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692438, 36.221676, 38.425110>,  <31.549126, 36.080906, 38.556431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692438, 36.221676, 38.425110>,  <31.931292, 36.456291, 38.206242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692438, 36.221676, 38.425110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218934, -0.775415, -0.592283,
		0.771686, -0.233878, 0.591441,
		-0.597134, -0.586543, 0.547174,
		31.513298, 36.045712, 38.589260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362652, 35.930893, 38.314556>,  <31.931292, 36.456291, 38.206242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362652, 35.930893, 38.314556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987370, 35.799576, 38.358356>,  <31.762199, 35.720787, 38.384636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987370, 35.799576, 38.358356>,  <32.362652, 35.930893, 38.314556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987370, 35.799576, 38.358356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180387, -0.733935, -0.654828,
		0.295344, -0.594612, 0.747803,
		-0.938207, -0.328293, 0.109503,
		31.705908, 35.701088, 38.391209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434017, 35.186932, 38.434181>,  <32.362652, 35.930893, 38.314556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434017, 35.186932, 38.434181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056492, 35.251961, 38.319092>,  <31.829977, 35.290977, 38.250038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056492, 35.251961, 38.319092>,  <32.434017, 35.186932, 38.434181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056492, 35.251961, 38.319092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008319, -0.882045, -0.471091,
		-0.330373, -0.442229, 0.833839,
		-0.943814, 0.162572, -0.287725,
		31.773348, 35.300732, 38.232773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096310, 34.451355, 38.346436>,  <32.434017, 35.186932, 38.434181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096310, 34.451355, 38.346436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835953, 34.697430, 38.168499>,  <31.679739, 34.845074, 38.061737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835953, 34.697430, 38.168499>,  <32.096310, 34.451355, 38.346436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835953, 34.697430, 38.168499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189180, -0.698910, -0.689736,
		-0.735222, -0.364787, 0.571295,
		-0.650891, 0.615187, -0.444844,
		31.640684, 34.881985, 38.035046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447115, 34.109818, 38.326439>,  <32.096310, 34.451355, 38.346436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447115, 34.109818, 38.326439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455322, 34.371029, 38.023617>,  <31.460247, 34.527756, 37.841923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455322, 34.371029, 38.023617>,  <31.447115, 34.109818, 38.326439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455322, 34.371029, 38.023617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115544, -0.750595, -0.650581,
		-0.993090, 0.100821, 0.060054,
		0.020516, 0.653025, -0.757059,
		31.461477, 34.566936, 37.796497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208033, 33.667309, 37.769917>,  <31.447115, 34.109818, 38.326439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208033, 33.667309, 37.769917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349901, 33.995579, 37.590717>,  <31.435022, 34.192539, 37.483196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349901, 33.995579, 37.590717>,  <31.208033, 33.667309, 37.769917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349901, 33.995579, 37.590717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047536, -0.494353, -0.867960,
		-0.933781, 0.286546, -0.214345,
		0.354673, 0.820674, -0.447997,
		31.456303, 34.241779, 37.456318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964863, 33.873089, 37.628628>,  <31.208033, 33.667309, 37.769917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964863, 33.873089, 37.628628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331100, 33.757149, 37.517147>,  <32.550842, 33.687584, 37.450256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331100, 33.757149, 37.517147>,  <31.964863, 33.873089, 37.628628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331100, 33.757149, 37.517147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001085, -0.694892, 0.719113,
		-0.402102, -0.658114, -0.636554,
		0.915594, -0.289847, -0.278703,
		32.605778, 33.670193, 37.433537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637100, 34.037064, 38.038792>,  <31.964863, 33.873089, 37.628628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637100, 34.037064, 38.038792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014820, 34.161213, 37.995045>,  <33.241451, 34.235703, 37.968796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014820, 34.161213, 37.995045>,  <32.637100, 34.037064, 38.038792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014820, 34.161213, 37.995045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266906, -0.527973, 0.806229,
		0.192486, -0.790516, -0.581407,
		0.944304, 0.310369, -0.109366,
		33.298111, 34.254322, 37.962234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145786, 33.510372, 38.143131>,  <32.637100, 34.037064, 38.038792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145786, 33.510372, 38.143131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377327, 33.813980, 38.262348>,  <33.516251, 33.996143, 38.333878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377327, 33.813980, 38.262348>,  <33.145786, 33.510372, 38.143131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377327, 33.813980, 38.262348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303824, -0.539935, 0.784959,
		0.756719, -0.363821, -0.543148,
		0.578850, 0.759015, 0.298042,
		33.550983, 34.041683, 38.351761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751511, 33.201328, 38.425491>,  <33.145786, 33.510372, 38.143131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751511, 33.201328, 38.425491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741871, 33.571842, 38.575909>,  <33.736088, 33.794151, 38.666157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741871, 33.571842, 38.575909>,  <33.751511, 33.201328, 38.425491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741871, 33.571842, 38.575909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174140, -0.366510, 0.913972,
		0.984426, 0.087510, -0.152471,
		-0.024100, 0.926289, 0.376041,
		33.734642, 33.849728, 38.688721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404839, 33.228287, 38.903755>,  <33.751511, 33.201328, 38.425491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404839, 33.228287, 38.903755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132950, 33.505657, 38.999371>,  <33.969814, 33.672077, 39.056740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132950, 33.505657, 38.999371>,  <34.404839, 33.228287, 38.903755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132950, 33.505657, 38.999371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175774, -0.162403, 0.970942,
		0.712094, 0.701990, -0.011497,
		-0.679724, 0.693423, 0.239037,
		33.929031, 33.713684, 39.071083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680294, 33.561153, 39.457325>,  <34.404839, 33.228287, 38.903755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680294, 33.561153, 39.457325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294849, 33.654114, 39.510170>,  <34.063583, 33.709888, 39.541878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294849, 33.654114, 39.510170>,  <34.680294, 33.561153, 39.457325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294849, 33.654114, 39.510170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138003, 0.009213, 0.990389,
		0.228947, 0.972577, -0.040950,
		-0.963607, 0.232397, 0.132110,
		34.005768, 33.723831, 39.549805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638550, 34.106133, 39.913769>,  <34.680294, 33.561153, 39.457325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638550, 34.106133, 39.913769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256802, 33.988823, 39.936275>,  <34.027752, 33.918438, 39.949780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256802, 33.988823, 39.936275>,  <34.638550, 34.106133, 39.913769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256802, 33.988823, 39.936275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035408, 0.075964, 0.996482,
		-0.296517, 0.953006, -0.062114,
		-0.954371, -0.293275, 0.056269,
		33.970490, 33.900841, 39.953156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328625, 34.569141, 40.442631>,  <34.638550, 34.106133, 39.913769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328625, 34.569141, 40.442631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068645, 34.265766, 40.423286>,  <33.912659, 34.083740, 40.411678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068645, 34.265766, 40.423286>,  <34.328625, 34.569141, 40.442631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068645, 34.265766, 40.423286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076452, 0.001935, 0.997071,
		-0.756127, 0.651738, -0.059242,
		-0.649943, -0.758442, -0.048364,
		33.873661, 34.038235, 40.408779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772419, 34.805889, 40.909290>,  <34.328625, 34.569141, 40.442631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772419, 34.805889, 40.909290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773907, 34.410591, 40.848148>,  <33.774799, 34.173412, 40.811462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773907, 34.410591, 40.848148>,  <33.772419, 34.805889, 40.909290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773907, 34.410591, 40.848148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072137, -0.152723, 0.985633,
		-0.997388, 0.007361, -0.071857,
		0.003719, -0.988242, -0.152855,
		33.775024, 34.114120, 40.802292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187847, 34.519634, 41.259571>,  <33.772419, 34.805889, 40.909290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187847, 34.519634, 41.259571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466061, 34.234600, 41.222794>,  <33.632988, 34.063580, 41.200726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466061, 34.234600, 41.222794>,  <33.187847, 34.519634, 41.259571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466061, 34.234600, 41.222794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087823, -0.211330, 0.973461,
		-0.713106, -0.669000, -0.209569,
		0.695534, -0.712586, -0.091947,
		33.674721, 34.020824, 41.195210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859089, 34.039581, 41.578632>,  <33.187847, 34.519634, 41.259571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859089, 34.039581, 41.578632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242165, 33.924755, 41.586826>,  <33.472012, 33.855862, 41.591743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242165, 33.924755, 41.586826>,  <32.859089, 34.039581, 41.578632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242165, 33.924755, 41.586826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068429, -0.157986, 0.985068,
		-0.279537, -0.944795, -0.170945,
		0.957693, -0.287061, 0.020488,
		33.529472, 33.838638, 41.592972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866398, 33.363045, 41.950546>,  <32.859089, 34.039581, 41.578632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866398, 33.363045, 41.950546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239243, 33.507660, 41.941956>,  <33.462948, 33.594429, 41.936802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239243, 33.507660, 41.941956>,  <32.866398, 33.363045, 41.950546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239243, 33.507660, 41.941956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116469, -0.243065, 0.962992,
		0.342940, -0.900115, -0.268671,
		0.932109, 0.361541, -0.021479,
		33.518875, 33.616123, 41.935513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288345, 32.893486, 42.320679>,  <32.866398, 33.363045, 41.950546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288345, 32.893486, 42.320679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518436, 33.220623, 42.314430>,  <33.656490, 33.416904, 42.310680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518436, 33.220623, 42.314430>,  <33.288345, 32.893486, 42.320679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518436, 33.220623, 42.314430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132924, -0.074613, 0.988314,
		0.807124, -0.570578, -0.151631,
		0.575224, 0.817847, -0.015621,
		33.691002, 33.465977, 42.309742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772987, 32.788136, 42.856335>,  <33.288345, 32.893486, 42.320679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772987, 32.788136, 42.856335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810165, 33.182549, 42.801052>,  <33.832474, 33.419197, 42.767883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810165, 33.182549, 42.801052>,  <33.772987, 32.788136, 42.856335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810165, 33.182549, 42.801052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133803, 0.125178, 0.983070,
		0.986639, -0.109867, -0.120300,
		0.092948, 0.986032, -0.138206,
		33.838051, 33.478359, 42.759590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325676, 33.013268, 43.224941>,  <33.772987, 32.788136, 42.856335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325676, 33.013268, 43.224941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179169, 33.382275, 43.176266>,  <34.091263, 33.603680, 43.147060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179169, 33.382275, 43.176266>,  <34.325676, 33.013268, 43.224941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179169, 33.382275, 43.176266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120850, 0.176831, 0.976794,
		0.922628, 0.343062, -0.176253,
		-0.366268, 0.922518, -0.121690,
		34.069290, 33.659031, 43.139759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781586, 33.544205, 43.564205>,  <34.325676, 33.013268, 43.224941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781586, 33.544205, 43.564205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405045, 33.678543, 43.551151>,  <34.179119, 33.759144, 43.543320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405045, 33.678543, 43.551151>,  <34.781586, 33.544205, 43.564205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405045, 33.678543, 43.551151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032492, 0.186487, 0.981920,
		0.335855, 0.923273, -0.186462,
		-0.941353, 0.335841, -0.032634,
		34.122639, 33.779297, 43.541363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886009, 34.120182, 43.992046>,  <34.781586, 33.544205, 43.564205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886009, 34.120182, 43.992046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491238, 34.055748, 43.993481>,  <34.254375, 34.017086, 43.994343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491238, 34.055748, 43.993481>,  <34.886009, 34.120182, 43.992046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491238, 34.055748, 43.993481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060149, 0.388998, 0.919273,
		-0.149482, 0.907045, -0.393604,
		-0.986933, -0.161090, 0.003590,
		34.195156, 34.007420, 43.994556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554302, 34.647560, 44.333252>,  <34.886009, 34.120182, 43.992046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554302, 34.647560, 44.333252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269325, 34.369144, 44.368931>,  <34.098339, 34.202095, 44.390339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269325, 34.369144, 44.368931>,  <34.554302, 34.647560, 44.333252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269325, 34.369144, 44.368931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147198, 0.272518, 0.950824,
		-0.686118, 0.664278, -0.296608,
		-0.712443, -0.696037, 0.089199,
		34.055592, 34.160332, 44.395691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110405, 34.834743, 44.771057>,  <34.554302, 34.647560, 44.333252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110405, 34.834743, 44.771057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992085, 34.453144, 44.790611>,  <33.921093, 34.224186, 44.802345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992085, 34.453144, 44.790611>,  <34.110405, 34.834743, 44.771057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992085, 34.453144, 44.790611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166270, 0.101813, 0.980810,
		-0.940667, 0.281998, -0.188738,
		-0.295803, -0.953997, 0.048885,
		33.903343, 34.166946, 44.805275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591610, 34.833344, 45.263374>,  <34.110405, 34.834743, 44.771057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591610, 34.833344, 45.263374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693745, 34.446854, 45.249451>,  <33.755024, 34.214958, 45.241096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693745, 34.446854, 45.249451>,  <33.591610, 34.833344, 45.263374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693745, 34.446854, 45.249451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230277, -0.095742, 0.968404,
		-0.939029, -0.239253, -0.246946,
		0.255337, -0.966225, -0.034810,
		33.770348, 34.156986, 45.239006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070759, 34.511505, 45.636173>,  <33.591610, 34.833344, 45.263374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070759, 34.511505, 45.636173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391251, 34.272194, 45.640045>,  <33.583546, 34.128609, 45.642368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391251, 34.272194, 45.640045>,  <33.070759, 34.511505, 45.636173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391251, 34.272194, 45.640045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076908, -0.086933, 0.993241,
		-0.593395, -0.796558, -0.115666,
		0.801229, -0.598280, 0.009676,
		33.631618, 34.092709, 45.642948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876125, 33.910641, 45.937088>,  <33.070759, 34.511505, 45.636173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876125, 33.910641, 45.937088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271515, 33.949299, 45.983715>,  <33.508747, 33.972496, 46.011692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271515, 33.949299, 45.983715>,  <32.876125, 33.910641, 45.937088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271515, 33.949299, 45.983715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100933, -0.153280, 0.983015,
		0.112873, -0.983445, -0.141758,
		0.988469, 0.096648, 0.116563,
		33.568054, 33.978294, 46.018684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282795, 33.246571, 46.220997>,  <32.876125, 33.910641, 45.937088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282795, 33.246571, 46.220997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462101, 33.589096, 46.323582>,  <33.569687, 33.794613, 46.385132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462101, 33.589096, 46.323582>,  <33.282795, 33.246571, 46.220997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462101, 33.589096, 46.323582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162398, -0.204118, 0.965382,
		0.879023, -0.474401, 0.047565,
		0.448270, 0.856317, 0.256466,
		33.596581, 33.845993, 46.400520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354469, 33.266060, 46.985973>,  <33.282795, 33.246571, 46.220997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354469, 33.266060, 46.985973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588146, 33.576729, 46.891743>,  <33.728352, 33.763130, 46.835205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588146, 33.576729, 46.891743>,  <33.354469, 33.266060, 46.985973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588146, 33.576729, 46.891743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238246, 0.113365, 0.964566,
		0.775856, -0.619622, -0.118811,
		0.584197, 0.776671, -0.235577,
		33.763405, 33.809731, 46.821068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924969, 33.195705, 47.351006>,  <33.354469, 33.266060, 46.985973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924969, 33.195705, 47.351006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883183, 33.583351, 47.261650>,  <33.858109, 33.815937, 47.208038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883183, 33.583351, 47.261650>,  <33.924969, 33.195705, 47.351006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883183, 33.583351, 47.261650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084691, 0.232471, 0.968909,
		0.990916, 0.082301, -0.106361,
		-0.104468, 0.969115, -0.223389,
		33.851841, 33.874084, 47.194633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403278, 33.452354, 47.794537>,  <33.924969, 33.195705, 47.351006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403278, 33.452354, 47.794537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146667, 33.739445, 47.686230>,  <33.992702, 33.911697, 47.621246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146667, 33.739445, 47.686230>,  <34.403278, 33.452354, 47.794537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146667, 33.739445, 47.686230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058633, 0.306064, 0.950204,
		0.764856, 0.625458, -0.154266,
		-0.641527, 0.717724, -0.270767,
		33.954208, 33.954762, 47.605000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642433, 34.173351, 48.094837>,  <34.403278, 33.452354, 47.794537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642433, 34.173351, 48.094837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250778, 34.172859, 48.013554>,  <34.015785, 34.172565, 47.964783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250778, 34.172859, 48.013554>,  <34.642433, 34.173351, 48.094837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250778, 34.172859, 48.013554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184487, 0.424612, 0.886380,
		0.085195, 0.905374, -0.415980,
		-0.979135, -0.001227, -0.203204,
		33.957039, 34.172489, 47.952591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143696, 34.713188, 47.906742>,  <34.642433, 34.173351, 48.094837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143696, 34.713188, 47.906742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514717, 34.793251, 48.032967>,  <35.737331, 34.841290, 48.108700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514717, 34.793251, 48.032967>,  <35.143696, 34.713188, 47.906742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514717, 34.793251, 48.032967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349483, -0.165683, -0.922177,
		-0.132301, 0.965653, -0.223632,
		0.927555, 0.200161, 0.315559,
		35.792984, 34.853298, 48.127636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375725, 35.307304, 47.568954>,  <35.143696, 34.713188, 47.906742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375725, 35.307304, 47.568954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684837, 35.078457, 47.678856>,  <35.870304, 34.941151, 47.744797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684837, 35.078457, 47.678856>,  <35.375725, 35.307304, 47.568954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684837, 35.078457, 47.678856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346288, 0.017300, -0.937969,
		0.531872, 0.819991, 0.211485,
		0.772785, -0.572114, 0.274752,
		35.916672, 34.906822, 47.761280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006351, 35.576561, 47.192406>,  <35.375725, 35.307304, 47.568954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006351, 35.576561, 47.192406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111973, 35.212090, 47.318913>,  <36.175346, 34.993408, 47.394817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111973, 35.212090, 47.318913>,  <36.006351, 35.576561, 47.192406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111973, 35.212090, 47.318913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448366, -0.174360, -0.876679,
		0.853957, 0.373296, 0.362501,
		0.264055, -0.911180, 0.316269,
		36.191189, 34.938736, 47.413792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646713, 35.553471, 47.104416>,  <36.006351, 35.576561, 47.192406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646713, 35.553471, 47.104416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505875, 35.179813, 47.081062>,  <36.421371, 34.955620, 47.067051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505875, 35.179813, 47.081062>,  <36.646713, 35.553471, 47.104416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505875, 35.179813, 47.081062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506569, -0.137743, -0.851126,
		0.787028, -0.329257, 0.521705,
		-0.352100, -0.934140, -0.058384,
		36.400246, 34.899570, 47.063545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197334, 35.225113, 46.969231>,  <36.646713, 35.553471, 47.104416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197334, 35.225113, 46.969231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908230, 34.968914, 46.865395>,  <36.734768, 34.815197, 46.803093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908230, 34.968914, 46.865395>,  <37.197334, 35.225113, 46.969231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908230, 34.968914, 46.865395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451435, -0.153129, -0.879067,
		0.523285, -0.752542, 0.399817,
		-0.722758, -0.640494, -0.259593,
		36.691402, 34.776768, 46.787518>
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
