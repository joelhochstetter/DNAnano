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
	<24.194992, 35.403870, 34.548733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414557, 35.284016, 34.860863>,  <24.546295, 35.212101, 35.048141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414557, 35.284016, 34.860863>,  <24.194992, 35.403870, 34.548733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414557, 35.284016, 34.860863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708876, -0.327812, -0.624527,
		0.442932, 0.895967, 0.032465,
		0.548913, -0.299637, 0.780328,
		24.579231, 35.194126, 35.094963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850203, 35.612553, 34.397179>,  <24.194992, 35.403870, 34.548733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850203, 35.612553, 34.397179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871250, 35.301239, 34.647461>,  <24.883879, 35.114452, 34.797630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871250, 35.301239, 34.647461>,  <24.850203, 35.612553, 34.397179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871250, 35.301239, 34.647461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742416, -0.388558, -0.545748,
		0.667869, 0.493249, 0.557365,
		0.052621, -0.778285, 0.625702,
		24.887037, 35.067753, 34.835171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593399, 35.567371, 34.448933>,  <24.850203, 35.612553, 34.397179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593399, 35.567371, 34.448933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423838, 35.221882, 34.557957>,  <25.322102, 35.014587, 34.623371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423838, 35.221882, 34.557957>,  <25.593399, 35.567371, 34.448933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423838, 35.221882, 34.557957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713744, -0.503831, -0.486543,
		0.557564, -0.011706, 0.830052,
		-0.423901, -0.863723, 0.272563,
		25.296667, 34.962765, 34.639725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276020, 35.362911, 34.861118>,  <25.593399, 35.567371, 34.448933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276020, 35.362911, 34.861118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051184, 35.249222, 34.550434>,  <25.916283, 35.181007, 34.364025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051184, 35.249222, 34.550434>,  <26.276020, 35.362911, 34.861118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051184, 35.249222, 34.550434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289441, 0.947314, -0.137187,
		0.774777, 0.147699, -0.614740,
		-0.562089, -0.284220, -0.776708,
		25.882557, 35.163956, 34.317421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409716, 35.469505, 34.112293>,  <26.276020, 35.362911, 34.861118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409716, 35.469505, 34.112293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290968, 35.620762, 33.761551>,  <26.219719, 35.711517, 33.551105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290968, 35.620762, 33.761551>,  <26.409716, 35.469505, 34.112293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.290968, 35.620762, 33.761551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730123, -0.501943, -0.463652,
		-0.615458, -0.777858, -0.127076,
		-0.296871, 0.378140, -0.876857,
		26.201906, 35.734203, 33.498493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346661, 34.884727, 33.531204>,  <26.409716, 35.469505, 34.112293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346661, 34.884727, 33.531204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443651, 35.230503, 33.355045>,  <26.501846, 35.437969, 33.249348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443651, 35.230503, 33.355045>,  <26.346661, 34.884727, 33.531204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443651, 35.230503, 33.355045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677405, -0.475823, -0.560995,
		-0.694498, -0.162301, -0.700951,
		0.242478, 0.864437, -0.440401,
		26.516394, 35.489834, 33.222923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277847, 34.946693, 32.834530>,  <26.346661, 34.884727, 33.531204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277847, 34.946693, 32.834530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561924, 35.223404, 32.886799>,  <26.732370, 35.389431, 32.918159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561924, 35.223404, 32.886799>,  <26.277847, 34.946693, 32.834530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561924, 35.223404, 32.886799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404114, -0.248594, -0.880280,
		-0.576472, 0.677974, -0.456105,
		0.710192, 0.691775, 0.130672,
		26.774982, 35.430935, 32.925999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114315, 35.531113, 32.398327>,  <26.277847, 34.946693, 32.834530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.114315, 35.531113, 32.398327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507208, 35.473896, 32.446918>,  <26.742945, 35.439568, 32.476074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507208, 35.473896, 32.446918>,  <26.114315, 35.531113, 32.398327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507208, 35.473896, 32.446918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064315, -0.351559, -0.933954,
		0.176298, 0.925174, -0.336114,
		0.982233, -0.143037, 0.121482,
		26.801878, 35.430984, 32.483364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478474, 35.838055, 31.853537>,  <26.114315, 35.531113, 32.398327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478474, 35.838055, 31.853537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721544, 35.535694, 31.950979>,  <26.867386, 35.354279, 32.009445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721544, 35.535694, 31.950979>,  <26.478474, 35.838055, 31.853537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721544, 35.535694, 31.950979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113146, -0.221205, -0.968641,
		0.786084, 0.616182, -0.048894,
		0.607675, -0.755902, 0.243604,
		26.903847, 35.308922, 32.024059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096254, 35.967670, 31.618942>,  <26.478474, 35.838055, 31.853537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096254, 35.967670, 31.618942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042286, 35.572380, 31.647778>,  <27.009905, 35.335205, 31.665079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042286, 35.572380, 31.647778>,  <27.096254, 35.967670, 31.618942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042286, 35.572380, 31.647778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137939, -0.053311, -0.989005,
		0.981208, -0.143384, -0.129122,
		-0.134923, -0.988230, 0.072088,
		27.001808, 35.275909, 31.669403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483757, 35.668224, 31.034853>,  <27.096254, 35.967670, 31.618942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483757, 35.668224, 31.034853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222002, 35.387138, 31.146544>,  <27.064949, 35.218487, 31.213558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222002, 35.387138, 31.146544>,  <27.483757, 35.668224, 31.034853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222002, 35.387138, 31.146544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126779, -0.262082, -0.956682,
		0.745455, -0.661441, 0.082414,
		-0.654388, -0.702715, 0.279227,
		27.025686, 35.176323, 31.230312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545816, 34.991241, 30.657005>,  <27.483757, 35.668224, 31.034853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545816, 34.991241, 30.657005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166376, 35.021660, 30.779888>,  <26.938713, 35.039909, 30.853617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166376, 35.021660, 30.779888>,  <27.545816, 34.991241, 30.657005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166376, 35.021660, 30.779888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316477, -0.229540, -0.920410,
		0.000527, -0.970324, 0.241807,
		-0.948600, 0.076041, 0.307207,
		26.881796, 35.044472, 30.872049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183285, 35.114311, 29.966549>,  <27.545816, 34.991241, 30.657005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183285, 35.114311, 29.966549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.893175, 34.844994, 29.909052>,  <26.719110, 34.683403, 29.874554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.893175, 34.844994, 29.909052>,  <27.183285, 35.114311, 29.966549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893175, 34.844994, 29.909052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130927, -0.070087, 0.988912,
		-0.675899, 0.736049, -0.037319,
		-0.725272, -0.673290, -0.143741,
		26.675594, 34.643005, 29.865931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568470, 35.380318, 30.169554>,  <27.183285, 35.114311, 29.966549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568470, 35.380318, 30.169554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568359, 34.983459, 30.219584>,  <26.568293, 34.745342, 30.249601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568359, 34.983459, 30.219584>,  <26.568470, 35.380318, 30.169554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568359, 34.983459, 30.219584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042724, 0.124946, 0.991243,
		-0.999087, 0.005619, 0.042354,
		-0.000278, -0.992148, 0.125072,
		26.568275, 34.685814, 30.257105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025713, 35.242844, 30.621078>,  <26.568470, 35.380318, 30.169554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025713, 35.242844, 30.621078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284538, 34.937973, 30.629101>,  <26.439833, 34.755051, 30.633915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284538, 34.937973, 30.629101>,  <26.025713, 35.242844, 30.621078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284538, 34.937973, 30.629101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093558, -0.053267, 0.994188,
		-0.756675, -0.645177, -0.105775,
		0.647062, -0.762174, 0.020055,
		26.478657, 34.709320, 30.635117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801296, 34.694923, 31.084148>,  <26.025713, 35.242844, 30.621078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801296, 34.694923, 31.084148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199223, 34.672787, 31.050018>,  <26.437979, 34.659504, 31.029541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199223, 34.672787, 31.050018>,  <25.801296, 34.694923, 31.084148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199223, 34.672787, 31.050018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082615, -0.049521, 0.995350,
		-0.059333, -0.997237, -0.044690,
		0.994814, -0.055365, -0.085325,
		26.497667, 34.656185, 31.024422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165604, 34.250164, 31.604246>,  <25.801296, 34.694923, 31.084148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165604, 34.250164, 31.604246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452944, 34.505993, 31.494755>,  <26.625347, 34.659489, 31.429060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452944, 34.505993, 31.494755>,  <26.165604, 34.250164, 31.604246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452944, 34.505993, 31.494755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348056, 0.010278, 0.937417,
		0.602356, -0.768665, -0.215222,
		0.718348, 0.639569, -0.273730,
		26.668447, 34.697865, 31.412636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759676, 34.017429, 31.846949>,  <26.165604, 34.250164, 31.604246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759676, 34.017429, 31.846949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830053, 34.405575, 31.780680>,  <26.872280, 34.638462, 31.740917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830053, 34.405575, 31.780680>,  <26.759676, 34.017429, 31.846949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830053, 34.405575, 31.780680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404553, 0.082156, 0.910817,
		0.897431, -0.227275, -0.378107,
		0.175942, 0.970359, -0.165674,
		26.882835, 34.696682, 31.730978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337934, 34.130505, 32.121758>,  <26.759676, 34.017429, 31.846949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337934, 34.130505, 32.121758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190559, 34.502365, 32.121319>,  <27.102135, 34.725483, 32.121056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190559, 34.502365, 32.121319>,  <27.337934, 34.130505, 32.121758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190559, 34.502365, 32.121319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365280, 0.145852, 0.919401,
		0.854883, 0.338340, -0.393321,
		-0.368437, 0.929652, -0.001097,
		27.080029, 34.781261, 32.120991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891779, 34.524494, 32.150124>,  <27.337934, 34.130505, 32.121758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891779, 34.524494, 32.150124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555447, 34.659229, 32.319614>,  <27.353647, 34.740070, 32.421307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555447, 34.659229, 32.319614>,  <27.891779, 34.524494, 32.150124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555447, 34.659229, 32.319614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443579, -0.019855, 0.896015,
		0.310222, 0.941354, -0.132718,
		-0.840833, 0.336835, 0.423725,
		27.303196, 34.760281, 32.446732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010939, 35.201275, 32.499275>,  <27.891779, 34.524494, 32.150124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010939, 35.201275, 32.499275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738018, 34.961983, 32.667362>,  <27.574266, 34.818409, 32.768215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738018, 34.961983, 32.667362>,  <28.010939, 35.201275, 32.499275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738018, 34.961983, 32.667362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605377, -0.140078, 0.783516,
		-0.409860, 0.788986, 0.457730,
		-0.682301, -0.598231, 0.420221,
		27.533327, 34.782513, 32.793430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798388, 35.386593, 33.115173>,  <28.010939, 35.201275, 32.499275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798388, 35.386593, 33.115173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714403, 34.997143, 33.150898>,  <27.664013, 34.763474, 33.172333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714403, 34.997143, 33.150898>,  <27.798388, 35.386593, 33.115173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714403, 34.997143, 33.150898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476185, -0.022054, 0.879068,
		-0.853911, 0.227095, 0.468255,
		-0.209959, -0.973623, 0.089307,
		27.651415, 34.705055, 33.177689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375267, 35.161366, 33.743736>,  <27.798388, 35.386593, 33.115173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375267, 35.161366, 33.743736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643261, 34.883732, 33.638390>,  <27.804056, 34.717152, 33.575180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643261, 34.883732, 33.638390>,  <27.375267, 35.161366, 33.743736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643261, 34.883732, 33.638390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374623, 0.009821, 0.927125,
		-0.640921, -0.719822, 0.266602,
		0.669984, -0.694089, -0.263367,
		27.844255, 34.675507, 33.559380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352972, 34.590950, 34.201359>,  <27.375267, 35.161366, 33.743736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352972, 34.590950, 34.201359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716135, 34.647739, 34.043602>,  <27.934032, 34.681812, 33.948948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716135, 34.647739, 34.043602>,  <27.352972, 34.590950, 34.201359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716135, 34.647739, 34.043602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328742, 0.342576, 0.880097,
		0.260058, -0.928701, 0.264356,
		0.907909, 0.141971, -0.394393,
		27.988508, 34.690331, 33.925285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851376, 34.228550, 34.653606>,  <27.352972, 34.590950, 34.201359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851376, 34.228550, 34.653606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958523, 34.559059, 34.455402>,  <28.022812, 34.757362, 34.336479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958523, 34.559059, 34.455402>,  <27.851376, 34.228550, 34.653606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958523, 34.559059, 34.455402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231202, 0.444145, 0.865610,
		0.935304, -0.346431, -0.072063,
		0.267867, 0.826269, -0.495507,
		28.038883, 34.806938, 34.306751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578642, 34.537045, 34.723957>,  <27.851376, 34.228550, 34.653606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578642, 34.537045, 34.723957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295305, 34.811584, 34.658012>,  <28.125303, 34.976307, 34.618446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295305, 34.811584, 34.658012>,  <28.578642, 34.537045, 34.723957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295305, 34.811584, 34.658012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160407, 0.383966, 0.909307,
		0.687402, 0.617655, -0.382074,
		-0.708341, 0.686347, -0.164863,
		28.082804, 35.017490, 34.608555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835623, 35.210026, 34.807529>,  <28.578642, 34.537045, 34.723957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835623, 35.210026, 34.807529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445007, 35.215542, 34.893494>,  <28.210638, 35.218853, 34.945072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445007, 35.215542, 34.893494>,  <28.835623, 35.210026, 34.807529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445007, 35.215542, 34.893494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180681, 0.595465, 0.782800,
		-0.117176, 0.803263, -0.583985,
		-0.976537, 0.013789, 0.214908,
		28.152046, 35.219677, 34.957966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058481, 35.189751, 35.616447>,  <28.835623, 35.210026, 34.807529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058481, 35.189751, 35.616447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183416, 35.569725, 35.619473>,  <29.258377, 35.797710, 35.621288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183416, 35.569725, 35.619473>,  <29.058481, 35.189751, 35.616447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183416, 35.569725, 35.619473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666955, 0.213613, 0.713821,
		0.676472, -0.227997, 0.700288,
		0.312340, 0.949940, 0.007561,
		29.277119, 35.854706, 35.621742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900433, 35.335808, 36.267452>,  <29.058481, 35.189751, 35.616447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900433, 35.335808, 36.267452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995399, 35.693413, 36.115467>,  <29.052380, 35.907978, 36.024277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995399, 35.693413, 36.115467>,  <28.900433, 35.335808, 36.267452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995399, 35.693413, 36.115467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545324, 0.446357, 0.709498,
		0.803900, 0.038756, 0.593500,
		0.237416, 0.894015, -0.379961,
		29.066624, 35.961617, 36.001480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199394, 34.858799, 36.430237>,  <28.900433, 35.335808, 36.267452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199394, 34.858799, 36.430237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373405, 34.601505, 36.178207>,  <29.477812, 34.447128, 36.026989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373405, 34.601505, 36.178207>,  <29.199394, 34.858799, 36.430237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373405, 34.601505, 36.178207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881513, 0.161616, 0.443638,
		-0.183535, -0.748415, 0.637331,
		0.435028, -0.643239, -0.630075,
		29.503914, 34.408535, 35.989185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689230, 34.647682, 36.869316>,  <29.199394, 34.858799, 36.430237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689230, 34.647682, 36.869316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794634, 34.547127, 36.496788>,  <29.857876, 34.486794, 36.273270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794634, 34.547127, 36.496788>,  <29.689230, 34.647682, 36.869316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794634, 34.547127, 36.496788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964656, 0.067447, 0.254734,
		-0.001223, -0.965533, 0.260278,
		0.263509, -0.251390, -0.931325,
		29.873686, 34.471710, 36.217392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164623, 34.233444, 37.058895>,  <29.689230, 34.647682, 36.869316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164623, 34.233444, 37.058895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222612, 34.356266, 36.682659>,  <30.257406, 34.429958, 36.456917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222612, 34.356266, 36.682659>,  <30.164623, 34.233444, 37.058895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222612, 34.356266, 36.682659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987094, 0.020485, 0.158827,
		0.068036, -0.951472, -0.300119,
		0.144972, 0.307052, -0.940586,
		30.266104, 34.448383, 36.400482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594631, 33.674034, 36.696491>,  <30.164623, 34.233444, 37.058895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594631, 33.674034, 36.696491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603947, 34.060474, 36.593651>,  <30.609535, 34.292339, 36.531944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603947, 34.060474, 36.593651>,  <30.594631, 33.674034, 36.696491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603947, 34.060474, 36.593651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998852, -0.011716, 0.046445,
		0.041858, -0.257891, -0.965267,
		0.023287, 0.966103, -0.257104,
		30.610933, 34.350304, 36.516518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243347, 33.340881, 36.786716>,  <30.594631, 33.674034, 36.696491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243347, 33.340881, 36.786716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279318, 32.942596, 36.778126>,  <31.300901, 32.703625, 36.772972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279318, 32.942596, 36.778126>,  <31.243347, 33.340881, 36.786716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279318, 32.942596, 36.778126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155477, -0.035332, 0.987207,
		-0.983738, -0.085439, -0.157988,
		0.089928, -0.995717, -0.021474,
		31.306295, 32.643883, 36.771683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768927, 33.171921, 37.374355>,  <31.243347, 33.340881, 36.786716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768927, 33.171921, 37.374355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060984, 32.918335, 37.272392>,  <31.236217, 32.766182, 37.211216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060984, 32.918335, 37.272392>,  <30.768927, 33.171921, 37.374355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060984, 32.918335, 37.272392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117869, -0.250604, 0.960887,
		-0.673052, -0.731630, -0.108251,
		0.730142, -0.633968, -0.254906,
		31.280025, 32.728146, 37.195919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739214, 32.483074, 37.568104>,  <30.768927, 33.171921, 37.374355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739214, 32.483074, 37.568104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117220, 32.613564, 37.558968>,  <31.344025, 32.691856, 37.553486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117220, 32.613564, 37.558968>,  <30.739214, 32.483074, 37.568104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117220, 32.613564, 37.558968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093440, -0.202436, 0.974828,
		0.313391, -0.923362, -0.221788,
		0.945017, 0.326226, -0.022837,
		31.400724, 32.711430, 37.552116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240850, 32.047913, 37.856709>,  <30.739214, 32.483074, 37.568104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240850, 32.047913, 37.856709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303566, 32.436298, 37.928982>,  <31.341194, 32.669331, 37.972347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303566, 32.436298, 37.928982>,  <31.240850, 32.047913, 37.856709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303566, 32.436298, 37.928982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248076, -0.138363, 0.958809,
		0.955969, -0.195151, 0.219179,
		0.156786, 0.970964, 0.180683,
		31.350601, 32.727589, 37.983185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481722, 32.087986, 38.529915>,  <31.240850, 32.047913, 37.856709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481722, 32.087986, 38.529915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304974, 32.433285, 38.432293>,  <31.198925, 32.640465, 38.373722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304974, 32.433285, 38.432293>,  <31.481722, 32.087986, 38.529915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304974, 32.433285, 38.432293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447227, 0.023851, 0.894102,
		0.777648, 0.504225, 0.375527,
		-0.441872, 0.863243, -0.244051,
		31.172413, 32.692257, 38.359077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602308, 32.652622, 39.085953>,  <31.481722, 32.087986, 38.529915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602308, 32.652622, 39.085953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274817, 32.700623, 38.861351>,  <31.078321, 32.729424, 38.726589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274817, 32.700623, 38.861351>,  <31.602308, 32.652622, 39.085953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274817, 32.700623, 38.861351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564637, 0.009307, 0.825287,
		0.104262, 0.992730, 0.060137,
		-0.818727, 0.120002, -0.561503,
		31.029198, 32.736622, 38.692902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213034, 33.217491, 39.332207>,  <31.602308, 32.652622, 39.085953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213034, 33.217491, 39.332207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949268, 33.000160, 39.124374>,  <30.791010, 32.869762, 38.999676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949268, 33.000160, 39.124374>,  <31.213034, 33.217491, 39.332207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949268, 33.000160, 39.124374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626789, 0.015718, 0.779030,
		-0.415104, 0.839372, -0.350918,
		-0.659412, -0.543330, -0.519585,
		30.751444, 32.837162, 38.968498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552881, 33.591297, 39.341354>,  <31.213034, 33.217491, 39.332207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552881, 33.591297, 39.341354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492107, 33.200085, 39.284256>,  <30.455643, 32.965359, 39.249996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492107, 33.200085, 39.284256>,  <30.552881, 33.591297, 39.341354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492107, 33.200085, 39.284256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625394, -0.016707, 0.780130,
		-0.765374, 0.207799, -0.609115,
		-0.151934, -0.978029, -0.142743,
		30.446527, 32.906677, 39.241432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874220, 33.448147, 39.271362>,  <30.552881, 33.591297, 39.341354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874220, 33.448147, 39.271362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048624, 33.124752, 39.429474>,  <30.153267, 32.930714, 39.524342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048624, 33.124752, 39.429474>,  <29.874220, 33.448147, 39.271362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048624, 33.124752, 39.429474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494556, 0.151702, 0.855804,
		-0.751871, -0.568627, -0.333698,
		0.436011, -0.808486, 0.395278,
		30.179428, 32.882206, 39.548058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809210, 32.956055, 38.659184>,  <29.874220, 33.448147, 39.271362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809210, 32.956055, 38.659184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120897, 32.918407, 38.411327>,  <30.307909, 32.895817, 38.262611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120897, 32.918407, 38.411327>,  <29.809210, 32.956055, 38.659184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120897, 32.918407, 38.411327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439819, 0.786467, 0.433623,
		0.446517, -0.610418, 0.654227,
		0.779219, -0.094121, -0.619644,
		30.354664, 32.890171, 38.225433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049295, 33.228825, 38.035183>,  <29.809210, 32.956055, 38.659184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049295, 33.228825, 38.035183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368074, 33.133686, 38.257282>,  <30.559341, 33.076603, 38.390541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368074, 33.133686, 38.257282>,  <30.049295, 33.228825, 38.035183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368074, 33.133686, 38.257282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598297, 0.184248, -0.779804,
		0.083167, 0.953668, 0.289138,
		0.796947, -0.237844, 0.555253,
		30.607159, 33.062332, 38.423859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630854, 33.837749, 38.051258>,  <30.049295, 33.228825, 38.035183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630854, 33.837749, 38.051258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791739, 33.481186, 38.134804>,  <30.888269, 33.267250, 38.184933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791739, 33.481186, 38.134804>,  <30.630854, 33.837749, 38.051258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791739, 33.481186, 38.134804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693859, 0.147946, -0.704749,
		0.597316, 0.428380, 0.678015,
		0.402210, -0.891405, 0.208865,
		30.912401, 33.213764, 38.197464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408245, 34.014637, 38.054790>,  <30.630854, 33.837749, 38.051258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408245, 34.014637, 38.054790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374218, 33.617050, 38.027077>,  <31.353802, 33.378498, 38.010448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374218, 33.617050, 38.027077>,  <31.408245, 34.014637, 38.054790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374218, 33.617050, 38.027077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677751, -0.006751, -0.735261,
		0.730354, -0.109506, 0.674234,
		-0.085067, -0.993963, -0.069287,
		31.348698, 33.318863, 38.006290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008961, 33.747211, 38.378815>,  <31.408245, 34.014637, 38.054790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008961, 33.747211, 38.378815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867340, 33.520866, 38.080971>,  <31.782368, 33.385059, 37.902264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867340, 33.520866, 38.080971>,  <32.008961, 33.747211, 38.378815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867340, 33.520866, 38.080971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791419, 0.242935, -0.560926,
		0.498300, -0.787896, 0.361824,
		-0.354052, -0.565864, -0.744611,
		31.761124, 33.351109, 37.857586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553543, 33.347313, 38.193691>,  <32.008961, 33.747211, 38.378815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553543, 33.347313, 38.193691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298744, 33.391262, 37.888493>,  <32.145866, 33.417629, 37.705372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298744, 33.391262, 37.888493>,  <32.553543, 33.347313, 38.193691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298744, 33.391262, 37.888493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767480, 0.183097, -0.614370,
		0.072203, -0.976936, -0.200955,
		-0.636994, 0.109869, -0.762999,
		32.107647, 33.424221, 37.659592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643524, 33.695938, 37.447956>,  <32.553543, 33.347313, 38.193691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643524, 33.695938, 37.447956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986496, 33.536877, 37.317307>,  <33.192280, 33.441441, 37.238914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986496, 33.536877, 37.317307>,  <32.643524, 33.695938, 37.447956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986496, 33.536877, 37.317307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251316, -0.877464, 0.408530,
		-0.449056, -0.268200, -0.852302,
		0.857432, -0.397649, -0.326628,
		33.243725, 33.417583, 37.219318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503521, 33.001621, 37.109276>,  <32.643524, 33.695938, 37.447956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503521, 33.001621, 37.109276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852268, 33.063786, 37.295048>,  <33.061516, 33.101082, 37.406509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852268, 33.063786, 37.295048>,  <32.503521, 33.001621, 37.109276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852268, 33.063786, 37.295048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175353, -0.786382, 0.592330,
		0.457269, -0.597873, -0.658371,
		0.871869, 0.155407, 0.464427,
		33.113831, 33.110409, 37.434376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758190, 32.317272, 37.156227>,  <32.503521, 33.001621, 37.109276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758190, 32.317272, 37.156227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977932, 32.513157, 37.427044>,  <33.109779, 32.630688, 37.589535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977932, 32.513157, 37.427044>,  <32.758190, 32.317272, 37.156227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977932, 32.513157, 37.427044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069277, -0.834164, 0.547148,
		0.832711, -0.253677, -0.492180,
		0.549357, 0.489713, 0.677044,
		33.142738, 32.660072, 37.630157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230618, 31.769012, 37.301346>,  <32.758190, 32.317272, 37.156227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230618, 31.769012, 37.301346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231724, 32.044014, 37.591816>,  <33.232388, 32.209015, 37.766098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231724, 32.044014, 37.591816>,  <33.230618, 31.769012, 37.301346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231724, 32.044014, 37.591816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209222, -0.710503, 0.671872,
		0.977864, 0.150075, -0.145804,
		0.002763, 0.687505, 0.726174,
		33.232552, 32.250267, 37.809669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644947, 31.423336, 37.655762>,  <33.230618, 31.769012, 37.301346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644947, 31.423336, 37.655762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530823, 31.714489, 37.905170>,  <33.462349, 31.889181, 38.054817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530823, 31.714489, 37.905170>,  <33.644947, 31.423336, 37.655762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530823, 31.714489, 37.905170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221809, -0.582758, 0.781789,
		0.932415, 0.361357, 0.004817,
		-0.285312, 0.727884, 0.623524,
		33.445229, 31.932854, 38.092228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861294, 31.154480, 38.232193>,  <33.644947, 31.423336, 37.655762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861294, 31.154480, 38.232193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697582, 31.484079, 38.388916>,  <33.599354, 31.681839, 38.482952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697582, 31.484079, 38.388916>,  <33.861294, 31.154480, 38.232193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697582, 31.484079, 38.388916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129014, -0.372844, 0.918881,
		0.903243, 0.426626, 0.046289,
		-0.409277, 0.824001, 0.391810,
		33.574799, 31.731279, 38.506458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297195, 31.443913, 38.676102>,  <33.861294, 31.154480, 38.232193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297195, 31.443913, 38.676102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929325, 31.558130, 38.783928>,  <33.708603, 31.626661, 38.848621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929325, 31.558130, 38.783928>,  <34.297195, 31.443913, 38.676102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929325, 31.558130, 38.783928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145321, -0.390241, 0.909172,
		0.364805, 0.875315, 0.317399,
		-0.919673, 0.285546, 0.269563,
		33.653423, 31.643795, 38.864796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355148, 31.614962, 39.375854>,  <34.297195, 31.443913, 38.676102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355148, 31.614962, 39.375854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956024, 31.601412, 39.353142>,  <33.716549, 31.593283, 39.339516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956024, 31.601412, 39.353142>,  <34.355148, 31.614962, 39.375854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956024, 31.601412, 39.353142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058721, 0.059289, 0.996512,
		-0.030390, 0.997666, -0.061148,
		-0.997812, -0.033875, -0.056782,
		33.656681, 31.591249, 39.336109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948021, 32.100636, 39.827679>,  <34.355148, 31.614962, 39.375854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948021, 32.100636, 39.827679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716129, 31.775278, 39.808491>,  <33.576992, 31.580063, 39.796978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716129, 31.775278, 39.808491>,  <33.948021, 32.100636, 39.827679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716129, 31.775278, 39.808491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371040, 0.211120, 0.904299,
		-0.725424, 0.542051, -0.424195,
		-0.579732, -0.813393, -0.047971,
		33.542210, 31.531260, 39.794098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128235, 32.329151, 40.014843>,  <33.948021, 32.100636, 39.827679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128235, 32.329151, 40.014843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151455, 31.939379, 40.101665>,  <33.165386, 31.705515, 40.153759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151455, 31.939379, 40.101665>,  <33.128235, 32.329151, 40.014843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151455, 31.939379, 40.101665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558530, 0.148508, 0.816082,
		-0.827451, -0.168601, -0.535629,
		0.058046, -0.974433, 0.217052,
		33.168869, 31.647049, 40.166782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501663, 32.164799, 40.163303>,  <33.128235, 32.329151, 40.014843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501663, 32.164799, 40.163303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722607, 31.883858, 40.342899>,  <32.855175, 31.715292, 40.450657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722607, 31.883858, 40.342899>,  <32.501663, 32.164799, 40.163303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722607, 31.883858, 40.342899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461253, 0.191137, 0.866436,
		-0.694366, -0.685685, -0.218387,
		0.552360, -0.702355, 0.448994,
		32.888313, 31.673151, 40.477596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179512, 32.709972, 40.008732>,  <32.501663, 32.164799, 40.163303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179512, 32.709972, 40.008732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963770, 32.998814, 39.835449>,  <31.834326, 33.172119, 39.731480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963770, 32.998814, 39.835449>,  <32.179512, 32.709972, 40.008732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963770, 32.998814, 39.835449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754552, 0.642816, 0.132059,
		0.373830, -0.255648, -0.891569,
		-0.539354, 0.722103, -0.433203,
		31.801964, 33.215443, 39.705486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607475, 33.026131, 39.475513>,  <32.179512, 32.709972, 40.008732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607475, 33.026131, 39.475513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338139, 33.233971, 39.685894>,  <32.176537, 33.358673, 39.812122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338139, 33.233971, 39.685894>,  <32.607475, 33.026131, 39.475513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338139, 33.233971, 39.685894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697413, 0.682527, 0.218567,
		-0.245409, 0.513977, -0.821950,
		-0.673342, 0.519601, 0.525952,
		32.136135, 33.389851, 39.843681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679054, 33.615608, 39.231113>,  <32.607475, 33.026131, 39.475513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679054, 33.615608, 39.231113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540958, 33.663853, 39.603409>,  <32.458103, 33.692799, 39.826786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540958, 33.663853, 39.603409>,  <32.679054, 33.615608, 39.231113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540958, 33.663853, 39.603409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648770, 0.747273, 0.143810,
		-0.678167, 0.653480, -0.336233,
		-0.345235, 0.120610, 0.930734,
		32.437389, 33.700035, 39.882629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078350, 33.239571, 38.746037>,  <32.679054, 33.615608, 39.231113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078350, 33.239571, 38.746037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207672, 32.949635, 38.502697>,  <33.285263, 32.775673, 38.356693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207672, 32.949635, 38.502697>,  <33.078350, 33.239571, 38.746037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207672, 32.949635, 38.502697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146058, 0.673390, -0.724716,
		0.934955, 0.145450, 0.323578,
		0.323304, -0.724838, -0.608346,
		33.304665, 32.732182, 38.320194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783646, 33.357227, 38.512604>,  <33.078350, 33.239571, 38.746037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783646, 33.357227, 38.512604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590622, 33.152000, 38.228661>,  <33.474808, 33.028866, 38.058292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590622, 33.152000, 38.228661>,  <33.783646, 33.357227, 38.512604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590622, 33.152000, 38.228661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358183, 0.624000, -0.694499,
		0.799278, -0.589394, -0.117343,
		-0.482556, -0.513067, -0.709860,
		33.445854, 32.998081, 38.015701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251358, 33.405754, 37.911472>,  <33.783646, 33.357227, 38.512604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251358, 33.405754, 37.911472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891819, 33.295731, 37.774990>,  <33.676094, 33.229717, 37.693100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891819, 33.295731, 37.774990>,  <34.251358, 33.405754, 37.911472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891819, 33.295731, 37.774990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175997, 0.486459, -0.855793,
		0.401372, -0.829278, -0.388843,
		-0.898847, -0.275057, -0.341202,
		33.622166, 33.213215, 37.672630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378025, 33.285603, 37.273624>,  <34.251358, 33.405754, 37.911472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378025, 33.285603, 37.273624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007957, 33.427959, 37.326405>,  <33.785919, 33.513374, 37.358070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007957, 33.427959, 37.326405>,  <34.378025, 33.285603, 37.273624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007957, 33.427959, 37.326405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067529, 0.496414, -0.865455,
		-0.373510, -0.791779, -0.483298,
		-0.925165, 0.355893, 0.131947,
		33.730408, 33.534729, 37.365990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970455, 33.136761, 36.651218>,  <34.378025, 33.285603, 37.273624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970455, 33.136761, 36.651218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783638, 33.448105, 36.819038>,  <33.671547, 33.634911, 36.919731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783638, 33.448105, 36.819038>,  <33.970455, 33.136761, 36.651218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783638, 33.448105, 36.819038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009860, 0.479039, -0.877738,
		-0.884177, -0.405808, -0.231409,
		-0.467047, 0.778358, 0.419554,
		33.643524, 33.681614, 36.944904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238525, 33.182987, 36.457500>,  <33.970455, 33.136761, 36.651218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238525, 33.182987, 36.457500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436005, 33.520424, 36.541996>,  <33.554493, 33.722885, 36.592693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436005, 33.520424, 36.541996>,  <33.238525, 33.182987, 36.457500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436005, 33.520424, 36.541996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071049, 0.281225, -0.957008,
		-0.866727, 0.457463, 0.198776,
		0.493696, 0.843588, 0.211243,
		33.584114, 33.773499, 36.605370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936295, 33.653111, 36.095123>,  <33.238525, 33.182987, 36.457500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936295, 33.653111, 36.095123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285873, 33.833813, 36.166832>,  <33.495621, 33.942234, 36.209858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285873, 33.833813, 36.166832>,  <32.936295, 33.653111, 36.095123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285873, 33.833813, 36.166832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066770, 0.253765, -0.964959,
		-0.481418, 0.855290, 0.191612,
		0.873944, 0.451754, 0.179275,
		33.548058, 33.969337, 36.220615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762463, 34.401100, 36.039028>,  <32.936295, 33.653111, 36.095123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762463, 34.401100, 36.039028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158295, 34.389099, 35.982700>,  <33.395794, 34.381897, 35.948902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158295, 34.389099, 35.982700>,  <32.762463, 34.401100, 36.039028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158295, 34.389099, 35.982700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117314, 0.399044, -0.909396,
		0.083478, 0.916441, 0.391366,
		0.989580, -0.030002, -0.140822,
		33.455170, 34.380100, 35.940453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895790, 34.988400, 35.764473>,  <32.762463, 34.401100, 36.039028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895790, 34.988400, 35.764473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228031, 34.783966, 35.676022>,  <33.427376, 34.661308, 35.622952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228031, 34.783966, 35.676022>,  <32.895790, 34.988400, 35.764473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228031, 34.783966, 35.676022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043612, 0.336172, -0.940790,
		0.555157, 0.791066, 0.256936,
		0.830602, -0.511080, -0.221128,
		33.477211, 34.630642, 35.609684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463749, 35.497852, 35.403584>,  <32.895790, 34.988400, 35.764473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463749, 35.497852, 35.403584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503307, 35.112602, 35.303490>,  <33.527042, 34.881454, 35.243435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503307, 35.112602, 35.303490>,  <33.463749, 35.497852, 35.403584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503307, 35.112602, 35.303490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001884, 0.251285, -0.967911,
		0.995096, 0.096194, 0.023037,
		0.098896, -0.963121, -0.250234,
		33.532974, 34.823666, 35.228420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880180, 35.552010, 34.704220>,  <33.463749, 35.497852, 35.403584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880180, 35.552010, 34.704220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755791, 35.172096, 34.718067>,  <33.681156, 34.944149, 34.726376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755791, 35.172096, 34.718067>,  <33.880180, 35.552010, 34.704220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755791, 35.172096, 34.718067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102321, -0.002752, -0.994748,
		0.944894, -0.312883, -0.096327,
		-0.310975, -0.949788, 0.034615,
		33.662498, 34.887161, 34.728451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253513, 35.209934, 34.210396>,  <33.880180, 35.552010, 34.704220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253513, 35.209934, 34.210396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972466, 34.926895, 34.240406>,  <33.803837, 34.757072, 34.258411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972466, 34.926895, 34.240406>,  <34.253513, 35.209934, 34.210396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972466, 34.926895, 34.240406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133026, 0.027048, -0.990743,
		0.699016, -0.706100, -0.113134,
		-0.702624, -0.707595, 0.075023,
		33.761677, 34.714615, 34.262913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475075, 34.680298, 33.756401>,  <34.253513, 35.209934, 34.210396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475075, 34.680298, 33.756401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077824, 34.648212, 33.790485>,  <33.839474, 34.628960, 33.810936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077824, 34.648212, 33.790485>,  <34.475075, 34.680298, 33.756401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077824, 34.648212, 33.790485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084348, -0.014140, -0.996336,
		0.081127, -0.996677, 0.007277,
		-0.993128, -0.080216, 0.085215,
		33.779884, 34.624149, 33.816051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239132, 34.261791, 33.234154>,  <34.475075, 34.680298, 33.756401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239132, 34.261791, 33.234154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896099, 34.431786, 33.350048>,  <33.690281, 34.533783, 33.419582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896099, 34.431786, 33.350048>,  <34.239132, 34.261791, 33.234154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896099, 34.431786, 33.350048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324998, -0.011120, -0.945649,
		-0.398667, -0.905131, 0.147657,
		-0.857579, 0.424988, 0.289732,
		33.638824, 34.559280, 33.436966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702358, 33.838150, 33.095657>,  <34.239132, 34.261791, 33.234154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702358, 33.838150, 33.095657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544128, 34.204937, 33.116413>,  <33.449192, 34.425011, 33.128868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544128, 34.204937, 33.116413>,  <33.702358, 33.838150, 33.095657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544128, 34.204937, 33.116413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263042, -0.058982, -0.962980,
		-0.879960, -0.394579, 0.264533,
		-0.395574, 0.916967, 0.051889,
		33.425457, 34.480026, 33.131981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207443, 33.845028, 32.653843>,  <33.702358, 33.838150, 33.095657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207443, 33.845028, 32.653843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237015, 34.241463, 32.698170>,  <33.254757, 34.479324, 32.724766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237015, 34.241463, 32.698170>,  <33.207443, 33.845028, 32.653843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237015, 34.241463, 32.698170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198988, 0.123547, -0.972183,
		-0.977210, 0.049817, 0.206348,
		0.073925, 0.991088, 0.110819,
		33.259193, 34.538788, 32.731415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698071, 34.084576, 32.195587>,  <33.207443, 33.845028, 32.653843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698071, 34.084576, 32.195587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915096, 34.412975, 32.266682>,  <33.045311, 34.610016, 32.309338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915096, 34.412975, 32.266682>,  <32.698071, 34.084576, 32.195587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915096, 34.412975, 32.266682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174831, 0.317317, -0.932064,
		-0.821618, 0.474633, 0.315701,
		0.542566, 0.820995, 0.177733,
		33.077866, 34.659275, 32.320000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293045, 34.456268, 31.908813>,  <32.698071, 34.084576, 32.195587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293045, 34.456268, 31.908813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647491, 34.640335, 31.930920>,  <32.860157, 34.750774, 31.944183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647491, 34.640335, 31.930920>,  <32.293045, 34.456268, 31.908813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647491, 34.640335, 31.930920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128419, 0.358343, -0.924716,
		-0.445325, 0.812304, 0.376626,
		0.886112, 0.460165, 0.055264,
		32.913326, 34.778385, 31.947498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278503, 35.148041, 31.721546>,  <32.293045, 34.456268, 31.908813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278503, 35.148041, 31.721546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662186, 35.059776, 31.650845>,  <32.892395, 35.006817, 31.608423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662186, 35.059776, 31.650845>,  <32.278503, 35.148041, 31.721546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662186, 35.059776, 31.650845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044120, 0.500685, -0.864504,
		0.279261, 0.837032, 0.470522,
		0.959201, -0.220663, -0.176752,
		32.949947, 34.993576, 31.597818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606525, 35.791882, 31.627253>,  <32.278503, 35.148041, 31.721546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606525, 35.791882, 31.627253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853222, 35.519608, 31.469116>,  <33.001240, 35.356243, 31.374233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853222, 35.519608, 31.469116>,  <32.606525, 35.791882, 31.627253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853222, 35.519608, 31.469116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015678, 0.512760, -0.858389,
		0.787007, 0.523209, 0.326914,
		0.616745, -0.680683, -0.395343,
		33.038246, 35.315403, 31.350513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190250, 36.231884, 31.288548>,  <32.606525, 35.791882, 31.627253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190250, 36.231884, 31.288548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188225, 35.869793, 31.118591>,  <33.187012, 35.652538, 31.016617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188225, 35.869793, 31.118591>,  <33.190250, 36.231884, 31.288548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188225, 35.869793, 31.118591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078193, 0.423955, -0.902302,
		0.996925, 0.028657, -0.072928,
		-0.005061, -0.905230, -0.424893,
		33.186707, 35.598225, 30.991123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729843, 36.202381, 30.817898>,  <33.190250, 36.231884, 31.288548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729843, 36.202381, 30.817898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452347, 35.934948, 30.710775>,  <33.285851, 35.774487, 30.646502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452347, 35.934948, 30.710775>,  <33.729843, 36.202381, 30.817898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452347, 35.934948, 30.710775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167749, 0.511607, -0.842685,
		0.700417, -0.539680, -0.467077,
		-0.693741, -0.668583, -0.267808,
		33.244225, 35.734375, 30.630432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960361, 36.151524, 30.188375>,  <33.729843, 36.202381, 30.817898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960361, 36.151524, 30.188375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588829, 36.005096, 30.211224>,  <33.365910, 35.917240, 30.224934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588829, 36.005096, 30.211224>,  <33.960361, 36.151524, 30.188375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588829, 36.005096, 30.211224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244002, 0.488370, -0.837830,
		0.278808, -0.792141, -0.542935,
		-0.928832, -0.366071, 0.057122,
		33.310181, 35.895275, 30.228359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835602, 35.958458, 29.429014>,  <33.960361, 36.151524, 30.188375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835602, 35.958458, 29.429014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477600, 35.974499, 29.606712>,  <33.262798, 35.984123, 29.713331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477600, 35.974499, 29.606712>,  <33.835602, 35.958458, 29.429014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477600, 35.974499, 29.606712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377069, 0.464025, -0.801561,
		-0.238289, -0.884914, -0.400183,
		-0.895007, 0.040107, 0.444245,
		33.209099, 35.986530, 29.739986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248814, 35.715412, 28.939922>,  <33.835602, 35.958458, 29.429014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248814, 35.715412, 28.939922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069218, 35.942215, 29.216158>,  <32.961460, 36.078297, 29.381899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069218, 35.942215, 29.216158>,  <33.248814, 35.715412, 28.939922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069218, 35.942215, 29.216158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416685, 0.550827, -0.723162,
		-0.790431, -0.612451, -0.011054,
		-0.448990, 0.567003, 0.690590,
		32.934521, 36.112316, 29.423334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540688, 35.769932, 28.635841>,  <33.248814, 35.715412, 28.939922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540688, 35.769932, 28.635841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574589, 36.071968, 28.895889>,  <32.594929, 36.253189, 29.051918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574589, 36.071968, 28.895889>,  <32.540688, 35.769932, 28.635841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574589, 36.071968, 28.895889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388613, 0.625850, -0.676233,
		-0.917494, -0.195331, 0.346482,
		0.084757, 0.755088, 0.650122,
		32.600018, 36.298496, 29.090925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840799, 36.007023, 28.668520>,  <32.540688, 35.769932, 28.635841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840799, 36.007023, 28.668520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119137, 36.277988, 28.763945>,  <32.286140, 36.440567, 28.821199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119137, 36.277988, 28.763945>,  <31.840799, 36.007023, 28.668520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119137, 36.277988, 28.763945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328569, 0.595635, -0.732981,
		-0.638628, 0.431656, 0.637046,
		0.695842, 0.677416, 0.238560,
		32.327888, 36.481213, 28.835512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565668, 36.655426, 28.649096>,  <31.840799, 36.007023, 28.668520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565668, 36.655426, 28.649096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958937, 36.709126, 28.599537>,  <32.194897, 36.741344, 28.569801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958937, 36.709126, 28.599537>,  <31.565668, 36.655426, 28.649096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958937, 36.709126, 28.599537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181784, 0.651721, -0.736352,
		-0.018108, 0.746483, 0.665158,
		0.983172, 0.134249, -0.123897,
		32.253887, 36.749401, 28.562368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626305, 37.337162, 28.565411>,  <31.565668, 36.655426, 28.649096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626305, 37.337162, 28.565411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973360, 37.193996, 28.427364>,  <32.181591, 37.108097, 28.344538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973360, 37.193996, 28.427364>,  <31.626305, 37.337162, 28.565411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973360, 37.193996, 28.427364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012597, 0.709717, -0.704374,
		0.497039, 0.606793, 0.620285,
		0.867636, -0.357915, -0.345114,
		32.233650, 37.086620, 28.323830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962221, 37.909199, 28.314363>,  <31.626305, 37.337162, 28.565411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962221, 37.909199, 28.314363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194386, 37.629589, 28.147276>,  <32.333683, 37.461823, 28.047024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194386, 37.629589, 28.147276>,  <31.962221, 37.909199, 28.314363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194386, 37.629589, 28.147276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297873, 0.659662, -0.690012,
		0.757887, 0.276065, 0.591097,
		0.580413, -0.699023, -0.417717,
		32.368511, 37.419884, 28.021961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714981, 38.202995, 28.264925>,  <31.962221, 37.909199, 28.314363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714981, 38.202995, 28.264925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622131, 37.913521, 28.004957>,  <32.566422, 37.739834, 27.848976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622131, 37.913521, 28.004957>,  <32.714981, 38.202995, 28.264925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622131, 37.913521, 28.004957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224974, 0.610108, -0.759707,
		0.946312, -0.322558, 0.021193,
		-0.232120, -0.723688, -0.649920,
		32.552494, 37.696415, 27.809980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312130, 38.056622, 27.700905>,  <32.714981, 38.202995, 28.264925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312130, 38.056622, 27.700905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969280, 37.920616, 27.546124>,  <32.763573, 37.839012, 27.453255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969280, 37.920616, 27.546124>,  <33.312130, 38.056622, 27.700905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969280, 37.920616, 27.546124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207956, 0.458850, -0.863835,
		0.471276, -0.820878, -0.322580,
		-0.857119, -0.340022, -0.386952,
		32.712143, 37.818611, 27.430038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330044, 38.299709, 27.056414>,  <33.312130, 38.056622, 27.700905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330044, 38.299709, 27.056414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963497, 38.142891, 27.023983>,  <32.743568, 38.048801, 27.004524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963497, 38.142891, 27.023983>,  <33.330044, 38.299709, 27.056414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963497, 38.142891, 27.023983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180762, 0.585884, -0.789978,
		0.357210, -0.709253, -0.607751,
		-0.916366, -0.392047, -0.081078,
		32.688587, 38.025276, 26.999659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255695, 37.915363, 26.422827>,  <33.330044, 38.299709, 27.056414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255695, 37.915363, 26.422827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875778, 38.004288, 26.510893>,  <32.647827, 38.057644, 26.563732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875778, 38.004288, 26.510893>,  <33.255695, 37.915363, 26.422827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875778, 38.004288, 26.510893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093438, 0.470019, -0.877697,
		-0.298606, -0.854201, -0.425648,
		-0.949791, 0.222313, 0.220165,
		32.590839, 38.070980, 26.576942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867256, 37.696075, 25.847189>,  <33.255695, 37.915363, 26.422827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867256, 37.696075, 25.847189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647106, 37.968204, 26.040781>,  <32.515015, 38.131481, 26.156937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647106, 37.968204, 26.040781>,  <32.867256, 37.696075, 25.847189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647106, 37.968204, 26.040781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084121, 0.531541, -0.842845,
		-0.830666, -0.504597, -0.235320,
		-0.550379, 0.680327, 0.483981,
		32.481991, 38.172302, 26.185976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243217, 37.863503, 25.405794>,  <32.867256, 37.696075, 25.847189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243217, 37.863503, 25.405794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277206, 38.171577, 25.658646>,  <32.297600, 38.356422, 25.810356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277206, 38.171577, 25.658646>,  <32.243217, 37.863503, 25.405794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277206, 38.171577, 25.658646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179182, 0.635891, -0.750690,
		-0.980140, -0.049480, 0.192037,
		0.084970, 0.770191, 0.632128,
		32.302696, 38.402634, 25.848284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625292, 38.190582, 25.510227>,  <32.243217, 37.863503, 25.405794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625292, 38.190582, 25.510227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896191, 38.472366, 25.595150>,  <32.058731, 38.641438, 25.646103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896191, 38.472366, 25.595150>,  <31.625292, 38.190582, 25.510227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896191, 38.472366, 25.595150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422292, 0.608469, -0.671889,
		-0.602501, 0.365379, 0.709571,
		0.677246, 0.704460, 0.212307,
		32.099365, 38.683704, 25.658842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400700, 38.740360, 25.054058>,  <31.625292, 38.190582, 25.510227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400700, 38.740360, 25.054058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738251, 38.878311, 25.218464>,  <31.940781, 38.961082, 25.317108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738251, 38.878311, 25.218464>,  <31.400700, 38.740360, 25.054058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738251, 38.878311, 25.218464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011820, 0.753917, -0.656864,
		-0.536405, 0.559171, 0.632137,
		0.843878, 0.344873, 0.411014,
		31.991415, 38.981773, 25.341768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292000, 39.468224, 25.224928>,  <31.400700, 38.740360, 25.054058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292000, 39.468224, 25.224928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676746, 39.388168, 25.150352>,  <31.907595, 39.340134, 25.105608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676746, 39.388168, 25.150352>,  <31.292000, 39.468224, 25.224928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676746, 39.388168, 25.150352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020802, 0.733168, -0.679730,
		0.272731, 0.649930, 0.709372,
		0.961865, -0.200140, -0.186437,
		31.965305, 39.328125, 25.094421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607981, 40.079716, 25.349970>,  <31.292000, 39.468224, 25.224928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607981, 40.079716, 25.349970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873049, 39.868038, 25.137999>,  <32.032089, 39.741032, 25.010817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873049, 39.868038, 25.137999>,  <31.607981, 40.079716, 25.349970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873049, 39.868038, 25.137999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005727, 0.711158, -0.703009,
		0.748888, 0.462829, 0.474295,
		0.662672, -0.529191, -0.529927,
		32.071850, 39.709282, 24.979021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271484, 40.572605, 25.216566>,  <31.607981, 40.079716, 25.349970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271484, 40.572605, 25.216566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351101, 40.286705, 24.948383>,  <32.398872, 40.115166, 24.787474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351101, 40.286705, 24.948383>,  <32.271484, 40.572605, 25.216566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351101, 40.286705, 24.948383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307239, 0.695166, -0.649884,
		0.930584, -0.076637, 0.357966,
		0.199041, -0.714753, -0.670456,
		32.410812, 40.072281, 24.747246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894604, 40.685741, 25.016005>,  <32.271484, 40.572605, 25.216566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894604, 40.685741, 25.016005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747395, 40.465206, 24.716516>,  <32.659069, 40.332886, 24.536823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747395, 40.465206, 24.716516>,  <32.894604, 40.685741, 25.016005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747395, 40.465206, 24.716516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263963, 0.710154, -0.652691,
		0.891561, -0.437841, -0.115821,
		-0.368026, -0.551342, -0.748719,
		32.636986, 40.299805, 24.491901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421185, 40.700657, 24.557615>,  <32.894604, 40.685741, 25.016005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421185, 40.700657, 24.557615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089371, 40.601265, 24.357565>,  <32.890282, 40.541630, 24.237535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089371, 40.601265, 24.357565>,  <33.421185, 40.700657, 24.557615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089371, 40.601265, 24.357565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128125, 0.786991, -0.603514,
		0.543554, -0.564716, -0.621003,
		-0.829538, -0.248477, -0.500126,
		32.840508, 40.526722, 24.207527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656998, 40.678028, 23.897573>,  <33.421185, 40.700657, 24.557615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656998, 40.678028, 23.897573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262699, 40.745316, 23.897423>,  <33.026119, 40.785690, 23.897331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262699, 40.745316, 23.897423>,  <33.656998, 40.678028, 23.897573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262699, 40.745316, 23.897423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125715, 0.735172, -0.666122,
		-0.111778, -0.656676, -0.745843,
		-0.985749, 0.168221, -0.000378,
		32.966976, 40.795780, 23.897310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462955, 40.764469, 23.162415>,  <33.656998, 40.678028, 23.897573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462955, 40.764469, 23.162415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164818, 40.919571, 23.379339>,  <32.985935, 41.012634, 23.509493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164818, 40.919571, 23.379339>,  <33.462955, 40.764469, 23.162415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164818, 40.919571, 23.379339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139026, 0.705165, -0.695280,
		-0.652018, -0.593621, -0.471685,
		-0.745349, 0.387758, 0.542310,
		32.941212, 41.035900, 23.542032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970596, 40.847836, 22.666063>,  <33.462955, 40.764469, 23.162415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970596, 40.847836, 22.666063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846897, 41.088112, 22.960962>,  <32.772678, 41.232277, 23.137901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846897, 41.088112, 22.960962>,  <32.970596, 40.847836, 22.666063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846897, 41.088112, 22.960962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129043, 0.741572, -0.658346,
		-0.942185, -0.298729, -0.151814,
		-0.309248, 0.600693, 0.737247,
		32.754124, 41.268318, 23.182137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426373, 41.168427, 22.399162>,  <32.970596, 40.847836, 22.666063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426373, 41.168427, 22.399162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539371, 41.395535, 22.708441>,  <32.607170, 41.531799, 22.894009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539371, 41.395535, 22.708441>,  <32.426373, 41.168427, 22.399162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539371, 41.395535, 22.708441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313793, 0.816380, -0.484828,
		-0.906492, -0.105660, 0.408789,
		0.282500, 0.567768, 0.773197,
		32.624123, 41.565865, 22.940399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917639, 41.675301, 22.374130>,  <32.426373, 41.168427, 22.399162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917639, 41.675301, 22.374130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243458, 41.811153, 22.562243>,  <32.438950, 41.892666, 22.675110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243458, 41.811153, 22.562243>,  <31.917639, 41.675301, 22.374130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243458, 41.811153, 22.562243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024901, 0.830418, -0.556585,
		-0.579561, 0.441655, 0.684873,
		0.814549, 0.339628, 0.470280,
		32.487823, 41.913040, 22.703327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706467, 42.248020, 22.607061>,  <31.917639, 41.675301, 22.374130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706467, 42.248020, 22.607061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104809, 42.271038, 22.578884>,  <32.343815, 42.284847, 22.561977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104809, 42.271038, 22.578884>,  <31.706467, 42.248020, 22.607061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104809, 42.271038, 22.578884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080255, 0.920331, -0.382818,
		0.042802, 0.386884, 0.921135,
		0.995855, 0.057541, -0.070441,
		32.403564, 42.288300, 22.557753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768736, 42.935799, 22.520861>,  <31.706467, 42.248020, 22.607061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768736, 42.935799, 22.520861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143314, 42.810452, 22.457787>,  <32.368061, 42.735241, 22.419943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143314, 42.810452, 22.457787>,  <31.768736, 42.935799, 22.520861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143314, 42.810452, 22.457787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195287, 0.839075, -0.507756,
		0.291426, 0.444693, 0.846947,
		0.936447, -0.313372, -0.157686,
		32.424248, 42.716438, 22.410480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240005, 43.415459, 22.740023>,  <31.768736, 42.935799, 22.520861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240005, 43.415459, 22.740023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418983, 43.197041, 22.456720>,  <32.526371, 43.065990, 22.286739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418983, 43.197041, 22.456720>,  <32.240005, 43.415459, 22.740023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418983, 43.197041, 22.456720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305356, 0.837645, -0.452890,
		0.840564, -0.013625, 0.541541,
		0.447449, -0.546046, -0.708254,
		32.553219, 43.033226, 22.244244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918522, 43.737621, 22.666950>,  <32.240005, 43.415459, 22.740023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918522, 43.737621, 22.666950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764626, 43.564167, 22.341021>,  <32.672287, 43.460094, 22.145464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764626, 43.564167, 22.341021>,  <32.918522, 43.737621, 22.666950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764626, 43.564167, 22.341021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279839, 0.786427, -0.550656,
		0.879580, -0.439881, -0.181226,
		-0.384744, -0.433632, -0.814822,
		32.649204, 43.434078, 22.096575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446159, 43.173885, 22.508223>,  <32.918522, 43.737621, 22.666950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446159, 43.173885, 22.508223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730675, 43.189476, 22.227495>,  <33.901382, 43.198830, 22.059059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730675, 43.189476, 22.227495>,  <33.446159, 43.173885, 22.508223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730675, 43.189476, 22.227495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383794, -0.858022, 0.341321,
		-0.588872, -0.512132, -0.625261,
		0.711289, 0.038977, -0.701819,
		33.944061, 43.201168, 22.016949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703587, 43.701912, 22.099136>,  <33.446159, 43.173885, 22.508223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703587, 43.701912, 22.099136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033051, 43.840523, 21.919579>,  <34.230728, 43.923691, 21.811844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033051, 43.840523, 21.919579>,  <33.703587, 43.701912, 22.099136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033051, 43.840523, 21.919579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358604, 0.294947, 0.885669,
		0.439309, -0.890463, 0.118669,
		0.823657, 0.346527, -0.448897,
		34.280148, 43.944481, 21.784910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390976, 43.317966, 22.314005>,  <33.703587, 43.701912, 22.099136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390976, 43.317966, 22.314005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430649, 43.709843, 22.244308>,  <34.454453, 43.944969, 22.202490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430649, 43.709843, 22.244308>,  <34.390976, 43.317966, 22.314005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430649, 43.709843, 22.244308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125050, 0.161445, 0.978927,
		0.987180, -0.118882, -0.106499,
		0.099183, 0.979695, -0.174242,
		34.460403, 44.003750, 22.192036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091053, 43.497654, 22.500893>,  <34.390976, 43.317966, 22.314005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091053, 43.497654, 22.500893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832260, 43.800457, 22.537437>,  <34.676983, 43.982140, 22.559364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832260, 43.800457, 22.537437>,  <35.091053, 43.497654, 22.500893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832260, 43.800457, 22.537437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097171, -0.036988, 0.994580,
		0.756288, 0.652353, -0.049629,
		-0.646982, 0.757012, 0.091363,
		34.638165, 44.027561, 22.564846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364235, 44.086201, 22.771399>,  <35.091053, 43.497654, 22.500893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364235, 44.086201, 22.771399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975498, 44.070686, 22.864365>,  <34.742256, 44.061378, 22.920145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975498, 44.070686, 22.864365>,  <35.364235, 44.086201, 22.771399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975498, 44.070686, 22.864365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235624, -0.152774, 0.959761,
		-0.001717, 0.987500, 0.157611,
		-0.971843, -0.038785, 0.232417,
		34.683945, 44.059052, 22.934090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282871, 44.263947, 23.390165>,  <35.364235, 44.086201, 22.771399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282871, 44.263947, 23.390165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912872, 44.119701, 23.342270>,  <34.690872, 44.033154, 23.313532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912872, 44.119701, 23.342270>,  <35.282871, 44.263947, 23.390165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912872, 44.119701, 23.342270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044918, -0.209143, 0.976853,
		-0.377304, 0.908967, 0.177259,
		-0.924999, -0.360608, -0.119740,
		34.635372, 44.011520, 23.306349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899040, 44.652657, 23.827644>,  <35.282871, 44.263947, 23.390165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899040, 44.652657, 23.827644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733971, 44.291527, 23.779297>,  <34.634930, 44.074848, 23.750288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733971, 44.291527, 23.779297>,  <34.899040, 44.652657, 23.827644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733971, 44.291527, 23.779297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073764, -0.165381, 0.983467,
		-0.907885, 0.396940, 0.134845,
		-0.412678, -0.902822, -0.120867,
		34.610168, 44.020679, 23.743036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523708, 44.532322, 24.393204>,  <34.899040, 44.652657, 23.827644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523708, 44.532322, 24.393204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564827, 44.160816, 24.250750>,  <34.589497, 43.937912, 24.165277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564827, 44.160816, 24.250750>,  <34.523708, 44.532322, 24.393204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564827, 44.160816, 24.250750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090155, -0.365257, 0.926531,
		-0.990608, -0.063137, -0.121279,
		0.102796, -0.928763, -0.356134,
		34.595665, 43.882187, 24.143909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971657, 44.066410, 24.704325>,  <34.523708, 44.532322, 24.393204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971657, 44.066410, 24.704325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246506, 43.809273, 24.568903>,  <34.411415, 43.654991, 24.487650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246506, 43.809273, 24.568903>,  <33.971657, 44.066410, 24.704325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246506, 43.809273, 24.568903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015340, -0.453038, 0.891359,
		-0.726381, -0.617665, -0.301431,
		0.687121, -0.642842, -0.338553,
		34.452641, 43.616421, 24.467337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742355, 43.381107, 24.904850>,  <33.971657, 44.066410, 24.704325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742355, 43.381107, 24.904850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135086, 43.343529, 24.838882>,  <34.370724, 43.320984, 24.799301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135086, 43.343529, 24.838882>,  <33.742355, 43.381107, 24.904850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135086, 43.343529, 24.838882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109280, -0.430635, 0.895886,
		-0.155182, -0.897624, -0.412541,
		0.981823, -0.093943, -0.164919,
		34.429634, 43.315346, 24.789406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870827, 42.734127, 25.076563>,  <33.742355, 43.381107, 24.904850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870827, 42.734127, 25.076563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222393, 42.923882, 25.096426>,  <34.433334, 43.037735, 25.108343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222393, 42.923882, 25.096426>,  <33.870827, 42.734127, 25.076563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222393, 42.923882, 25.096426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178674, -0.423976, 0.887874,
		0.442248, -0.771494, -0.457399,
		0.878915, 0.474386, 0.049656,
		34.486069, 43.066196, 25.111322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324284, 42.196434, 25.334351>,  <33.870827, 42.734127, 25.076563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324284, 42.196434, 25.334351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512321, 42.540535, 25.413319>,  <34.625145, 42.746998, 25.460699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512321, 42.540535, 25.413319>,  <34.324284, 42.196434, 25.334351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512321, 42.540535, 25.413319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256290, -0.347083, 0.902136,
		0.844587, -0.373491, -0.383636,
		0.470094, 0.860254, 0.197419,
		34.653351, 42.798611, 25.472544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925377, 42.027859, 25.636700>,  <34.324284, 42.196434, 25.334351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925377, 42.027859, 25.636700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847618, 42.397106, 25.769405>,  <34.800964, 42.618652, 25.849028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847618, 42.397106, 25.769405>,  <34.925377, 42.027859, 25.636700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847618, 42.397106, 25.769405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084906, -0.321110, 0.943228,
		0.977241, 0.211530, -0.015955,
		-0.194398, 0.923116, 0.331762,
		34.789299, 42.674042, 25.868935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415615, 42.037819, 26.106958>,  <34.925377, 42.027859, 25.636700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415615, 42.037819, 26.106958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185322, 42.343994, 26.221945>,  <35.047146, 42.527699, 26.290937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185322, 42.343994, 26.221945>,  <35.415615, 42.037819, 26.106958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185322, 42.343994, 26.221945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120895, -0.268024, 0.955797,
		0.808652, 0.585035, 0.061771,
		-0.575731, 0.765439, 0.287466,
		35.012604, 42.573627, 26.308184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768967, 42.474136, 26.662037>,  <35.415615, 42.037819, 26.106958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768967, 42.474136, 26.662037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377090, 42.540501, 26.707081>,  <35.141964, 42.580318, 26.734108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377090, 42.540501, 26.707081>,  <35.768967, 42.474136, 26.662037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377090, 42.540501, 26.707081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096549, -0.101903, 0.990098,
		0.175742, 0.980862, 0.083815,
		-0.979690, 0.165909, 0.112610,
		35.083183, 42.590275, 26.740864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589947, 43.086964, 27.177675>,  <35.768967, 42.474136, 26.662037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589947, 43.086964, 27.177675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266575, 42.851528, 27.176577>,  <35.072552, 42.710266, 27.175917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266575, 42.851528, 27.176577>,  <35.589947, 43.086964, 27.177675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266575, 42.851528, 27.176577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082518, -0.117957, 0.989584,
		-0.582785, 0.799779, 0.143929,
		-0.808426, -0.588592, -0.002747,
		35.024048, 42.674950, 27.175753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284908, 43.173664, 27.830025>,  <35.589947, 43.086964, 27.177675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284908, 43.173664, 27.830025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051949, 42.858128, 27.751497>,  <34.912174, 42.668804, 27.704380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051949, 42.858128, 27.751497>,  <35.284908, 43.173664, 27.830025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051949, 42.858128, 27.751497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064958, -0.285890, 0.956058,
		-0.810305, 0.544052, 0.217744,
		-0.582396, -0.788843, -0.196318,
		34.877228, 42.621475, 27.692602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780209, 43.026283, 28.458242>,  <35.284908, 43.173664, 27.830025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780209, 43.026283, 28.458242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795795, 42.696735, 28.232067>,  <34.805149, 42.499008, 28.096361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795795, 42.696735, 28.232067>,  <34.780209, 43.026283, 28.458242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795795, 42.696735, 28.232067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022311, -0.566444, 0.823799,
		-0.998991, -0.019485, -0.040454,
		0.038967, -0.823870, -0.565438,
		34.807484, 42.449574, 28.062435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337204, 42.637554, 28.834236>,  <34.780209, 43.026283, 28.458242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337204, 42.637554, 28.834236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561283, 42.383282, 28.621790>,  <34.695732, 42.230717, 28.494322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561283, 42.383282, 28.621790>,  <34.337204, 42.637554, 28.834236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561283, 42.383282, 28.621790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129040, -0.566373, 0.813984,
		-0.818246, -0.524528, -0.235253,
		0.560198, -0.635682, -0.531118,
		34.729343, 42.192577, 28.462454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027061, 41.984390, 28.713734>,  <34.337204, 42.637554, 28.834236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027061, 41.984390, 28.713734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423107, 41.931564, 28.694807>,  <34.660732, 41.899868, 28.683451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423107, 41.931564, 28.694807>,  <34.027061, 41.984390, 28.713734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423107, 41.931564, 28.694807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061846, -0.713675, 0.697741,
		-0.125912, -0.687916, -0.714785,
		0.990112, -0.132061, -0.047315,
		34.720142, 41.891945, 28.680613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072880, 41.233906, 28.619009>,  <34.027061, 41.984390, 28.713734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072880, 41.233906, 28.619009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438587, 41.347820, 28.734257>,  <34.658012, 41.416168, 28.803406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438587, 41.347820, 28.734257>,  <34.072880, 41.233906, 28.619009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438587, 41.347820, 28.734257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031086, -0.758423, 0.651021,
		0.403921, -0.586250, -0.702253,
		0.914266, 0.284791, 0.288119,
		34.712868, 41.433258, 28.820692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479118, 40.633018, 28.706600>,  <34.072880, 41.233906, 28.619009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479118, 40.633018, 28.706600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690151, 40.903404, 28.912407>,  <34.816769, 41.065636, 29.035891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690151, 40.903404, 28.912407>,  <34.479118, 40.633018, 28.706600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690151, 40.903404, 28.912407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141421, -0.667103, 0.731419,
		0.837652, -0.313118, -0.447545,
		0.527579, 0.675967, 0.514518,
		34.848423, 41.106194, 29.066763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174057, 40.351826, 28.816462>,  <34.479118, 40.633018, 28.706600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174057, 40.351826, 28.816462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064426, 40.619675, 29.092575>,  <34.998646, 40.780384, 29.258244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064426, 40.619675, 29.092575>,  <35.174057, 40.351826, 28.816462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064426, 40.619675, 29.092575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136508, -0.683412, 0.717156,
		0.951969, 0.290788, 0.095902,
		-0.274081, 0.669619, 0.690282,
		34.982201, 40.820560, 29.299660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657055, 40.267662, 29.456028>,  <35.174057, 40.351826, 28.816462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657055, 40.267662, 29.456028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342037, 40.461891, 29.607817>,  <35.153027, 40.578426, 29.698891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342037, 40.461891, 29.607817>,  <35.657055, 40.267662, 29.456028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342037, 40.461891, 29.607817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130066, -0.470929, 0.872530,
		0.602379, 0.736511, 0.307720,
		-0.787542, 0.485570, 0.379473,
		35.105774, 40.607563, 29.721659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825115, 40.423855, 30.196007>,  <35.657055, 40.267662, 29.456028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825115, 40.423855, 30.196007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429893, 40.476730, 30.164324>,  <35.192760, 40.508457, 30.145313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429893, 40.476730, 30.164324>,  <35.825115, 40.423855, 30.196007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429893, 40.476730, 30.164324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111567, -0.259018, 0.959407,
		0.106309, 0.956784, 0.270672,
		-0.988054, 0.132191, -0.079210,
		35.133476, 40.516388, 30.140560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556747, 40.674957, 30.886461>,  <35.825115, 40.423855, 30.196007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556747, 40.674957, 30.886461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215275, 40.536442, 30.730865>,  <35.010391, 40.453335, 30.637508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215275, 40.536442, 30.730865>,  <35.556747, 40.674957, 30.886461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215275, 40.536442, 30.730865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237652, -0.405592, 0.882619,
		-0.463409, 0.845921, 0.263951,
		-0.853683, -0.346285, -0.388990,
		34.959171, 40.432556, 30.614168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911388, 40.943172, 31.226128>,  <35.556747, 40.674957, 30.886461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911388, 40.943172, 31.226128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821480, 40.584873, 31.072708>,  <34.767536, 40.369892, 30.980658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821480, 40.584873, 31.072708>,  <34.911388, 40.943172, 31.226128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821480, 40.584873, 31.072708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192619, -0.345006, 0.918623,
		-0.955184, 0.280357, -0.094992,
		-0.224769, -0.895752, -0.383546,
		34.754047, 40.316147, 30.957644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466637, 40.619537, 31.685015>,  <34.911388, 40.943172, 31.226128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466637, 40.619537, 31.685015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527710, 40.298100, 31.454912>,  <34.564354, 40.105236, 31.316851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527710, 40.298100, 31.454912>,  <34.466637, 40.619537, 31.685015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527710, 40.298100, 31.454912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317388, -0.591118, 0.741515,
		-0.935923, 0.069360, -0.345309,
		0.152687, -0.803598, -0.575254,
		34.573517, 40.057022, 31.282335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906017, 40.205532, 31.646616>,  <34.466637, 40.619537, 31.685015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906017, 40.205532, 31.646616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207462, 39.955002, 31.566832>,  <34.388329, 39.804684, 31.518961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207462, 39.955002, 31.566832>,  <33.906017, 40.205532, 31.646616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207462, 39.955002, 31.566832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229225, -0.534813, 0.813284,
		-0.616054, -0.567181, -0.546612,
		0.753614, -0.626323, -0.199462,
		34.433548, 39.767105, 31.506992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610306, 39.386467, 31.707951>,  <33.906017, 40.205532, 31.646616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610306, 39.386467, 31.707951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008312, 39.402317, 31.744556>,  <34.247116, 39.411827, 31.766520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008312, 39.402317, 31.744556>,  <33.610306, 39.386467, 31.707951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008312, 39.402317, 31.744556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066745, -0.417190, 0.906365,
		0.074095, -0.907955, -0.412465,
		0.995015, 0.039627, 0.091514,
		34.306816, 39.414204, 31.772011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794743, 38.793495, 32.098888>,  <33.610306, 39.386467, 31.707951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794743, 38.793495, 32.098888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126297, 39.016205, 32.120594>,  <34.325230, 39.149830, 32.133617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126297, 39.016205, 32.120594>,  <33.794743, 38.793495, 32.098888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126297, 39.016205, 32.120594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133254, -0.290730, 0.947481,
		0.543311, -0.778124, -0.315175,
		0.828889, 0.556775, 0.054268,
		34.374962, 39.183239, 32.136875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396427, 38.256752, 32.111465>,  <33.794743, 38.793495, 32.098888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396427, 38.256752, 32.111465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488430, 38.596035, 32.302311>,  <34.543633, 38.799606, 32.416817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488430, 38.596035, 32.302311>,  <34.396427, 38.256752, 32.111465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488430, 38.596035, 32.302311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024157, -0.495081, 0.868511,
		0.972889, -0.188240, -0.134364,
		0.230010, 0.848210, 0.477112,
		34.557434, 38.850498, 32.445446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882172, 38.101307, 32.593742>,  <34.396427, 38.256752, 32.111465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882172, 38.101307, 32.593742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762463, 38.458160, 32.729111>,  <34.690636, 38.672272, 32.810333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762463, 38.458160, 32.729111>,  <34.882172, 38.101307, 32.593742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762463, 38.458160, 32.729111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180099, -0.295486, 0.938218,
		0.937016, 0.341735, -0.072241,
		-0.299276, 0.892135, 0.338421,
		34.672680, 38.725800, 32.830639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414333, 38.321239, 32.986919>,  <34.882172, 38.101307, 32.593742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414333, 38.321239, 32.986919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117512, 38.531532, 33.153275>,  <34.939419, 38.657707, 33.253086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117512, 38.531532, 33.153275>,  <35.414333, 38.321239, 32.986919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117512, 38.531532, 33.153275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215577, -0.400294, 0.890669,
		0.634726, 0.750583, 0.183707,
		-0.742058, 0.525728, 0.415885,
		34.894894, 38.689251, 33.278042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632179, 38.637177, 33.541012>,  <35.414333, 38.321239, 32.986919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632179, 38.637177, 33.541012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238445, 38.639538, 33.611504>,  <35.002205, 38.640953, 33.653801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238445, 38.639538, 33.611504>,  <35.632179, 38.637177, 33.541012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238445, 38.639538, 33.611504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159735, -0.393433, 0.905370,
		0.074680, 0.919334, 0.386326,
		-0.984331, 0.005903, 0.176232,
		34.943146, 38.641308, 33.664371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557568, 38.895943, 34.215618>,  <35.632179, 38.637177, 33.541012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557568, 38.895943, 34.215618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185501, 38.758118, 34.164928>,  <34.962261, 38.675423, 34.134514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185501, 38.758118, 34.164928>,  <35.557568, 38.895943, 34.215618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185501, 38.758118, 34.164928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016428, -0.383889, 0.923233,
		-0.366760, 0.856683, 0.362743,
		-0.930171, -0.344564, -0.126721,
		34.906448, 38.654747, 34.126911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141811, 39.223682, 34.825768>,  <35.557568, 38.895943, 34.215618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141811, 39.223682, 34.825768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965065, 38.889473, 34.695137>,  <34.859016, 38.688946, 34.616760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965065, 38.889473, 34.695137>,  <35.141811, 39.223682, 34.825768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965065, 38.889473, 34.695137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054114, -0.388205, 0.919983,
		-0.895449, 0.388834, 0.216746,
		-0.441863, -0.835527, -0.326576,
		34.832508, 38.638813, 34.597164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722179, 39.065472, 35.325069>,  <35.141811, 39.223682, 34.825768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722179, 39.065472, 35.325069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780140, 38.733513, 35.109558>,  <34.814915, 38.534340, 34.980251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780140, 38.733513, 35.109558>,  <34.722179, 39.065472, 35.325069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780140, 38.733513, 35.109558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084610, -0.532135, 0.842421,
		-0.985822, -0.167650, -0.006887,
		0.144897, -0.829895, -0.538776,
		34.823608, 38.484543, 34.947926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446079, 38.545994, 35.766136>,  <34.722179, 39.065472, 35.325069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446079, 38.545994, 35.766136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659725, 38.343800, 35.495075>,  <34.787910, 38.222485, 35.332439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659725, 38.343800, 35.495075>,  <34.446079, 38.545994, 35.766136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659725, 38.343800, 35.495075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237691, -0.679439, 0.694165,
		-0.811312, -0.531834, -0.242748,
		0.534113, -0.505485, -0.677649,
		34.819958, 38.192154, 35.291779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288792, 37.730331, 35.887119>,  <34.446079, 38.545994, 35.766136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288792, 37.730331, 35.887119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644279, 37.732010, 35.703747>,  <34.857571, 37.733017, 35.593723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644279, 37.732010, 35.703747>,  <34.288792, 37.730331, 35.887119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644279, 37.732010, 35.703747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300145, -0.761192, 0.574892,
		-0.346541, -0.648514, -0.677746,
		0.888720, 0.004198, -0.458432,
		34.910896, 37.733269, 35.566216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446728, 36.944172, 35.671913>,  <34.288792, 37.730331, 35.887119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446728, 36.944172, 35.671913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774521, 37.168797, 35.717697>,  <34.971195, 37.303570, 35.745167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774521, 37.168797, 35.717697>,  <34.446728, 36.944172, 35.671913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774521, 37.168797, 35.717697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449760, -0.753935, 0.478850,
		0.355200, -0.340928, -0.870403,
		0.819481, 0.561560, 0.114462,
		35.020367, 37.337265, 35.752037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982540, 36.511269, 35.422611>,  <34.446728, 36.944172, 35.671913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982540, 36.511269, 35.422611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137535, 36.787971, 35.666359>,  <35.230530, 36.953991, 35.812607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137535, 36.787971, 35.666359>,  <34.982540, 36.511269, 35.422611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137535, 36.787971, 35.666359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679978, -0.660802, 0.317758,
		0.622484, 0.291233, -0.726427,
		0.387484, 0.691754, 0.609371,
		35.253780, 36.995499, 35.849171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753643, 36.510685, 35.351017>,  <34.982540, 36.511269, 35.422611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753643, 36.510685, 35.351017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703182, 36.692856, 35.703533>,  <35.672905, 36.802158, 35.915043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703182, 36.692856, 35.703533>,  <35.753643, 36.510685, 35.351017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703182, 36.692856, 35.703533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717043, -0.572046, 0.398261,
		0.685517, 0.682166, -0.254393,
		-0.126156, 0.455425, 0.881290,
		35.665337, 36.829483, 35.967918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406540, 36.650826, 35.670479>,  <35.753643, 36.510685, 35.351017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406540, 36.650826, 35.670479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158600, 36.666157, 35.983994>,  <36.009834, 36.675358, 36.172100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158600, 36.666157, 35.983994>,  <36.406540, 36.650826, 35.670479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158600, 36.666157, 35.983994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664485, -0.505670, 0.550234,
		0.417428, 0.861875, 0.287968,
		-0.619850, 0.038333, 0.783784,
		35.972645, 36.677658, 36.219128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846439, 36.650711, 36.243603>,  <36.406540, 36.650826, 35.670479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846439, 36.650711, 36.243603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485188, 36.602333, 36.408398>,  <36.268436, 36.573307, 36.507275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485188, 36.602333, 36.408398>,  <36.846439, 36.650711, 36.243603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485188, 36.602333, 36.408398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387902, -0.641238, 0.662077,
		0.184105, 0.757750, 0.626035,
		-0.903126, -0.120949, 0.411988,
		36.214249, 36.566048, 36.531994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414120, 36.774788, 36.704094>,  <36.846439, 36.650711, 36.243603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414120, 36.774788, 36.704094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777176, 36.912251, 36.800499>,  <37.995010, 36.994728, 36.858341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777176, 36.912251, 36.800499>,  <37.414120, 36.774788, 36.704094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777176, 36.912251, 36.800499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067531, 0.686268, -0.724207,
		-0.414275, 0.641045, 0.646094,
		0.907643, 0.343652, 0.241013,
		38.049469, 37.015347, 36.872803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335796, 37.639656, 36.805462>,  <37.414120, 36.774788, 36.704094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335796, 37.639656, 36.805462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723660, 37.557037, 36.753166>,  <37.956379, 37.507465, 36.721790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723660, 37.557037, 36.753166>,  <37.335796, 37.639656, 36.805462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723660, 37.557037, 36.753166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079212, 0.771473, -0.631312,
		0.231258, 0.601804, 0.764429,
		0.969662, -0.206548, -0.130739,
		38.014557, 37.495071, 36.713943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648415, 38.298985, 36.804134>,  <37.335796, 37.639656, 36.805462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648415, 38.298985, 36.804134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916229, 38.051880, 36.639168>,  <38.076920, 37.903618, 36.540188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916229, 38.051880, 36.639168>,  <37.648415, 38.298985, 36.804134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916229, 38.051880, 36.639168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148332, 0.655251, -0.740705,
		0.727813, 0.434759, 0.530352,
		0.669541, -0.617763, -0.412412,
		38.117092, 37.866550, 36.515446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319431, 38.621246, 36.742905>,  <37.648415, 38.298985, 36.804134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319431, 38.621246, 36.742905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322140, 38.330959, 36.467720>,  <38.323765, 38.156788, 36.302608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322140, 38.330959, 36.467720>,  <38.319431, 38.621246, 36.742905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322140, 38.330959, 36.467720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120353, 0.683568, -0.719895,
		0.992708, -0.077923, 0.091970,
		0.006771, -0.725715, -0.687962,
		38.324173, 38.113243, 36.261330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974232, 38.639290, 36.330189>,  <38.319431, 38.621246, 36.742905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974232, 38.639290, 36.330189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689392, 38.460800, 36.113377>,  <38.518490, 38.353706, 35.983288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689392, 38.460800, 36.113377>,  <38.974232, 38.639290, 36.330189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689392, 38.460800, 36.113377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221295, 0.590025, -0.776466,
		0.666291, -0.672869, -0.321409,
		-0.712099, -0.446226, -0.542031,
		38.475761, 38.326931, 35.950768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338470, 38.503975, 35.743820>,  <38.974232, 38.639290, 36.330189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338470, 38.503975, 35.743820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959286, 38.420216, 35.647888>,  <38.731773, 38.369961, 35.590328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959286, 38.420216, 35.647888>,  <39.338470, 38.503975, 35.743820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959286, 38.420216, 35.647888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171610, 0.298424, -0.938879,
		0.268164, -0.931181, -0.246962,
		-0.947965, -0.209392, -0.239827,
		38.674896, 38.357395, 35.575939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294426, 38.078117, 35.050793>,  <39.338470, 38.503975, 35.743820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294426, 38.078117, 35.050793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935364, 38.253784, 35.065506>,  <38.719929, 38.359184, 35.074333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935364, 38.253784, 35.065506>,  <39.294426, 38.078117, 35.050793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935364, 38.253784, 35.065506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108849, 0.301808, -0.947135,
		-0.427053, -0.846193, -0.318721,
		-0.897651, 0.439170, 0.036780,
		38.666069, 38.385536, 35.076542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912857, 37.985855, 34.462746>,  <39.294426, 38.078117, 35.050793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912857, 37.985855, 34.462746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694386, 38.296085, 34.589336>,  <38.563301, 38.482224, 34.665291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694386, 38.296085, 34.589336>,  <38.912857, 37.985855, 34.462746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694386, 38.296085, 34.589336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014841, 0.386712, -0.922081,
		-0.837534, -0.498929, -0.222726,
		-0.546183, 0.775580, 0.316481,
		38.530529, 38.528759, 34.684280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496281, 38.102024, 33.876842>,  <38.912857, 37.985855, 34.462746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496281, 38.102024, 33.876842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477474, 38.428951, 34.106544>,  <38.466190, 38.625107, 34.244366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477474, 38.428951, 34.106544>,  <38.496281, 38.102024, 33.876842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477474, 38.428951, 34.106544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026470, 0.573674, -0.818656,
		-0.998544, -0.053690, -0.005337,
		-0.047016, 0.817323, 0.574259,
		38.463371, 38.674149, 34.278824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906902, 38.455494, 33.658024>,  <38.496281, 38.102024, 33.876842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906902, 38.455494, 33.658024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152843, 38.712921, 33.840355>,  <38.300407, 38.867378, 33.949753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152843, 38.712921, 33.840355>,  <37.906902, 38.455494, 33.658024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152843, 38.712921, 33.840355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095334, 0.634407, -0.767098,
		-0.782861, 0.428194, 0.451418,
		0.614850, 0.643567, 0.455831,
		38.337299, 38.905991, 33.977104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577515, 39.151169, 33.624371>,  <37.906902, 38.455494, 33.658024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577515, 39.151169, 33.624371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959259, 39.257317, 33.679180>,  <38.188305, 39.321007, 33.712067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959259, 39.257317, 33.679180>,  <37.577515, 39.151169, 33.624371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959259, 39.257317, 33.679180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049606, 0.593264, -0.803478,
		-0.294508, 0.760011, 0.579352,
		0.954361, 0.265370, 0.137020,
		38.245567, 39.336929, 33.720287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553543, 39.928326, 33.402058>,  <37.577515, 39.151169, 33.624371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553543, 39.928326, 33.402058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940308, 39.826283, 33.400639>,  <38.172367, 39.765057, 33.399788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940308, 39.826283, 33.400639>,  <37.553543, 39.928326, 33.402058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940308, 39.826283, 33.400639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137225, 0.531726, -0.835725,
		0.215081, 0.807583, 0.549136,
		0.966907, -0.255104, -0.003543,
		38.230381, 39.749752, 33.399574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145309, 40.521835, 33.413998>,  <37.553543, 39.928326, 33.402058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145309, 40.521835, 33.413998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302082, 40.192635, 33.249535>,  <38.396145, 39.995113, 33.150856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302082, 40.192635, 33.249535>,  <38.145309, 40.521835, 33.413998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302082, 40.192635, 33.249535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154092, 0.499330, -0.852599,
		0.906996, 0.270808, 0.322523,
		0.391936, -0.823002, -0.411161,
		38.419662, 39.945732, 33.126186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720139, 40.725868, 33.180790>,  <38.145309, 40.521835, 33.413998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720139, 40.725868, 33.180790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644711, 40.392956, 32.972271>,  <38.599453, 40.193211, 32.847160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644711, 40.392956, 32.972271>,  <38.720139, 40.725868, 33.180790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644711, 40.392956, 32.972271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237553, 0.476404, -0.846527,
		0.952895, -0.283468, 0.107874,
		-0.188572, -0.832277, -0.521302,
		38.588139, 40.143272, 32.815880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086315, 40.872326, 32.549786>,  <38.720139, 40.725868, 33.180790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086315, 40.872326, 32.549786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834953, 40.579266, 32.445225>,  <38.684135, 40.403431, 32.382488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834953, 40.579266, 32.445225>,  <39.086315, 40.872326, 32.549786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834953, 40.579266, 32.445225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000071, 0.335984, -0.941868,
		0.777884, -0.591896, -0.211083,
		-0.628408, -0.732649, -0.261399,
		38.646431, 40.359470, 32.366806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365105, 40.609486, 31.951355>,  <39.086315, 40.872326, 32.549786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365105, 40.609486, 31.951355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984680, 40.486362, 31.940552>,  <38.756424, 40.412487, 31.934071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984680, 40.486362, 31.940552>,  <39.365105, 40.609486, 31.951355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984680, 40.486362, 31.940552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039705, -0.035062, -0.998596,
		0.306432, -0.950801, 0.045568,
		-0.951064, -0.307811, -0.027008,
		38.699360, 40.394020, 31.932449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247936, 40.143513, 31.362499>,  <39.365105, 40.609486, 31.951355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247936, 40.143513, 31.362499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863987, 40.237385, 31.423912>,  <38.633617, 40.293709, 31.460760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863987, 40.237385, 31.423912>,  <39.247936, 40.143513, 31.362499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863987, 40.237385, 31.423912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113886, 0.174093, -0.978122,
		-0.256278, -0.956355, -0.140380,
		-0.959870, 0.234684, 0.153531,
		38.576027, 40.307789, 31.469971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849850, 39.860619, 30.786198>,  <39.247936, 40.143513, 31.362499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849850, 39.860619, 30.786198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579575, 40.116650, 30.932482>,  <38.417408, 40.270267, 31.020252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579575, 40.116650, 30.932482>,  <38.849850, 39.860619, 30.786198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579575, 40.116650, 30.932482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339930, 0.169671, -0.925019,
		-0.654131, -0.749344, 0.102935,
		-0.675692, 0.640074, 0.365711,
		38.376865, 40.308670, 31.042194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195843, 39.610806, 30.632277>,  <38.849850, 39.860619, 30.786198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195843, 39.610806, 30.632277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192898, 40.006992, 30.687286>,  <38.191132, 40.244705, 30.720293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192898, 40.006992, 30.687286>,  <38.195843, 39.610806, 30.632277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192898, 40.006992, 30.687286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524510, 0.113266, -0.843837,
		-0.851372, -0.078350, 0.518677,
		-0.007367, 0.990471, 0.137527,
		38.190689, 40.304134, 30.728544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515759, 39.861168, 30.335608>,  <38.195843, 39.610806, 30.632277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515759, 39.861168, 30.335608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688408, 40.220165, 30.371849>,  <37.791996, 40.435562, 30.393595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688408, 40.220165, 30.371849>,  <37.515759, 39.861168, 30.335608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688408, 40.220165, 30.371849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520081, 0.329664, -0.787932,
		-0.737032, 0.292968, 0.609059,
		0.431623, 0.897492, 0.090606,
		37.817894, 40.489414, 30.399031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038372, 40.400585, 30.330772>,  <37.515759, 39.861168, 30.335608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038372, 40.400585, 30.330772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386547, 40.554508, 30.207966>,  <37.595451, 40.646862, 30.134281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386547, 40.554508, 30.207966>,  <37.038372, 40.400585, 30.330772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386547, 40.554508, 30.207966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416319, 0.242606, -0.876254,
		-0.262702, 0.890544, 0.371376,
		0.870440, 0.384804, -0.307018,
		37.647678, 40.669949, 30.115860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915447, 41.175179, 30.077579>,  <37.038372, 40.400585, 30.330772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915447, 41.175179, 30.077579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264988, 41.078548, 29.908810>,  <37.474712, 41.020569, 29.807549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264988, 41.078548, 29.908810>,  <36.915447, 41.175179, 30.077579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264988, 41.078548, 29.908810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336521, 0.325808, -0.883517,
		0.350905, 0.914051, 0.203413,
		0.873853, -0.241578, -0.421925,
		37.527145, 41.006077, 29.782232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126217, 41.712219, 29.729700>,  <36.915447, 41.175179, 30.077579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126217, 41.712219, 29.729700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351906, 41.433640, 29.552336>,  <37.487320, 41.266491, 29.445917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351906, 41.433640, 29.552336>,  <37.126217, 41.712219, 29.729700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351906, 41.433640, 29.552336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131074, 0.454691, -0.880951,
		0.815150, 0.555175, 0.165262,
		0.564225, -0.696446, -0.443411,
		37.521172, 41.224705, 29.419313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690556, 42.099083, 29.361094>,  <37.126217, 41.712219, 29.729700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690556, 42.099083, 29.361094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613785, 41.742424, 29.197077>,  <37.567722, 41.528431, 29.098667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613785, 41.742424, 29.197077>,  <37.690556, 42.099083, 29.361094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613785, 41.742424, 29.197077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127371, 0.436908, -0.890443,
		0.973109, -0.118669, -0.197422,
		-0.191923, -0.891644, -0.410044,
		37.556210, 41.474930, 29.074064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616531, 42.253452, 28.716372>,  <37.690556, 42.099083, 29.361094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616531, 42.253452, 28.716372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554558, 41.859779, 28.682001>,  <37.517372, 41.623577, 28.661379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554558, 41.859779, 28.682001>,  <37.616531, 42.253452, 28.716372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554558, 41.859779, 28.682001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071402, 0.097904, -0.992631,
		0.985341, -0.147659, -0.085441,
		-0.154936, -0.984181, -0.085926,
		37.508076, 41.564526, 28.656223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147800, 41.921146, 28.270283>,  <37.616531, 42.253452, 28.716372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147800, 41.921146, 28.270283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830666, 41.678833, 28.243670>,  <37.640385, 41.533443, 28.227701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830666, 41.678833, 28.243670>,  <38.147800, 41.921146, 28.270283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830666, 41.678833, 28.243670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039298, 0.159763, -0.986373,
		0.608161, -0.779422, -0.150472,
		-0.792841, -0.605786, -0.066532,
		37.592812, 41.497097, 28.223709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288609, 41.453751, 27.703768>,  <38.147800, 41.921146, 28.270283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288609, 41.453751, 27.703768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888844, 41.465332, 27.711056>,  <37.648983, 41.472282, 27.715427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888844, 41.465332, 27.711056>,  <38.288609, 41.453751, 27.703768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888844, 41.465332, 27.711056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014000, 0.139738, -0.990090,
		-0.031213, -0.989765, -0.139251,
		-0.999415, 0.028954, 0.018218,
		37.589020, 41.474018, 27.716520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011765, 41.062466, 27.112318>,  <38.288609, 41.453751, 27.703768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011765, 41.062466, 27.112318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712479, 41.311703, 27.203480>,  <37.532909, 41.461243, 27.258177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712479, 41.311703, 27.203480>,  <38.011765, 41.062466, 27.112318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712479, 41.311703, 27.203480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167791, 0.154628, -0.973620,
		-0.641893, -0.766714, -0.011146,
		-0.748211, 0.623090, 0.227902,
		37.488014, 41.498631, 27.271851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395336, 40.919132, 26.616123>,  <38.011765, 41.062466, 27.112318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395336, 40.919132, 26.616123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351063, 41.285480, 26.770493>,  <37.324501, 41.505287, 26.863115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351063, 41.285480, 26.770493>,  <37.395336, 40.919132, 26.616123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351063, 41.285480, 26.770493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043368, 0.383490, -0.922526,
		-0.992909, -0.118843, -0.002726,
		-0.110681, 0.915867, 0.385925,
		37.317860, 41.560242, 26.886271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792213, 41.174259, 26.196703>,  <37.395336, 40.919132, 26.616123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792213, 41.174259, 26.196703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005539, 41.466129, 26.367893>,  <37.133533, 41.641251, 26.470608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005539, 41.466129, 26.367893>,  <36.792213, 41.174259, 26.196703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005539, 41.466129, 26.367893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090787, 0.552376, -0.828637,
		-0.841034, 0.403065, 0.360832,
		0.533309, 0.729671, 0.427974,
		37.165531, 41.685032, 26.496284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480515, 41.740280, 26.080990>,  <36.792213, 41.174259, 26.196703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480515, 41.740280, 26.080990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831463, 41.908596, 26.173206>,  <37.042034, 42.009586, 26.228537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831463, 41.908596, 26.173206>,  <36.480515, 41.740280, 26.080990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831463, 41.908596, 26.173206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028763, 0.525753, -0.850151,
		-0.478945, 0.739268, 0.473385,
		0.877373, 0.420792, 0.230543,
		37.094673, 42.034832, 26.242369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365978, 42.418835, 26.026058>,  <36.480515, 41.740280, 26.080990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365978, 42.418835, 26.026058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761864, 42.370102, 25.996050>,  <36.999393, 42.340862, 25.978045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761864, 42.370102, 25.996050>,  <36.365978, 42.418835, 26.026058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761864, 42.370102, 25.996050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031271, 0.695860, -0.717496,
		0.139616, 0.707769, 0.692511,
		0.989712, -0.121829, -0.075021,
		37.058777, 42.333553, 25.973543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754841, 43.095634, 25.891081>,  <36.365978, 42.418835, 26.026058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754841, 43.095634, 25.891081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011738, 42.817558, 25.761934>,  <37.165874, 42.650711, 25.684446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011738, 42.817558, 25.761934>,  <36.754841, 43.095634, 25.891081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011738, 42.817558, 25.761934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108663, 0.499537, -0.859450,
		0.758764, 0.516888, 0.396363,
		0.642238, -0.695190, -0.322864,
		37.204411, 42.609001, 25.665075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282558, 43.393654, 25.481489>,  <36.754841, 43.095634, 25.891081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282558, 43.393654, 25.481489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292320, 43.025131, 25.326258>,  <37.298176, 42.804020, 25.233118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292320, 43.025131, 25.326258>,  <37.282558, 43.393654, 25.481489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292320, 43.025131, 25.326258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130258, 0.387816, -0.912487,
		0.991180, -0.028283, 0.129471,
		0.024403, -0.921303, -0.388079,
		37.299641, 42.748741, 25.209833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842930, 43.445873, 24.950506>,  <37.282558, 43.393654, 25.481489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842930, 43.445873, 24.950506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626381, 43.117157, 24.879433>,  <37.496452, 42.919926, 24.836788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626381, 43.117157, 24.879433>,  <37.842930, 43.445873, 24.950506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626381, 43.117157, 24.879433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137125, 0.122205, -0.982987,
		0.829526, -0.556526, 0.046530,
		-0.541371, -0.821794, -0.177686,
		37.463970, 42.870621, 24.826126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233624, 43.045719, 24.440952>,  <37.842930, 43.445873, 24.950506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233624, 43.045719, 24.440952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845444, 42.951813, 24.418619>,  <37.612537, 42.895470, 24.405220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845444, 42.951813, 24.418619>,  <38.233624, 43.045719, 24.440952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845444, 42.951813, 24.418619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055659, 0.007373, -0.998423,
		0.234803, -0.972025, 0.005911,
		-0.970448, -0.234762, -0.055833,
		37.554310, 42.881386, 24.401869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116493, 42.486362, 23.916693>,  <38.233624, 43.045719, 24.440952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116493, 42.486362, 23.916693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755562, 42.654556, 23.954641>,  <37.539005, 42.755474, 23.977411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755562, 42.654556, 23.954641>,  <38.116493, 42.486362, 23.916693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755562, 42.654556, 23.954641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039361, 0.138797, -0.989538,
		-0.429254, -0.896620, -0.108690,
		-0.902326, 0.420485, 0.094871,
		37.484863, 42.780701, 23.983103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585545, 42.092888, 23.407736>,  <38.116493, 42.486362, 23.916693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585545, 42.092888, 23.407736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608192, 41.748032, 23.206339>,  <38.621780, 41.541119, 23.085501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608192, 41.748032, 23.206339>,  <38.585545, 42.092888, 23.407736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608192, 41.748032, 23.206339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098022, -0.506665, 0.856553,
		-0.993572, 0.000853, -0.113198,
		0.056623, -0.862143, -0.503492,
		38.625179, 41.489388, 23.055292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968433, 41.633427, 23.522423>,  <38.585545, 42.092888, 23.407736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968433, 41.633427, 23.522423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300251, 41.428722, 23.433018>,  <38.499340, 41.305901, 23.379374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300251, 41.428722, 23.433018>,  <37.968433, 41.633427, 23.522423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300251, 41.428722, 23.433018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045342, -0.460649, 0.886424,
		-0.556598, -0.725193, -0.405333,
		0.829544, -0.511760, -0.223514,
		38.549114, 41.275196, 23.365963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062042, 41.104366, 24.081568>,  <37.968433, 41.633427, 23.522423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062042, 41.104366, 24.081568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414898, 41.064110, 23.897526>,  <38.626614, 41.039955, 23.787100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414898, 41.064110, 23.897526>,  <38.062042, 41.104366, 24.081568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414898, 41.064110, 23.897526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360973, -0.483033, 0.797733,
		-0.302529, -0.869800, -0.389775,
		0.882142, -0.100639, -0.460105,
		38.679539, 41.033916, 23.759495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319126, 40.432354, 24.332052>,  <38.062042, 41.104366, 24.081568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319126, 40.432354, 24.332052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663364, 40.585674, 24.197912>,  <38.869907, 40.677666, 24.117428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663364, 40.585674, 24.197912>,  <38.319126, 40.432354, 24.332052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663364, 40.585674, 24.197912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451761, -0.270521, 0.850135,
		0.235136, -0.883120, -0.405968,
		0.860594, 0.383298, -0.335350,
		38.921543, 40.700665, 24.097307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917606, 39.920105, 24.463078>,  <38.319126, 40.432354, 24.332052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917606, 39.920105, 24.463078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064564, 40.289337, 24.417564>,  <39.152740, 40.510876, 24.390257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064564, 40.289337, 24.417564>,  <38.917606, 39.920105, 24.463078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064564, 40.289337, 24.417564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477183, -0.082074, 0.874963,
		0.798320, -0.375755, -0.470630,
		0.367398, 0.923078, -0.113782,
		39.174782, 40.566261, 24.383430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548054, 39.865868, 24.856140>,  <38.917606, 39.920105, 24.463078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548054, 39.865868, 24.856140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551647, 40.261246, 24.795610>,  <39.553802, 40.498470, 24.759293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551647, 40.261246, 24.795610>,  <39.548054, 39.865868, 24.856140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551647, 40.261246, 24.795610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476063, 0.128852, 0.869920,
		0.879365, -0.079852, -0.469404,
		0.008982, 0.988444, -0.151322,
		39.554340, 40.557777, 24.750214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295631, 40.076618, 24.669348>,  <39.548054, 39.865868, 24.856140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295631, 40.076618, 24.669348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048038, 40.339272, 24.841713>,  <39.899483, 40.496864, 24.945131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048038, 40.339272, 24.841713>,  <40.295631, 40.076618, 24.669348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048038, 40.339272, 24.841713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603321, 0.046258, 0.796156,
		0.502850, 0.752789, -0.424795,
		-0.618987, 0.656635, 0.430913,
		39.862343, 40.536263, 24.970987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690506, 40.404671, 25.207998>,  <40.295631, 40.076618, 24.669348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690506, 40.404671, 25.207998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337265, 40.545876, 25.331617>,  <40.125320, 40.630596, 25.405788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337265, 40.545876, 25.331617>,  <40.690506, 40.404671, 25.207998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337265, 40.545876, 25.331617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309640, -0.056369, 0.949182,
		0.352491, 0.933920, -0.059526,
		-0.883105, 0.353009, 0.309048,
		40.072334, 40.651779, 25.424332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802059, 40.909504, 25.692879>,  <40.690506, 40.404671, 25.207998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802059, 40.909504, 25.692879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430717, 40.790211, 25.781609>,  <40.207912, 40.718636, 25.834846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430717, 40.790211, 25.781609>,  <40.802059, 40.909504, 25.692879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430717, 40.790211, 25.781609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284339, -0.185490, 0.940609,
		-0.239379, 0.936295, 0.257002,
		-0.928358, -0.298237, 0.221822,
		40.152210, 40.700741, 25.848156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685589, 41.316635, 26.309864>,  <40.802059, 40.909504, 25.692879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685589, 41.316635, 26.309864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428967, 41.010967, 26.283171>,  <40.274994, 40.827568, 26.267155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428967, 41.010967, 26.283171>,  <40.685589, 41.316635, 26.309864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428967, 41.010967, 26.283171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248304, -0.289199, 0.924505,
		-0.725777, 0.576550, 0.375283,
		-0.641555, -0.764169, -0.066735,
		40.236500, 40.781715, 26.263151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386337, 41.255997, 27.030462>,  <40.685589, 41.316635, 26.309864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386337, 41.255997, 27.030462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335674, 40.911263, 26.834019>,  <40.305275, 40.704422, 26.716152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335674, 40.911263, 26.834019>,  <40.386337, 41.255997, 27.030462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335674, 40.911263, 26.834019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173381, -0.506711, 0.844502,
		-0.976677, 0.021814, 0.213606,
		-0.126658, -0.861840, -0.491111,
		40.297676, 40.652710, 26.686686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976509, 41.011818, 27.433998>,  <40.386337, 41.255997, 27.030462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976509, 41.011818, 27.433998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109715, 40.692242, 27.233683>,  <40.189636, 40.500496, 27.113493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109715, 40.692242, 27.233683>,  <39.976509, 41.011818, 27.433998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109715, 40.692242, 27.233683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028490, -0.539386, 0.841576,
		-0.942492, -0.265987, -0.202383,
		0.333011, -0.798945, -0.500790,
		40.209618, 40.452557, 27.083447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544121, 40.358288, 27.660986>,  <39.976509, 41.011818, 27.433998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544121, 40.358288, 27.660986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878742, 40.191963, 27.518280>,  <40.079514, 40.092167, 27.432657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878742, 40.191963, 27.518280>,  <39.544121, 40.358288, 27.660986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878742, 40.191963, 27.518280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002988, -0.647687, 0.761901,
		-0.547879, -0.638436, -0.540581,
		0.836552, -0.415814, -0.356762,
		40.129707, 40.067219, 27.411251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408459, 39.609222, 27.559841>,  <39.544121, 40.358288, 27.660986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408459, 39.609222, 27.559841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798367, 39.692421, 27.592232>,  <40.032310, 39.742340, 27.611666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798367, 39.692421, 27.592232>,  <39.408459, 39.609222, 27.559841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798367, 39.692421, 27.592232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052151, -0.564987, 0.823450,
		0.217028, -0.798452, -0.561580,
		0.974771, 0.207998, 0.080978,
		40.090797, 39.754822, 27.616526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650284, 39.018799, 27.647646>,  <39.408459, 39.609222, 27.559841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650284, 39.018799, 27.647646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948647, 39.252132, 27.776234>,  <40.127663, 39.392132, 27.853386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948647, 39.252132, 27.776234>,  <39.650284, 39.018799, 27.647646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948647, 39.252132, 27.776234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038615, -0.519715, 0.853467,
		0.664932, -0.624192, -0.410183,
		0.745905, 0.583336, 0.321472,
		40.172417, 39.427132, 27.872675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077667, 38.589737, 27.886143>,  <39.650284, 39.018799, 27.647646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077667, 38.589737, 27.886143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179657, 38.933544, 28.063326>,  <40.240852, 39.139828, 28.169636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179657, 38.933544, 28.063326>,  <40.077667, 38.589737, 27.886143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179657, 38.933544, 28.063326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028120, -0.451314, 0.891922,
		0.966538, -0.239875, -0.090904,
		0.254977, 0.859521, 0.442957,
		40.256149, 39.191399, 28.196213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535225, 38.332932, 28.343544>,  <40.077667, 38.589737, 27.886143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535225, 38.332932, 28.343544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433086, 38.707397, 28.440205>,  <40.371803, 38.932076, 28.498201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433086, 38.707397, 28.440205>,  <40.535225, 38.332932, 28.343544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433086, 38.707397, 28.440205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013473, -0.246466, 0.969058,
		0.966755, 0.250702, 0.050321,
		-0.255347, 0.936164, 0.241650,
		40.356483, 38.988247, 28.512699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953793, 38.508892, 28.882105>,  <40.535225, 38.332932, 28.343544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953793, 38.508892, 28.882105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678768, 38.794243, 28.936306>,  <40.513756, 38.965454, 28.968826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678768, 38.794243, 28.936306>,  <40.953793, 38.508892, 28.882105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678768, 38.794243, 28.936306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089769, -0.101671, 0.990760,
		0.720558, 0.693370, 0.005866,
		-0.687559, 0.713374, 0.135502,
		40.472500, 39.008255, 28.976957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199997, 38.999638, 29.452896>,  <40.953793, 38.508892, 28.882105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199997, 38.999638, 29.452896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801224, 39.008526, 29.422884>,  <40.561958, 39.013859, 29.404877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801224, 39.008526, 29.422884>,  <41.199997, 38.999638, 29.452896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801224, 39.008526, 29.422884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077642, -0.161493, 0.983815,
		0.009746, 0.986623, 0.162723,
		-0.996934, 0.022223, -0.075029,
		40.502144, 39.015194, 29.400375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939995, 39.345139, 30.070475>,  <41.199997, 38.999638, 29.452896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939995, 39.345139, 30.070475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639439, 39.136673, 29.908583>,  <40.459106, 39.011593, 29.811447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639439, 39.136673, 29.908583>,  <40.939995, 39.345139, 30.070475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639439, 39.136673, 29.908583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212387, -0.389702, 0.896116,
		-0.624747, 0.759290, 0.182128,
		-0.751388, -0.521164, -0.404728,
		40.414021, 38.980324, 29.787165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427013, 39.551147, 30.551012>,  <40.939995, 39.345139, 30.070475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427013, 39.551147, 30.551012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324589, 39.203075, 30.382624>,  <40.263134, 38.994232, 30.281591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324589, 39.203075, 30.382624>,  <40.427013, 39.551147, 30.551012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324589, 39.203075, 30.382624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114198, -0.405207, 0.907064,
		-0.959890, 0.280342, 0.004387,
		-0.256066, -0.870181, -0.420969,
		40.247768, 38.942020, 30.256332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805069, 39.432831, 30.903833>,  <40.427013, 39.551147, 30.551012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805069, 39.432831, 30.903833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935230, 39.083862, 30.757957>,  <40.013329, 38.874481, 30.670433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935230, 39.083862, 30.757957>,  <39.805069, 39.432831, 30.903833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935230, 39.083862, 30.757957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132441, -0.423928, 0.895960,
		-0.936254, -0.243250, -0.253492,
		0.325405, -0.872418, -0.364688,
		40.032852, 38.822136, 30.648550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303040, 38.894447, 31.227057>,  <39.805069, 39.432831, 30.903833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303040, 38.894447, 31.227057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624596, 38.704151, 31.084267>,  <39.817528, 38.589973, 30.998592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624596, 38.704151, 31.084267>,  <39.303040, 38.894447, 31.227057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624596, 38.704151, 31.084267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096657, -0.487709, 0.867639,
		-0.586876, -0.731988, -0.346078,
		0.803887, -0.475745, -0.356977,
		39.865761, 38.561428, 30.977175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133087, 38.307598, 31.399717>,  <39.303040, 38.894447, 31.227057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133087, 38.307598, 31.399717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526123, 38.288136, 31.327999>,  <39.761944, 38.276459, 31.284969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526123, 38.288136, 31.327999>,  <39.133087, 38.307598, 31.399717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526123, 38.288136, 31.327999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133265, -0.487820, 0.862712,
		-0.129437, -0.871587, -0.472845,
		0.982592, -0.048653, -0.179294,
		39.820900, 38.273540, 31.274210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374489, 37.709286, 31.489220>,  <39.133087, 38.307598, 31.399717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374489, 37.709286, 31.489220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710091, 37.917149, 31.553761>,  <39.911449, 38.041866, 31.592485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710091, 37.917149, 31.553761>,  <39.374489, 37.709286, 31.489220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710091, 37.917149, 31.553761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136760, -0.488403, 0.861835,
		0.526661, -0.701015, -0.480839,
		0.839002, 0.519654, 0.161352,
		39.961792, 38.073044, 31.602167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810257, 37.222733, 31.828264>,  <39.374489, 37.709286, 31.489220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810257, 37.222733, 31.828264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975708, 37.578362, 31.906710>,  <40.074978, 37.791740, 31.953777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975708, 37.578362, 31.906710>,  <39.810257, 37.222733, 31.828264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975708, 37.578362, 31.906710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251435, -0.318575, 0.913942,
		0.875037, -0.328725, -0.355316,
		0.413631, 0.889072, 0.196112,
		40.099796, 37.845081, 31.965544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599194, 37.081841, 31.993231>,  <39.810257, 37.222733, 31.828264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599194, 37.081841, 31.993231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479237, 37.432312, 32.144161>,  <40.407261, 37.642593, 32.234718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479237, 37.432312, 32.144161>,  <40.599194, 37.081841, 31.993231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479237, 37.432312, 32.144161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368557, -0.258410, 0.892967,
		0.879903, 0.406861, -0.245426,
		-0.299893, 0.876178, 0.377328,
		40.389267, 37.695164, 32.257359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105579, 37.299717, 32.324677>,  <40.599194, 37.081841, 31.993231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105579, 37.299717, 32.324677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825844, 37.530338, 32.493679>,  <40.658001, 37.668713, 32.595081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825844, 37.530338, 32.493679>,  <41.105579, 37.299717, 32.324677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825844, 37.530338, 32.493679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349717, -0.239523, 0.905719,
		0.623396, 0.781161, -0.034124,
		-0.699339, 0.576555, 0.422504,
		40.616043, 37.703304, 32.620430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376125, 37.715012, 32.879307>,  <41.105579, 37.299717, 32.324677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376125, 37.715012, 32.879307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980644, 37.700565, 32.937489>,  <40.743355, 37.691898, 32.972397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980644, 37.700565, 32.937489>,  <41.376125, 37.715012, 32.879307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980644, 37.700565, 32.937489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147689, -0.399993, 0.904541,
		0.025513, 0.915806, 0.400809,
		-0.988705, -0.036118, 0.145459,
		40.684032, 37.689732, 32.981125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288929, 38.129143, 33.460442>,  <41.376125, 37.715012, 32.879307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288929, 38.129143, 33.460442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994034, 37.864246, 33.406902>,  <40.817097, 37.705307, 33.374779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994034, 37.864246, 33.406902>,  <41.288929, 38.129143, 33.460442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994034, 37.864246, 33.406902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003105, -0.194783, 0.980841,
		-0.675629, 0.723526, 0.141545,
		-0.737235, -0.662246, -0.133848,
		40.772861, 37.665573, 33.366749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788456, 38.181465, 34.108860>,  <41.288929, 38.129143, 33.460442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788456, 38.181465, 34.108860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686939, 37.828991, 33.949310>,  <40.626030, 37.617508, 33.853580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686939, 37.828991, 33.949310>,  <40.788456, 38.181465, 34.108860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686939, 37.828991, 33.949310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130636, -0.377370, 0.916802,
		-0.958397, 0.284784, -0.019342,
		-0.253791, -0.881187, -0.398873,
		40.610802, 37.564636, 33.829647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147625, 37.891449, 34.446793>,  <40.788456, 38.181465, 34.108860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147625, 37.891449, 34.446793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319790, 37.568207, 34.285942>,  <40.423088, 37.374260, 34.189430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319790, 37.568207, 34.285942>,  <40.147625, 37.891449, 34.446793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319790, 37.568207, 34.285942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367012, -0.563696, 0.739965,
		-0.824649, -0.170905, -0.539208,
		0.430413, -0.808108, -0.402127,
		40.448914, 37.325775, 34.165302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690357, 37.352924, 34.564137>,  <40.147625, 37.891449, 34.446793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690357, 37.352924, 34.564137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033199, 37.155735, 34.504345>,  <40.238907, 37.037422, 34.468468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033199, 37.155735, 34.504345>,  <39.690357, 37.352924, 34.564137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033199, 37.155735, 34.504345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318256, -0.734916, 0.598842,
		-0.405069, -0.465698, -0.786794,
		0.857107, -0.492974, -0.149481,
		40.290333, 37.007843, 34.459499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349991, 36.702595, 34.505810>,  <39.690357, 37.352924, 34.564137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349991, 36.702595, 34.505810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738911, 36.635883, 34.571308>,  <39.972263, 36.595856, 34.610607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738911, 36.635883, 34.571308>,  <39.349991, 36.702595, 34.505810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738911, 36.635883, 34.571308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231081, -0.791001, 0.566497,
		0.035044, -0.588645, -0.807632,
		0.972303, -0.166776, 0.163744,
		40.030602, 36.585850, 34.620430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431961, 35.996822, 34.379013>,  <39.349991, 36.702595, 34.505810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431961, 35.996822, 34.379013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731258, 36.116451, 34.615891>,  <39.910835, 36.188229, 34.758015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731258, 36.116451, 34.615891>,  <39.431961, 35.996822, 34.379013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731258, 36.116451, 34.615891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200911, -0.748555, 0.631902,
		0.632273, -0.591792, -0.500012,
		0.748241, 0.299077, 0.592189,
		39.955730, 36.206173, 34.793549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727928, 35.393379, 34.498966>,  <39.431961, 35.996822, 34.379013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727928, 35.393379, 34.498966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860588, 35.636753, 34.787357>,  <39.940186, 35.782776, 34.960392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860588, 35.636753, 34.787357>,  <39.727928, 35.393379, 34.498966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860588, 35.636753, 34.787357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055310, -0.750381, 0.658688,
		0.941778, -0.258334, -0.215214,
		0.331654, 0.608434, 0.720980,
		39.960083, 35.819283, 35.003651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331539, 35.036903, 34.843742>,  <39.727928, 35.393379, 34.498966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331539, 35.036903, 34.843742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203671, 35.316338, 35.099800>,  <40.126949, 35.483997, 35.253433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203671, 35.316338, 35.099800>,  <40.331539, 35.036903, 34.843742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203671, 35.316338, 35.099800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111125, -0.643289, 0.757516,
		0.940990, 0.313292, 0.128010,
		-0.319671, 0.698590, 0.640143,
		40.107769, 35.525913, 35.291843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832535, 35.105309, 35.353497>,  <40.331539, 35.036903, 34.843742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832535, 35.105309, 35.353497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489094, 35.238007, 35.509827>,  <40.283028, 35.317627, 35.603622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489094, 35.238007, 35.509827>,  <40.832535, 35.105309, 35.353497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489094, 35.238007, 35.509827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087340, -0.656563, 0.749197,
		0.505145, 0.677398, 0.534752,
		-0.858604, 0.331748, 0.390823,
		40.231514, 35.337532, 35.627075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990112, 35.113533, 36.095287>,  <40.832535, 35.105309, 35.353497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990112, 35.113533, 36.095287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592857, 35.149952, 36.065918>,  <40.354504, 35.171803, 36.048298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592857, 35.149952, 36.065918>,  <40.990112, 35.113533, 36.095287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592857, 35.149952, 36.065918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112924, -0.582776, 0.804748,
		0.030485, 0.807516, 0.589058,
		-0.993136, 0.091051, -0.073422,
		40.294918, 35.177269, 36.043892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715187, 35.351601, 36.766777>,  <40.990112, 35.113533, 36.095287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715187, 35.351601, 36.766777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401081, 35.193184, 36.576408>,  <40.212616, 35.098133, 36.462185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401081, 35.193184, 36.576408>,  <40.715187, 35.351601, 36.766777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401081, 35.193184, 36.576408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196158, -0.569937, 0.797931,
		-0.587263, 0.719945, 0.369865,
		-0.785267, -0.396044, -0.475926,
		40.165501, 35.074371, 36.433632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195221, 35.295254, 37.257809>,  <40.715187, 35.351601, 36.766777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195221, 35.295254, 37.257809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085526, 35.029621, 36.979588>,  <40.019707, 34.870243, 36.812656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085526, 35.029621, 36.979588>,  <40.195221, 35.295254, 37.257809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085526, 35.029621, 36.979588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385246, -0.586841, 0.712182,
		-0.881124, 0.463266, -0.094900,
		-0.274239, -0.664080, -0.695551,
		40.003254, 34.830399, 36.770924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485760, 35.127605, 37.411709>,  <40.195221, 35.295254, 37.257809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485760, 35.127605, 37.411709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651932, 34.842640, 37.185474>,  <39.751637, 34.671661, 37.049736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651932, 34.842640, 37.185474>,  <39.485760, 35.127605, 37.411709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651932, 34.842640, 37.185474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123935, -0.660308, 0.740698,
		-0.901143, -0.237612, -0.362604,
		0.415429, -0.712414, -0.565584,
		39.776562, 34.628914, 37.015800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197643, 34.624008, 37.746861>,  <39.485760, 35.127605, 37.411709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197643, 34.624008, 37.746861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490902, 34.469276, 37.523125>,  <39.666855, 34.376438, 37.388882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490902, 34.469276, 37.523125>,  <39.197643, 34.624008, 37.746861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490902, 34.469276, 37.523125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174291, -0.688135, 0.704339,
		-0.657359, -0.613871, -0.437083,
		0.733145, -0.386824, -0.559343,
		39.710846, 34.353230, 37.355320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166500, 33.829586, 37.928669>,  <39.197643, 34.624008, 37.746861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166500, 33.829586, 37.928669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517792, 33.878609, 37.743763>,  <39.728569, 33.908024, 37.632820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517792, 33.878609, 37.743763>,  <39.166500, 33.829586, 37.928669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517792, 33.878609, 37.743763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441647, -0.578645, 0.685651,
		-0.183453, -0.806318, -0.562313,
		0.878232, 0.122559, -0.462262,
		39.781261, 33.915375, 37.605083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598957, 33.140732, 37.912319>,  <39.166500, 33.829586, 37.928669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598957, 33.140732, 37.912319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860161, 33.436470, 37.846645>,  <40.016884, 33.613911, 37.807240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860161, 33.436470, 37.846645>,  <39.598957, 33.140732, 37.912319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860161, 33.436470, 37.846645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680762, -0.478008, 0.555042,
		0.331885, -0.474216, -0.815458,
		0.653005, 0.739343, -0.164184,
		40.056061, 33.658272, 37.797390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178486, 32.850842, 37.684578>,  <39.598957, 33.140732, 37.912319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178486, 32.850842, 37.684578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288090, 33.193451, 37.859528>,  <40.353851, 33.399017, 37.964497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288090, 33.193451, 37.859528>,  <40.178486, 32.850842, 37.684578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288090, 33.193451, 37.859528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706414, -0.487852, 0.512816,
		0.652609, 0.168451, -0.738732,
		0.274008, 0.856519, 0.437373,
		40.370293, 33.450405, 37.990738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884739, 32.838608, 37.659218>,  <40.178486, 32.850842, 37.684578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884739, 32.838608, 37.659218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799774, 33.115978, 37.934620>,  <40.748795, 33.282402, 38.099861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799774, 33.115978, 37.934620>,  <40.884739, 32.838608, 37.659218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799774, 33.115978, 37.934620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878826, -0.172508, 0.444866,
		0.427255, 0.699569, -0.572761,
		-0.212409, 0.693429, 0.688505,
		40.736050, 33.324005, 38.141171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538940, 33.088032, 37.848614>,  <40.884739, 32.838608, 37.659218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538940, 33.088032, 37.848614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314369, 33.235657, 38.144878>,  <41.179626, 33.324234, 38.322639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314369, 33.235657, 38.144878>,  <41.538940, 33.088032, 37.848614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314369, 33.235657, 38.144878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785420, -0.044203, 0.617382,
		0.260594, 0.928352, -0.265055,
		-0.561432, 0.369065, 0.740665,
		41.145939, 33.346375, 38.367077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909794, 33.598621, 38.211483>,  <41.538940, 33.088032, 37.848614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909794, 33.598621, 38.211483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649002, 33.468800, 38.485588>,  <41.492527, 33.390907, 38.650051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649002, 33.468800, 38.485588>,  <41.909794, 33.598621, 38.211483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649002, 33.468800, 38.485588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746677, -0.117589, 0.654712,
		-0.131912, 0.938528, 0.319005,
		-0.651977, -0.324558, 0.685265,
		41.453407, 33.371433, 38.691166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828754, 34.000122, 38.899998>,  <41.909794, 33.598621, 38.211483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828754, 34.000122, 38.899998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734741, 33.618622, 38.974949>,  <41.678333, 33.389721, 39.019920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734741, 33.618622, 38.974949>,  <41.828754, 34.000122, 38.899998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734741, 33.618622, 38.974949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668722, -0.018769, 0.743276,
		-0.705386, 0.299999, 0.642208,
		-0.235036, -0.953755, 0.187376,
		41.664230, 33.332497, 39.031162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837788, 33.933422, 39.588371>,  <41.828754, 34.000122, 38.899998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837788, 33.933422, 39.588371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886463, 33.560047, 39.453384>,  <41.915668, 33.336021, 39.372395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886463, 33.560047, 39.453384>,  <41.837788, 33.933422, 39.588371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886463, 33.560047, 39.453384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834963, -0.087567, 0.543294,
		-0.536683, -0.347883, 0.768732,
		0.121687, -0.933439, -0.337465,
		41.922970, 33.280014, 39.352146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020393, 33.617939, 40.167320>,  <41.837788, 33.933422, 39.588371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020393, 33.617939, 40.167320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119789, 33.379574, 39.861862>,  <42.179424, 33.236557, 39.678589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119789, 33.379574, 39.861862>,  <42.020393, 33.617939, 40.167320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119789, 33.379574, 39.861862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830234, -0.275077, 0.484813,
		-0.498965, -0.754470, 0.426392,
		0.248486, -0.595910, -0.763640,
		42.194336, 33.200802, 39.632771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184444, 32.963280, 40.590298>,  <42.020393, 33.617939, 40.167320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184444, 32.963280, 40.590298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345978, 32.992783, 40.225555>,  <42.442898, 33.010483, 40.006710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345978, 32.992783, 40.225555>,  <42.184444, 32.963280, 40.590298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345978, 32.992783, 40.225555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873553, -0.327128, 0.360407,
		-0.271713, -0.942098, -0.196530,
		0.403829, 0.073752, -0.911857,
		42.467125, 33.014908, 39.952000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194962, 32.311565, 40.325378>,  <42.184444, 32.963280, 40.590298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194962, 32.311565, 40.325378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484566, 32.518009, 40.142319>,  <42.658329, 32.641876, 40.032482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484566, 32.518009, 40.142319>,  <42.194962, 32.311565, 40.325378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484566, 32.518009, 40.142319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688334, -0.583677, 0.430718,
		-0.044825, -0.626861, -0.777840,
		0.724007, 0.516107, -0.457653,
		42.701767, 32.672840, 40.005024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571793, 31.880411, 39.916626>,  <42.194962, 32.311565, 40.325378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571793, 31.880411, 39.916626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829384, 32.180595, 39.976086>,  <42.983940, 32.360706, 40.011761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829384, 32.180595, 39.976086>,  <42.571793, 31.880411, 39.916626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829384, 32.180595, 39.976086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645373, -0.637236, 0.421216,
		0.410830, -0.175322, -0.894696,
		0.643981, 0.750461, 0.148648,
		43.022579, 32.405735, 40.020679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174553, 31.589064, 39.746746>,  <42.571793, 31.880411, 39.916626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174553, 31.589064, 39.746746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276535, 31.887564, 39.992710>,  <43.337723, 32.066662, 40.140289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276535, 31.887564, 39.992710>,  <43.174553, 31.589064, 39.746746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276535, 31.887564, 39.992710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538428, -0.637777, 0.550759,
		0.803178, 0.190666, -0.564404,
		0.254953, 0.746249, 0.614908,
		43.353020, 32.111439, 40.177181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954304, 31.628042, 39.838089>,  <43.174553, 31.589064, 39.746746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954304, 31.628042, 39.838089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832100, 31.836552, 40.156822>,  <43.758778, 31.961658, 40.348061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832100, 31.836552, 40.156822>,  <43.954304, 31.628042, 39.838089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832100, 31.836552, 40.156822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701060, -0.443148, 0.558690,
		0.644345, 0.729309, -0.230061,
		-0.305507, 0.521275, 0.796830,
		43.740448, 31.992933, 40.395870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.575706, 31.890112, 40.192543>,  <43.954304, 31.628042, 39.838089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.575706, 31.890112, 40.192543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300236, 31.894077, 40.482544>,  <44.134953, 31.896458, 40.656544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300236, 31.894077, 40.482544>,  <44.575706, 31.890112, 40.192543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300236, 31.894077, 40.482544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600905, -0.551756, 0.578341,
		0.405759, 0.833947, 0.374022,
		-0.688675, 0.009916, 0.725002,
		44.093632, 31.897053, 40.700047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012260, 31.986650, 40.863712>,  <44.575706, 31.890112, 40.192543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012260, 31.986650, 40.863712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643818, 31.869072, 40.965824>,  <44.422752, 31.798525, 41.027092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643818, 31.869072, 40.965824>,  <45.012260, 31.986650, 40.863712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643818, 31.869072, 40.965824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385604, -0.598405, 0.702297,
		-0.053675, 0.745324, 0.664538,
		-0.921102, -0.293944, 0.255281,
		44.367489, 31.780890, 41.042408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998169, 31.978174, 41.534863>,  <45.012260, 31.986650, 40.863712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998169, 31.978174, 41.534863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683327, 31.737686, 41.479725>,  <44.494423, 31.593393, 41.446644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683327, 31.737686, 41.479725>,  <44.998169, 31.978174, 41.534863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683327, 31.737686, 41.479725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368740, -0.637785, 0.676210,
		-0.494466, 0.481420, 0.723698,
		-0.787105, -0.601219, -0.137845,
		44.447197, 31.557320, 41.438370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772606, 31.739178, 42.228897>,  <44.998169, 31.978174, 41.534863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772606, 31.739178, 42.228897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689850, 31.481512, 41.934345>,  <44.640198, 31.326914, 41.757614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689850, 31.481512, 41.934345>,  <44.772606, 31.739178, 42.228897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689850, 31.481512, 41.934345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425218, -0.737060, 0.525292,
		-0.881127, -0.204442, 0.426401,
		-0.206892, -0.644163, -0.736376,
		44.627781, 31.288263, 41.713432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305592, 31.184328, 42.316952>,  <44.772606, 31.739178, 42.228897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305592, 31.184328, 42.316952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599556, 31.097767, 42.059868>,  <44.775936, 31.045830, 41.905617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599556, 31.097767, 42.059868>,  <44.305592, 31.184328, 42.316952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599556, 31.097767, 42.059868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366033, -0.671247, 0.644551,
		-0.570900, -0.708941, -0.414097,
		0.734910, -0.216401, -0.642711,
		44.820030, 31.032846, 41.867054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356636, 30.401772, 42.104622>,  <44.305592, 31.184328, 42.316952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356636, 30.401772, 42.104622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705051, 30.598234, 42.107521>,  <44.914101, 30.716112, 42.109261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705051, 30.598234, 42.107521>,  <44.356636, 30.401772, 42.104622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705051, 30.598234, 42.107521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391373, -0.702847, 0.593998,
		0.296842, -0.514559, -0.804434,
		0.871041, 0.491157, 0.007250,
		44.966362, 30.745581, 42.109695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662048, 30.402439, 42.490543>,  <44.356636, 30.401772, 42.104622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662048, 30.402439, 42.490543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786121, 30.450247, 42.867798>,  <43.860565, 30.478931, 43.094151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786121, 30.450247, 42.867798>,  <43.662048, 30.402439, 42.490543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786121, 30.450247, 42.867798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259106, 0.943880, -0.204829,
		-0.914685, 0.307907, 0.261810,
		0.310185, 0.119518, 0.943133,
		43.879177, 30.486103, 43.150738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623367, 29.876720, 42.059032>,  <43.662048, 30.402439, 42.490543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623367, 29.876720, 42.059032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316578, 30.104013, 41.939796>,  <43.132504, 30.240389, 41.868256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316578, 30.104013, 41.939796>,  <43.623367, 29.876720, 42.059032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316578, 30.104013, 41.939796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641423, 0.665882, -0.381021,
		-0.018016, -0.483436, -0.875194,
		-0.766976, 0.568235, -0.298090,
		43.086487, 30.274485, 41.850368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567776, 29.943735, 41.359955>,  <43.623367, 29.876720, 42.059032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567776, 29.943735, 41.359955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416676, 30.278107, 41.519215>,  <43.326015, 30.478729, 41.614773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416676, 30.278107, 41.519215>,  <43.567776, 29.943735, 41.359955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416676, 30.278107, 41.519215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698207, 0.539597, -0.470471,
		-0.608123, 0.100274, -0.787484,
		-0.377748, 0.835931, 0.398153,
		43.303352, 30.528887, 41.638660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019402, 30.488939, 41.063885>,  <43.567776, 29.943735, 41.359955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019402, 30.488939, 41.063885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125748, 30.752573, 41.345287>,  <44.189556, 30.910753, 41.514130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125748, 30.752573, 41.345287>,  <44.019402, 30.488939, 41.063885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125748, 30.752573, 41.345287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577234, 0.693323, -0.431398,
		-0.772086, -0.291396, 0.564775,
		0.265864, 0.659084, 0.703509,
		44.205505, 30.950298, 41.556339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463932, 30.805573, 41.202271>,  <44.019402, 30.488939, 41.063885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463932, 30.805573, 41.202271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752728, 31.058630, 41.314335>,  <43.926006, 31.210464, 41.381573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752728, 31.058630, 41.314335>,  <43.463932, 30.805573, 41.202271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752728, 31.058630, 41.314335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445305, 0.734783, -0.511661,
		-0.529558, 0.244657, 0.812226,
		0.721992, 0.632642, 0.280163,
		43.969326, 31.248423, 41.398384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196274, 31.417925, 41.517441>,  <43.463932, 30.805573, 41.202271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196274, 31.417925, 41.517441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551800, 31.537066, 41.378132>,  <43.765114, 31.608549, 41.294548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551800, 31.537066, 41.378132>,  <43.196274, 31.417925, 41.517441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551800, 31.537066, 41.378132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441202, 0.761626, -0.474623,
		0.123884, 0.575510, 0.808358,
		0.888816, 0.297851, -0.348269,
		43.818443, 31.626421, 41.273651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112915, 32.076897, 41.583614>,  <43.196274, 31.417925, 41.517441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112915, 32.076897, 41.583614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413193, 32.024281, 41.324646>,  <43.593361, 31.992710, 41.169266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413193, 32.024281, 41.324646>,  <43.112915, 32.076897, 41.583614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413193, 32.024281, 41.324646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373874, 0.723363, -0.580486,
		0.544678, 0.677822, 0.493845,
		0.750695, -0.131542, -0.647420,
		43.638401, 31.984818, 41.130421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260937, 32.720547, 41.287270>,  <43.112915, 32.076897, 41.583614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260937, 32.720547, 41.287270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454357, 32.503605, 41.012451>,  <43.570412, 32.373440, 40.847561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454357, 32.503605, 41.012451>,  <43.260937, 32.720547, 41.287270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454357, 32.503605, 41.012451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312746, 0.626048, -0.714321,
		0.817536, 0.560283, 0.133109,
		0.483554, -0.542354, -0.687043,
		43.599422, 32.340900, 40.806339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594780, 33.249252, 40.877895>,  <43.260937, 32.720547, 41.287270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594780, 33.249252, 40.877895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544609, 32.904903, 40.680649>,  <43.514507, 32.698296, 40.562302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544609, 32.904903, 40.680649>,  <43.594780, 33.249252, 40.877895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544609, 32.904903, 40.680649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401127, 0.498609, -0.768431,
		0.907394, 0.101417, -0.407860,
		-0.125431, -0.860874, -0.493116,
		43.506981, 32.646641, 40.532715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854443, 33.377201, 40.217636>,  <43.594780, 33.249252, 40.877895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854443, 33.377201, 40.217636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572845, 33.094639, 40.188305>,  <43.403885, 32.925102, 40.170704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572845, 33.094639, 40.188305>,  <43.854443, 33.377201, 40.217636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572845, 33.094639, 40.188305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431827, 0.507738, -0.745471,
		0.563839, -0.493143, -0.662492,
		-0.703996, -0.706408, -0.073331,
		43.361645, 32.882717, 40.166306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727089, 33.192028, 39.457008>,  <43.854443, 33.377201, 40.217636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727089, 33.192028, 39.457008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417431, 33.163601, 39.708611>,  <43.231636, 33.146545, 39.859573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417431, 33.163601, 39.708611>,  <43.727089, 33.192028, 39.457008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417431, 33.163601, 39.708611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518780, 0.640613, -0.566112,
		-0.362718, -0.764568, -0.532795,
		-0.774147, -0.071065, 0.629004,
		43.185188, 33.142281, 39.897312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024746, 32.859791, 39.416039>,  <43.727089, 33.192028, 39.457008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024746, 32.859791, 39.416039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720566, 32.741493, 39.647297>,  <42.538059, 32.670517, 39.786053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720566, 32.741493, 39.647297>,  <43.024746, 32.859791, 39.416039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720566, 32.741493, 39.647297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609833, 0.019213, -0.792297,
		0.223207, -0.955075, -0.194964,
		-0.760449, -0.295742, 0.578147,
		42.492432, 32.652771, 39.820740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758865, 32.214626, 39.090771>,  <43.024746, 32.859791, 39.416039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758865, 32.214626, 39.090771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505955, 32.450977, 39.291206>,  <42.354210, 32.592789, 39.411469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505955, 32.450977, 39.291206>,  <42.758865, 32.214626, 39.090771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505955, 32.450977, 39.291206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537945, 0.130621, -0.832799,
		-0.557533, -0.796119, 0.235269,
		-0.632275, 0.590874, 0.501094,
		42.316273, 32.628239, 39.441536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091690, 32.040745, 38.888546>,  <42.758865, 32.214626, 39.090771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091690, 32.040745, 38.888546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029648, 32.397518, 39.058441>,  <41.992424, 32.611584, 39.160378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029648, 32.397518, 39.058441>,  <42.091690, 32.040745, 38.888546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029648, 32.397518, 39.058441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781597, 0.152156, -0.604942,
		-0.604193, -0.425800, 0.673532,
		-0.155102, 0.891932, 0.424735,
		41.983116, 32.665096, 39.185863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469334, 32.047234, 39.089882>,  <42.091690, 32.040745, 38.888546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469334, 32.047234, 39.089882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530396, 32.442303, 39.076084>,  <41.567032, 32.679344, 39.067806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530396, 32.442303, 39.076084>,  <41.469334, 32.047234, 39.089882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530396, 32.442303, 39.076084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861926, 0.115978, -0.493591,
		-0.483507, 0.105083, 0.869010,
		0.152654, 0.987678, -0.034498,
		41.576191, 32.738605, 39.065735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872036, 32.276878, 39.280876>,  <41.469334, 32.047234, 39.089882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872036, 32.276878, 39.280876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064754, 32.542313, 39.051956>,  <41.180386, 32.701572, 38.914604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064754, 32.542313, 39.051956>,  <40.872036, 32.276878, 39.280876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064754, 32.542313, 39.051956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819080, 0.108939, -0.563241,
		-0.311411, 0.740129, 0.596014,
		0.481800, 0.663582, -0.572300,
		41.209293, 32.741386, 38.880268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561367, 33.038933, 39.478043>,  <40.872036, 32.276878, 39.280876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561367, 33.038933, 39.478043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849178, 33.209839, 39.259056>,  <41.021866, 33.312382, 39.127663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849178, 33.209839, 39.259056>,  <40.561367, 33.038933, 39.478043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849178, 33.209839, 39.259056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686832, 0.321253, -0.651965,
		-0.102688, 0.845126, 0.524612,
		0.719526, 0.427269, -0.547470,
		41.065037, 33.338020, 39.094814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445591, 33.747818, 39.342937>,  <40.561367, 33.038933, 39.478043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445591, 33.747818, 39.342937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666862, 33.640163, 39.027580>,  <40.799625, 33.575573, 38.838367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666862, 33.640163, 39.027580>,  <40.445591, 33.747818, 39.342937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666862, 33.640163, 39.027580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656429, 0.441874, -0.611431,
		0.512926, 0.855754, 0.067769,
		0.553180, -0.269133, -0.788390,
		40.832817, 33.559422, 38.791061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353378, 34.262165, 38.831196>,  <40.445591, 33.747818, 39.342937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353378, 34.262165, 38.831196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588978, 34.000076, 38.641979>,  <40.730335, 33.842823, 38.528450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588978, 34.000076, 38.641979>,  <40.353378, 34.262165, 38.831196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588978, 34.000076, 38.641979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416669, 0.255324, -0.872466,
		0.692438, 0.710980, -0.122626,
		0.588996, -0.655223, -0.473039,
		40.765678, 33.803509, 38.500069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803204, 34.591427, 38.333305>,  <40.353378, 34.262165, 38.831196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803204, 34.591427, 38.333305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696232, 34.223709, 38.217808>,  <40.632050, 34.003078, 38.148510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696232, 34.223709, 38.217808>,  <40.803204, 34.591427, 38.333305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696232, 34.223709, 38.217808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476960, 0.386667, -0.789302,
		0.837253, -0.073360, -0.541873,
		-0.267428, -0.919297, -0.288748,
		40.616005, 33.947922, 38.131184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031574, 34.499149, 37.631241>,  <40.803204, 34.591427, 38.333305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031574, 34.499149, 37.631241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718788, 34.253059, 37.671291>,  <40.531116, 34.105404, 37.695320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718788, 34.253059, 37.671291>,  <41.031574, 34.499149, 37.631241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718788, 34.253059, 37.671291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314004, 0.250043, -0.915904,
		0.538456, -0.747643, -0.388709,
		-0.781963, -0.615230, 0.100125,
		40.484200, 34.068489, 37.701328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996716, 34.035072, 37.124542>,  <41.031574, 34.499149, 37.631241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996716, 34.035072, 37.124542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617195, 34.047298, 37.250298>,  <40.389484, 34.054634, 37.325752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617195, 34.047298, 37.250298>,  <40.996716, 34.035072, 37.124542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617195, 34.047298, 37.250298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305121, 0.168757, -0.937242,
		-0.081704, -0.985184, -0.150790,
		-0.948802, 0.030567, 0.314388,
		40.332554, 34.056469, 37.344616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737503, 33.684170, 36.678570>,  <40.996716, 34.035072, 37.124542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737503, 33.684170, 36.678570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436314, 33.882023, 36.852173>,  <40.255600, 34.000736, 36.956333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436314, 33.882023, 36.852173>,  <40.737503, 33.684170, 36.678570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436314, 33.882023, 36.852173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281310, 0.354276, -0.891826,
		-0.594888, -0.793614, -0.127615,
		-0.752977, 0.494637, 0.434006,
		40.210419, 34.030415, 36.982376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269699, 33.742104, 36.228424>,  <40.737503, 33.684170, 36.678570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269699, 33.742104, 36.228424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104980, 34.002415, 36.483582>,  <40.006149, 34.158604, 36.636677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104980, 34.002415, 36.483582>,  <40.269699, 33.742104, 36.228424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104980, 34.002415, 36.483582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011778, 0.703741, -0.710359,
		-0.911198, -0.285013, -0.297466,
		-0.411801, 0.650781, 0.637890,
		39.981441, 34.197647, 36.674950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399006, 33.025734, 36.703838>,  <40.269699, 33.742104, 36.228424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399006, 33.025734, 36.703838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116383, 33.287598, 36.811310>,  <39.946808, 33.444717, 36.875793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116383, 33.287598, 36.811310>,  <40.399006, 33.025734, 36.703838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116383, 33.287598, 36.811310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682761, -0.730474, -0.015621,
		0.186039, -0.194483, 0.963102,
		-0.706560, 0.654663, 0.268682,
		39.904415, 33.483997, 36.891914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592598, 32.529560, 36.285500>,  <40.399006, 33.025734, 36.703838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592598, 32.529560, 36.285500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824127, 32.647175, 35.981262>,  <40.963043, 32.717743, 35.798717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824127, 32.647175, 35.981262>,  <40.592598, 32.529560, 36.285500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824127, 32.647175, 35.981262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605032, 0.470491, 0.642319,
		0.546720, -0.831974, 0.094428,
		0.578820, 0.294037, -0.760598,
		40.997772, 32.735386, 35.753082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480556, 32.376930, 36.310894>,  <40.592598, 32.529560, 36.285500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480556, 32.376930, 36.310894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384735, 32.706581, 36.105591>,  <41.327244, 32.904369, 35.982410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384735, 32.706581, 36.105591>,  <41.480556, 32.376930, 36.310894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384735, 32.706581, 36.105591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598301, 0.541649, 0.590468,
		0.764625, -0.165636, -0.622827,
		-0.239551, 0.824125, -0.513258,
		41.312870, 32.953819, 35.951614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076187, 32.695950, 36.431931>,  <41.480556, 32.376930, 36.310894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076187, 32.695950, 36.431931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818336, 32.955334, 36.269966>,  <41.663624, 33.110966, 36.172787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818336, 32.955334, 36.269966>,  <42.076187, 32.695950, 36.431931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818336, 32.955334, 36.269966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354115, 0.722673, 0.593588,
		0.677536, 0.239260, -0.695486,
		-0.644630, 0.648459, -0.404911,
		41.624947, 33.149872, 36.148495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478771, 33.400963, 36.311195>,  <42.076187, 32.695950, 36.431931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478771, 33.400963, 36.311195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325134, 33.737408, 36.463512>,  <42.232952, 33.939274, 36.554901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325134, 33.737408, 36.463512>,  <42.478771, 33.400963, 36.311195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325134, 33.737408, 36.463512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391306, -0.225261, 0.892265,
		0.836274, 0.491716, -0.242612,
		-0.384090, 0.841114, 0.380791,
		42.209908, 33.989742, 36.577751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001064, 33.881260, 36.614128>,  <42.478771, 33.400963, 36.311195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001064, 33.881260, 36.614128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652325, 33.906212, 36.808445>,  <42.443081, 33.921185, 36.925034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652325, 33.906212, 36.808445>,  <43.001064, 33.881260, 36.614128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652325, 33.906212, 36.808445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464235, -0.210871, 0.860244,
		0.156102, 0.975522, 0.154888,
		-0.871847, 0.062381, 0.485789,
		42.390770, 33.924927, 36.954182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684929, 34.327076, 36.566448>,  <43.001064, 33.881260, 36.614128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684929, 34.327076, 36.566448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825191, 33.987194, 36.723949>,  <43.909348, 33.783264, 36.818451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825191, 33.987194, 36.723949>,  <43.684929, 34.327076, 36.566448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825191, 33.987194, 36.723949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382211, 0.513681, 0.768144,
		-0.854960, -0.118857, 0.504892,
		0.350653, -0.849708, 0.393749,
		43.930386, 33.732281, 36.842075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600464, 34.325008, 37.266678>,  <43.684929, 34.327076, 36.566448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600464, 34.325008, 37.266678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912167, 34.086067, 37.190868>,  <44.099190, 33.942703, 37.145382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912167, 34.086067, 37.190868>,  <43.600464, 34.325008, 37.266678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912167, 34.086067, 37.190868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536260, 0.479081, 0.694915,
		-0.324315, -0.643153, 0.693666,
		0.779259, -0.597357, -0.189524,
		44.145943, 33.906860, 37.134010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461723, 34.631207, 37.808834>,  <43.600464, 34.325008, 37.266678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461723, 34.631207, 37.808834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502956, 34.308109, 38.041019>,  <43.527695, 34.114250, 38.180328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502956, 34.308109, 38.041019>,  <43.461723, 34.631207, 37.808834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502956, 34.308109, 38.041019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215396, -0.587848, -0.779769,
		0.971071, -0.044648, -0.234581,
		0.103082, -0.807739, 0.580459,
		43.533882, 34.065788, 38.215157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786453, 35.250130, 37.658401>,  <43.461723, 34.631207, 37.808834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786453, 35.250130, 37.658401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134521, 35.179840, 37.842541>,  <44.343365, 35.137665, 37.953026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134521, 35.179840, 37.842541>,  <43.786453, 35.250130, 37.658401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134521, 35.179840, 37.842541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224973, -0.972874, 0.053891,
		0.438391, -0.150461, -0.886101,
		0.870173, -0.175723, 0.460349,
		44.395573, 35.127125, 37.980644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392818, 35.027168, 37.348499>,  <43.786453, 35.250130, 37.658401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392818, 35.027168, 37.348499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601757, 35.367432, 37.324696>,  <44.727119, 35.571590, 37.310413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601757, 35.367432, 37.324696>,  <44.392818, 35.027168, 37.348499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601757, 35.367432, 37.324696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576358, -0.403618, -0.710566,
		-0.628464, 0.336864, -0.701110,
		0.522345, 0.850655, -0.059505,
		44.758461, 35.622627, 37.306843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389732, 34.985550, 36.644020>,  <44.392818, 35.027168, 37.348499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389732, 34.985550, 36.644020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125294, 34.840446, 36.381306>,  <43.966633, 34.753384, 36.223679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125294, 34.840446, 36.381306>,  <44.389732, 34.985550, 36.644020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125294, 34.840446, 36.381306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726901, -0.526574, -0.440835,
		-0.185929, -0.768849, 0.611803,
		-0.661094, -0.362756, -0.656782,
		43.926964, 34.731621, 36.184273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441887, 34.132519, 36.645344>,  <44.389732, 34.985550, 36.644020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441887, 34.132519, 36.645344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298100, 34.317055, 36.320889>,  <44.211826, 34.427776, 36.126217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298100, 34.317055, 36.320889>,  <44.441887, 34.132519, 36.645344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298100, 34.317055, 36.320889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746998, -0.378693, -0.546430,
		-0.559264, -0.802343, -0.208493,
		-0.359469, 0.461343, -0.811138,
		44.190258, 34.455456, 36.077549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416557, 33.629890, 35.982224>,  <44.441887, 34.132519, 36.645344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416557, 33.629890, 35.982224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463753, 34.019329, 35.904057>,  <44.492069, 34.252991, 35.857155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463753, 34.019329, 35.904057>,  <44.416557, 33.629890, 35.982224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463753, 34.019329, 35.904057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824196, -0.205776, -0.527595,
		-0.553877, -0.098812, -0.826714,
		0.117985, 0.973598, -0.195416,
		44.499149, 34.311409, 35.845432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597988, 33.775742, 35.277756>,  <44.416557, 33.629890, 35.982224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597988, 33.775742, 35.277756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757000, 34.063202, 35.505974>,  <44.852406, 34.235680, 35.642902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757000, 34.063202, 35.505974>,  <44.597988, 33.775742, 35.277756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757000, 34.063202, 35.505974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853709, -0.061721, -0.517080,
		-0.336385, 0.692628, -0.638053,
		0.397526, 0.718649, 0.570540,
		44.876259, 34.278797, 35.677135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942459, 34.249142, 34.897202>,  <44.597988, 33.775742, 35.277756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942459, 34.249142, 34.897202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142948, 34.289097, 35.241013>,  <45.263241, 34.313072, 35.447300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142948, 34.289097, 35.241013>,  <44.942459, 34.249142, 34.897202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142948, 34.289097, 35.241013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865099, -0.035598, -0.500337,
		-0.019381, 0.994361, -0.104257,
		0.501227, 0.099890, 0.859531,
		45.293316, 34.319065, 35.498871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496029, 34.789165, 34.866341>,  <44.942459, 34.249142, 34.897202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496029, 34.789165, 34.866341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607582, 34.516544, 35.136959>,  <45.674515, 34.352970, 35.299328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607582, 34.516544, 35.136959>,  <45.496029, 34.789165, 34.866341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607582, 34.516544, 35.136959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920281, -0.011647, -0.391084,
		0.274425, 0.731673, 0.623975,
		0.278878, -0.681556, 0.676542,
		45.691246, 34.312077, 35.339920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185001, 34.958298, 35.239037>,  <45.496029, 34.789165, 34.866341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185001, 34.958298, 35.239037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.141975, 34.561657, 35.210331>,  <46.116161, 34.323673, 35.193108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.141975, 34.561657, 35.210331>,  <46.185001, 34.958298, 35.239037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.141975, 34.561657, 35.210331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962849, -0.085915, -0.256010,
		0.247695, -0.096639, 0.964006,
		-0.107563, -0.991605, -0.071768,
		46.109707, 34.264175, 35.188801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.698635, 34.696056, 35.631886>,  <46.185001, 34.958298, 35.239037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.698635, 34.696056, 35.631886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598846, 34.441944, 35.339535>,  <46.538975, 34.289478, 35.164124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598846, 34.441944, 35.339535>,  <46.698635, 34.696056, 35.631886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.598846, 34.441944, 35.339535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966967, -0.122630, -0.223465,
		0.052336, -0.762483, 0.644888,
		-0.249471, -0.635281, -0.730878,
		46.524006, 34.251362, 35.120270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.332893, 34.499332, 35.334393>,  <46.698635, 34.696056, 35.631886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.332893, 34.499332, 35.334393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451675, 34.541557, 34.954777>,  <47.522945, 34.566891, 34.727009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451675, 34.541557, 34.954777>,  <47.332893, 34.499332, 35.334393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.451675, 34.541557, 34.954777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378320, 0.899534, 0.218430,
		0.876750, -0.423904, 0.227187,
		0.296957, 0.105559, -0.949038,
		47.540764, 34.573227, 34.670067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.007915, 34.751781, 35.355423>,  <47.332893, 34.499332, 35.334393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.007915, 34.751781, 35.355423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.839272, 34.837662, 35.003025>,  <47.738083, 34.889191, 34.791588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.839272, 34.837662, 35.003025>,  <48.007915, 34.751781, 35.355423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.839272, 34.837662, 35.003025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363168, 0.930221, 0.052897,
		0.830873, -0.297645, -0.470167,
		-0.421615, 0.214700, -0.880991,
		47.712788, 34.902073, 34.738728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.856091, 36.415775, 27.255833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475021, 36.297699, 27.226789>,  <35.246380, 36.226852, 27.209364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475021, 36.297699, 27.226789>,  <35.856091, 36.415775, 27.255833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475021, 36.297699, 27.226789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005894, -0.256735, 0.966464,
		-0.303937, 0.920297, 0.246324,
		-0.952674, -0.295195, -0.072607,
		35.189220, 36.209141, 27.205008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598972, 36.252064, 27.977371>,  <35.856091, 36.415775, 27.255833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598972, 36.252064, 27.977371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.274380, 36.110874, 27.791079>,  <35.079624, 36.026161, 27.679304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.274380, 36.110874, 27.791079>,  <35.598972, 36.252064, 27.977371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274380, 36.110874, 27.791079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215096, -0.560603, 0.799661,
		-0.543352, 0.749087, 0.378995,
		-0.811481, -0.352977, -0.465731,
		35.030937, 36.004982, 27.651360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034592, 36.377945, 28.459549>,  <35.598972, 36.252064, 27.977371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034592, 36.377945, 28.459549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987625, 36.074696, 28.202967>,  <34.959446, 35.892746, 28.049017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987625, 36.074696, 28.202967>,  <35.034592, 36.377945, 28.459549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987625, 36.074696, 28.202967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195682, -0.615599, 0.763378,
		-0.973613, 0.215155, -0.076069,
		-0.117417, -0.758120, -0.641457,
		34.952400, 35.847260, 28.010529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366779, 36.082897, 28.590204>,  <35.034592, 36.377945, 28.459549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366779, 36.082897, 28.590204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.600998, 35.806038, 28.421412>,  <34.741531, 35.639923, 28.320137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.600998, 35.806038, 28.421412>,  <34.366779, 36.082897, 28.590204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600998, 35.806038, 28.421412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112586, -0.584948, 0.803219,
		-0.802779, -0.422816, -0.420442,
		0.585551, -0.692143, -0.421981,
		34.776665, 35.598396, 28.294817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152851, 35.526337, 28.840895>,  <34.366779, 36.082897, 28.590204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152851, 35.526337, 28.840895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481781, 35.366634, 28.678720>,  <34.679138, 35.270813, 28.581417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481781, 35.366634, 28.678720>,  <34.152851, 35.526337, 28.840895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481781, 35.366634, 28.678720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107091, -0.591190, 0.799391,
		-0.558845, -0.700780, -0.443396,
		0.822328, -0.399251, -0.405431,
		34.728477, 35.246857, 28.557091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066959, 34.744781, 28.848749>,  <34.152851, 35.526337, 28.840895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066959, 34.744781, 28.848749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.456264, 34.835690, 28.862083>,  <34.689846, 34.890236, 28.870085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.456264, 34.835690, 28.862083>,  <34.066959, 34.744781, 28.848749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456264, 34.835690, 28.862083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146189, -0.724785, 0.673287,
		0.177183, -0.650410, -0.738629,
		0.973260, 0.227274, 0.033337,
		34.748241, 34.903873, 28.872084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420612, 34.122551, 28.931374>,  <34.066959, 34.744781, 28.848749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420612, 34.122551, 28.931374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.693016, 34.392498, 29.045061>,  <34.856457, 34.554466, 29.113274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.693016, 34.392498, 29.045061>,  <34.420612, 34.122551, 28.931374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693016, 34.392498, 29.045061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189439, -0.537282, 0.821852,
		0.707350, -0.505844, -0.493739,
		0.681006, 0.674871, 0.284220,
		34.897316, 34.594959, 29.130327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930489, 33.652500, 29.206438>,  <34.420612, 34.122551, 28.931374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930489, 33.652500, 29.206438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026295, 34.013794, 29.348875>,  <35.083778, 34.230572, 29.434338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026295, 34.013794, 29.348875>,  <34.930489, 33.652500, 29.206438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026295, 34.013794, 29.348875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046392, -0.376994, 0.925053,
		0.969784, -0.205044, -0.132198,
		0.239514, 0.903234, 0.356090,
		35.098148, 34.284763, 29.455702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574333, 33.570415, 29.457712>,  <34.930489, 33.652500, 29.206438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574333, 33.570415, 29.457712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418922, 33.880825, 29.656441>,  <35.325676, 34.067070, 29.775677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418922, 33.880825, 29.656441>,  <35.574333, 33.570415, 29.457712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418922, 33.880825, 29.656441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342381, -0.378992, 0.859733,
		0.855467, 0.504129, -0.118449,
		-0.388525, 0.776028, 0.496819,
		35.302364, 34.113632, 29.805487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094467, 33.732449, 29.949953>,  <35.574333, 33.570415, 29.457712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094467, 33.732449, 29.949953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.767643, 33.906662, 30.101068>,  <35.571548, 34.011189, 30.191738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.767643, 33.906662, 30.101068>,  <36.094467, 33.732449, 29.949953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767643, 33.906662, 30.101068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395689, -0.052980, 0.916855,
		0.419335, 0.898613, -0.129048,
		-0.817061, 0.435532, 0.377787,
		35.522526, 34.037323, 30.214405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371952, 34.243164, 30.355515>,  <36.094467, 33.732449, 29.949953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371952, 34.243164, 30.355515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.995468, 34.182503, 30.476267>,  <35.769577, 34.146107, 30.548717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.995468, 34.182503, 30.476267>,  <36.371952, 34.243164, 30.355515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995468, 34.182503, 30.476267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302661, 0.018474, 0.952919,
		-0.150089, 0.988261, 0.028512,
		-0.941207, -0.151652, 0.301880,
		35.713104, 34.137009, 30.566832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195995, 34.698093, 30.842154>,  <36.371952, 34.243164, 30.355515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195995, 34.698093, 30.842154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937405, 34.399849, 30.906818>,  <35.782249, 34.220901, 30.945618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937405, 34.399849, 30.906818>,  <36.195995, 34.698093, 30.842154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937405, 34.399849, 30.906818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331040, -0.083233, 0.939939,
		-0.687369, 0.661168, 0.300634,
		-0.646480, -0.745607, 0.161661,
		35.743462, 34.176167, 30.955317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887287, 34.896420, 31.503040>,  <36.195995, 34.698093, 30.842154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887287, 34.896420, 31.503040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834530, 34.506882, 31.429039>,  <35.802876, 34.273159, 31.384638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834530, 34.506882, 31.429039>,  <35.887287, 34.896420, 31.503040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834530, 34.506882, 31.429039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211115, -0.209949, 0.954647,
		-0.968522, 0.086856, 0.233284,
		-0.131894, -0.973847, -0.185004,
		35.794960, 34.214729, 31.373537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524231, 34.675987, 32.203621>,  <35.887287, 34.896420, 31.503040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524231, 34.675987, 32.203621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623508, 34.344006, 32.003788>,  <35.683075, 34.144817, 31.883888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623508, 34.344006, 32.003788>,  <35.524231, 34.675987, 32.203621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623508, 34.344006, 32.003788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141044, -0.479263, 0.866264,
		-0.958389, -0.285461, -0.001888,
		0.248189, -0.829951, -0.499583,
		35.697964, 34.095020, 31.853912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097523, 34.056679, 32.411747>,  <35.524231, 34.675987, 32.203621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097523, 34.056679, 32.411747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.443016, 33.926304, 32.258007>,  <35.650314, 33.848080, 32.165764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.443016, 33.926304, 32.258007>,  <35.097523, 34.056679, 32.411747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443016, 33.926304, 32.258007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084247, -0.658567, 0.747791,
		-0.496853, -0.678275, -0.541369,
		0.863736, -0.325933, -0.384354,
		35.702137, 33.828526, 32.142700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988083, 33.336624, 32.536018>,  <35.097523, 34.056679, 32.411747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988083, 33.336624, 32.536018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.370785, 33.427357, 32.463173>,  <35.600407, 33.481796, 32.419468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.370785, 33.427357, 32.463173>,  <34.988083, 33.336624, 32.536018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370785, 33.427357, 32.463173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269978, -0.459358, 0.846228,
		0.108295, -0.858801, -0.500733,
		0.956757, 0.226829, -0.182111,
		35.657810, 33.495407, 32.408539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264572, 32.853195, 32.895153>,  <34.988083, 33.336624, 32.536018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264572, 32.853195, 32.895153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552376, 33.124123, 32.833763>,  <35.725056, 33.286678, 32.796928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552376, 33.124123, 32.833763>,  <35.264572, 32.853195, 32.895153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552376, 33.124123, 32.833763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478396, -0.323179, 0.816513,
		0.503436, -0.660909, -0.556554,
		0.719507, 0.677315, -0.153476,
		35.768227, 33.327316, 32.787720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895168, 32.469704, 32.968391>,  <35.264572, 32.853195, 32.895153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895168, 32.469704, 32.968391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940758, 32.861988, 33.031914>,  <35.968109, 33.097359, 33.070026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940758, 32.861988, 33.031914>,  <35.895168, 32.469704, 32.968391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940758, 32.861988, 33.031914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371012, -0.190293, 0.908922,
		0.921608, -0.044672, -0.385543,
		0.113970, 0.980710, 0.158801,
		35.974949, 33.156200, 33.079556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523846, 32.477406, 33.283287>,  <35.895168, 32.469704, 32.968391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523846, 32.477406, 33.283287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389854, 32.848778, 33.347549>,  <36.309460, 33.071602, 33.386108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389854, 32.848778, 33.347549>,  <36.523846, 32.477406, 33.283287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389854, 32.848778, 33.347549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539995, 0.049443, 0.840215,
		0.772135, 0.368211, -0.517908,
		-0.334983, 0.928427, 0.160656,
		36.289360, 33.127304, 33.395744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206409, 32.913452, 33.521832>,  <36.523846, 32.477406, 33.283287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206409, 32.913452, 33.521832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.906425, 33.149891, 33.640606>,  <36.726437, 33.291752, 33.711868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.906425, 33.149891, 33.640606>,  <37.206409, 32.913452, 33.521832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906425, 33.149891, 33.640606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554702, 0.317425, 0.769121,
		0.360367, 0.741520, -0.565937,
		-0.749961, 0.591092, 0.296933,
		36.681438, 33.327217, 33.729687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487381, 33.660709, 33.558033>,  <37.206409, 32.913452, 33.521832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487381, 33.660709, 33.558033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181435, 33.595394, 33.807293>,  <36.997868, 33.556206, 33.956848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181435, 33.595394, 33.807293>,  <37.487381, 33.660709, 33.558033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181435, 33.595394, 33.807293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506350, 0.445599, 0.738276,
		-0.398229, 0.880214, -0.258142,
		-0.764869, -0.163292, 0.623146,
		36.951973, 33.546406, 33.994236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525055, 34.263889, 34.021442>,  <37.487381, 33.660709, 33.558033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525055, 34.263889, 34.021442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299950, 33.984314, 34.197979>,  <37.164886, 33.816570, 34.303902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299950, 33.984314, 34.197979>,  <37.525055, 34.263889, 34.021442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299950, 33.984314, 34.197979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415519, 0.222366, 0.881985,
		-0.714590, 0.679738, 0.165280,
		-0.562766, -0.698935, 0.441344,
		37.131119, 33.774635, 34.330383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912338, 34.127789, 34.632557>,  <37.525055, 34.263889, 34.021442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912338, 34.127789, 34.632557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.302567, 34.049816, 34.592045>,  <38.536705, 34.003033, 34.567738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.302567, 34.049816, 34.592045>,  <37.912338, 34.127789, 34.632557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302567, 34.049816, 34.592045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067551, 0.172518, -0.982687,
		0.209026, 0.965526, 0.155137,
		0.975574, -0.194927, -0.101283,
		38.595238, 33.991337, 34.561661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247124, 34.605892, 34.122211>,  <37.912338, 34.127789, 34.632557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247124, 34.605892, 34.122211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516964, 34.311138, 34.104671>,  <38.678867, 34.134285, 34.094147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516964, 34.311138, 34.104671>,  <38.247124, 34.605892, 34.122211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516964, 34.311138, 34.104671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077327, 0.129615, -0.988545,
		0.734123, 0.663480, 0.144419,
		0.674599, -0.736881, -0.043848,
		38.719345, 34.090073, 34.091518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863079, 34.835335, 33.821373>,  <38.247124, 34.605892, 34.122211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863079, 34.835335, 33.821373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.865719, 34.436657, 33.788982>,  <38.867302, 34.197449, 33.769547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.865719, 34.436657, 33.788982>,  <38.863079, 34.835335, 33.821373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865719, 34.436657, 33.788982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015481, 0.081074, -0.996588,
		0.999858, 0.005325, 0.015965,
		0.006601, -0.996694, -0.080980,
		38.867699, 34.137650, 33.764687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424149, 34.702499, 33.356274>,  <38.863079, 34.835335, 33.821373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424149, 34.702499, 33.356274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.186836, 34.381172, 33.335491>,  <39.044449, 34.188377, 33.323021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.186836, 34.381172, 33.335491>,  <39.424149, 34.702499, 33.356274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186836, 34.381172, 33.335491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056384, 0.022910, -0.998146,
		0.803020, -0.595108, 0.031702,
		-0.593279, -0.803318, -0.051952,
		39.008854, 34.140175, 33.319904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743217, 34.358810, 32.876617>,  <39.424149, 34.702499, 33.356274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743217, 34.358810, 32.876617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385983, 34.181747, 32.908752>,  <39.171642, 34.075512, 32.928032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385983, 34.181747, 32.908752>,  <39.743217, 34.358810, 32.876617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385983, 34.181747, 32.908752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081852, -0.015707, -0.996521,
		0.442376, -0.896555, -0.022204,
		-0.893087, -0.442654, 0.080333,
		39.118057, 34.048950, 32.932854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781548, 33.731045, 32.324730>,  <39.743217, 34.358810, 32.876617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781548, 33.731045, 32.324730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.402756, 33.830185, 32.406513>,  <39.175480, 33.889668, 32.455582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.402756, 33.830185, 32.406513>,  <39.781548, 33.731045, 32.324730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402756, 33.830185, 32.406513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200705, 0.040585, -0.978811,
		-0.250898, -0.967947, 0.011312,
		-0.946978, 0.247852, 0.204454,
		39.118664, 33.904541, 32.467850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333710, 33.211311, 31.968056>,  <39.781548, 33.731045, 32.324730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333710, 33.211311, 31.968056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.084068, 33.516850, 32.033821>,  <38.934284, 33.700172, 32.073280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.084068, 33.516850, 32.033821>,  <39.333710, 33.211311, 31.968056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084068, 33.516850, 32.033821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170536, 0.072182, -0.982704,
		-0.762502, -0.641349, 0.085214,
		-0.624106, 0.763846, 0.164412,
		38.896835, 33.746002, 32.083145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914295, 33.094490, 31.378515>,  <39.333710, 33.211311, 31.968056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914295, 33.094490, 31.378515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833466, 33.449127, 31.544947>,  <38.784966, 33.661907, 31.644806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833466, 33.449127, 31.544947>,  <38.914295, 33.094490, 31.378515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833466, 33.449127, 31.544947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269125, 0.358218, -0.894009,
		-0.941666, -0.292637, 0.166216,
		-0.202079, 0.886591, 0.416078,
		38.772842, 33.715103, 31.669769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173779, 33.252384, 31.208820>,  <38.914295, 33.094490, 31.378515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173779, 33.252384, 31.208820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377823, 33.590302, 31.273451>,  <38.500248, 33.793053, 31.312229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377823, 33.590302, 31.273451>,  <38.173779, 33.252384, 31.208820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377823, 33.590302, 31.273451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110506, 0.250667, -0.961746,
		-0.852982, 0.472740, 0.221223,
		0.510109, 0.844798, 0.161574,
		38.530857, 33.843742, 31.321922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865150, 33.562496, 30.687170>,  <38.173779, 33.252384, 31.208820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865150, 33.562496, 30.687170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.184864, 33.788307, 30.769581>,  <38.376694, 33.923794, 30.819027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.184864, 33.788307, 30.769581>,  <37.865150, 33.562496, 30.687170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184864, 33.788307, 30.769581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155698, 0.136595, -0.978315,
		-0.580428, 0.814034, 0.021283,
		0.799288, 0.564527, 0.206027,
		38.424652, 33.957664, 30.831388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696751, 34.227814, 30.314270>,  <37.865150, 33.562496, 30.687170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696751, 34.227814, 30.314270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087498, 34.269104, 30.389177>,  <38.321945, 34.293877, 30.434122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087498, 34.269104, 30.389177>,  <37.696751, 34.227814, 30.314270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087498, 34.269104, 30.389177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114561, 0.486834, -0.865949,
		-0.180557, 0.867373, 0.463748,
		0.976870, 0.103226, 0.187268,
		38.380558, 34.300072, 30.445358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867409, 34.944954, 30.166327>,  <37.696751, 34.227814, 30.314270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867409, 34.944954, 30.166327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174973, 34.693226, 30.121197>,  <38.359512, 34.542187, 30.094120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174973, 34.693226, 30.121197>,  <37.867409, 34.944954, 30.166327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174973, 34.693226, 30.121197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168641, 0.369845, -0.913660,
		0.616715, 0.683495, 0.390507,
		0.768910, -0.629324, -0.112824,
		38.405647, 34.504429, 30.087349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577850, 35.276356, 30.037600>,  <37.867409, 34.944954, 30.166327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577850, 35.276356, 30.037600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.583820, 34.905983, 29.886644>,  <38.587402, 34.683758, 29.796072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.583820, 34.905983, 29.886644>,  <38.577850, 35.276356, 30.037600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583820, 34.905983, 29.886644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023366, 0.377648, -0.925654,
		0.999616, 0.004994, 0.027270,
		0.014921, -0.925936, -0.377387,
		38.588295, 34.628201, 29.773428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080376, 35.292423, 29.567352>,  <38.577850, 35.276356, 30.037600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080376, 35.292423, 29.567352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837986, 34.991154, 29.464964>,  <38.692551, 34.810390, 29.403530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837986, 34.991154, 29.464964>,  <39.080376, 35.292423, 29.567352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837986, 34.991154, 29.464964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086521, 0.382278, -0.919988,
		0.790762, -0.535345, -0.296817,
		-0.605978, -0.753173, -0.255972,
		38.656193, 34.765202, 29.388172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286476, 35.070759, 28.889330>,  <39.080376, 35.292423, 29.567352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286476, 35.070759, 28.889330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905487, 34.955608, 28.929159>,  <38.676891, 34.886517, 28.953056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905487, 34.955608, 28.929159>,  <39.286476, 35.070759, 28.889330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905487, 34.955608, 28.929159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202522, 0.354285, -0.912944,
		0.227537, -0.889724, -0.395749,
		-0.952477, -0.287876, 0.099576,
		38.619743, 34.869244, 28.959032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065189, 34.891773, 28.168209>,  <39.286476, 35.070759, 28.889330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065189, 34.891773, 28.168209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718094, 34.906757, 28.366455>,  <38.509838, 34.915749, 28.485403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718094, 34.906757, 28.366455>,  <39.065189, 34.891773, 28.168209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718094, 34.906757, 28.366455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430222, 0.442724, -0.786705,
		-0.248888, -0.895875, -0.368051,
		-0.867735, 0.037458, 0.495614,
		38.457775, 34.917995, 28.515139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560059, 34.770760, 27.649698>,  <39.065189, 34.891773, 28.168209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560059, 34.770760, 27.649698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386360, 34.928017, 27.973888>,  <38.282143, 35.022373, 28.168402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386360, 34.928017, 27.973888>,  <38.560059, 34.770760, 27.649698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386360, 34.928017, 27.973888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577305, 0.569206, -0.585426,
		-0.691484, -0.722109, -0.020211,
		-0.434245, 0.393145, 0.810474,
		38.256088, 35.045959, 28.217031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873638, 34.736145, 27.550489>,  <38.560059, 34.770760, 27.649698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873638, 34.736145, 27.550489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931477, 35.051132, 27.790150>,  <37.966179, 35.240124, 27.933947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931477, 35.051132, 27.790150>,  <37.873638, 34.736145, 27.550489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931477, 35.051132, 27.790150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482443, 0.584775, -0.652140,
		-0.863909, -0.194757, 0.464467,
		0.144600, 0.787469, 0.599152,
		37.974857, 35.287373, 27.969896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.193474, 34.997940, 27.711807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458706, 35.291862, 27.768904>,  <37.617847, 35.468216, 27.803162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458706, 35.291862, 27.768904>,  <37.193474, 34.997940, 27.711807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458706, 35.291862, 27.768904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434179, 0.532889, -0.726304,
		-0.609760, 0.419626, 0.672389,
		0.663085, 0.734808, 0.142741,
		37.657631, 35.512306, 27.811726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769955, 35.522854, 27.668072>,  <37.193474, 34.997940, 27.711807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769955, 35.522854, 27.668072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.130623, 35.679211, 27.594107>,  <37.347023, 35.773026, 27.549728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.130623, 35.679211, 27.594107>,  <36.769955, 35.522854, 27.668072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130623, 35.679211, 27.594107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401910, 0.599790, -0.691897,
		-0.159545, 0.698183, 0.697915,
		0.901673, 0.390887, -0.184913,
		37.401123, 35.796478, 27.538633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693596, 36.143768, 27.689835>,  <36.769955, 35.522854, 27.668072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693596, 36.143768, 27.689835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.034641, 36.091419, 27.487480>,  <37.239269, 36.060009, 27.366068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.034641, 36.091419, 27.487480>,  <36.693596, 36.143768, 27.689835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034641, 36.091419, 27.487480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308384, 0.655524, -0.689338,
		0.421838, 0.743747, 0.518550,
		0.852615, -0.130876, -0.505885,
		37.290424, 36.052155, 27.335714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829357, 36.780060, 27.458799>,  <36.693596, 36.143768, 27.689835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829357, 36.780060, 27.458799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041798, 36.530266, 27.229731>,  <37.169262, 36.380390, 27.092289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041798, 36.530266, 27.229731>,  <36.829357, 36.780060, 27.458799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041798, 36.530266, 27.229731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141181, 0.601204, -0.786525,
		0.835463, 0.498576, 0.231136,
		0.531102, -0.624481, -0.572673,
		37.201130, 36.342922, 27.057928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291164, 37.243538, 27.187483>,  <36.829357, 36.780060, 27.458799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291164, 37.243538, 27.187483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281895, 36.912075, 26.963772>,  <37.276333, 36.713196, 26.829546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281895, 36.912075, 26.963772>,  <37.291164, 37.243538, 27.187483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281895, 36.912075, 26.963772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172378, 0.554360, -0.814230,
		0.984758, 0.077534, -0.155691,
		-0.023178, -0.828658, -0.559275,
		37.274940, 36.663479, 26.795990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710583, 37.341190, 26.656725>,  <37.291164, 37.243538, 27.187483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710583, 37.341190, 26.656725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470604, 37.054935, 26.513662>,  <37.326614, 36.883183, 26.427824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470604, 37.054935, 26.513662>,  <37.710583, 37.341190, 26.656725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470604, 37.054935, 26.513662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043218, 0.475390, -0.878713,
		0.798869, -0.511727, -0.316139,
		-0.599951, -0.715640, -0.357658,
		37.290619, 36.840244, 26.406364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860565, 37.216305, 25.976652>,  <37.710583, 37.341190, 26.656725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860565, 37.216305, 25.976652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478558, 37.097702, 25.978333>,  <37.249352, 37.026539, 25.979342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478558, 37.097702, 25.978333>,  <37.860565, 37.216305, 25.976652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478558, 37.097702, 25.978333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148896, 0.467223, -0.871512,
		0.256446, -0.832938, -0.490357,
		-0.955022, -0.296508, 0.004203,
		37.192051, 37.008751, 25.979593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804699, 36.777897, 25.326664>,  <37.860565, 37.216305, 25.976652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804699, 36.777897, 25.326664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.438725, 36.899189, 25.433205>,  <37.219139, 36.971966, 25.497129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.438725, 36.899189, 25.433205>,  <37.804699, 36.777897, 25.326664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438725, 36.899189, 25.433205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140361, 0.379685, -0.914406,
		-0.378404, -0.874009, -0.304827,
		-0.914937, 0.303229, 0.266351,
		37.164242, 36.990158, 25.513109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280117, 36.697216, 24.725136>,  <37.804699, 36.777897, 25.326664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280117, 36.697216, 24.725136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.065033, 36.949013, 24.949493>,  <36.935982, 37.100090, 25.084108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.065033, 36.949013, 24.949493>,  <37.280117, 36.697216, 24.725136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065033, 36.949013, 24.949493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328553, 0.456222, -0.826991,
		-0.776478, -0.628967, -0.038494,
		-0.537712, 0.629493, 0.560896,
		36.903721, 37.137859, 25.117762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693027, 36.739059, 24.292593>,  <37.280117, 36.697216, 24.725136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693027, 36.739059, 24.292593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.687637, 37.055264, 24.537512>,  <36.684402, 37.244987, 24.684464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.687637, 37.055264, 24.537512>,  <36.693027, 36.739059, 24.292593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687637, 37.055264, 24.537512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319930, 0.576752, -0.751666,
		-0.947345, -0.206020, 0.245138,
		-0.013474, 0.790514, 0.612296,
		36.683594, 37.292419, 24.721201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178410, 37.143257, 23.996944>,  <36.693027, 36.739059, 24.292593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178410, 37.143257, 23.996944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.324867, 37.402615, 24.263935>,  <36.412743, 37.558231, 24.424129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.324867, 37.402615, 24.263935>,  <36.178410, 37.143257, 23.996944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324867, 37.402615, 24.263935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138276, 0.747229, -0.650022,
		-0.920229, 0.145703, 0.363249,
		0.366141, 0.648397, 0.667475,
		36.434708, 37.597134, 24.464178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694160, 37.754608, 24.052792>,  <36.178410, 37.143257, 23.996944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694160, 37.754608, 24.052792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070126, 37.853714, 24.146753>,  <36.295704, 37.913177, 24.203131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070126, 37.853714, 24.146753>,  <35.694160, 37.754608, 24.052792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070126, 37.853714, 24.146753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005316, 0.698550, -0.715541,
		-0.341379, 0.671296, 0.657892,
		0.939910, 0.247768, 0.234902,
		36.352100, 37.928043, 24.217224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706356, 38.389297, 23.857018>,  <35.694160, 37.754608, 24.052792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706356, 38.389297, 23.857018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.100433, 38.354538, 23.916147>,  <36.336880, 38.333683, 23.951626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.100433, 38.354538, 23.916147>,  <35.706356, 38.389297, 23.857018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100433, 38.354538, 23.916147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168723, 0.645027, -0.745301,
		-0.030589, 0.759203, 0.650134,
		0.985189, -0.086895, 0.147826,
		36.395988, 38.328468, 23.960495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951435, 38.974712, 23.769104>,  <35.706356, 38.389297, 23.857018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951435, 38.974712, 23.769104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282436, 38.761654, 23.698071>,  <36.481037, 38.633820, 23.655451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282436, 38.761654, 23.698071>,  <35.951435, 38.974712, 23.769104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282436, 38.761654, 23.698071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288562, 0.674774, -0.679273,
		0.481638, 0.510855, 0.712076,
		0.827500, -0.532641, -0.177584,
		36.530685, 38.601860, 23.644796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599003, 39.491383, 23.649118>,  <35.951435, 38.974712, 23.769104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599003, 39.491383, 23.649118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.733341, 39.147392, 23.495417>,  <36.813946, 38.940998, 23.403194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.733341, 39.147392, 23.495417>,  <36.599003, 39.491383, 23.649118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733341, 39.147392, 23.495417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290175, 0.482571, -0.826392,
		0.896106, 0.166038, 0.411612,
		0.335845, -0.859975, -0.384255,
		36.834095, 38.889400, 23.380140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296951, 39.644535, 23.351929>,  <36.599003, 39.491383, 23.649118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296951, 39.644535, 23.351929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.125351, 39.324623, 23.183971>,  <37.022392, 39.132675, 23.083197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.125351, 39.324623, 23.183971>,  <37.296951, 39.644535, 23.351929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125351, 39.324623, 23.183971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242698, 0.345697, -0.906417,
		0.870091, -0.490759, 0.045801,
		-0.428999, -0.799780, -0.419894,
		36.996651, 39.084690, 23.058002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879478, 39.358765, 22.901001>,  <37.296951, 39.644535, 23.351929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879478, 39.358765, 22.901001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.515221, 39.259991, 22.768492>,  <37.296665, 39.200726, 22.688986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.515221, 39.259991, 22.768492>,  <37.879478, 39.358765, 22.901001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515221, 39.259991, 22.768492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243512, 0.326964, -0.913125,
		0.333825, -0.912197, -0.237607,
		-0.910639, -0.246964, -0.331280,
		37.242027, 39.185909, 22.669109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883751, 39.347549, 22.204573>,  <37.879478, 39.358765, 22.901001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883751, 39.347549, 22.204573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.484386, 39.325588, 22.199627>,  <37.244766, 39.312412, 22.196659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.484386, 39.325588, 22.199627>,  <37.883751, 39.347549, 22.204573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484386, 39.325588, 22.199627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002338, 0.259975, -0.965612,
		0.056224, -0.964053, -0.259692,
		-0.998415, -0.054898, -0.012363,
		37.184860, 39.309120, 22.195917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678211, 38.975410, 21.636412>,  <37.883751, 39.347549, 22.204573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678211, 38.975410, 21.636412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364578, 39.205315, 21.730103>,  <37.176399, 39.343258, 21.786318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364578, 39.205315, 21.730103>,  <37.678211, 38.975410, 21.636412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364578, 39.205315, 21.730103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027766, 0.344526, -0.938366,
		-0.620035, -0.742261, -0.254178,
		-0.784083, 0.574762, 0.234228,
		37.129353, 39.377743, 21.800371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134880, 38.883495, 21.133091>,  <37.678211, 38.975410, 21.636412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134880, 38.883495, 21.133091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.107876, 39.247055, 21.297695>,  <37.091675, 39.465191, 21.396458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.107876, 39.247055, 21.297695>,  <37.134880, 38.883495, 21.133091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107876, 39.247055, 21.297695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179617, 0.416786, -0.891082,
		-0.981417, 0.013758, -0.191391,
		-0.067509, 0.908900, 0.411512,
		37.087624, 39.519726, 21.421148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949501, 39.305843, 20.527821>,  <37.134880, 38.883495, 21.133091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949501, 39.305843, 20.527821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025974, 39.578671, 20.810163>,  <37.071857, 39.742367, 20.979568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025974, 39.578671, 20.810163>,  <36.949501, 39.305843, 20.527821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025974, 39.578671, 20.810163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224723, 0.669605, -0.707905,
		-0.955482, 0.293965, -0.025256,
		0.191188, 0.682066, 0.705856,
		37.083332, 39.783291, 21.021921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495720, 39.967922, 20.424435>,  <36.949501, 39.305843, 20.527821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495720, 39.967922, 20.424435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831486, 40.058914, 20.621874>,  <37.032944, 40.113510, 20.740337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831486, 40.058914, 20.621874>,  <36.495720, 39.967922, 20.424435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831486, 40.058914, 20.621874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214947, 0.695198, -0.685928,
		-0.499183, 0.681874, 0.534662,
		0.839413, 0.227480, 0.493598,
		37.083309, 40.127159, 20.769953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849857, 39.499538, 20.302845>,  <36.495720, 39.967922, 20.424435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849857, 39.499538, 20.302845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623692, 39.804569, 20.177122>,  <35.487991, 39.987587, 20.101688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623692, 39.804569, 20.177122>,  <35.849857, 39.499538, 20.302845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623692, 39.804569, 20.177122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584767, -0.101873, 0.804779,
		0.581684, 0.638829, 0.503528,
		-0.565412, 0.762574, -0.314308,
		35.454067, 40.033340, 20.082830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762684, 39.879654, 20.867086>,  <35.849857, 39.499538, 20.302845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762684, 39.879654, 20.867086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452473, 39.965515, 20.629604>,  <35.266346, 40.017033, 20.487116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452473, 39.965515, 20.629604>,  <35.762684, 39.879654, 20.867086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452473, 39.965515, 20.629604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627174, -0.154385, 0.763425,
		0.072211, 0.964412, 0.254353,
		-0.775525, 0.214652, -0.593705,
		35.219814, 40.029911, 20.451492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425091, 40.352444, 21.215199>,  <35.762684, 39.879654, 20.867086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425091, 40.352444, 21.215199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168091, 40.195354, 20.952000>,  <35.013889, 40.101101, 20.794081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168091, 40.195354, 20.952000>,  <35.425091, 40.352444, 21.215199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168091, 40.195354, 20.952000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649584, -0.176366, 0.739551,
		-0.406491, 0.902585, -0.141794,
		-0.642500, -0.392728, -0.657996,
		34.975342, 40.077538, 20.754601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749516, 40.666214, 21.367258>,  <35.425091, 40.352444, 21.215199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749516, 40.666214, 21.367258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.665005, 40.333698, 21.161608>,  <34.614300, 40.134190, 21.038218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.665005, 40.333698, 21.161608>,  <34.749516, 40.666214, 21.367258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665005, 40.333698, 21.161608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766406, -0.185555, 0.614972,
		-0.606616, 0.523961, -0.597898,
		-0.211278, -0.831285, -0.514127,
		34.601620, 40.084312, 21.007370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980278, 40.600384, 21.182085>,  <34.749516, 40.666214, 21.367258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980278, 40.600384, 21.182085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131935, 40.230286, 21.176773>,  <34.222927, 40.008228, 21.173586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131935, 40.230286, 21.176773>,  <33.980278, 40.600384, 21.182085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131935, 40.230286, 21.176773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661878, -0.281195, 0.694872,
		-0.646661, -0.254663, -0.719011,
		0.379141, -0.925244, -0.013282,
		34.245678, 39.952713, 21.172789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409641, 40.160652, 21.376818>,  <33.980278, 40.600384, 21.182085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409641, 40.160652, 21.376818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.736286, 39.937584, 21.436361>,  <33.932274, 39.803745, 21.472088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.736286, 39.937584, 21.436361>,  <33.409641, 40.160652, 21.376818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736286, 39.937584, 21.436361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472867, -0.498485, 0.726574,
		-0.330980, -0.663718, -0.670768,
		0.816608, -0.557666, 0.148862,
		33.981270, 39.770283, 21.481020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234264, 39.437927, 21.516876>,  <33.409641, 40.160652, 21.376818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234264, 39.437927, 21.516876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.608841, 39.490459, 21.647003>,  <33.833588, 39.521980, 21.725079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.608841, 39.490459, 21.647003>,  <33.234264, 39.437927, 21.516876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608841, 39.490459, 21.647003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178837, -0.619063, 0.764708,
		0.301823, -0.774283, -0.556228,
		0.936440, 0.131332, 0.325318,
		33.889774, 39.529858, 21.744598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464573, 38.715939, 21.760719>,  <33.234264, 39.437927, 21.516876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464573, 38.715939, 21.760719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689640, 38.987015, 21.950094>,  <33.824680, 39.149662, 22.063719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689640, 38.987015, 21.950094>,  <33.464573, 38.715939, 21.760719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689640, 38.987015, 21.950094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065006, -0.607190, 0.791893,
		0.824126, -0.414793, -0.385698,
		0.562664, 0.677692, 0.473437,
		33.858440, 39.190323, 22.092125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998650, 38.319099, 22.001770>,  <33.464573, 38.715939, 21.760719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998650, 38.319099, 22.001770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.963573, 38.660183, 22.207762>,  <33.942528, 38.864834, 22.331356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.963573, 38.660183, 22.207762>,  <33.998650, 38.319099, 22.001770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963573, 38.660183, 22.207762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094213, -0.507554, 0.856454,
		0.991682, 0.123623, -0.035827,
		-0.087694, 0.852705, 0.514979,
		33.937263, 38.915993, 22.362255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488571, 38.110588, 22.531921>,  <33.998650, 38.319099, 22.001770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488571, 38.110588, 22.531921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.308189, 38.448063, 22.648420>,  <34.199959, 38.650547, 22.718319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.308189, 38.448063, 22.648420>,  <34.488571, 38.110588, 22.531921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308189, 38.448063, 22.648420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095758, -0.278694, 0.955594,
		0.887396, 0.458818, 0.044888,
		-0.450954, 0.843691, 0.291248,
		34.172905, 38.701172, 22.735794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887241, 38.438934, 22.894196>,  <34.488571, 38.110588, 22.531921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887241, 38.438934, 22.894196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540909, 38.592686, 23.022314>,  <34.333111, 38.684937, 23.099186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540909, 38.592686, 23.022314>,  <34.887241, 38.438934, 22.894196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540909, 38.592686, 23.022314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184084, -0.350533, 0.918281,
		0.465240, 0.854038, 0.232745,
		-0.865832, 0.384376, 0.320296,
		34.281158, 38.708000, 23.118402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054573, 38.852818, 23.402426>,  <34.887241, 38.438934, 22.894196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054573, 38.852818, 23.402426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670189, 38.754269, 23.452793>,  <34.439560, 38.695141, 23.483013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670189, 38.754269, 23.452793>,  <35.054573, 38.852818, 23.402426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670189, 38.754269, 23.452793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228746, -0.451388, 0.862510,
		-0.155660, 0.857642, 0.490123,
		-0.960961, -0.246372, 0.125919,
		34.381901, 38.680359, 23.490568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977749, 38.804173, 24.081411>,  <35.054573, 38.852818, 23.402426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977749, 38.804173, 24.081411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629948, 38.624950, 23.998262>,  <34.421268, 38.517418, 23.948374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629948, 38.624950, 23.998262>,  <34.977749, 38.804173, 24.081411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629948, 38.624950, 23.998262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072166, -0.531574, 0.843932,
		-0.488630, 0.718799, 0.494539,
		-0.869502, -0.448059, -0.207870,
		34.369099, 38.490532, 23.935902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640884, 38.918961, 24.708723>,  <34.977749, 38.804173, 24.081411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640884, 38.918961, 24.708723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.486664, 38.605675, 24.513613>,  <34.394131, 38.417702, 24.396547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.486664, 38.605675, 24.513613>,  <34.640884, 38.918961, 24.708723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486664, 38.605675, 24.513613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144648, -0.573414, 0.806395,
		-0.911279, 0.240349, 0.334370,
		-0.385549, -0.783217, -0.487774,
		34.370998, 38.370708, 24.367281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169994, 38.625629, 25.226614>,  <34.640884, 38.918961, 24.708723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169994, 38.625629, 25.226614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250919, 38.335178, 24.963766>,  <34.299473, 38.160908, 24.806057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250919, 38.335178, 24.963766>,  <34.169994, 38.625629, 25.226614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250919, 38.335178, 24.963766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134912, -0.643934, 0.753092,
		-0.969984, -0.241011, -0.032311,
		0.202310, -0.726128, -0.657122,
		34.311611, 38.117340, 24.766630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755627, 37.984592, 25.486933>,  <34.169994, 38.625629, 25.226614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755627, 37.984592, 25.486933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.977650, 37.764236, 25.237635>,  <34.110863, 37.632023, 25.088055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.977650, 37.764236, 25.237635>,  <33.755627, 37.984592, 25.486933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977650, 37.764236, 25.237635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245067, -0.607705, 0.755405,
		-0.794895, -0.572027, -0.202303,
		0.555053, -0.550890, -0.623247,
		34.144165, 37.598969, 25.050661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536041, 37.343365, 25.564209>,  <33.755627, 37.984592, 25.486933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536041, 37.343365, 25.564209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.910801, 37.343044, 25.424366>,  <34.135654, 37.342850, 25.340460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.910801, 37.343044, 25.424366>,  <33.536041, 37.343365, 25.564209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910801, 37.343044, 25.424366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262651, -0.658378, 0.705374,
		-0.230742, -0.752687, -0.616620,
		0.936895, -0.000804, -0.349610,
		34.191868, 37.342804, 25.319483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718815, 36.748501, 25.745474>,  <33.536041, 37.343365, 25.564209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718815, 36.748501, 25.745474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072510, 36.903896, 25.641779>,  <34.284725, 36.997135, 25.579561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072510, 36.903896, 25.641779>,  <33.718815, 36.748501, 25.745474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072510, 36.903896, 25.641779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459371, -0.623236, 0.632894,
		0.084307, -0.678713, -0.729548,
		0.884235, 0.388491, -0.259238,
		34.337780, 37.020443, 25.564007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164627, 36.273460, 25.422195>,  <33.718815, 36.748501, 25.745474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164627, 36.273460, 25.422195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.392532, 36.560593, 25.582237>,  <34.529278, 36.732872, 25.678263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.392532, 36.560593, 25.582237>,  <34.164627, 36.273460, 25.422195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392532, 36.560593, 25.582237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476617, -0.685251, 0.550697,
		0.669480, -0.123073, -0.732564,
		0.569766, 0.717833, 0.400103,
		34.563461, 36.775944, 25.702269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809818, 35.959694, 25.621033>,  <34.164627, 36.273460, 25.422195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809818, 35.959694, 25.621033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837193, 36.292744, 25.840868>,  <34.853615, 36.492573, 25.972769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837193, 36.292744, 25.840868>,  <34.809818, 35.959694, 25.621033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837193, 36.292744, 25.840868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319533, -0.540153, 0.778546,
		0.945101, 0.122335, -0.303016,
		0.068431, 0.832628, 0.549589,
		34.857723, 36.542534, 26.005745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419235, 35.857769, 25.996147>,  <34.809818, 35.959694, 25.621033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419235, 35.857769, 25.996147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181171, 36.113533, 26.190853>,  <35.038334, 36.266991, 26.307676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181171, 36.113533, 26.190853>,  <35.419235, 35.857769, 25.996147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181171, 36.113533, 26.190853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255148, -0.424029, 0.868964,
		0.762027, 0.641369, 0.089221,
		-0.595159, 0.639410, 0.486765,
		35.002625, 36.305355, 26.336884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826591, 36.108864, 26.576567>,  <35.419235, 35.857769, 25.996147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826591, 36.108864, 26.576567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.445557, 36.176826, 26.677532>,  <35.216934, 36.217606, 26.738111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.445557, 36.176826, 26.677532>,  <35.826591, 36.108864, 26.576567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445557, 36.176826, 26.677532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160700, -0.423490, 0.891533,
		0.258371, 0.889825, 0.376106,
		-0.952586, 0.169906, 0.252413,
		35.159782, 36.227798, 26.753256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.556614, 33.846809, 30.013840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.218430, 34.055031, 30.061558>,  <39.015518, 34.179962, 30.090189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.218430, 34.055031, 30.061558>,  <39.556614, 33.846809, 30.013840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218430, 34.055031, 30.061558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065518, -0.120591, 0.990538,
		0.530010, 0.845273, 0.067850,
		-0.845457, 0.520550, 0.119295,
		38.964794, 34.211197, 30.097345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692379, 34.164665, 30.580235>,  <39.556614, 33.846809, 30.013840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692379, 34.164665, 30.580235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.296204, 34.209148, 30.547594>,  <39.058498, 34.235840, 30.528009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.296204, 34.209148, 30.547594>,  <39.692379, 34.164665, 30.580235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296204, 34.209148, 30.547594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091929, -0.091123, 0.991587,
		0.102837, 0.989610, 0.100475,
		-0.990441, 0.111209, -0.081603,
		38.999073, 34.242512, 30.523113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463882, 34.678917, 31.003828>,  <39.692379, 34.164665, 30.580235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463882, 34.678917, 31.003828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130569, 34.463909, 30.952127>,  <38.930580, 34.334904, 30.921108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130569, 34.463909, 30.952127>,  <39.463882, 34.678917, 31.003828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130569, 34.463909, 30.952127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123157, -0.047431, 0.991253,
		-0.538952, 0.841914, -0.026676,
		-0.833285, -0.537523, -0.129251,
		38.880585, 34.302650, 30.913353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989948, 35.040592, 31.433891>,  <39.463882, 34.678917, 31.003828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989948, 35.040592, 31.433891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.872990, 34.659561, 31.400190>,  <38.802814, 34.430943, 31.379969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.872990, 34.659561, 31.400190>,  <38.989948, 35.040592, 31.433891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872990, 34.659561, 31.400190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119321, -0.051075, 0.991541,
		-0.948824, 0.299976, -0.098728,
		-0.292396, -0.952579, -0.084255,
		38.785271, 34.373787, 31.374914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481445, 34.947880, 32.065964>,  <38.989948, 35.040592, 31.433891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481445, 34.947880, 32.065964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.586300, 34.585716, 31.932390>,  <38.649212, 34.368416, 31.852245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.586300, 34.585716, 31.932390>,  <38.481445, 34.947880, 32.065964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586300, 34.585716, 31.932390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071663, -0.363347, 0.928894,
		-0.962367, -0.219564, -0.160131,
		0.262135, -0.905412, -0.333939,
		38.664940, 34.314095, 31.832209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949726, 34.622486, 32.277794>,  <38.481445, 34.947880, 32.065964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949726, 34.622486, 32.277794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.254631, 34.369053, 32.224838>,  <38.437572, 34.216991, 32.193066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.254631, 34.369053, 32.224838>,  <37.949726, 34.622486, 32.277794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254631, 34.369053, 32.224838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103803, -0.321544, 0.941188,
		-0.638890, -0.703690, -0.310868,
		0.762262, -0.633585, -0.132386,
		38.483311, 34.178978, 32.185123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833504, 34.102806, 32.702374>,  <37.949726, 34.622486, 32.277794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833504, 34.102806, 32.702374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.222881, 34.048882, 32.628365>,  <38.456509, 34.016529, 32.583958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.222881, 34.048882, 32.628365>,  <37.833504, 34.102806, 32.702374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222881, 34.048882, 32.628365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123482, -0.371357, 0.920242,
		-0.192765, -0.918651, -0.344849,
		0.973444, -0.134808, -0.185021,
		38.514915, 34.008438, 32.572857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939831, 33.463886, 32.959484>,  <37.833504, 34.102806, 32.702374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939831, 33.463886, 32.959484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297417, 33.643143, 32.959373>,  <38.511967, 33.750694, 32.959309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297417, 33.643143, 32.959373>,  <37.939831, 33.463886, 32.959484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297417, 33.643143, 32.959373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175209, -0.348952, 0.920616,
		0.412468, -0.823046, -0.390469,
		0.893964, 0.448138, -0.000274,
		38.565605, 33.777584, 32.959290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369320, 33.010338, 33.166107>,  <37.939831, 33.463886, 32.959484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369320, 33.010338, 33.166107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.582134, 33.344582, 33.220806>,  <38.709824, 33.545128, 33.253624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.582134, 33.344582, 33.220806>,  <38.369320, 33.010338, 33.166107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582134, 33.344582, 33.220806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297070, -0.335444, 0.893995,
		0.792901, -0.435011, -0.426702,
		0.532032, 0.835609, 0.136745,
		38.741745, 33.595264, 33.261829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946899, 32.845528, 33.558689>,  <38.369320, 33.010338, 33.166107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946899, 32.845528, 33.558689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888851, 33.237206, 33.615433>,  <38.854023, 33.472210, 33.649479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888851, 33.237206, 33.615433>,  <38.946899, 32.845528, 33.558689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888851, 33.237206, 33.615433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172934, -0.116069, 0.978070,
		0.974183, 0.166472, -0.152491,
		-0.145122, 0.979191, 0.141862,
		38.845314, 33.530964, 33.657990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377319, 33.003601, 33.978546>,  <38.946899, 32.845528, 33.558689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377319, 33.003601, 33.978546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.153202, 33.331066, 34.028923>,  <39.018730, 33.527546, 34.059151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.153202, 33.331066, 34.028923>,  <39.377319, 33.003601, 33.978546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153202, 33.331066, 34.028923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237766, 0.013316, 0.971231,
		0.793433, 0.574121, -0.202111,
		-0.560296, 0.818662, 0.125941,
		38.985115, 33.576664, 34.066704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752625, 33.404549, 34.378906>,  <39.377319, 33.003601, 33.978546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752625, 33.404549, 34.378906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391094, 33.568169, 34.429146>,  <39.174175, 33.666340, 34.459290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391094, 33.568169, 34.429146>,  <39.752625, 33.404549, 34.378906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391094, 33.568169, 34.429146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158742, 0.047952, 0.986155,
		0.397365, 0.911251, -0.108274,
		-0.903827, 0.409051, 0.125599,
		39.119946, 33.690884, 34.466824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893700, 33.784294, 34.866890>,  <39.752625, 33.404549, 34.378906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893700, 33.784294, 34.866890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.493835, 33.779484, 34.876190>,  <39.253918, 33.776596, 34.881771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.493835, 33.779484, 34.876190>,  <39.893700, 33.784294, 34.866890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493835, 33.779484, 34.876190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021555, 0.125576, 0.991850,
		-0.014850, 0.992011, -0.125273,
		-0.999657, -0.012029, 0.023248,
		39.193939, 33.775875, 34.883163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555191, 34.372234, 35.261787>,  <39.893700, 33.784294, 34.866890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555191, 34.372234, 35.261787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.289490, 34.073460, 35.273453>,  <39.130070, 33.894196, 35.280453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.289490, 34.073460, 35.273453>,  <39.555191, 34.372234, 35.261787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289490, 34.073460, 35.273453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139103, 0.161847, 0.976963,
		-0.734452, 0.644893, -0.211408,
		-0.664252, -0.746940, 0.029162,
		39.090214, 33.849377, 35.282200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594189, 34.034248, 35.896729>,  <39.555191, 34.372234, 35.261787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594189, 34.034248, 35.896729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730114, 34.292595, 36.170189>,  <39.811668, 34.447601, 36.334267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730114, 34.292595, 36.170189>,  <39.594189, 34.034248, 35.896729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730114, 34.292595, 36.170189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221013, 0.761393, -0.609453,
		-0.914155, 0.056004, 0.401476,
		0.339813, 0.645867, 0.683654,
		39.832058, 34.486355, 36.375286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160355, 34.576355, 35.842342>,  <39.594189, 34.034248, 35.896729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160355, 34.576355, 35.842342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482937, 34.727703, 36.024097>,  <39.676487, 34.818512, 36.133148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482937, 34.727703, 36.024097>,  <39.160355, 34.576355, 35.842342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482937, 34.727703, 36.024097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026105, 0.790493, -0.611915,
		-0.590716, 0.481621, 0.647376,
		0.806457, 0.378368, 0.454384,
		39.724873, 34.841213, 36.160412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951462, 35.247917, 35.934338>,  <39.160355, 34.576355, 35.842342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951462, 35.247917, 35.934338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.347317, 35.242573, 35.991512>,  <39.584831, 35.239365, 36.025818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.347317, 35.242573, 35.991512>,  <38.951462, 35.247917, 35.934338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347317, 35.242573, 35.991512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087681, 0.844634, -0.528116,
		-0.113676, 0.535178, 0.837056,
		0.989641, -0.013360, 0.142939,
		39.644211, 35.238564, 36.034393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144585, 35.934372, 36.027374>,  <38.951462, 35.247917, 35.934338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144585, 35.934372, 36.027374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.484386, 35.753910, 35.917980>,  <39.688267, 35.645634, 35.852345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.484386, 35.753910, 35.917980>,  <39.144585, 35.934372, 36.027374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484386, 35.753910, 35.917980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224705, 0.778427, -0.586139,
		0.477329, 0.436476, 0.762657,
		0.849508, -0.451154, -0.273487,
		39.739239, 35.618565, 35.835934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664978, 36.465687, 36.093437>,  <39.144585, 35.934372, 36.027374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664978, 36.465687, 36.093437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.780804, 36.170105, 35.850098>,  <39.850300, 35.992756, 35.704094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.780804, 36.170105, 35.850098>,  <39.664978, 36.465687, 36.093437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780804, 36.170105, 35.850098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465943, 0.664017, -0.584789,
		0.836090, -0.114121, 0.536590,
		0.289568, -0.738957, -0.608352,
		39.867676, 35.948418, 35.667591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368523, 36.625141, 35.934875>,  <39.664978, 36.465687, 36.093437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368523, 36.625141, 35.934875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.264210, 36.374290, 35.641289>,  <40.201622, 36.223782, 35.465137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.264210, 36.374290, 35.641289>,  <40.368523, 36.625141, 35.934875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264210, 36.374290, 35.641289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456415, 0.589851, -0.666154,
		0.850693, -0.508715, 0.132406,
		-0.260782, -0.627124, -0.733967,
		40.185974, 36.186153, 35.421097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980862, 36.616032, 35.450092>,  <40.368523, 36.625141, 35.934875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980862, 36.616032, 35.450092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.659199, 36.483944, 35.252392>,  <40.466202, 36.404694, 35.133774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.659199, 36.483944, 35.252392>,  <40.980862, 36.616032, 35.450092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659199, 36.483944, 35.252392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297466, 0.496317, -0.815587,
		0.514624, -0.802886, -0.300891,
		-0.804161, -0.330216, -0.494248,
		40.417950, 36.384880, 35.104118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243317, 36.342968, 34.887630>,  <40.980862, 36.616032, 35.450092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243317, 36.342968, 34.887630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861134, 36.418819, 34.797173>,  <40.631824, 36.464329, 34.742897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861134, 36.418819, 34.797173>,  <41.243317, 36.342968, 34.887630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861134, 36.418819, 34.797173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294151, 0.549700, -0.781860,
		-0.023951, -0.813555, -0.580994,
		-0.955459, 0.189626, -0.226142,
		40.574497, 36.475708, 34.729328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281170, 36.280510, 34.202068>,  <41.243317, 36.342968, 34.887630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281170, 36.280510, 34.202068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957088, 36.501080, 34.281563>,  <40.762638, 36.633423, 34.329258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957088, 36.501080, 34.281563>,  <41.281170, 36.280510, 34.202068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957088, 36.501080, 34.281563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224581, 0.605220, -0.763722,
		-0.541413, -0.574141, -0.614194,
		-0.810207, 0.551425, 0.198732,
		40.714027, 36.666508, 34.341183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973083, 36.368195, 33.557682>,  <41.281170, 36.280510, 34.202068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973083, 36.368195, 33.557682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.824562, 36.671761, 33.771664>,  <40.735447, 36.853901, 33.900055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.824562, 36.671761, 33.771664>,  <40.973083, 36.368195, 33.557682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824562, 36.671761, 33.771664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201830, 0.496400, -0.844306,
		-0.906308, -0.421468, -0.031146,
		-0.371309, 0.758915, 0.534956,
		40.713169, 36.899437, 33.932152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167034, 36.403637, 33.466694>,  <40.973083, 36.368195, 33.557682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167034, 36.403637, 33.466694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.305836, 36.762875, 33.574783>,  <40.389118, 36.978416, 33.639637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.305836, 36.762875, 33.574783>,  <40.167034, 36.403637, 33.466694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305836, 36.762875, 33.574783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298268, 0.378843, -0.876079,
		-0.889170, 0.223406, 0.399332,
		0.347005, 0.898091, 0.270221,
		40.409939, 37.032303, 33.655849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591518, 37.004486, 33.272427>,  <40.167034, 36.403637, 33.466694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591518, 37.004486, 33.272427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.951214, 37.178955, 33.285854>,  <40.167030, 37.283634, 33.293911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.951214, 37.178955, 33.285854>,  <39.591518, 37.004486, 33.272427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951214, 37.178955, 33.285854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206726, 0.491319, -0.846091,
		-0.385532, 0.753898, 0.531981,
		0.899238, 0.436170, 0.033569,
		40.220985, 37.309807, 33.295925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423161, 37.712421, 33.296207>,  <39.591518, 37.004486, 33.272427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423161, 37.712421, 33.296207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.813972, 37.714645, 33.210991>,  <40.048458, 37.715981, 33.159863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.813972, 37.714645, 33.210991>,  <39.423161, 37.712421, 33.296207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813972, 37.714645, 33.210991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178474, 0.567643, -0.803697,
		0.116461, 0.823256, 0.555596,
		0.977028, 0.005560, -0.213038,
		40.107082, 37.716312, 33.147079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635525, 38.383476, 33.200405>,  <39.423161, 37.712421, 33.296207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635525, 38.383476, 33.200405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927483, 38.186737, 33.010525>,  <40.102657, 38.068695, 32.896595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927483, 38.186737, 33.010525>,  <39.635525, 38.383476, 33.200405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927483, 38.186737, 33.010525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111032, 0.599930, -0.792310,
		0.674482, 0.631010, 0.383275,
		0.729894, -0.491843, -0.474705,
		40.146450, 38.039185, 32.868114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431133, 39.177765, 33.409870>,  <39.635525, 38.383476, 33.200405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431133, 39.177765, 33.409870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076298, 39.362347, 33.414433>,  <38.863396, 39.473095, 33.417171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076298, 39.362347, 33.414433>,  <39.431133, 39.177765, 33.409870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076298, 39.362347, 33.414433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103204, -0.222366, 0.969486,
		0.449911, 0.858844, 0.244883,
		-0.887090, 0.461455, 0.011409,
		38.810169, 39.500782, 33.417854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501625, 39.620914, 33.932549>,  <39.431133, 39.177765, 33.409870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501625, 39.620914, 33.932549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115746, 39.534431, 33.872406>,  <38.884216, 39.482544, 33.836319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115746, 39.534431, 33.872406>,  <39.501625, 39.620914, 33.932549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115746, 39.534431, 33.872406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079147, -0.306512, 0.948571,
		-0.251170, 0.926988, 0.278580,
		-0.964702, -0.216204, -0.150355,
		38.826336, 39.469570, 33.827301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041569, 39.850391, 34.497410>,  <39.501625, 39.620914, 33.932549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041569, 39.850391, 34.497410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.830845, 39.555008, 34.329056>,  <38.704411, 39.377777, 34.228043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.830845, 39.555008, 34.329056>,  <39.041569, 39.850391, 34.497410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830845, 39.555008, 34.329056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122914, -0.556155, 0.821939,
		-0.841046, 0.381276, 0.383757,
		-0.526814, -0.738458, -0.420888,
		38.672802, 39.333469, 34.202789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586372, 39.713711, 35.001415>,  <39.041569, 39.850391, 34.497410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586372, 39.713711, 35.001415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551846, 39.385319, 34.775661>,  <38.531128, 39.188282, 34.640209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551846, 39.385319, 34.775661>,  <38.586372, 39.713711, 35.001415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551846, 39.385319, 34.775661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154470, -0.548623, 0.821676,
		-0.984220, 0.158108, -0.079460,
		-0.086320, -0.820984, -0.564389,
		38.525951, 39.139023, 34.606346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888844, 39.596542, 35.130470>,  <38.586372, 39.713711, 35.001415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888844, 39.596542, 35.130470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.097954, 39.278248, 35.008160>,  <38.223419, 39.087269, 34.934772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.097954, 39.278248, 35.008160>,  <37.888844, 39.596542, 35.130470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097954, 39.278248, 35.008160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330275, -0.519745, 0.787898,
		-0.785889, -0.310905, -0.534525,
		0.522779, -0.795740, -0.305778,
		38.254787, 39.039524, 34.916428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582123, 39.019932, 35.227333>,  <37.888844, 39.596542, 35.130470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582123, 39.019932, 35.227333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929691, 38.827515, 35.180737>,  <38.138233, 38.712063, 35.152779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929691, 38.827515, 35.180737>,  <37.582123, 39.019932, 35.227333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929691, 38.827515, 35.180737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293111, -0.689779, 0.662036,
		-0.398820, -0.541114, -0.740363,
		0.868924, -0.481042, -0.116491,
		38.190369, 38.683201, 35.145790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397167, 38.358288, 35.216385>,  <37.582123, 39.019932, 35.227333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397167, 38.358288, 35.216385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.783066, 38.376362, 35.320091>,  <38.014606, 38.387207, 35.382313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.783066, 38.376362, 35.320091>,  <37.397167, 38.358288, 35.216385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783066, 38.376362, 35.320091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137987, -0.752019, 0.644536,
		0.224096, -0.657590, -0.719275,
		0.964749, 0.045187, 0.259263,
		38.072491, 38.389919, 35.397869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764854, 37.581497, 35.148685>,  <37.397167, 38.358288, 35.216385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764854, 37.581497, 35.148685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.962524, 37.817104, 35.404453>,  <38.081127, 37.958469, 35.557915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.962524, 37.817104, 35.404453>,  <37.764854, 37.581497, 35.148685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962524, 37.817104, 35.404453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192159, -0.791313, 0.580430,
		0.847862, -0.163962, -0.504228,
		0.494171, 0.589017, 0.639418,
		38.110775, 37.993809, 35.596279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395836, 37.204876, 35.308640>,  <37.764854, 37.581497, 35.148685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395836, 37.204876, 35.308640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.344307, 37.470367, 35.603359>,  <38.313389, 37.629662, 35.780190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.344307, 37.470367, 35.603359>,  <38.395836, 37.204876, 35.308640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344307, 37.470367, 35.603359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290264, -0.685212, 0.668005,
		0.948236, 0.299920, -0.104386,
		-0.128822, 0.663726, 0.736799,
		38.305660, 37.669487, 35.824398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885765, 37.097588, 35.837734>,  <38.395836, 37.204876, 35.308640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885765, 37.097588, 35.837734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.658634, 37.347870, 36.051670>,  <38.522354, 37.498039, 36.180031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.658634, 37.347870, 36.051670>,  <38.885765, 37.097588, 35.837734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658634, 37.347870, 36.051670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157659, -0.555055, 0.816736,
		0.807907, 0.548090, 0.216528,
		-0.567830, 0.625709, 0.534844,
		38.488285, 37.535583, 36.212124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280315, 37.308372, 36.487942>,  <38.885765, 37.097588, 35.837734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280315, 37.308372, 36.487942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.889763, 37.351189, 36.563004>,  <38.655430, 37.376881, 36.608040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.889763, 37.351189, 36.563004>,  <39.280315, 37.308372, 36.487942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889763, 37.351189, 36.563004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128334, -0.411374, 0.902387,
		0.173790, 0.905159, 0.387922,
		-0.976385, 0.107043, 0.187655,
		38.596848, 37.383301, 36.619301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202259, 37.481628, 37.209118>,  <39.280315, 37.308372, 36.487942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202259, 37.481628, 37.209118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842739, 37.337563, 37.109173>,  <38.627026, 37.251122, 37.049206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842739, 37.337563, 37.109173>,  <39.202259, 37.481628, 37.209118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842739, 37.337563, 37.109173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033383, -0.512111, 0.858270,
		-0.437078, 0.779758, 0.448264,
		-0.898804, -0.360167, -0.249863,
		38.573097, 37.229511, 37.034214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.773643, 41.187500, 29.813828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428017, 40.997429, 29.880276>,  <38.220642, 40.883389, 29.920145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428017, 40.997429, 29.880276>,  <38.773643, 41.187500, 29.813828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428017, 40.997429, 29.880276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136899, 0.095749, 0.985947,
		-0.484401, 0.874667, -0.017683,
		-0.864068, -0.475173, 0.166122,
		38.168797, 40.854877, 29.930113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561512, 41.572338, 30.366632>,  <38.773643, 41.187500, 29.813828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561512, 41.572338, 30.366632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337799, 41.240871, 30.375669>,  <38.203571, 41.041992, 30.381092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337799, 41.240871, 30.375669>,  <38.561512, 41.572338, 30.366632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337799, 41.240871, 30.375669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055537, -0.010261, 0.998404,
		-0.827112, 0.559648, 0.051760,
		-0.559286, -0.828667, 0.022594,
		38.170013, 40.992271, 30.382448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986938, 41.616249, 30.962893>,  <38.561512, 41.572338, 30.366632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986938, 41.616249, 30.962893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064960, 41.229996, 30.894188>,  <38.111774, 40.998245, 30.852966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064960, 41.229996, 30.894188>,  <37.986938, 41.616249, 30.962893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064960, 41.229996, 30.894188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148291, -0.144074, 0.978393,
		-0.969516, -0.216315, 0.115092,
		0.195059, -0.965635, -0.171759,
		38.123478, 40.940304, 30.842661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712925, 41.266563, 31.564899>,  <37.986938, 41.616249, 30.962893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712925, 41.266563, 31.564899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918652, 40.965839, 31.399851>,  <38.042088, 40.785404, 31.300821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918652, 40.965839, 31.399851>,  <37.712925, 41.266563, 31.564899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918652, 40.965839, 31.399851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171272, -0.381396, 0.908407,
		-0.840325, -0.537878, -0.067393,
		0.514315, -0.751814, -0.412620,
		38.072945, 40.740295, 31.276066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385300, 40.638046, 31.832697>,  <37.712925, 41.266563, 31.564899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385300, 40.638046, 31.832697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757893, 40.554363, 31.713650>,  <37.981449, 40.504154, 31.642221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757893, 40.554363, 31.713650>,  <37.385300, 40.638046, 31.832697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757893, 40.554363, 31.713650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183584, -0.435967, 0.881039,
		-0.314072, -0.875308, -0.367687,
		0.931480, -0.209208, -0.297618,
		38.037338, 40.491600, 31.624365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489521, 39.910912, 31.810879>,  <37.385300, 40.638046, 31.832697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489521, 39.910912, 31.810879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856400, 40.053230, 31.882616>,  <38.076527, 40.138622, 31.925659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856400, 40.053230, 31.882616>,  <37.489521, 39.910912, 31.810879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856400, 40.053230, 31.882616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033898, -0.518157, 0.854614,
		0.397001, -0.777765, -0.487310,
		0.917192, 0.355802, 0.179344,
		38.131557, 40.159969, 31.936419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942394, 39.362614, 31.992811>,  <37.489521, 39.910912, 31.810879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942394, 39.362614, 31.992811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184700, 39.659760, 32.106800>,  <38.330082, 39.838047, 32.175194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184700, 39.659760, 32.106800>,  <37.942394, 39.362614, 31.992811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184700, 39.659760, 32.106800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285361, -0.537183, 0.793728,
		0.742713, -0.399489, -0.537388,
		0.605761, 0.742862, 0.284974,
		38.366428, 39.882618, 32.192291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568703, 38.997803, 32.192955>,  <37.942394, 39.362614, 31.992811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568703, 38.997803, 32.192955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585342, 39.356640, 32.368904>,  <38.595325, 39.571941, 32.474476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585342, 39.356640, 32.368904>,  <38.568703, 38.997803, 32.192955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585342, 39.356640, 32.368904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313931, -0.429695, 0.846646,
		0.948534, 0.102872, -0.299501,
		0.041598, 0.897095, 0.439875,
		38.597820, 39.625767, 32.500866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192612, 39.009350, 32.631096>,  <38.568703, 38.997803, 32.192955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192612, 39.009350, 32.631096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939369, 39.280567, 32.780464>,  <38.787426, 39.443298, 32.870083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939369, 39.280567, 32.780464>,  <39.192612, 39.009350, 32.631096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939369, 39.280567, 32.780464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162878, -0.354918, 0.920600,
		0.756738, 0.643654, 0.114261,
		-0.633101, 0.678043, 0.373417,
		38.749439, 39.483978, 32.892490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961964, 38.906208, 32.637405>,  <39.192612, 39.009350, 32.631096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961964, 38.906208, 32.637405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096004, 38.541569, 32.542160>,  <40.176430, 38.322784, 32.485012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096004, 38.541569, 32.542160>,  <39.961964, 38.906208, 32.637405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096004, 38.541569, 32.542160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260008, 0.332389, -0.906594,
		0.905595, 0.241889, 0.348406,
		0.335101, -0.911596, -0.238117,
		40.196533, 38.268089, 32.470726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562340, 39.056808, 32.196293>,  <39.961964, 38.906208, 32.637405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562340, 39.056808, 32.196293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430916, 38.684799, 32.130432>,  <40.352062, 38.461594, 32.090916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430916, 38.684799, 32.130432>,  <40.562340, 39.056808, 32.196293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430916, 38.684799, 32.130432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057768, 0.154218, -0.986347,
		0.942714, -0.333589, 0.003055,
		-0.328563, -0.930019, -0.164654,
		40.332348, 38.405792, 32.081036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037895, 38.714138, 31.737656>,  <40.562340, 39.056808, 32.196293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037895, 38.714138, 31.737656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704597, 38.499153, 31.685738>,  <40.504620, 38.370163, 31.654587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704597, 38.499153, 31.685738>,  <41.037895, 38.714138, 31.737656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704597, 38.499153, 31.685738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030246, 0.190088, -0.981301,
		0.552082, -0.821586, -0.142133,
		-0.833241, -0.537460, -0.129794,
		40.454624, 38.337914, 31.646799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116428, 38.421886, 31.139473>,  <41.037895, 38.714138, 31.737656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116428, 38.421886, 31.139473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721401, 38.373039, 31.179062>,  <40.484386, 38.343731, 31.202816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721401, 38.373039, 31.179062>,  <41.116428, 38.421886, 31.139473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721401, 38.373039, 31.179062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120633, 0.185137, -0.975280,
		0.100774, -0.975096, -0.197566,
		-0.987569, -0.122116, 0.098972,
		40.425129, 38.336403, 31.208754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855927, 37.895802, 30.525587>,  <41.116428, 38.421886, 31.139473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855927, 37.895802, 30.525587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560970, 38.118401, 30.678719>,  <40.383995, 38.251961, 30.770597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560970, 38.118401, 30.678719>,  <40.855927, 37.895802, 30.525587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560970, 38.118401, 30.678719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207056, 0.353252, -0.912327,
		-0.642946, -0.752011, -0.145259,
		-0.737393, 0.556500, 0.382830,
		40.339752, 38.285351, 30.793568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325413, 37.675419, 30.157377>,  <40.855927, 37.895802, 30.525587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325413, 37.675419, 30.157377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256725, 38.047474, 30.287216>,  <40.215511, 38.270706, 30.365120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256725, 38.047474, 30.287216>,  <40.325413, 37.675419, 30.157377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256725, 38.047474, 30.287216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240248, 0.280004, -0.929451,
		-0.955403, -0.237586, 0.175381,
		-0.171717, 0.930135, 0.324596,
		40.205212, 38.326515, 30.384596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801495, 37.856915, 29.700605>,  <40.325413, 37.675419, 30.157377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801495, 37.856915, 29.700605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932949, 38.194988, 29.869205>,  <40.011822, 38.397831, 29.970366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932949, 38.194988, 29.869205>,  <39.801495, 37.856915, 29.700605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932949, 38.194988, 29.869205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082199, 0.470191, -0.878728,
		-0.940872, 0.254136, 0.223996,
		0.328637, 0.845183, 0.421500,
		40.031540, 38.448544, 29.995655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383030, 38.319530, 29.379995>,  <39.801495, 37.856915, 29.700605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383030, 38.319530, 29.379995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692028, 38.537357, 29.510647>,  <39.877426, 38.668053, 29.589039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692028, 38.537357, 29.510647>,  <39.383030, 38.319530, 29.379995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692028, 38.537357, 29.510647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027670, 0.542744, -0.839442,
		-0.634412, 0.639431, 0.434338,
		0.772500, 0.544570, 0.326631,
		39.923779, 38.700729, 29.608637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214764, 39.006649, 29.285641>,  <39.383030, 38.319530, 29.379995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214764, 39.006649, 29.285641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612793, 38.998501, 29.324453>,  <39.851612, 38.993614, 29.347740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612793, 38.998501, 29.324453>,  <39.214764, 39.006649, 29.285641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612793, 38.998501, 29.324453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091239, 0.571099, -0.815795,
		-0.038800, 0.820629, 0.570143,
		0.995073, -0.020366, 0.097032,
		39.911316, 38.992390, 29.353563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356358, 39.665745, 29.184971>,  <39.214764, 39.006649, 29.285641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356358, 39.665745, 29.184971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696861, 39.472214, 29.103720>,  <39.901165, 39.356094, 29.054970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696861, 39.472214, 29.103720>,  <39.356358, 39.665745, 29.184971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696861, 39.472214, 29.103720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016035, 0.410900, -0.911539,
		0.524496, 0.772701, 0.357542,
		0.851262, -0.483832, -0.203126,
		39.952240, 39.327065, 29.042782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888714, 40.118290, 28.919117>,  <39.356358, 39.665745, 29.184971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888714, 40.118290, 28.919117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059853, 39.777500, 28.798393>,  <40.162537, 39.573025, 28.725958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059853, 39.777500, 28.798393>,  <39.888714, 40.118290, 28.919117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059853, 39.777500, 28.798393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212332, 0.419311, -0.882663,
		0.878558, 0.313557, 0.360301,
		0.427843, -0.851974, -0.301811,
		40.188206, 39.521908, 28.707850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513866, 40.318478, 28.711601>,  <39.888714, 40.118290, 28.919117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513866, 40.318478, 28.711601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467690, 39.953613, 28.554310>,  <40.439983, 39.734695, 28.459934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467690, 39.953613, 28.554310>,  <40.513866, 40.318478, 28.711601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467690, 39.953613, 28.554310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207968, 0.364907, -0.907519,
		0.971300, -0.186541, 0.147577,
		-0.115438, -0.912165, -0.393229,
		40.433060, 39.679962, 28.436340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104271, 40.122704, 28.350904>,  <40.513866, 40.318478, 28.711601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104271, 40.122704, 28.350904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812553, 39.903435, 28.187128>,  <40.637524, 39.771873, 28.088863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812553, 39.903435, 28.187128>,  <41.104271, 40.122704, 28.350904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812553, 39.903435, 28.187128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104597, 0.502059, -0.858485,
		0.676161, -0.668911, -0.308810,
		-0.729291, -0.548174, -0.409439,
		40.593765, 39.738983, 28.064297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371449, 40.172165, 27.709328>,  <41.104271, 40.122704, 28.350904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371449, 40.172165, 27.709328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992233, 40.046440, 27.689621>,  <40.764702, 39.971004, 27.677797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992233, 40.046440, 27.689621>,  <41.371449, 40.172165, 27.709328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992233, 40.046440, 27.689621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010214, 0.184841, -0.982715,
		0.317983, -0.931151, -0.178447,
		-0.948041, -0.314310, -0.049266,
		40.707821, 39.952148, 27.674841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.356318, 37.605587, 26.930468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.737144, 37.724354, 26.959869>,  <31.965641, 37.795616, 26.977510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.737144, 37.724354, 26.959869>,  <31.356318, 37.605587, 26.930468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737144, 37.724354, 26.959869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163340, -0.696670, 0.698549,
		0.258621, -0.653061, -0.711777,
		0.952069, 0.296921, 0.073503,
		32.022766, 37.813431, 26.981920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763002, 36.991020, 26.973587>,  <31.356318, 37.605587, 26.930468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763002, 36.991020, 26.973587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.041988, 37.248718, 27.099117>,  <32.209381, 37.403339, 27.174435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.041988, 37.248718, 27.099117>,  <31.763002, 36.991020, 26.973587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041988, 37.248718, 27.099117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172248, -0.575798, 0.799242,
		0.695611, -0.503387, -0.512569,
		0.697464, 0.644250, 0.313824,
		32.251228, 37.441994, 27.193264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318230, 36.586132, 27.117165>,  <31.763002, 36.991020, 26.973587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318230, 36.586132, 27.117165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.388531, 36.926407, 27.315334>,  <32.430710, 37.130569, 27.434237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.388531, 36.926407, 27.315334>,  <32.318230, 36.586132, 27.117165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388531, 36.926407, 27.315334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267718, -0.525594, 0.807513,
		0.947332, -0.009289, -0.320119,
		0.175753, 0.850685, 0.495425,
		32.441257, 37.181614, 27.463963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983547, 36.402737, 27.490650>,  <32.318230, 36.586132, 27.117165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983547, 36.402737, 27.490650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.831783, 36.730080, 27.663319>,  <32.740723, 36.926483, 27.766920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.831783, 36.730080, 27.663319>,  <32.983547, 36.402737, 27.490650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831783, 36.730080, 27.663319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289217, -0.338277, 0.895501,
		0.878863, 0.464610, -0.108336,
		-0.379411, 0.818356, 0.431672,
		32.717960, 36.975586, 27.792820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488033, 36.662422, 28.022209>,  <32.983547, 36.402737, 27.490650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488033, 36.662422, 28.022209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.124454, 36.806099, 28.106873>,  <32.906307, 36.892303, 28.157671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.124454, 36.806099, 28.106873>,  <33.488033, 36.662422, 28.022209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124454, 36.806099, 28.106873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119894, -0.261037, 0.957854,
		0.399304, 0.896014, 0.194203,
		-0.908945, 0.359191, 0.211660,
		32.851772, 36.913857, 28.170370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429214, 37.247971, 28.589113>,  <33.488033, 36.662422, 28.022209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429214, 37.247971, 28.589113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.073662, 37.065163, 28.576338>,  <32.860329, 36.955479, 28.568672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.073662, 37.065163, 28.576338>,  <33.429214, 37.247971, 28.589113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073662, 37.065163, 28.576338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034681, -0.136641, 0.990013,
		-0.456816, 0.878900, 0.137308,
		-0.888885, -0.457016, -0.031939,
		32.806995, 36.928059, 28.566755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233486, 37.370888, 29.287632>,  <33.429214, 37.247971, 28.589113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233486, 37.370888, 29.287632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.976589, 37.094421, 29.155081>,  <32.822453, 36.928539, 29.075550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.976589, 37.094421, 29.155081>,  <33.233486, 37.370888, 29.287632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976589, 37.094421, 29.155081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027336, -0.411394, 0.911048,
		-0.766014, 0.594172, 0.245321,
		-0.642242, -0.691169, -0.331376,
		32.783916, 36.887070, 29.055668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714729, 37.368458, 29.789644>,  <33.233486, 37.370888, 29.287632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714729, 37.368458, 29.789644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.685951, 37.018738, 29.597633>,  <32.668682, 36.808907, 29.482428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.685951, 37.018738, 29.597633>,  <32.714729, 37.368458, 29.789644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685951, 37.018738, 29.597633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089159, -0.484985, 0.869966,
		-0.993415, 0.019795, 0.112846,
		-0.071950, -0.874298, -0.480027,
		32.664368, 36.756447, 29.453625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369030, 36.857769, 30.283081>,  <32.714729, 37.368458, 29.789644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369030, 36.857769, 30.283081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.543831, 36.629120, 30.005297>,  <32.648712, 36.491928, 29.838627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.543831, 36.629120, 30.005297>,  <32.369030, 36.857769, 30.283081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543831, 36.629120, 30.005297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151315, -0.714359, 0.683224,
		-0.886643, -0.403650, -0.225678,
		0.436999, -0.571627, -0.694460,
		32.674931, 36.457630, 29.796959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033863, 36.082279, 30.247280>,  <32.369030, 36.857769, 30.283081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033863, 36.082279, 30.247280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.404217, 36.063457, 30.097334>,  <32.626431, 36.052166, 30.007366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.404217, 36.063457, 30.097334>,  <32.033863, 36.082279, 30.247280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404217, 36.063457, 30.097334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242272, -0.687404, 0.684675,
		-0.289898, -0.724750, -0.625058,
		0.925885, -0.047052, -0.374863,
		32.681984, 36.049343, 29.984875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165737, 35.378189, 30.032661>,  <32.033863, 36.082279, 30.247280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165737, 35.378189, 30.032661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.516247, 35.556557, 30.105667>,  <32.726551, 35.663578, 30.149469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.516247, 35.556557, 30.105667>,  <32.165737, 35.378189, 30.032661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516247, 35.556557, 30.105667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193632, -0.672772, 0.714062,
		0.441201, -0.590370, -0.675873,
		0.876269, 0.445916, 0.182513,
		32.779129, 35.690331, 30.160421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672333, 34.766224, 30.054197>,  <32.165737, 35.378189, 30.032661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672333, 34.766224, 30.054197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.831970, 35.080284, 30.243626>,  <32.927753, 35.268719, 30.357283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.831970, 35.080284, 30.243626>,  <32.672333, 34.766224, 30.054197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831970, 35.080284, 30.243626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317956, -0.602940, 0.731688,
		0.860017, -0.141437, -0.490271,
		0.399092, 0.785149, 0.473569,
		32.951698, 35.315830, 30.385696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228550, 34.427055, 30.426418>,  <32.672333, 34.766224, 30.054197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228550, 34.427055, 30.426418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.195454, 34.790337, 30.590523>,  <33.175598, 35.008305, 30.688986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.195454, 34.790337, 30.590523>,  <33.228550, 34.427055, 30.426418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195454, 34.790337, 30.590523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328288, -0.363858, 0.871685,
		0.940947, 0.206806, -0.268048,
		-0.082738, 0.908206, 0.410263,
		33.170631, 35.062798, 30.713602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802036, 34.434925, 30.858963>,  <33.228550, 34.427055, 30.426418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802036, 34.434925, 30.858963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.552391, 34.707245, 31.012321>,  <33.402603, 34.870636, 31.104338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.552391, 34.707245, 31.012321>,  <33.802036, 34.434925, 30.858963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552391, 34.707245, 31.012321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210661, -0.325904, 0.921634,
		0.752397, 0.655973, 0.059984,
		-0.624116, 0.680798, 0.383397,
		33.365158, 34.911484, 31.127340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522598, 34.682735, 30.648798>,  <33.802036, 34.434925, 30.858963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522598, 34.682735, 30.648798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.826633, 34.462555, 30.510658>,  <35.009056, 34.330444, 30.427774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.826633, 34.462555, 30.510658>,  <34.522598, 34.682735, 30.648798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826633, 34.462555, 30.510658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192922, 0.316340, -0.928822,
		0.620521, 0.772612, 0.134252,
		0.760089, -0.550454, -0.345349,
		35.054661, 34.297421, 30.407053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909374, 35.200203, 30.378607>,  <34.522598, 34.682735, 30.648798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909374, 35.200203, 30.378607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.045563, 34.866653, 30.204830>,  <35.127277, 34.666523, 30.100565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.045563, 34.866653, 30.204830>,  <34.909374, 35.200203, 30.378607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045563, 34.866653, 30.204830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177621, 0.396685, -0.900607,
		0.923325, 0.383797, -0.013053,
		0.340472, -0.833871, -0.434440,
		35.147705, 34.616493, 30.074499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347252, 35.466961, 29.908569>,  <34.909374, 35.200203, 30.378607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347252, 35.466961, 29.908569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.274616, 35.103401, 29.758406>,  <35.231033, 34.885265, 29.668308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.274616, 35.103401, 29.758406>,  <35.347252, 35.466961, 29.908569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274616, 35.103401, 29.758406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084559, 0.394772, -0.914880,
		0.979732, -0.134391, -0.148543,
		-0.181592, -0.908897, -0.375407,
		35.220139, 34.830730, 29.645784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868870, 35.344955, 29.422546>,  <35.347252, 35.466961, 29.908569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868870, 35.344955, 29.422546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.533127, 35.146900, 29.332823>,  <35.331680, 35.028069, 29.278988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.533127, 35.146900, 29.332823>,  <35.868870, 35.344955, 29.422546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533127, 35.146900, 29.332823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068699, 0.312718, -0.947358,
		0.539219, -0.810583, -0.228467,
		-0.839359, -0.495138, -0.224310,
		35.281319, 34.998360, 29.265530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026600, 35.140648, 28.814053>,  <35.868870, 35.344955, 29.422546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026600, 35.140648, 28.814053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.630432, 35.088051, 28.830923>,  <35.392731, 35.056492, 28.841045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.630432, 35.088051, 28.830923>,  <36.026600, 35.140648, 28.814053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630432, 35.088051, 28.830923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073819, 0.246035, -0.966446,
		0.116704, -0.960300, -0.253384,
		-0.990419, -0.131492, 0.042175,
		35.333305, 35.048603, 28.843575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866867, 34.846786, 28.132450>,  <36.026600, 35.140648, 28.814053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866867, 34.846786, 28.132450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.500526, 34.940788, 28.262671>,  <35.280720, 34.997189, 28.340803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.500526, 34.940788, 28.262671>,  <35.866867, 34.846786, 28.132450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500526, 34.940788, 28.262671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239755, 0.330299, -0.912919,
		-0.322068, -0.914153, -0.246163,
		-0.915855, 0.235003, 0.325552,
		35.225769, 35.011288, 28.360336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401974, 34.689396, 27.645550>,  <35.866867, 34.846786, 28.132450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401974, 34.689396, 27.645550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.219620, 34.979778, 27.851526>,  <35.110207, 35.154007, 27.975113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.219620, 34.979778, 27.851526>,  <35.401974, 34.689396, 27.645550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219620, 34.979778, 27.851526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181316, 0.490680, -0.852266,
		-0.871377, -0.481898, -0.092065,
		-0.455880, 0.725952, 0.514943,
		35.082855, 35.197563, 28.006010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760860, 34.824760, 27.235550>,  <35.401974, 34.689396, 27.645550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760860, 34.824760, 27.235550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.844528, 35.138149, 27.469618>,  <34.894730, 35.326183, 27.610060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.844528, 35.138149, 27.469618>,  <34.760860, 34.824760, 27.235550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844528, 35.138149, 27.469618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335309, 0.619592, -0.709700,
		-0.918595, -0.047767, 0.392303,
		0.209167, 0.783470, 0.585171,
		34.907280, 35.373192, 27.645168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247906, 35.255722, 26.967419>,  <34.760860, 34.824760, 27.235550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247906, 35.255722, 26.967419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.502415, 35.490330, 27.167883>,  <34.655121, 35.631092, 27.288160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.502415, 35.490330, 27.167883>,  <34.247906, 35.255722, 26.967419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502415, 35.490330, 27.167883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178836, 0.744059, -0.643735,
		-0.750452, 0.319963, 0.578312,
		0.636270, 0.586515, 0.501160,
		34.693295, 35.666283, 27.318232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917641, 35.866898, 26.925976>,  <34.247906, 35.255722, 26.967419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917641, 35.866898, 26.925976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.294193, 35.963852, 27.019825>,  <34.520126, 36.022022, 27.076134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.294193, 35.963852, 27.019825>,  <33.917641, 35.866898, 26.925976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294193, 35.963852, 27.019825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019199, 0.732880, -0.680087,
		-0.336789, 0.635718, 0.694576,
		0.941384, 0.242381, 0.234621,
		34.576607, 36.036568, 27.090212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940357, 36.533287, 26.996710>,  <33.917641, 35.866898, 26.925976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940357, 36.533287, 26.996710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.321163, 36.436783, 26.921381>,  <34.549644, 36.378880, 26.876183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.321163, 36.436783, 26.921381>,  <33.940357, 36.533287, 26.996710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321163, 36.436783, 26.921381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060676, 0.751884, -0.656498,
		0.299983, 0.613567, 0.730442,
		0.952013, -0.241258, -0.188323,
		34.606766, 36.364407, 26.864883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274357, 37.224892, 26.954361>,  <33.940357, 36.533287, 26.996710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274357, 37.224892, 26.954361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.496326, 36.941631, 26.779739>,  <34.629509, 36.771675, 26.674967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.496326, 36.941631, 26.779739>,  <34.274357, 37.224892, 26.954361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496326, 36.941631, 26.779739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133996, 0.594001, -0.793227,
		0.821039, 0.381683, 0.424514,
		0.554923, -0.708153, -0.436554,
		34.662804, 36.729187, 26.648773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879154, 37.637669, 26.681183>,  <34.274357, 37.224892, 26.954361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879154, 37.637669, 26.681183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.854736, 37.297188, 26.472670>,  <34.840084, 37.092899, 26.347563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.854736, 37.297188, 26.472670>,  <34.879154, 37.637669, 26.681183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854736, 37.297188, 26.472670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070702, 0.517257, -0.852905,
		0.995628, -0.088921, 0.028605,
		-0.061045, -0.851198, -0.521282,
		34.836422, 37.041828, 26.316284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413494, 37.585129, 26.194912>,  <34.879154, 37.637669, 26.681183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413494, 37.585129, 26.194912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.114815, 37.361240, 26.051161>,  <34.935608, 37.226910, 25.964911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.114815, 37.361240, 26.051161>,  <35.413494, 37.585129, 26.194912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114815, 37.361240, 26.051161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065049, 0.476248, -0.876902,
		0.661971, -0.678161, -0.319205,
		-0.746702, -0.559720, -0.359376,
		34.890804, 37.193325, 25.943348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902298, 37.130749, 25.949444>,  <35.413494, 37.585129, 26.194912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902298, 37.130749, 25.949444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.269913, 37.097702, 25.795277>,  <36.490482, 37.077873, 25.702776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.269913, 37.097702, 25.795277>,  <35.902298, 37.130749, 25.949444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269913, 37.097702, 25.795277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239607, -0.659315, 0.712665,
		-0.312989, -0.747314, -0.586139,
		0.919036, -0.082613, -0.385420,
		36.545624, 37.072918, 25.679651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103580, 36.345245, 25.749346>,  <35.902298, 37.130749, 25.949444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103580, 36.345245, 25.749346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.445240, 36.540848, 25.820122>,  <36.650234, 36.658211, 25.862587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.445240, 36.540848, 25.820122>,  <36.103580, 36.345245, 25.749346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445240, 36.540848, 25.820122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195123, -0.616757, 0.762586,
		0.482040, -0.616834, -0.622216,
		0.854145, 0.489006, 0.176942,
		36.701485, 36.687550, 25.873205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610912, 35.868973, 25.857634>,  <36.103580, 36.345245, 25.749346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610912, 35.868973, 25.857634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.815575, 36.171543, 26.020617>,  <36.938374, 36.353085, 26.118406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.815575, 36.171543, 26.020617>,  <36.610912, 35.868973, 25.857634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815575, 36.171543, 26.020617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468223, -0.643112, 0.605949,
		0.720399, -0.119256, -0.683230,
		0.511657, 0.756429, 0.407459,
		36.969070, 36.398472, 26.142855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328751, 35.630360, 25.977404>,  <36.610912, 35.868973, 25.857634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328751, 35.630360, 25.977404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.317535, 35.944489, 26.224785>,  <37.310806, 36.132965, 26.373213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.317535, 35.944489, 26.224785>,  <37.328751, 35.630360, 25.977404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317535, 35.944489, 26.224785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483574, -0.530825, 0.695975,
		0.874854, 0.318584, -0.364876,
		-0.028041, 0.785321, 0.618453,
		37.309124, 36.180084, 26.410320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019928, 35.631824, 26.345896>,  <37.328751, 35.630360, 25.977404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019928, 35.631824, 26.345896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.788937, 35.883335, 26.554188>,  <37.650341, 36.034241, 26.679163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.788937, 35.883335, 26.554188>,  <38.019928, 35.631824, 26.345896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788937, 35.883335, 26.554188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586623, -0.124023, 0.800307,
		0.567797, 0.767631, -0.297234,
		-0.577477, 0.628776, 0.520730,
		37.615692, 36.071968, 26.710407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470547, 36.012108, 26.658501>,  <38.019928, 35.631824, 26.345896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470547, 36.012108, 26.658501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.124901, 35.995953, 26.859169>,  <37.917515, 35.986259, 26.979570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.124901, 35.995953, 26.859169>,  <38.470547, 36.012108, 26.658501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124901, 35.995953, 26.859169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499436, -0.192015, 0.844804,
		0.062205, 0.980560, 0.186096,
		-0.864115, -0.040392, 0.501671,
		37.865665, 35.983833, 27.009670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656315, 36.168831, 27.303963>,  <38.470547, 36.012108, 26.658501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656315, 36.168831, 27.303963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280125, 36.052555, 27.374401>,  <38.054413, 35.982788, 27.416664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280125, 36.052555, 27.374401>,  <38.656315, 36.168831, 27.303963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280125, 36.052555, 27.374401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259923, -0.281354, 0.923731,
		-0.218976, 0.914515, 0.340163,
		-0.940473, -0.290691, 0.176094,
		37.997982, 35.965347, 27.427229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573360, 36.345398, 28.038778>,  <38.656315, 36.168831, 27.303963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573360, 36.345398, 28.038778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.275005, 36.098007, 27.939873>,  <38.095993, 35.949574, 27.880529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.275005, 36.098007, 27.939873>,  <38.573360, 36.345398, 28.038778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275005, 36.098007, 27.939873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193473, -0.556392, 0.808082,
		-0.637356, 0.554898, 0.534664,
		-0.745885, -0.618479, -0.247262,
		38.051239, 35.912464, 27.865694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112194, 36.308208, 28.727272>,  <38.573360, 36.345398, 28.038778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112194, 36.308208, 28.727272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.115936, 35.980431, 28.498039>,  <38.118179, 35.783764, 28.360500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.115936, 35.980431, 28.498039>,  <38.112194, 36.308208, 28.727272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115936, 35.980431, 28.498039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235201, -0.555225, 0.797751,
		-0.971902, -0.142250, 0.187542,
		0.009352, -0.819445, -0.573081,
		38.118740, 35.734596, 28.326115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693596, 35.829777, 29.078533>,  <38.112194, 36.308208, 28.727272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693596, 35.829777, 29.078533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893188, 35.596111, 28.822479>,  <38.012943, 35.455914, 28.668848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893188, 35.596111, 28.822479>,  <37.693596, 35.829777, 29.078533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893188, 35.596111, 28.822479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132205, -0.678704, 0.722414,
		-0.856469, -0.445100, -0.261432,
		0.498981, -0.584163, -0.640134,
		38.042885, 35.420864, 28.630440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396038, 35.198803, 29.176596>,  <37.693596, 35.829777, 29.078533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396038, 35.198803, 29.176596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734009, 35.106064, 28.983786>,  <37.936790, 35.050419, 28.868099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734009, 35.106064, 28.983786>,  <37.396038, 35.198803, 29.176596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734009, 35.106064, 28.983786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201321, -0.697065, 0.688164,
		-0.495553, -0.678489, -0.542291,
		0.844924, -0.231848, -0.482027,
		37.987488, 35.036510, 28.839178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443474, 34.523186, 29.264450>,  <37.396038, 35.198803, 29.176596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443474, 34.523186, 29.264450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816422, 34.592941, 29.137787>,  <38.040192, 34.634792, 29.061789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816422, 34.592941, 29.137787>,  <37.443474, 34.523186, 29.264450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816422, 34.592941, 29.137787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353153, -0.626538, 0.694790,
		-0.077238, -0.759632, -0.645751,
		0.932372, 0.174385, -0.316659,
		38.096134, 34.645256, 29.042789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827896, 33.855370, 29.019951>,  <37.443474, 34.523186, 29.264450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827896, 33.855370, 29.019951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.079540, 34.136959, 29.151796>,  <38.230526, 34.305912, 29.230904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.079540, 34.136959, 29.151796>,  <37.827896, 33.855370, 29.019951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079540, 34.136959, 29.151796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180619, -0.544817, 0.818872,
		0.756044, -0.455623, -0.469899,
		0.629106, 0.703976, 0.329612,
		38.268272, 34.348152, 29.250679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438950, 33.592621, 29.214640>,  <37.827896, 33.855370, 29.019951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438950, 33.592621, 29.214640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.392403, 33.921173, 29.437990>,  <38.364475, 34.118305, 29.572001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.392403, 33.921173, 29.437990>,  <38.438950, 33.592621, 29.214640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392403, 33.921173, 29.437990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005991, -0.561605, 0.827383,
		0.993188, 0.099629, 0.060433,
		-0.116371, 0.821385, 0.558376,
		38.357491, 34.167587, 29.605503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.272434, 39.781429, 26.971590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898151, 39.856907, 27.090813>,  <40.673580, 39.902195, 27.162346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898151, 39.856907, 27.090813>,  <41.272434, 39.781429, 26.971590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898151, 39.856907, 27.090813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210303, 0.379975, -0.900773,
		-0.283225, -0.905546, -0.315864,
		-0.935712, 0.188694, 0.298057,
		40.617439, 39.913513, 27.180229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798717, 39.508240, 26.422281>,  <41.272434, 39.781429, 26.971590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798717, 39.508240, 26.422281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.598328, 39.787621, 26.626705>,  <40.478092, 39.955250, 26.749359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.598328, 39.787621, 26.626705>,  <40.798717, 39.508240, 26.422281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598328, 39.787621, 26.626705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312538, 0.404656, -0.859403,
		-0.807058, -0.590267, 0.015570,
		-0.500976, 0.698455, 0.511061,
		40.448036, 39.997158, 26.780024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043259, 39.538940, 26.145596>,  <40.798717, 39.508240, 26.422281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043259, 39.538940, 26.145596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139431, 39.888378, 26.314842>,  <40.197136, 40.098042, 26.416389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139431, 39.888378, 26.314842>,  <40.043259, 39.538940, 26.145596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139431, 39.888378, 26.314842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522463, 0.483844, -0.702087,
		-0.818061, -0.052257, 0.572753,
		0.240434, 0.873593, 0.423116,
		40.211563, 40.150455, 26.441776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404198, 39.795479, 26.209213>,  <40.043259, 39.538940, 26.145596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404198, 39.795479, 26.209213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.664474, 40.099194, 26.205317>,  <39.820641, 40.281422, 26.202978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.664474, 40.099194, 26.205317>,  <39.404198, 39.795479, 26.209213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664474, 40.099194, 26.205317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462401, 0.386028, -0.798228,
		-0.602320, 0.523902, 0.602277,
		0.650689, 0.759282, -0.009740,
		39.859680, 40.326977, 26.202394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984417, 40.303440, 26.032522>,  <39.404198, 39.795479, 26.209213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984417, 40.303440, 26.032522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351963, 40.455860, 25.991554>,  <39.572491, 40.547310, 25.966974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351963, 40.455860, 25.991554>,  <38.984417, 40.303440, 26.032522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351963, 40.455860, 25.991554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287156, 0.467781, -0.835896,
		-0.270607, 0.797485, 0.539248,
		0.918865, 0.381048, -0.102418,
		39.627625, 40.570175, 25.960829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853256, 40.969814, 25.696291>,  <38.984417, 40.303440, 26.032522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853256, 40.969814, 25.696291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.235817, 40.872200, 25.632122>,  <39.465355, 40.813633, 25.593620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.235817, 40.872200, 25.632122>,  <38.853256, 40.969814, 25.696291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235817, 40.872200, 25.632122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135698, 0.115067, -0.984046,
		0.258602, 0.962915, 0.076936,
		0.956405, -0.244036, -0.160422,
		39.522739, 40.798988, 25.583996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128403, 41.585712, 25.345686>,  <38.853256, 40.969814, 25.696291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128403, 41.585712, 25.345686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.361034, 41.275799, 25.246519>,  <39.500614, 41.089851, 25.187019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.361034, 41.275799, 25.246519>,  <39.128403, 41.585712, 25.345686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361034, 41.275799, 25.246519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204637, 0.155619, -0.966388,
		0.787328, 0.612768, -0.068045,
		0.581583, -0.774789, -0.247918,
		39.535511, 41.043362, 25.172144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413006, 41.811707, 24.872725>,  <39.128403, 41.585712, 25.345686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413006, 41.811707, 24.872725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.430218, 41.417271, 24.808496>,  <39.440544, 41.180611, 24.769960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.430218, 41.417271, 24.808496>,  <39.413006, 41.811707, 24.872725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430218, 41.417271, 24.808496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358765, 0.134746, -0.923651,
		0.932435, 0.097355, -0.347975,
		0.043034, -0.986086, -0.160569,
		39.443127, 41.121445, 24.760326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702168, 41.722496, 24.182882>,  <39.413006, 41.811707, 24.872725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702168, 41.722496, 24.182882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.551079, 41.358208, 24.249706>,  <39.460426, 41.139633, 24.289801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.551079, 41.358208, 24.249706>,  <39.702168, 41.722496, 24.182882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551079, 41.358208, 24.249706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349958, -0.026625, -0.936387,
		0.857237, -0.412158, -0.308658,
		-0.377721, -0.910723, 0.167062,
		39.437763, 41.084991, 24.299826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905472, 41.430759, 23.648367>,  <39.702168, 41.722496, 24.182882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905472, 41.430759, 23.648367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.599987, 41.215313, 23.790714>,  <39.416698, 41.086044, 23.876123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.599987, 41.215313, 23.790714>,  <39.905472, 41.430759, 23.648367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599987, 41.215313, 23.790714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406299, -0.027355, -0.913331,
		0.501668, -0.842108, -0.197947,
		-0.763709, -0.538614, 0.355870,
		39.370876, 41.053730, 23.897476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909721, 40.820534, 23.299225>,  <39.905472, 41.430759, 23.648367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909721, 40.820534, 23.299225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.533470, 40.889462, 23.416208>,  <39.307720, 40.930820, 23.486399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.533470, 40.889462, 23.416208>,  <39.909721, 40.820534, 23.299225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533470, 40.889462, 23.416208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266754, 0.157561, -0.950798,
		-0.209922, -0.972358, -0.102238,
		-0.940625, 0.172321, 0.292456,
		39.251282, 40.941158, 23.503944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416981, 40.385891, 22.883978>,  <39.909721, 40.820534, 23.299225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416981, 40.385891, 22.883978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.183098, 40.679012, 23.023182>,  <39.042767, 40.854885, 23.106705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.183098, 40.679012, 23.023182>,  <39.416981, 40.385891, 22.883978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183098, 40.679012, 23.023182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297294, 0.205579, -0.932391,
		-0.754804, -0.648640, 0.097654,
		-0.584711, 0.732805, 0.348008,
		39.007683, 40.898853, 23.127584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922787, 40.392632, 22.445059>,  <39.416981, 40.385891, 22.883978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922787, 40.392632, 22.445059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.815044, 40.728100, 22.634403>,  <38.750397, 40.929382, 22.748009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.815044, 40.728100, 22.634403>,  <38.922787, 40.392632, 22.445059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815044, 40.728100, 22.634403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418739, 0.340635, -0.841799,
		-0.867239, -0.424962, 0.259432,
		-0.269360, 0.838675, 0.473360,
		38.734238, 40.979702, 22.776411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226574, 40.473209, 22.306696>,  <38.922787, 40.392632, 22.445059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226574, 40.473209, 22.306696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.385002, 40.833233, 22.379379>,  <38.480057, 41.049248, 22.422989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.385002, 40.833233, 22.379379>,  <38.226574, 40.473209, 22.306696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385002, 40.833233, 22.379379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504355, 0.378614, -0.776066,
		-0.767305, 0.215728, 0.603907,
		0.396067, 0.900063, 0.181710,
		38.503822, 41.103252, 22.433891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989269, 40.489326, 21.630814>,  <38.226574, 40.473209, 22.306696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989269, 40.489326, 21.630814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.720837, 40.373222, 21.357935>,  <37.559776, 40.303558, 21.194208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.720837, 40.373222, 21.357935>,  <37.989269, 40.489326, 21.630814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720837, 40.373222, 21.357935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667066, -0.165135, 0.726466,
		-0.323522, 0.942590, -0.082806,
		-0.671086, -0.290265, -0.682195,
		37.519512, 40.286144, 21.153276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335411, 40.721497, 21.839481>,  <37.989269, 40.489326, 21.630814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335411, 40.721497, 21.839481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.262642, 40.416306, 21.591364>,  <37.218979, 40.233189, 21.442493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.262642, 40.416306, 21.591364>,  <37.335411, 40.721497, 21.839481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262642, 40.416306, 21.591364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751712, -0.298750, 0.587943,
		-0.633901, 0.573245, -0.519191,
		-0.181927, -0.762980, -0.620293,
		37.208065, 40.187412, 21.405275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795101, 40.659725, 22.002069>,  <37.335411, 40.721497, 21.839481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795101, 40.659725, 22.002069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.878262, 40.310349, 21.825941>,  <36.928158, 40.100723, 21.720264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.878262, 40.310349, 21.825941>,  <36.795101, 40.659725, 22.002069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878262, 40.310349, 21.825941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511349, -0.480794, 0.712292,
		-0.833847, 0.077073, -0.546588,
		0.207898, -0.873440, -0.440320,
		36.940632, 40.048317, 21.693846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252529, 40.149010, 22.198298>,  <36.795101, 40.659725, 22.002069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252529, 40.149010, 22.198298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.497288, 39.877808, 22.035378>,  <36.644142, 39.715088, 21.937626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.497288, 39.877808, 22.035378>,  <36.252529, 40.149010, 22.198298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497288, 39.877808, 22.035378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075192, -0.562489, 0.823378,
		-0.787357, -0.473195, -0.395165,
		0.611895, -0.678006, -0.407299,
		36.680855, 39.674404, 21.913187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909946, 39.409218, 22.157343>,  <36.252529, 40.149010, 22.198298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909946, 39.409218, 22.157343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.307121, 39.373077, 22.188122>,  <36.545425, 39.351395, 22.206589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.307121, 39.373077, 22.188122>,  <35.909946, 39.409218, 22.157343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307121, 39.373077, 22.188122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116803, -0.629252, 0.768374,
		-0.021001, -0.771932, -0.635358,
		0.992933, -0.090348, 0.076949,
		36.605000, 39.345974, 22.211206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075748, 38.698013, 22.334946>,  <35.909946, 39.409218, 22.157343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075748, 38.698013, 22.334946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.437023, 38.849396, 22.415962>,  <36.653790, 38.940228, 22.464573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.437023, 38.849396, 22.415962>,  <36.075748, 38.698013, 22.334946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437023, 38.849396, 22.415962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049503, -0.560538, 0.826648,
		0.426385, -0.736590, -0.525005,
		0.903187, 0.378459, 0.202542,
		36.707977, 38.962933, 22.476725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442654, 38.026375, 22.437204>,  <36.075748, 38.698013, 22.334946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442654, 38.026375, 22.437204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.602345, 38.358253, 22.593269>,  <36.698158, 38.557381, 22.686909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.602345, 38.358253, 22.593269>,  <36.442654, 38.026375, 22.437204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602345, 38.358253, 22.593269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096589, -0.461236, 0.882005,
		0.911752, -0.314431, -0.264275,
		0.399223, 0.829695, 0.390162,
		36.722111, 38.607162, 22.710318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993416, 37.734093, 22.793266>,  <36.442654, 38.026375, 22.437204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993416, 37.734093, 22.793266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.943100, 38.089592, 22.969584>,  <36.912910, 38.302891, 23.075375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.943100, 38.089592, 22.969584>,  <36.993416, 37.734093, 22.793266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943100, 38.089592, 22.969584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273958, -0.395926, 0.876464,
		0.953480, 0.231009, -0.193677,
		-0.125789, 0.888751, 0.440794,
		36.905365, 38.356216, 23.101822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432690, 37.767418, 23.382004>,  <36.993416, 37.734093, 22.793266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432690, 37.767418, 23.382004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160877, 38.044952, 23.477364>,  <36.997791, 38.211472, 23.534580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160877, 38.044952, 23.477364>,  <37.432690, 37.767418, 23.382004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160877, 38.044952, 23.477364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063054, -0.268518, 0.961209,
		0.730935, 0.668200, 0.138716,
		-0.679528, 0.693835, 0.238402,
		36.957020, 38.253101, 23.548883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627640, 37.949303, 24.006683>,  <37.432690, 37.767418, 23.382004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627640, 37.949303, 24.006683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.257088, 38.098618, 23.986807>,  <37.034756, 38.188206, 23.974880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.257088, 38.098618, 23.986807>,  <37.627640, 37.949303, 24.006683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257088, 38.098618, 23.986807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165206, -0.284265, 0.944405,
		0.338412, 0.883090, 0.325008,
		-0.926382, 0.373291, -0.049693,
		36.979172, 38.210606, 23.971899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536865, 38.364136, 24.597675>,  <37.627640, 37.949303, 24.006683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536865, 38.364136, 24.597675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.173958, 38.232517, 24.492918>,  <36.956211, 38.153545, 24.430063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.173958, 38.232517, 24.492918>,  <37.536865, 38.364136, 24.597675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173958, 38.232517, 24.492918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081228, -0.473913, 0.876817,
		-0.412626, 0.816785, 0.403240,
		-0.907272, -0.329043, -0.261895,
		36.901775, 38.133804, 24.414351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172504, 38.351131, 25.213078>,  <37.536865, 38.364136, 24.597675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172504, 38.351131, 25.213078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.938625, 38.120319, 24.984983>,  <36.798298, 37.981834, 24.848127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.938625, 38.120319, 24.984983>,  <37.172504, 38.351131, 25.213078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938625, 38.120319, 24.984983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091409, -0.651573, 0.753059,
		-0.806087, 0.492435, 0.328226,
		-0.584695, -0.577028, -0.570237,
		36.763218, 37.947212, 24.813911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640812, 38.235966, 25.607668>,  <37.172504, 38.351131, 25.213078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640812, 38.235966, 25.607668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650078, 37.946526, 25.331736>,  <36.655640, 37.772861, 25.166176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650078, 37.946526, 25.331736>,  <36.640812, 38.235966, 25.607668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650078, 37.946526, 25.331736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049950, -0.689993, 0.722090,
		-0.998483, 0.017728, -0.052129,
		0.023167, -0.723599, -0.689832,
		36.657028, 37.729446, 25.124786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045502, 37.843132, 25.776951>,  <36.640812, 38.235966, 25.607668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045502, 37.843132, 25.776951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.313663, 37.624474, 25.576258>,  <36.474560, 37.493279, 25.455841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.313663, 37.624474, 25.576258>,  <36.045502, 37.843132, 25.776951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313663, 37.624474, 25.576258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155528, -0.557645, 0.815379,
		-0.725514, -0.624666, -0.288828,
		0.670403, -0.546648, -0.501733,
		36.514786, 37.460480, 25.425737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502048, 37.516273, 25.334480>,  <36.045502, 37.843132, 25.776951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502048, 37.516273, 25.334480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.149384, 37.338276, 25.397289>,  <34.937786, 37.231476, 25.434975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.149384, 37.338276, 25.397289>,  <35.502048, 37.516273, 25.334480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149384, 37.338276, 25.397289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270164, 0.203183, -0.941131,
		0.386894, -0.872179, -0.299360,
		-0.881660, -0.444994, 0.157022,
		34.884884, 37.204777, 25.444395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376667, 37.018234, 24.822525>,  <35.502048, 37.516273, 25.334480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376667, 37.018234, 24.822525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.032169, 37.154366, 24.973488>,  <34.825470, 37.236042, 25.064066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.032169, 37.154366, 24.973488>,  <35.376667, 37.018234, 24.822525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032169, 37.154366, 24.973488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274252, 0.313967, -0.908961,
		-0.427837, -0.886342, -0.177067,
		-0.861244, 0.340326, 0.377408,
		34.773796, 37.256462, 25.086710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986988, 37.073616, 24.279943>,  <35.376667, 37.018234, 24.822525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986988, 37.073616, 24.279943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.735256, 37.249851, 24.536015>,  <34.584217, 37.355595, 24.689657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.735256, 37.249851, 24.536015>,  <34.986988, 37.073616, 24.279943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735256, 37.249851, 24.536015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400117, 0.522491, -0.752934,
		-0.666223, -0.729987, -0.152529,
		-0.629327, 0.440593, 0.640176,
		34.546459, 37.382030, 24.728067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481327, 37.089752, 23.912775>,  <34.986988, 37.073616, 24.279943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481327, 37.089752, 23.912775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.397125, 37.385757, 24.168295>,  <34.346603, 37.563362, 24.321608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.397125, 37.385757, 24.168295>,  <34.481327, 37.089752, 23.912775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397125, 37.385757, 24.168295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477870, 0.492162, -0.727610,
		-0.852836, -0.458426, 0.250031,
		-0.210500, 0.740015, 0.638802,
		34.333977, 37.607761, 24.359936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845123, 37.359295, 23.707270>,  <34.481327, 37.089752, 23.912775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845123, 37.359295, 23.707270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.992680, 37.653912, 23.934046>,  <34.081215, 37.830681, 24.070110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.992680, 37.653912, 23.934046>,  <33.845123, 37.359295, 23.707270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992680, 37.653912, 23.934046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396150, 0.676375, -0.620953,
		-0.840822, 0.004473, 0.541293,
		0.368895, 0.736544, 0.566939,
		34.103348, 37.874874, 24.104128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281857, 37.804375, 23.729141>,  <33.845123, 37.359295, 23.707270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281857, 37.804375, 23.729141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597736, 38.037392, 23.806105>,  <33.787266, 38.177200, 23.852282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597736, 38.037392, 23.806105>,  <33.281857, 37.804375, 23.729141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597736, 38.037392, 23.806105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396115, 0.723651, -0.565174,
		-0.468472, 0.370102, 0.802221,
		0.789700, 0.582540, 0.192407,
		33.834648, 38.212154, 23.863827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116016, 38.514977, 23.832853>,  <33.281857, 37.804375, 23.729141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116016, 38.514977, 23.832853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.490494, 38.527920, 23.692862>,  <33.715179, 38.535686, 23.608866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.490494, 38.527920, 23.692862>,  <33.116016, 38.514977, 23.832853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490494, 38.527920, 23.692862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284085, 0.655986, -0.699270,
		0.206952, 0.754079, 0.623326,
		0.936198, 0.032362, -0.349980,
		33.771355, 38.537628, 23.587868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938374, 39.001343, 24.300150>,  <33.116016, 38.514977, 23.832853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938374, 39.001343, 24.300150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681923, 39.217667, 24.517952>,  <32.528053, 39.347462, 24.648632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681923, 39.217667, 24.517952>,  <32.938374, 39.001343, 24.300150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681923, 39.217667, 24.517952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048607, -0.679470, 0.732092,
		0.765894, 0.495830, 0.409339,
		-0.641126, 0.540808, 0.544503,
		32.489586, 39.379910, 24.681303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296661, 39.281235, 24.915436>,  <32.938374, 39.001343, 24.300150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296661, 39.281235, 24.915436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.905224, 39.281574, 24.997763>,  <32.670361, 39.281776, 25.047159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.905224, 39.281574, 24.997763>,  <33.296661, 39.281235, 24.915436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905224, 39.281574, 24.997763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173759, -0.532552, 0.828370,
		0.110311, 0.846397, 0.521002,
		-0.978590, 0.000850, 0.205816,
		32.611649, 39.281830, 25.059507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229828, 39.369579, 25.645929>,  <33.296661, 39.281235, 24.915436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229828, 39.369579, 25.645929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.861267, 39.245121, 25.552792>,  <32.640133, 39.170444, 25.496910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.861267, 39.245121, 25.552792>,  <33.229828, 39.369579, 25.645929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861267, 39.245121, 25.552792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066817, -0.463392, 0.883631,
		-0.382834, 0.829733, 0.406179,
		-0.921398, -0.311145, -0.232842,
		32.584846, 39.151779, 25.482939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849125, 39.618176, 26.175741>,  <33.229828, 39.369579, 25.645929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849125, 39.618176, 26.175741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624859, 39.338234, 25.998716>,  <32.490299, 39.170269, 25.892502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624859, 39.338234, 25.998716>,  <32.849125, 39.618176, 26.175741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624859, 39.338234, 25.998716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134443, -0.450435, 0.882628,
		-0.817058, 0.554355, 0.158451,
		-0.560662, -0.699856, -0.442561,
		32.456661, 39.128277, 25.865948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404697, 39.367737, 26.731228>,  <32.849125, 39.618176, 26.175741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404697, 39.367737, 26.731228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.349392, 39.076744, 26.462406>,  <32.316208, 38.902149, 26.301113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.349392, 39.076744, 26.462406>,  <32.404697, 39.367737, 26.731228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349392, 39.076744, 26.462406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186875, -0.647219, 0.739044,
		-0.972604, 0.227777, -0.046458,
		-0.138268, -0.727479, -0.672054,
		32.307911, 38.858501, 26.260790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711111, 39.053497, 26.795509>,  <32.404697, 39.367737, 26.731228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711111, 39.053497, 26.795509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.955130, 38.793087, 26.614841>,  <32.101540, 38.636841, 26.506441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.955130, 38.793087, 26.614841>,  <31.711111, 39.053497, 26.795509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955130, 38.793087, 26.614841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203811, -0.679774, 0.704534,
		-0.765704, -0.337744, -0.547382,
		0.610048, -0.651027, -0.451670,
		32.138145, 38.597778, 26.479342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372517, 38.355740, 26.912840>,  <31.711111, 39.053497, 26.795509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372517, 38.355740, 26.912840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752232, 38.289997, 26.805626>,  <31.980061, 38.250549, 26.741297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752232, 38.289997, 26.805626>,  <31.372517, 38.355740, 26.912840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752232, 38.289997, 26.805626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065187, -0.731086, 0.679164,
		-0.307584, -0.662193, -0.683295,
		0.949286, -0.164358, -0.268036,
		32.037018, 38.240688, 26.725214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.672188, 43.662083, 24.158030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.832893, 43.400566, 23.901548>,  <36.929317, 43.243656, 23.747660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.832893, 43.400566, 23.901548>,  <36.672188, 43.662083, 24.158030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832893, 43.400566, 23.901548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021142, -0.693390, 0.720252,
		-0.915499, -0.302927, -0.264757,
		0.401764, -0.653793, -0.641202,
		36.953423, 43.204430, 23.709188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224724, 43.127880, 23.958817>,  <36.672188, 43.662083, 24.158030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224724, 43.127880, 23.958817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604221, 43.001530, 23.962860>,  <36.831921, 42.925720, 23.965286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604221, 43.001530, 23.962860>,  <36.224724, 43.127880, 23.958817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604221, 43.001530, 23.962860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189767, -0.543815, 0.817468,
		-0.252717, -0.777489, -0.575886,
		0.948748, -0.315873, 0.010111,
		36.888847, 42.906769, 23.965893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367100, 42.386333, 24.195829>,  <36.224724, 43.127880, 23.958817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367100, 42.386333, 24.195829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.719936, 42.557484, 24.274651>,  <36.931641, 42.660175, 24.321943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.719936, 42.557484, 24.274651>,  <36.367100, 42.386333, 24.195829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719936, 42.557484, 24.274651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017586, -0.388104, 0.921448,
		0.470745, -0.816269, -0.334819,
		0.882094, 0.427879, 0.197053,
		36.984566, 42.685848, 24.333767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724060, 41.829662, 24.525877>,  <36.367100, 42.386333, 24.195829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724060, 41.829662, 24.525877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.952225, 42.147820, 24.607834>,  <37.089123, 42.338715, 24.657007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.952225, 42.147820, 24.607834>,  <36.724060, 41.829662, 24.525877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952225, 42.147820, 24.607834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127284, -0.332039, 0.934638,
		0.811439, -0.507046, -0.290639,
		0.570408, 0.795396, 0.204891,
		37.123348, 42.386436, 24.669302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430225, 41.584785, 24.699144>,  <36.724060, 41.829662, 24.525877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430225, 41.584785, 24.699144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.404793, 41.944016, 24.873232>,  <37.389534, 42.159554, 24.977684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.404793, 41.944016, 24.873232>,  <37.430225, 41.584785, 24.699144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404793, 41.944016, 24.873232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215922, -0.413394, 0.884581,
		0.974338, 0.150218, -0.167629,
		-0.063583, 0.898076, 0.435221,
		37.385719, 42.213440, 25.003798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067780, 41.734581, 25.254480>,  <37.430225, 41.584785, 24.699144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067780, 41.734581, 25.254480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.790195, 41.989750, 25.388031>,  <37.623646, 42.142853, 25.468161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.790195, 41.989750, 25.388031>,  <38.067780, 41.734581, 25.254480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790195, 41.989750, 25.388031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344228, -0.113334, 0.932021,
		0.632395, 0.761717, -0.140941,
		-0.693962, 0.637921, 0.333876,
		37.582008, 42.181126, 25.488194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356743, 42.092281, 25.834091>,  <38.067780, 41.734581, 25.254480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356743, 42.092281, 25.834091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.964954, 42.158897, 25.879538>,  <37.729881, 42.198868, 25.906805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.964954, 42.158897, 25.879538>,  <38.356743, 42.092281, 25.834091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964954, 42.158897, 25.879538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092572, -0.129116, 0.987299,
		0.179093, 0.977545, 0.111048,
		-0.979467, 0.166539, 0.113617,
		37.671116, 42.208858, 25.913622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316368, 42.368732, 26.439667>,  <38.356743, 42.092281, 25.834091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316368, 42.368732, 26.439667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.928459, 42.283512, 26.392099>,  <37.695713, 42.232380, 26.363560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.928459, 42.283512, 26.392099>,  <38.316368, 42.368732, 26.439667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928459, 42.283512, 26.392099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047575, -0.312909, 0.948591,
		-0.239312, 0.925579, 0.293315,
		-0.969776, -0.213054, -0.118917,
		37.637527, 42.219597, 26.356424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792946, 42.744614, 26.947927>,  <38.316368, 42.368732, 26.439667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792946, 42.744614, 26.947927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.627853, 42.404724, 26.816700>,  <37.528797, 42.200790, 26.737963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.627853, 42.404724, 26.816700>,  <37.792946, 42.744614, 26.947927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627853, 42.404724, 26.816700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225427, -0.253681, 0.940653,
		-0.882517, 0.462192, -0.086848,
		-0.412731, -0.849720, -0.328068,
		37.504036, 42.149807, 26.718279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192356, 42.713417, 27.367090>,  <37.792946, 42.744614, 26.947927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192356, 42.713417, 27.367090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.224815, 42.343250, 27.219027>,  <37.244289, 42.121151, 27.130188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.224815, 42.343250, 27.219027>,  <37.192356, 42.713417, 27.367090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224815, 42.343250, 27.219027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467896, -0.363288, 0.805664,
		-0.880050, 0.107822, -0.462478,
		0.081144, -0.925417, -0.370161,
		37.249157, 42.065624, 27.107979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675987, 42.395515, 27.655264>,  <37.192356, 42.713417, 27.367090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675987, 42.395515, 27.655264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.919018, 42.099346, 27.540289>,  <37.064838, 41.921646, 27.471304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.919018, 42.099346, 27.540289>,  <36.675987, 42.395515, 27.655264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919018, 42.099346, 27.540289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239537, -0.515863, 0.822501,
		-0.757278, -0.430881, -0.490786,
		0.607579, -0.740423, -0.287440,
		37.101292, 41.877220, 27.454058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293114, 41.699085, 27.854147>,  <36.675987, 42.395515, 27.655264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293114, 41.699085, 27.854147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.686787, 41.633804, 27.826559>,  <36.922989, 41.594635, 27.810007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.686787, 41.633804, 27.826559>,  <36.293114, 41.699085, 27.854147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686787, 41.633804, 27.826559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013164, -0.455547, 0.890114,
		-0.176688, -0.875124, -0.450488,
		0.984179, -0.163203, -0.068970,
		36.982040, 41.584843, 27.805868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556728, 41.418339, 27.768951>,  <36.293114, 41.699085, 27.854147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556728, 41.418339, 27.768951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.293503, 41.643436, 27.969063>,  <35.135567, 41.778496, 28.089130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.293503, 41.643436, 27.969063>,  <35.556728, 41.418339, 27.768951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293503, 41.643436, 27.969063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182047, 0.525792, -0.830904,
		-0.730627, -0.637860, -0.243557,
		-0.658060, 0.562742, 0.500278,
		35.096085, 41.812260, 28.119146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942757, 41.378696, 27.355932>,  <35.556728, 41.418339, 27.768951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942757, 41.378696, 27.355932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.897736, 41.711655, 27.572985>,  <34.870724, 41.911430, 27.703217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.897736, 41.711655, 27.572985>,  <34.942757, 41.378696, 27.355932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897736, 41.711655, 27.572985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421355, 0.454587, -0.784736,
		-0.899884, -0.316966, 0.299568,
		-0.112555, 0.832396, 0.542631,
		34.863968, 41.961372, 27.735775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234447, 41.579655, 27.279743>,  <34.942757, 41.378696, 27.355932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234447, 41.579655, 27.279743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.414394, 41.914898, 27.403152>,  <34.522362, 42.116043, 27.477198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.414394, 41.914898, 27.403152>,  <34.234447, 41.579655, 27.279743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414394, 41.914898, 27.403152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380678, 0.492451, -0.782672,
		-0.807900, 0.234652, 0.540589,
		0.449870, 0.838111, 0.308524,
		34.549355, 42.166332, 27.495710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778389, 42.122902, 27.125902>,  <34.234447, 41.579655, 27.279743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778389, 42.122902, 27.125902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.141735, 42.287201, 27.157307>,  <34.359741, 42.385780, 27.176149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.141735, 42.287201, 27.157307>,  <33.778389, 42.122902, 27.125902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141735, 42.287201, 27.157307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138055, 0.471764, -0.870850,
		-0.394742, 0.780207, 0.485238,
		0.908361, 0.410751, 0.078513,
		34.414242, 42.410427, 27.180861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858978, 42.843590, 26.903070>,  <33.778389, 42.122902, 27.125902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858978, 42.843590, 26.903070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.245956, 42.763218, 26.841515>,  <34.478142, 42.714996, 26.804581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.245956, 42.763218, 26.841515>,  <33.858978, 42.843590, 26.903070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245956, 42.763218, 26.841515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030631, 0.510626, -0.859257,
		0.251226, 0.835997, 0.487847,
		0.967444, -0.200925, -0.153890,
		34.536190, 42.702942, 26.795347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173965, 43.478817, 26.625448>,  <33.858978, 42.843590, 26.903070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173965, 43.478817, 26.625448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.442883, 43.198650, 26.529579>,  <34.604233, 43.030552, 26.472057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.442883, 43.198650, 26.529579>,  <34.173965, 43.478817, 26.625448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442883, 43.198650, 26.529579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027038, 0.346771, -0.937560,
		0.739793, 0.623833, 0.252069,
		0.672291, -0.700416, -0.239671,
		34.644569, 42.988525, 26.457678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667923, 43.873581, 26.272575>,  <34.173965, 43.478817, 26.625448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667923, 43.873581, 26.272575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.717594, 43.499332, 26.140402>,  <34.747398, 43.274784, 26.061098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.717594, 43.499332, 26.140402>,  <34.667923, 43.873581, 26.272575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717594, 43.499332, 26.140402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090411, 0.342293, -0.935233,
		0.988132, 0.086264, 0.127098,
		0.124182, -0.935625, -0.330432,
		34.754848, 43.218643, 26.041273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294067, 43.843952, 25.798147>,  <34.667923, 43.873581, 26.272575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294067, 43.843952, 25.798147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.092178, 43.513611, 25.697573>,  <34.971043, 43.315407, 25.637228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.092178, 43.513611, 25.697573>,  <35.294067, 43.843952, 25.798147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092178, 43.513611, 25.697573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040416, 0.268335, -0.962477,
		0.862332, -0.495950, -0.102058,
		-0.504727, -0.825851, -0.251438,
		34.940762, 43.265854, 25.622141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713993, 43.545982, 25.203638>,  <35.294067, 43.843952, 25.798147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713993, 43.545982, 25.203638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.344013, 43.396950, 25.173569>,  <35.122025, 43.307529, 25.155527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.344013, 43.396950, 25.173569>,  <35.713993, 43.545982, 25.203638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344013, 43.396950, 25.173569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022738, 0.143186, -0.989435,
		0.379404, -0.916888, -0.123968,
		-0.924952, -0.372577, -0.075174,
		35.066528, 43.285175, 25.151016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736057, 43.210094, 24.635256>,  <35.713993, 43.545982, 25.203638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736057, 43.210094, 24.635256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.341133, 43.251205, 24.683662>,  <35.104179, 43.275871, 24.712708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.341133, 43.251205, 24.683662>,  <35.736057, 43.210094, 24.635256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341133, 43.251205, 24.683662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100682, 0.184078, -0.977742,
		-0.122771, -0.977523, -0.171394,
		-0.987315, 0.102782, 0.121018,
		35.044937, 43.282040, 24.719967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446114, 42.873051, 24.032352>,  <35.736057, 43.210094, 24.635256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446114, 42.873051, 24.032352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.128162, 43.077339, 24.163401>,  <34.937393, 43.199913, 24.242029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.128162, 43.077339, 24.163401>,  <35.446114, 42.873051, 24.032352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128162, 43.077339, 24.163401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176066, 0.322575, -0.930025,
		-0.580662, -0.796940, -0.166488,
		-0.794879, 0.510717, 0.327621,
		34.889698, 43.230553, 24.261686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781467, 42.668385, 23.743340>,  <35.446114, 42.873051, 24.032352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781467, 42.668385, 23.743340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.731365, 43.050259, 23.851334>,  <34.701302, 43.279381, 23.916130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.731365, 43.050259, 23.851334>,  <34.781467, 42.668385, 23.743340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731365, 43.050259, 23.851334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165288, 0.248245, -0.954492,
		-0.978259, -0.164183, 0.126702,
		-0.125258, 0.954682, 0.269986,
		34.693787, 43.336662, 23.932329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193939, 42.826668, 23.455175>,  <34.781467, 42.668385, 23.743340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193939, 42.826668, 23.455175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.330803, 43.192345, 23.542059>,  <34.412922, 43.411751, 23.594189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.330803, 43.192345, 23.542059>,  <34.193939, 42.826668, 23.455175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330803, 43.192345, 23.542059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288129, 0.322105, -0.901793,
		-0.894375, 0.245976, 0.373617,
		0.342163, 0.914191, 0.217210,
		34.433453, 43.466602, 23.607222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529144, 42.399746, 23.329773>,  <34.193939, 42.826668, 23.455175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529144, 42.399746, 23.329773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.204586, 42.264629, 23.138969>,  <33.009850, 42.183559, 23.024487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.204586, 42.264629, 23.138969>,  <33.529144, 42.399746, 23.329773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204586, 42.264629, 23.138969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115489, -0.707357, 0.697358,
		-0.572976, 0.620921, 0.534935,
		-0.811395, -0.337790, -0.477008,
		32.961166, 42.163292, 22.995867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007309, 42.365036, 23.834965>,  <33.529144, 42.399746, 23.329773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007309, 42.365036, 23.834965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.902252, 42.099560, 23.554813>,  <32.839218, 41.940273, 23.386723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.902252, 42.099560, 23.554813>,  <33.007309, 42.365036, 23.834965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902252, 42.099560, 23.554813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122232, -0.697129, 0.706449,
		-0.957121, 0.271149, 0.101968,
		-0.262638, -0.663694, -0.700380,
		32.823460, 41.900452, 23.344700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383579, 42.159832, 24.088070>,  <33.007309, 42.365036, 23.834965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383579, 42.159832, 24.088070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.514462, 41.888126, 23.825306>,  <32.592991, 41.725101, 23.667646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.514462, 41.888126, 23.825306>,  <32.383579, 42.159832, 24.088070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514462, 41.888126, 23.825306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216536, -0.730578, 0.647586,
		-0.919811, -0.069646, -0.386132,
		0.327202, -0.679268, -0.656913,
		32.612621, 41.684345, 23.628233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957966, 41.600960, 24.206831>,  <32.383579, 42.159832, 24.088070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957966, 41.600960, 24.206831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.245644, 41.415031, 24.000259>,  <32.418251, 41.303474, 23.876316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.245644, 41.415031, 24.000259>,  <31.957966, 41.600960, 24.206831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245644, 41.415031, 24.000259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218267, -0.856786, 0.467201,
		-0.659633, -0.223290, -0.717653,
		0.719196, -0.464821, -0.516427,
		32.461403, 41.275585, 23.845331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635633, 40.955929, 23.895576>,  <31.957966, 41.600960, 24.206831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635633, 40.955929, 23.895576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.030727, 40.899143, 23.869579>,  <32.267784, 40.865074, 23.853981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.030727, 40.899143, 23.869579>,  <31.635633, 40.955929, 23.895576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030727, 40.899143, 23.869579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094788, -0.876016, 0.472876,
		-0.124065, -0.460916, -0.878729,
		0.987736, -0.141961, -0.064994,
		32.327049, 40.856556, 23.850080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728376, 40.272137, 23.573683>,  <31.635633, 40.955929, 23.895576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728376, 40.272137, 23.573683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062756, 40.365822, 23.772213>,  <32.263382, 40.422031, 23.891331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062756, 40.365822, 23.772213>,  <31.728376, 40.272137, 23.573683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062756, 40.365822, 23.772213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048597, -0.869222, 0.492028,
		0.546654, -0.435429, -0.715242,
		0.835947, 0.234210, 0.496324,
		32.313541, 40.436085, 23.921110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006287, 39.639397, 23.596992>,  <31.728376, 40.272137, 23.573683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006287, 39.639397, 23.596992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.219490, 39.849117, 23.862627>,  <32.347412, 39.974949, 24.022007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.219490, 39.849117, 23.862627>,  <32.006287, 39.639397, 23.596992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219490, 39.849117, 23.862627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002583, -0.785874, 0.618381,
		0.846107, -0.327886, -0.420231,
		0.533007, 0.524302, 0.664086,
		32.379391, 40.006409, 24.061853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543018, 39.226471, 23.757963>,  <32.006287, 39.639397, 23.596992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543018, 39.226471, 23.757963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.486313, 39.479187, 24.062788>,  <32.452290, 39.630817, 24.245684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.486313, 39.479187, 24.062788>,  <32.543018, 39.226471, 23.757963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486313, 39.479187, 24.062788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080769, -0.759888, 0.645017,
		0.986599, 0.152993, 0.056698,
		-0.141767, 0.631794, 0.762062,
		32.443783, 39.668724, 24.291407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276295, 39.348099, 23.620420>,  <32.543018, 39.226471, 23.757963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276295, 39.348099, 23.620420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.579239, 39.143929, 23.457512>,  <33.761005, 39.021427, 23.359766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.579239, 39.143929, 23.457512>,  <33.276295, 39.348099, 23.620420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579239, 39.143929, 23.457512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120849, 0.503359, -0.855585,
		0.641719, 0.697203, 0.319539,
		0.757359, -0.510429, -0.407272,
		33.806446, 38.990799, 23.335331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376427, 39.757687, 23.167439>,  <33.276295, 39.348099, 23.620420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376427, 39.757687, 23.167439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.634094, 39.473839, 23.053257>,  <33.788696, 39.303528, 22.984747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.634094, 39.473839, 23.053257>,  <33.376427, 39.757687, 23.167439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634094, 39.473839, 23.053257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181528, 0.504372, -0.844190,
		0.743031, 0.491982, 0.453717,
		0.644168, -0.709621, -0.285456,
		33.827343, 39.260952, 22.967621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011738, 40.023701, 22.955723>,  <33.376427, 39.757687, 23.167439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011738, 40.023701, 22.955723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.012409, 39.667267, 22.774191>,  <34.012810, 39.453407, 22.665272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.012409, 39.667267, 22.774191>,  <34.011738, 40.023701, 22.955723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012409, 39.667267, 22.774191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299205, 0.433486, -0.850039,
		0.954187, -0.134365, 0.267344,
		0.001675, -0.891087, -0.453830,
		34.012913, 39.399940, 22.638042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592705, 40.084713, 22.610241>,  <34.011738, 40.023701, 22.955723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592705, 40.084713, 22.610241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.396286, 39.776016, 22.448608>,  <34.278435, 39.590797, 22.351629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.396286, 39.776016, 22.448608>,  <34.592705, 40.084713, 22.610241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396286, 39.776016, 22.448608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320654, 0.271164, -0.907552,
		0.809972, -0.575220, 0.114309,
		-0.491046, -0.771746, -0.404082,
		34.248974, 39.544491, 22.327383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989079, 39.521469, 22.343000>,  <34.592705, 40.084713, 22.610241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989079, 39.521469, 22.343000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.637699, 39.517303, 22.151911>,  <34.426872, 39.514805, 22.037256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.637699, 39.517303, 22.151911>,  <34.989079, 39.521469, 22.343000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637699, 39.517303, 22.151911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474785, 0.093838, -0.875085,
		0.053933, -0.995533, -0.077492,
		-0.878448, -0.010404, -0.477725,
		34.374165, 39.514179, 22.008593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160233, 39.116947, 21.694756>,  <34.989079, 39.521469, 22.343000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160233, 39.116947, 21.694756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.804348, 39.288467, 21.632088>,  <34.590816, 39.391380, 21.594488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.804348, 39.288467, 21.632088>,  <35.160233, 39.116947, 21.694756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804348, 39.288467, 21.632088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161912, -0.024484, -0.986501,
		-0.426849, -0.903067, -0.047644,
		-0.889710, 0.428801, -0.156668,
		34.537434, 39.417107, 21.585087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780827, 38.756718, 21.054487>,  <35.160233, 39.116947, 21.694756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780827, 38.756718, 21.054487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.630768, 39.124760, 21.099497>,  <34.540733, 39.345585, 21.126503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.630768, 39.124760, 21.099497>,  <34.780827, 38.756718, 21.054487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630768, 39.124760, 21.099497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235604, 0.212051, -0.948433,
		-0.896524, -0.329291, -0.296332,
		-0.375148, 0.920110, 0.112526,
		34.518223, 39.400791, 21.133255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417271, 38.922665, 20.388979>,  <34.780827, 38.756718, 21.054487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417271, 38.922665, 20.388979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.467964, 39.269577, 20.581547>,  <34.498379, 39.477722, 20.697088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.467964, 39.269577, 20.581547>,  <34.417271, 38.922665, 20.388979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467964, 39.269577, 20.581547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406520, 0.397295, -0.822739,
		-0.904810, 0.299973, -0.302217,
		0.126730, 0.867279, 0.481421,
		34.505981, 39.529762, 20.725973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008205, 39.565105, 20.102541>,  <34.417271, 38.922665, 20.388979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008205, 39.565105, 20.102541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.334671, 39.716042, 20.277578>,  <34.530552, 39.806602, 20.382601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.334671, 39.716042, 20.277578>,  <34.008205, 39.565105, 20.102541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334671, 39.716042, 20.277578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311428, 0.350642, -0.883212,
		-0.486713, 0.857124, 0.168666,
		0.816164, 0.377344, 0.437594,
		34.579521, 39.829247, 20.408857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.386086, 33.152424, 35.120090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589668, 33.383320, 34.864666>,  <36.711819, 33.521858, 34.711411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589668, 33.383320, 34.864666>,  <36.386086, 33.152424, 35.120090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589668, 33.383320, 34.864666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658885, -0.216132, -0.720526,
		-0.553928, 0.787455, 0.270331,
		0.508955, 0.577236, -0.638563,
		36.742355, 33.556492, 34.673096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899876, 33.425224, 34.709408>,  <36.386086, 33.152424, 35.120090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899876, 33.425224, 34.709408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229076, 33.491932, 34.492203>,  <36.426598, 33.531956, 34.361881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229076, 33.491932, 34.492203>,  <35.899876, 33.425224, 34.709408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229076, 33.491932, 34.492203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536625, -0.085237, -0.839504,
		-0.186285, 0.982305, 0.019340,
		0.823001, 0.166765, -0.543008,
		36.475975, 33.541962, 34.329300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638786, 33.908672, 34.208157>,  <35.899876, 33.425224, 34.709408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638786, 33.908672, 34.208157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.968807, 33.743160, 34.054237>,  <36.166821, 33.643852, 33.961884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.968807, 33.743160, 34.054237>,  <35.638786, 33.908672, 34.208157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968807, 33.743160, 34.054237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478179, -0.148463, -0.865623,
		0.301049, 0.898190, -0.320350,
		0.825054, -0.413780, -0.384801,
		36.216324, 33.619026, 33.938797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716602, 34.247799, 33.522568>,  <35.638786, 33.908672, 34.208157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716602, 34.247799, 33.522568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.928154, 33.908890, 33.502895>,  <36.055084, 33.705544, 33.491093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.928154, 33.908890, 33.502895>,  <35.716602, 34.247799, 33.522568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928154, 33.908890, 33.502895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015845, 0.048084, -0.998718,
		0.848550, 0.528979, 0.012006,
		0.528878, -0.847272, -0.049183,
		36.086819, 33.654709, 33.488140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303799, 34.438496, 33.179661>,  <35.716602, 34.247799, 33.522568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303799, 34.438496, 33.179661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228157, 34.047901, 33.138241>,  <36.182774, 33.813545, 33.113388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228157, 34.047901, 33.138241>,  <36.303799, 34.438496, 33.179661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228157, 34.047901, 33.138241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092664, 0.122725, -0.988105,
		0.977576, -0.177257, -0.113692,
		-0.189101, -0.976483, -0.103548,
		36.171425, 33.754955, 33.107178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678020, 34.225975, 32.551659>,  <36.303799, 34.438496, 33.179661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678020, 34.225975, 32.551659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.408478, 33.940224, 32.627110>,  <36.246754, 33.768772, 32.672379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.408478, 33.940224, 32.627110>,  <36.678020, 34.225975, 32.551659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408478, 33.940224, 32.627110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136881, -0.130171, -0.981997,
		0.726074, -0.687542, -0.010069,
		-0.673854, -0.714381, 0.188626,
		36.206322, 33.725910, 32.683697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887245, 33.597027, 32.175114>,  <36.678020, 34.225975, 32.551659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887245, 33.597027, 32.175114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.492687, 33.617489, 32.237598>,  <36.255951, 33.629765, 32.275089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.492687, 33.617489, 32.237598>,  <36.887245, 33.597027, 32.175114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492687, 33.617489, 32.237598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153928, 0.045857, -0.987017,
		-0.057652, -0.997638, -0.037359,
		-0.986399, 0.051153, 0.156208,
		36.196766, 33.632835, 32.284462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658329, 33.216492, 31.560791>,  <36.887245, 33.597027, 32.175114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658329, 33.216492, 31.560791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.345150, 33.393459, 31.735722>,  <36.157242, 33.499641, 31.840679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.345150, 33.393459, 31.735722>,  <36.658329, 33.216492, 31.560791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345150, 33.393459, 31.735722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441262, 0.100556, -0.891727,
		-0.438492, -0.891153, 0.116492,
		-0.782951, 0.442418, 0.437325,
		36.110264, 33.526184, 31.866919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034435, 32.972546, 31.302586>,  <36.658329, 33.216492, 31.560791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034435, 32.972546, 31.302586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910191, 33.307106, 31.483231>,  <35.835644, 33.507843, 31.591618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910191, 33.307106, 31.483231>,  <36.034435, 32.972546, 31.302586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910191, 33.307106, 31.483231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525633, 0.244720, -0.814753,
		-0.791978, -0.490455, 0.363627,
		-0.310612, 0.836401, 0.451612,
		35.817005, 33.558025, 31.618713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324623, 32.941086, 31.239756>,  <36.034435, 32.972546, 31.302586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324623, 32.941086, 31.239756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424828, 33.323009, 31.303724>,  <35.484951, 33.552166, 31.342106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424828, 33.323009, 31.303724>,  <35.324623, 32.941086, 31.239756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424828, 33.323009, 31.303724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460490, 0.262827, -0.847863,
		-0.851581, 0.138761, 0.505524,
		0.250515, 0.954813, 0.159920,
		35.499981, 33.609455, 31.351700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791603, 33.331139, 31.118828>,  <35.324623, 32.941086, 31.239756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791603, 33.331139, 31.118828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063461, 33.623516, 31.094149>,  <35.226574, 33.798943, 31.079342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063461, 33.623516, 31.094149>,  <34.791603, 33.331139, 31.118828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063461, 33.623516, 31.094149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456230, 0.355347, -0.815833,
		-0.574404, 0.582623, 0.574988,
		0.679643, 0.730944, -0.061698,
		35.267353, 33.842800, 31.075640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409836, 34.032532, 30.980408>,  <34.791603, 33.331139, 31.118828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409836, 34.032532, 30.980408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792091, 34.087856, 30.876390>,  <35.021446, 34.121052, 30.813980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792091, 34.087856, 30.876390>,  <34.409836, 34.032532, 30.980408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792091, 34.087856, 30.876390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292036, 0.330141, -0.897620,
		-0.038299, 0.933743, 0.355888,
		0.955640, 0.138310, -0.260043,
		35.078785, 34.129349, 30.798378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140778, 34.510033, 31.525745>,  <34.409836, 34.032532, 30.980408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140778, 34.510033, 31.525745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785172, 34.690239, 31.558447>,  <33.571808, 34.798363, 31.578068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785172, 34.690239, 31.558447>,  <34.140778, 34.510033, 31.525745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785172, 34.690239, 31.558447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028433, -0.232522, 0.972175,
		0.456988, 0.861957, 0.219526,
		-0.889018, 0.450514, 0.081752,
		33.518467, 34.825394, 31.582972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232944, 35.066860, 31.994812>,  <34.140778, 34.510033, 31.525745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232944, 35.066860, 31.994812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835342, 35.030220, 31.970932>,  <33.596783, 35.008236, 31.956604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835342, 35.030220, 31.970932>,  <34.232944, 35.066860, 31.994812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835342, 35.030220, 31.970932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051675, -0.087604, 0.994814,
		-0.096352, 0.991935, 0.082346,
		-0.994005, -0.091597, -0.059699,
		33.537140, 35.002743, 31.953022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910156, 35.646053, 32.399185>,  <34.232944, 35.066860, 31.994812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910156, 35.646053, 32.399185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.653347, 35.339767, 32.383801>,  <33.499260, 35.155994, 32.374569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.653347, 35.339767, 32.383801>,  <33.910156, 35.646053, 32.399185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653347, 35.339767, 32.383801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035420, -0.020487, 0.999163,
		-0.765863, 0.642852, -0.013968,
		-0.642027, -0.765717, -0.038460,
		33.460739, 35.110054, 32.372261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347069, 35.790653, 32.868176>,  <33.910156, 35.646053, 32.399185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347069, 35.790653, 32.868176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315926, 35.394825, 32.819698>,  <33.297241, 35.157330, 32.790611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315926, 35.394825, 32.819698>,  <33.347069, 35.790653, 32.868176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315926, 35.394825, 32.819698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089017, -0.114175, 0.989465,
		-0.992983, 0.087826, -0.079200,
		-0.077858, -0.989571, -0.121192,
		33.292568, 35.097954, 32.783340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686745, 35.556377, 33.167465>,  <33.347069, 35.790653, 32.868176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686745, 35.556377, 33.167465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.921661, 35.232685, 33.161373>,  <33.062611, 35.038471, 33.157719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.921661, 35.232685, 33.161373>,  <32.686745, 35.556377, 33.167465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921661, 35.232685, 33.161373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145985, -0.124414, 0.981433,
		-0.796100, -0.574166, -0.191202,
		0.587294, -0.809231, -0.015226,
		33.097851, 34.989918, 33.156807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617470, 35.212883, 33.750385>,  <32.686745, 35.556377, 33.167465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617470, 35.212883, 33.750385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933823, 34.988289, 33.653023>,  <33.123634, 34.853531, 33.594604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933823, 34.988289, 33.653023>,  <32.617470, 35.212883, 33.750385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933823, 34.988289, 33.653023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139663, -0.221639, 0.965075,
		-0.595823, -0.797252, -0.096870,
		0.790879, -0.561485, -0.243404,
		33.171085, 34.819843, 33.580002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508575, 34.702751, 34.107162>,  <32.617470, 35.212883, 33.750385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508575, 34.702751, 34.107162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894501, 34.659088, 34.011486>,  <33.126057, 34.632889, 33.954079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894501, 34.659088, 34.011486>,  <32.508575, 34.702751, 34.107162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894501, 34.659088, 34.011486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179932, -0.389226, 0.903398,
		-0.191710, -0.914652, -0.355892,
		0.964817, -0.109154, -0.239193,
		33.183945, 34.626343, 33.939728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741829, 34.017826, 34.410851>,  <32.508575, 34.702751, 34.107162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741829, 34.017826, 34.410851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062939, 34.253658, 34.375168>,  <33.255604, 34.395157, 34.353756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062939, 34.253658, 34.375168>,  <32.741829, 34.017826, 34.410851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062939, 34.253658, 34.375168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324787, -0.306866, 0.894621,
		0.500074, -0.747148, -0.437830,
		0.802770, 0.589579, -0.089208,
		33.303768, 34.430531, 34.348404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295856, 33.595634, 34.615978>,  <32.741829, 34.017826, 34.410851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295856, 33.595634, 34.615978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395874, 33.980850, 34.656029>,  <33.455883, 34.211979, 34.680061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395874, 33.980850, 34.656029>,  <33.295856, 33.595634, 34.615978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395874, 33.980850, 34.656029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387043, -0.194211, 0.901377,
		0.887511, -0.186628, -0.421300,
		0.250044, 0.963043, 0.100131,
		33.470886, 34.269764, 34.686069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989208, 33.645523, 34.826946>,  <33.295856, 33.595634, 34.615978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989208, 33.645523, 34.826946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844624, 33.991066, 34.967285>,  <33.757874, 34.198391, 35.051487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844624, 33.991066, 34.967285>,  <33.989208, 33.645523, 34.826946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844624, 33.991066, 34.967285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478255, -0.151239, 0.865101,
		0.800388, 0.480492, -0.358479,
		-0.361458, 0.863860, 0.350847,
		33.736187, 34.250225, 35.072540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479118, 33.904453, 35.270432>,  <33.989208, 33.645523, 34.826946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479118, 33.904453, 35.270432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.174892, 34.143719, 35.371426>,  <33.992359, 34.287277, 35.432022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.174892, 34.143719, 35.371426>,  <34.479118, 33.904453, 35.270432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174892, 34.143719, 35.371426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233889, -0.110347, 0.965981,
		0.605676, 0.793740, -0.055978,
		-0.760561, 0.598164, 0.252481,
		33.946724, 34.323170, 35.447170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762543, 34.264679, 35.778305>,  <34.479118, 33.904453, 35.270432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762543, 34.264679, 35.778305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365955, 34.282879, 35.827148>,  <34.128002, 34.293800, 35.856453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365955, 34.282879, 35.827148>,  <34.762543, 34.264679, 35.778305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365955, 34.282879, 35.827148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124840, 0.062985, 0.990176,
		0.037360, 0.996977, -0.068128,
		-0.991473, 0.045498, 0.122110,
		34.068512, 34.296528, 35.863781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683407, 34.528358, 36.438465>,  <34.762543, 34.264679, 35.778305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683407, 34.528358, 36.438465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.321369, 34.367752, 36.382488>,  <34.104145, 34.271389, 36.348900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.321369, 34.367752, 36.382488>,  <34.683407, 34.528358, 36.438465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321369, 34.367752, 36.382488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179391, 0.062182, 0.981810,
		-0.385507, 0.913740, -0.128309,
		-0.905098, -0.401512, -0.139946,
		34.049839, 34.247299, 36.340504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183048, 34.925674, 36.816162>,  <34.683407, 34.528358, 36.438465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183048, 34.925674, 36.816162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.000561, 34.571915, 36.776764>,  <33.891068, 34.359657, 36.753124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.000561, 34.571915, 36.776764>,  <34.183048, 34.925674, 36.816162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000561, 34.571915, 36.776764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106320, -0.055714, 0.992770,
		-0.883495, 0.463389, -0.068612,
		-0.456216, -0.884402, -0.098491,
		33.863697, 34.306595, 36.747215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424007, 35.674862, 36.954914>,  <34.183048, 34.925674, 36.816162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424007, 35.674862, 36.954914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522453, 35.692707, 37.342201>,  <34.581520, 35.703415, 37.574574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522453, 35.692707, 37.342201>,  <34.424007, 35.674862, 36.954914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522453, 35.692707, 37.342201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916132, 0.315424, -0.247405,
		-0.316435, 0.947902, 0.036761,
		0.246111, 0.044610, 0.968214,
		34.596287, 35.706089, 37.632664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528362, 36.407478, 36.919128>,  <34.424007, 35.674862, 36.954914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528362, 36.407478, 36.919128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475998, 36.294456, 37.299240>,  <34.444580, 36.226643, 37.527306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475998, 36.294456, 37.299240>,  <34.528362, 36.407478, 36.919128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475998, 36.294456, 37.299240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147338, -0.953425, -0.263197,
		0.980385, 0.105556, 0.166445,
		-0.130910, -0.282557, 0.950276,
		34.436726, 36.209690, 37.584324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163609, 36.074287, 37.249825>,  <34.528362, 36.407478, 36.919128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163609, 36.074287, 37.249825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797619, 35.950047, 37.352863>,  <34.578026, 35.875504, 37.414688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797619, 35.950047, 37.352863>,  <35.163609, 36.074287, 37.249825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797619, 35.950047, 37.352863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214827, -0.915334, -0.340607,
		0.341583, -0.256306, 0.904228,
		-0.914970, -0.310598, 0.257601,
		34.523129, 35.856869, 37.430145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084991, 36.841431, 37.202477>,  <35.163609, 36.074287, 37.249825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084991, 36.841431, 37.202477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367729, 36.785583, 36.925095>,  <35.537373, 36.752075, 36.758667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367729, 36.785583, 36.925095>,  <35.084991, 36.841431, 37.202477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367729, 36.785583, 36.925095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399575, 0.730137, -0.554292,
		0.583703, 0.668886, 0.460308,
		0.706846, -0.139614, -0.693453,
		35.579784, 36.743698, 36.717060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427250, 37.554802, 37.008114>,  <35.084991, 36.841431, 37.202477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427250, 37.554802, 37.008114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.510696, 37.327774, 36.689529>,  <35.560764, 37.191555, 36.498379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.510696, 37.327774, 36.689529>,  <35.427250, 37.554802, 37.008114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510696, 37.327774, 36.689529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354900, 0.714929, -0.602431,
		0.911332, 0.408337, -0.052288,
		0.208613, -0.567571, -0.796457,
		35.573280, 37.157501, 36.450592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824150, 37.984768, 36.549625>,  <35.427250, 37.554802, 37.008114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824150, 37.984768, 36.549625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.643711, 37.688110, 36.351044>,  <35.535446, 37.510117, 36.231895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.643711, 37.688110, 36.351044>,  <35.824150, 37.984768, 36.549625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643711, 37.688110, 36.351044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308855, 0.651624, -0.692817,
		0.837328, -0.159197, -0.523009,
		-0.451100, -0.741648, -0.496454,
		35.508381, 37.465614, 36.202106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147247, 37.968880, 35.919765>,  <35.824150, 37.984768, 36.549625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147247, 37.968880, 35.919765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.798130, 37.782990, 35.860077>,  <35.588661, 37.671455, 35.824265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.798130, 37.782990, 35.860077>,  <36.147247, 37.968880, 35.919765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798130, 37.782990, 35.860077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209548, 0.632885, -0.745350,
		0.440823, -0.619265, -0.649759,
		-0.872791, -0.464723, -0.149224,
		35.536293, 37.643574, 35.815308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091568, 37.939514, 35.137337>,  <36.147247, 37.968880, 35.919765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091568, 37.939514, 35.137337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722477, 37.880585, 35.279808>,  <35.501022, 37.845226, 35.365292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722477, 37.880585, 35.279808>,  <36.091568, 37.939514, 35.137337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722477, 37.880585, 35.279808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380851, 0.490715, -0.783678,
		-0.059327, -0.858775, -0.508907,
		-0.922731, -0.147325, 0.356177,
		35.445656, 37.836388, 35.386662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652740, 37.558414, 34.586132>,  <36.091568, 37.939514, 35.137337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652740, 37.558414, 34.586132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.383442, 37.755444, 34.806717>,  <35.221863, 37.873661, 34.939068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.383442, 37.755444, 34.806717>,  <35.652740, 37.558414, 34.586132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383442, 37.755444, 34.806717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357921, 0.435508, -0.825969,
		-0.647018, -0.753460, -0.116901,
		-0.673246, 0.492575, 0.551461,
		35.181469, 37.903217, 34.972157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028549, 37.336933, 34.220284>,  <35.652740, 37.558414, 34.586132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028549, 37.336933, 34.220284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946388, 37.665718, 34.432770>,  <34.897091, 37.862988, 34.560261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946388, 37.665718, 34.432770>,  <35.028549, 37.336933, 34.220284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946388, 37.665718, 34.432770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322464, 0.455634, -0.829708,
		-0.924027, -0.341722, 0.171464,
		-0.205404, 0.821963, 0.531211,
		34.884766, 37.912308, 34.592133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345364, 37.562321, 34.014065>,  <35.028549, 37.336933, 34.220284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345364, 37.562321, 34.014065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495354, 37.881458, 34.202888>,  <34.585346, 38.072941, 34.316181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495354, 37.881458, 34.202888>,  <34.345364, 37.562321, 34.014065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495354, 37.881458, 34.202888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331127, 0.590888, -0.735667,
		-0.865882, 0.119543, 0.485755,
		0.374971, 0.797848, 0.472055,
		34.607845, 38.120811, 34.344505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797184, 38.009525, 34.043747>,  <34.345364, 37.562321, 34.014065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797184, 38.009525, 34.043747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153069, 38.192108, 34.046963>,  <34.366600, 38.301659, 34.048893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153069, 38.192108, 34.046963>,  <33.797184, 38.009525, 34.043747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153069, 38.192108, 34.046963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250529, 0.502887, -0.827248,
		-0.381645, 0.733997, 0.561779,
		0.889709, 0.456457, 0.008037,
		34.419983, 38.329044, 34.049374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661171, 38.682590, 33.797810>,  <33.797184, 38.009525, 34.043747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661171, 38.682590, 33.797810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058636, 38.664619, 33.756599>,  <34.297115, 38.653835, 33.731873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058636, 38.664619, 33.756599>,  <33.661171, 38.682590, 33.797810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058636, 38.664619, 33.756599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051836, 0.630111, -0.774773,
		0.099727, 0.775204, 0.623789,
		0.993664, -0.044931, -0.103022,
		34.356735, 38.651138, 33.725693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920959, 39.420353, 33.697601>,  <33.661171, 38.682590, 33.797810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920959, 39.420353, 33.697601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212116, 39.180103, 33.565281>,  <34.386810, 39.035954, 33.485889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212116, 39.180103, 33.565281>,  <33.920959, 39.420353, 33.697601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212116, 39.180103, 33.565281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100273, 0.570488, -0.815162,
		0.678324, 0.560176, 0.475478,
		0.727888, -0.600622, -0.330805,
		34.430481, 38.999916, 33.466038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383640, 39.844734, 33.381901>,  <33.920959, 39.420353, 33.697601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383640, 39.844734, 33.381901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.508228, 39.499710, 33.222412>,  <34.582981, 39.292694, 33.126720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.508228, 39.499710, 33.222412>,  <34.383640, 39.844734, 33.381901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508228, 39.499710, 33.222412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151847, 0.459379, -0.875165,
		0.938046, 0.212041, 0.274059,
		0.311468, -0.862560, -0.398721,
		34.601669, 39.240944, 33.102795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955418, 40.013165, 32.905865>,  <34.383640, 39.844734, 33.381901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955418, 40.013165, 32.905865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.840298, 39.658531, 32.761005>,  <34.771225, 39.445751, 32.674091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.840298, 39.658531, 32.761005>,  <34.955418, 40.013165, 32.905865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840298, 39.658531, 32.761005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061374, 0.360293, -0.930818,
		0.955722, -0.290116, -0.049280,
		-0.287801, -0.886579, -0.362145,
		34.753956, 39.392559, 32.652363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365662, 39.957996, 32.357651>,  <34.955418, 40.013165, 32.905865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365662, 39.957996, 32.357651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064140, 39.709312, 32.272556>,  <34.883228, 39.560101, 32.221500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064140, 39.709312, 32.272556>,  <35.365662, 39.957996, 32.357651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064140, 39.709312, 32.272556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146261, 0.156874, -0.976728,
		0.640619, -0.767373, -0.027320,
		-0.753800, -0.621715, -0.212733,
		34.838001, 39.522797, 32.208736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671192, 39.439388, 31.875526>,  <35.365662, 39.957996, 32.357651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671192, 39.439388, 31.875526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.272999, 39.457664, 31.842232>,  <35.034084, 39.468628, 31.822254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.272999, 39.457664, 31.842232>,  <35.671192, 39.439388, 31.875526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272999, 39.457664, 31.842232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080962, -0.049612, -0.995482,
		-0.049612, -0.997723, 0.045689,
		0.995482, -0.045689, 0.083239,
		34.974354, 39.471371, 31.817261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511181, 39.091736, 31.214685>,  <35.671192, 39.439388, 31.875526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511181, 39.091736, 31.214685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.180679, 39.290520, 31.320765>,  <34.982376, 39.409790, 31.384411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.180679, 39.290520, 31.320765>,  <35.511181, 39.091736, 31.214685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180679, 39.290520, 31.320765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166558, 0.234203, -0.957814,
		-0.538103, -0.835573, -0.110740,
		-0.826259, 0.496958, 0.265197,
		34.932800, 39.439606, 31.400324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044300, 39.074272, 30.708197>,  <35.511181, 39.091736, 31.214685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044300, 39.074272, 30.708197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.861034, 39.380730, 30.888466>,  <34.751076, 39.564606, 30.996628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.861034, 39.380730, 30.888466>,  <35.044300, 39.074272, 30.708197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861034, 39.380730, 30.888466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250514, 0.375165, -0.892465,
		-0.852833, -0.521799, 0.020041,
		-0.458168, 0.766144, 0.450671,
		34.723583, 39.610573, 31.023666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502365, 39.221046, 30.287901>,  <35.044300, 39.074272, 30.708197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502365, 39.221046, 30.287901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592976, 39.549858, 30.496880>,  <34.647343, 39.747147, 30.622267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592976, 39.549858, 30.496880>,  <34.502365, 39.221046, 30.287901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592976, 39.549858, 30.496880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135352, 0.557753, -0.818897,
		-0.964554, 0.114789, 0.237611,
		0.226528, 0.822031, 0.522446,
		34.660934, 39.796467, 30.653614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027908, 39.856968, 30.001673>,  <34.502365, 39.221046, 30.287901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027908, 39.856968, 30.001673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.314636, 40.043465, 30.209049>,  <34.486675, 40.155365, 30.333475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.314636, 40.043465, 30.209049>,  <34.027908, 39.856968, 30.001673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314636, 40.043465, 30.209049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084800, 0.679729, -0.728545,
		-0.692080, 0.566202, 0.447707,
		0.716823, 0.466245, 0.518440,
		34.529682, 40.183338, 30.364582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859131, 40.590450, 30.035784>,  <34.027908, 39.856968, 30.001673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859131, 40.590450, 30.035784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257523, 40.572086, 30.066553>,  <34.496559, 40.561066, 30.085014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257523, 40.572086, 30.066553>,  <33.859131, 40.590450, 30.035784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257523, 40.572086, 30.066553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089094, 0.597316, -0.797042,
		-0.009352, 0.800691, 0.599005,
		0.995979, -0.045914, 0.076923,
		34.556316, 40.558311, 30.089630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104858, 41.295460, 29.978659>,  <33.859131, 40.590450, 30.035784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104858, 41.295460, 29.978659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445362, 41.091728, 29.928152>,  <34.649666, 40.969490, 29.897848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445362, 41.091728, 29.928152>,  <34.104858, 41.295460, 29.978659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445362, 41.091728, 29.928152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219732, 0.564500, -0.795649,
		0.476524, 0.649559, 0.592451,
		0.851259, -0.509327, -0.126269,
		34.700741, 40.938931, 29.890272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699234, 41.766411, 30.101711>,  <34.104858, 41.295460, 29.978659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699234, 41.766411, 30.101711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758011, 41.457394, 29.854622>,  <34.793278, 41.271984, 29.706367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758011, 41.457394, 29.854622>,  <34.699234, 41.766411, 30.101711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758011, 41.457394, 29.854622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244166, 0.633506, -0.734202,
		0.958536, -0.042941, 0.281718,
		0.146943, -0.772545, -0.617723,
		34.802094, 41.225632, 29.669306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382961, 41.988979, 29.774420>,  <34.699234, 41.766411, 30.101711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382961, 41.988979, 29.774420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227448, 41.704006, 29.540743>,  <35.134140, 41.533020, 29.400536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227448, 41.704006, 29.540743>,  <35.382961, 41.988979, 29.774420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227448, 41.704006, 29.540743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271321, 0.517425, -0.811576,
		0.880473, -0.474031, -0.007867,
		-0.388783, -0.712437, -0.584193,
		35.110813, 41.490276, 29.365484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916874, 41.777813, 29.255878>,  <35.382961, 41.988979, 29.774420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916874, 41.777813, 29.255878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552086, 41.677792, 29.125778>,  <35.333214, 41.617779, 29.047718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552086, 41.677792, 29.125778>,  <35.916874, 41.777813, 29.255878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552086, 41.677792, 29.125778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157221, 0.519258, -0.840031,
		0.378943, -0.817218, -0.434233,
		-0.911967, -0.250053, -0.325253,
		35.278496, 41.602776, 29.028202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962532, 41.617279, 28.544910>,  <35.916874, 41.777813, 29.255878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962532, 41.617279, 28.544910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572102, 41.681244, 28.603830>,  <35.337841, 41.719624, 28.639181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572102, 41.681244, 28.603830>,  <35.962532, 41.617279, 28.544910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572102, 41.681244, 28.603830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051594, 0.487787, -0.871436,
		-0.211201, -0.858192, -0.467869,
		-0.976080, 0.159909, 0.147299,
		35.279278, 41.729218, 28.648020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405624, 40.970013, 28.227772>,  <35.962532, 41.617279, 28.544910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405624, 40.970013, 28.227772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.774307, 41.123260, 28.203541>,  <36.995518, 41.215210, 28.189003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.774307, 41.123260, 28.203541>,  <36.405624, 40.970013, 28.227772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774307, 41.123260, 28.203541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233930, -0.424482, 0.874695,
		0.309400, -0.820386, -0.480873,
		0.921710, 0.383121, -0.060578,
		37.050819, 41.238197, 28.185368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901566, 40.458157, 28.282461>,  <36.405624, 40.970013, 28.227772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901566, 40.458157, 28.282461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085434, 40.796719, 28.390018>,  <37.195755, 40.999855, 28.454554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.085434, 40.796719, 28.390018>,  <36.901566, 40.458157, 28.282461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085434, 40.796719, 28.390018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346548, -0.449728, 0.823194,
		0.817684, -0.285214, -0.500046,
		0.459671, 0.846403, 0.268895,
		37.223335, 41.050640, 28.470688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535580, 40.313961, 28.477167>,  <36.901566, 40.458157, 28.282461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535580, 40.313961, 28.477167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545765, 40.667316, 28.664345>,  <37.551876, 40.879330, 28.776651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545765, 40.667316, 28.664345>,  <37.535580, 40.313961, 28.477167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545765, 40.667316, 28.664345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459849, -0.425984, 0.779151,
		0.887632, 0.195344, -0.417074,
		0.025465, 0.883391, 0.467945,
		37.553406, 40.932335, 28.804728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194405, 40.302399, 28.799677>,  <37.535580, 40.313961, 28.477167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194405, 40.302399, 28.799677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977303, 40.587791, 28.976927>,  <37.847042, 40.759029, 29.083277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977303, 40.587791, 28.976927>,  <38.194405, 40.302399, 28.799677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977303, 40.587791, 28.976927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409799, -0.235568, 0.881233,
		0.733133, 0.659883, -0.164531,
		-0.542752, 0.713486, 0.443123,
		37.814476, 40.801838, 29.109863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673508, 40.701305, 29.222404>,  <38.194405, 40.302399, 28.799677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673508, 40.701305, 29.222404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.311031, 40.740299, 29.386993>,  <38.093544, 40.763695, 29.485746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.311031, 40.740299, 29.386993>,  <38.673508, 40.701305, 29.222404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311031, 40.740299, 29.386993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395845, -0.146692, 0.906525,
		0.148728, 0.984367, 0.094344,
		-0.906193, 0.097480, 0.411474,
		38.039173, 40.769543, 29.510435>
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
