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
	<23.971701, 34.710865, 34.739033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.162991, 35.000542, 34.937767>,  <24.277763, 35.174347, 35.057007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.162991, 35.000542, 34.937767>,  <23.971701, 34.710865, 34.739033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.162991, 35.000542, 34.937767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670205, -0.666529, 0.326442,
		0.567563, 0.176870, -0.804108,
		0.478223, 0.724194, 0.496837,
		24.306458, 35.217800, 35.086819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767855, 34.821796, 34.513145>,  <23.971701, 34.710865, 34.739033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767855, 34.821796, 34.513145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683670, 34.904781, 34.895279>,  <24.633160, 34.954571, 35.124561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683670, 34.904781, 34.895279>,  <24.767855, 34.821796, 34.513145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.683670, 34.904781, 34.895279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646917, -0.703103, 0.295203,
		0.732943, 0.680151, 0.013763,
		-0.210459, 0.207463, 0.955336,
		24.620533, 34.967022, 35.181881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414297, 34.945316, 35.051224>,  <24.767855, 34.821796, 34.513145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414297, 34.945316, 35.051224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086626, 34.755589, 35.180202>,  <24.890024, 34.641750, 35.257591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086626, 34.755589, 35.180202>,  <25.414297, 34.945316, 35.051224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.086626, 34.755589, 35.180202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538868, -0.829016, 0.149514,
		0.196396, 0.296234, 0.934705,
		-0.819176, -0.474319, 0.322446,
		24.840874, 34.613293, 35.276936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588095, 34.524940, 35.689423>,  <25.414297, 34.945316, 35.051224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588095, 34.524940, 35.689423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257711, 34.385956, 35.511856>,  <25.059483, 34.302567, 35.405315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257711, 34.385956, 35.511856>,  <25.588095, 34.524940, 35.689423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257711, 34.385956, 35.511856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373456, -0.927135, 0.030832,
		-0.422286, -0.140318, 0.895536,
		-0.825957, -0.347463, -0.443919,
		25.009924, 34.281715, 35.378681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208067, 34.812241, 35.984005>,  <25.588095, 34.524940, 35.689423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208067, 34.812241, 35.984005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261835, 34.566238, 36.294800>,  <26.294096, 34.418636, 36.481277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261835, 34.566238, 36.294800>,  <26.208067, 34.812241, 35.984005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261835, 34.566238, 36.294800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891979, 0.416637, 0.175461,
		-0.431630, 0.669468, 0.604573,
		0.134422, -0.615001, 0.776984,
		26.302162, 34.381737, 36.527897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424084, 35.198746, 36.608566>,  <26.208067, 34.812241, 35.984005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424084, 35.198746, 36.608566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572086, 34.827145, 36.605789>,  <26.660887, 34.604183, 36.604122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572086, 34.827145, 36.605789>,  <26.424084, 35.198746, 36.608566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572086, 34.827145, 36.605789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884951, 0.350165, 0.306995,
		-0.282768, -0.119735, 0.951686,
		0.370005, -0.929004, -0.006945,
		26.683088, 34.548443, 36.603706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860407, 35.327099, 37.087181>,  <26.424084, 35.198746, 36.608566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860407, 35.327099, 37.087181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954258, 34.961868, 36.953766>,  <27.010569, 34.742729, 36.873718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954258, 34.961868, 36.953766>,  <26.860407, 35.327099, 37.087181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954258, 34.961868, 36.953766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935906, 0.119444, 0.331380,
		-0.262735, -0.389912, 0.882575,
		0.234628, -0.913073, -0.333539,
		27.024647, 34.687946, 36.853703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237314, 35.850006, 36.615826>,  <26.860407, 35.327099, 37.087181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237314, 35.850006, 36.615826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597183, 36.023590, 36.596798>,  <27.813105, 36.127743, 36.585381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597183, 36.023590, 36.596798>,  <27.237314, 35.850006, 36.615826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597183, 36.023590, 36.596798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130931, 0.164275, -0.977686,
		-0.416465, 0.885827, 0.204613,
		0.899674, 0.433962, -0.047568,
		27.867086, 36.153778, 36.582527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167009, 36.508358, 36.145264>,  <27.237314, 35.850006, 36.615826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167009, 36.508358, 36.145264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555862, 36.416672, 36.125607>,  <27.789175, 36.361660, 36.113811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555862, 36.416672, 36.125607>,  <27.167009, 36.508358, 36.145264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555862, 36.416672, 36.125607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005890, 0.185675, -0.982593,
		0.234354, 0.955501, 0.179151,
		0.972133, -0.229220, -0.049141,
		27.847502, 36.347904, 36.110863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467903, 37.080162, 35.820667>,  <27.167009, 36.508358, 36.145264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467903, 37.080162, 35.820667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718330, 36.772198, 35.771236>,  <27.868586, 36.587418, 35.741577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718330, 36.772198, 35.771236>,  <27.467903, 37.080162, 35.820667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718330, 36.772198, 35.771236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113078, 0.246450, -0.962536,
		0.771527, 0.588637, 0.241355,
		0.626066, -0.769915, -0.123581,
		27.906151, 36.541222, 35.734161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973736, 37.375744, 35.600697>,  <27.467903, 37.080162, 35.820667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973736, 37.375744, 35.600697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012840, 36.997555, 35.476425>,  <28.036303, 36.770641, 35.401863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012840, 36.997555, 35.476425>,  <27.973736, 37.375744, 35.600697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012840, 36.997555, 35.476425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067982, 0.317785, -0.945723,
		0.992885, 0.071334, 0.095343,
		0.097761, -0.945476, -0.310674,
		28.042168, 36.713913, 35.383224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327583, 37.421616, 34.913017>,  <27.973736, 37.375744, 35.600697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327583, 37.421616, 34.913017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168364, 37.055050, 34.929729>,  <28.072832, 36.835110, 34.939758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168364, 37.055050, 34.929729>,  <28.327583, 37.421616, 34.913017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168364, 37.055050, 34.929729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090662, -0.006022, -0.995864,
		0.912874, -0.400189, -0.080686,
		-0.398047, -0.916413, 0.041780,
		28.048950, 36.780125, 34.942265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828068, 36.949356, 34.554974>,  <28.327583, 37.421616, 34.913017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828068, 36.949356, 34.554974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458933, 36.795414, 34.548588>,  <28.237452, 36.703049, 34.544758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458933, 36.795414, 34.548588>,  <28.828068, 36.949356, 34.554974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458933, 36.795414, 34.548588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059423, -0.101302, -0.993080,
		0.380577, -0.917400, 0.116355,
		-0.922838, -0.384857, -0.015962,
		28.182081, 36.679958, 34.543800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898077, 36.421371, 34.048344>,  <28.828068, 36.949356, 34.554974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898077, 36.421371, 34.048344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503481, 36.470753, 34.091412>,  <28.266724, 36.500381, 34.117252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503481, 36.470753, 34.091412>,  <28.898077, 36.421371, 34.048344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503481, 36.470753, 34.091412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132807, -0.217958, -0.966880,
		-0.095891, -0.968119, 0.231409,
		-0.986492, 0.123448, 0.107673,
		28.207533, 36.507786, 34.123714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606178, 35.833042, 33.865974>,  <28.898077, 36.421371, 34.048344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606178, 35.833042, 33.865974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325768, 36.115082, 33.823269>,  <28.157520, 36.284306, 33.797646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325768, 36.115082, 33.823269>,  <28.606178, 35.833042, 33.865974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325768, 36.115082, 33.823269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062370, -0.088511, -0.994121,
		-0.710402, -0.703564, 0.018072,
		-0.701027, 0.705098, -0.106760,
		28.115459, 36.326611, 33.791241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146940, 35.522591, 33.400307>,  <28.606178, 35.833042, 33.865974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146940, 35.522591, 33.400307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072498, 35.915512, 33.391941>,  <28.027834, 36.151264, 33.386921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072498, 35.915512, 33.391941>,  <28.146940, 35.522591, 33.400307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072498, 35.915512, 33.391941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031799, -0.015256, -0.999378,
		-0.982015, -0.186652, -0.028397,
		-0.186103, 0.982307, -0.020917,
		28.016668, 36.210205, 33.385666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828344, 35.619934, 32.806828>,  <28.146940, 35.522591, 33.400307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828344, 35.619934, 32.806828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869913, 36.012997, 32.868263>,  <27.894854, 36.248833, 32.905125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869913, 36.012997, 32.868263>,  <27.828344, 35.619934, 32.806828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869913, 36.012997, 32.868263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073252, 0.161569, -0.984139,
		-0.991884, 0.091023, 0.088772,
		0.103922, 0.982655, 0.153590,
		27.901091, 36.307793, 32.914341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437033, 35.948978, 32.268505>,  <27.828344, 35.619934, 32.806828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437033, 35.948978, 32.268505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620472, 36.281197, 32.394928>,  <27.730536, 36.480526, 32.470779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620472, 36.281197, 32.394928>,  <27.437033, 35.948978, 32.268505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620472, 36.281197, 32.394928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112584, 0.298492, -0.947748,
		-0.881484, 0.470218, 0.043382,
		0.458597, 0.830541, 0.316055,
		27.758051, 36.530357, 32.489746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105604, 36.561092, 31.906656>,  <27.437033, 35.948978, 32.268505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105604, 36.561092, 31.906656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470716, 36.686192, 32.011742>,  <27.689785, 36.761250, 32.074795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470716, 36.686192, 32.011742>,  <27.105604, 36.561092, 31.906656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470716, 36.686192, 32.011742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149638, 0.342429, -0.927551,
		-0.380047, 0.885965, 0.265765,
		0.912783, 0.312744, 0.262713,
		27.744551, 36.780014, 32.090557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137865, 37.236404, 31.649624>,  <27.105604, 36.561092, 31.906656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137865, 37.236404, 31.649624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502537, 37.075138, 31.681366>,  <27.721340, 36.978378, 31.700411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502537, 37.075138, 31.681366>,  <27.137865, 37.236404, 31.649624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502537, 37.075138, 31.681366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254615, 0.402699, -0.879207,
		0.322511, 0.821759, 0.469785,
		0.911678, -0.403168, 0.079357,
		27.776041, 36.954189, 31.705173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599260, 37.806355, 31.658522>,  <27.137865, 37.236404, 31.649624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599260, 37.806355, 31.658522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826843, 37.507519, 31.521030>,  <27.963392, 37.328217, 31.438536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826843, 37.507519, 31.521030>,  <27.599260, 37.806355, 31.658522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826843, 37.507519, 31.521030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450840, 0.632928, -0.629400,
		0.687773, 0.203135, 0.696926,
		0.568957, -0.747087, -0.343730,
		27.997530, 37.283394, 31.417912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145048, 38.167244, 31.536163>,  <27.599260, 37.806355, 31.658522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145048, 38.167244, 31.536163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231743, 37.821014, 31.355583>,  <28.283760, 37.613277, 31.247234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231743, 37.821014, 31.355583>,  <28.145048, 38.167244, 31.536163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231743, 37.821014, 31.355583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504711, 0.495197, -0.707140,
		0.835639, -0.074590, 0.544191,
		0.216736, -0.865573, -0.451452,
		28.296764, 37.561344, 31.220148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828419, 38.152622, 31.458178>,  <28.145048, 38.167244, 31.536163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828419, 38.152622, 31.458178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691515, 37.910580, 31.170650>,  <28.609373, 37.765354, 30.998135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691515, 37.910580, 31.170650>,  <28.828419, 38.152622, 31.458178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691515, 37.910580, 31.170650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360588, 0.621855, -0.695178,
		0.867660, -0.497129, 0.005360,
		-0.342260, -0.605111, -0.718817,
		28.588837, 37.729046, 30.955006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332367, 38.149956, 30.957560>,  <28.828419, 38.152622, 31.458178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332367, 38.149956, 30.957560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036644, 37.979275, 30.749195>,  <28.859211, 37.876865, 30.624176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036644, 37.979275, 30.749195>,  <29.332367, 38.149956, 30.957560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036644, 37.979275, 30.749195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243361, 0.551987, -0.797550,
		0.627854, -0.716404, -0.304245,
		-0.739307, -0.426703, -0.520912,
		28.814852, 37.851265, 30.592922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683636, 37.920536, 30.325792>,  <29.332367, 38.149956, 30.957560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683636, 37.920536, 30.325792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295172, 37.948700, 30.234674>,  <29.062094, 37.965599, 30.180004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295172, 37.948700, 30.234674>,  <29.683636, 37.920536, 30.325792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295172, 37.948700, 30.234674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237020, 0.388807, -0.890309,
		0.025883, -0.918625, -0.394282,
		-0.971160, 0.070408, -0.227796,
		29.003824, 37.969822, 30.166336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341663, 37.474545, 29.757780>,  <29.683636, 37.920536, 30.325792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341663, 37.474545, 29.757780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179848, 37.839100, 29.788013>,  <29.082758, 38.057835, 29.806154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179848, 37.839100, 29.788013>,  <29.341663, 37.474545, 29.757780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179848, 37.839100, 29.788013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361667, 0.235348, -0.902113,
		-0.839968, -0.337601, -0.424828,
		-0.404537, 0.911393, 0.075585,
		29.058487, 38.112518, 29.810690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789339, 37.731297, 29.206814>,  <29.341663, 37.474545, 29.757780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789339, 37.731297, 29.206814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050051, 37.989819, 29.365547>,  <29.206478, 38.144932, 29.460787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050051, 37.989819, 29.365547>,  <28.789339, 37.731297, 29.206814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050051, 37.989819, 29.365547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434945, 0.110108, -0.893699,
		-0.621296, 0.755094, -0.209341,
		0.651777, 0.646304, 0.396834,
		29.245584, 38.183708, 29.484598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404457, 38.317562, 29.446692>,  <28.789339, 37.731297, 29.206814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404457, 38.317562, 29.446692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560997, 38.017956, 29.660543>,  <28.654921, 37.838192, 29.788855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560997, 38.017956, 29.660543>,  <28.404457, 38.317562, 29.446692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560997, 38.017956, 29.660543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708558, 0.125445, 0.694413,
		-0.587190, -0.650573, -0.481626,
		0.391348, -0.749012, 0.534629,
		28.678402, 37.793251, 29.820932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207352, 38.964058, 29.896103>,  <28.404457, 38.317562, 29.446692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207352, 38.964058, 29.896103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100378, 39.069157, 29.525278>,  <28.036194, 39.132217, 29.302784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100378, 39.069157, 29.525278>,  <28.207352, 38.964058, 29.896103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100378, 39.069157, 29.525278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928775, 0.185939, 0.320629,
		0.256621, 0.946780, 0.194305,
		-0.267436, 0.262746, -0.927061,
		28.020147, 39.147980, 29.247160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927094, 39.641010, 29.962570>,  <28.207352, 38.964058, 29.896103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927094, 39.641010, 29.962570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800013, 39.427288, 29.649244>,  <27.723764, 39.299053, 29.461248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800013, 39.427288, 29.649244>,  <27.927094, 39.641010, 29.962570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800013, 39.427288, 29.649244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941769, 0.273793, 0.195210,
		0.110163, 0.799719, -0.590181,
		-0.317701, -0.534309, -0.783313,
		27.704702, 39.266994, 29.414249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469128, 40.031029, 29.530750>,  <27.927094, 39.641010, 29.962570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469128, 40.031029, 29.530750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355467, 39.648163, 29.508497>,  <27.287270, 39.418442, 29.495146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355467, 39.648163, 29.508497>,  <27.469128, 40.031029, 29.530750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355467, 39.648163, 29.508497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955726, 0.278144, 0.096041,
		-0.076453, 0.080461, -0.993821,
		-0.284153, -0.957164, -0.055633,
		27.270222, 39.361015, 29.491808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995937, 39.723495, 29.995646>,  <27.469128, 40.031029, 29.530750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995937, 39.723495, 29.995646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654322, 39.517811, 30.027166>,  <26.449352, 39.394402, 30.046080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654322, 39.517811, 30.027166>,  <26.995937, 39.723495, 29.995646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654322, 39.517811, 30.027166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073821, 0.269746, 0.960098,
		-0.514947, 0.814142, -0.268333,
		-0.854038, -0.514208, 0.078804,
		26.398109, 39.363548, 30.050808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390589, 40.248959, 30.161537>,  <26.995937, 39.723495, 29.995646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390589, 40.248959, 30.161537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378191, 39.874126, 30.300627>,  <26.370752, 39.649227, 30.384081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378191, 39.874126, 30.300627>,  <26.390589, 40.248959, 30.161537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378191, 39.874126, 30.300627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083915, 0.349101, 0.933320,
		-0.995991, -0.000252, -0.089456,
		-0.030994, -0.937085, 0.347722,
		26.368893, 39.593002, 30.404943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857710, 40.191776, 30.635983>,  <26.390589, 40.248959, 30.161537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857710, 40.191776, 30.635983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113432, 39.902458, 30.740391>,  <26.266865, 39.728867, 30.803036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113432, 39.902458, 30.740391>,  <25.857710, 40.191776, 30.635983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113432, 39.902458, 30.740391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048663, 0.376824, 0.925006,
		-0.767413, -0.578658, 0.276103,
		0.639304, -0.723297, 0.261021,
		26.305223, 39.685471, 30.818697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774330, 39.461937, 30.973703>,  <25.857710, 40.191776, 30.635983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774330, 39.461937, 30.973703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388863, 39.412762, 31.068552>,  <25.157581, 39.383255, 31.125462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388863, 39.412762, 31.068552>,  <25.774330, 39.461937, 30.973703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388863, 39.412762, 31.068552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238395, 0.004453, 0.971158,
		-0.120449, 0.992404, 0.025017,
		-0.963670, -0.122939, 0.237121,
		25.099762, 39.375881, 31.139688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594856, 40.031528, 31.423220>,  <25.774330, 39.461937, 30.973703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594856, 40.031528, 31.423220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.385260, 39.705849, 31.523224>,  <25.259502, 39.510441, 31.583225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.385260, 39.705849, 31.523224>,  <25.594856, 40.031528, 31.423220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.385260, 39.705849, 31.523224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249867, 0.133667, 0.959010,
		-0.814247, 0.564983, 0.133402,
		-0.523992, -0.814204, 0.250009,
		25.228062, 39.461586, 31.598227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011097, 40.261196, 31.767353>,  <25.594856, 40.031528, 31.423220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011097, 40.261196, 31.767353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056778, 39.876900, 31.868488>,  <25.084187, 39.646320, 31.929169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056778, 39.876900, 31.868488>,  <25.011097, 40.261196, 31.767353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.056778, 39.876900, 31.868488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212204, 0.272220, 0.938544,
		-0.970529, -0.053531, 0.234962,
		0.114203, -0.960745, 0.252839,
		25.091040, 39.588676, 31.944340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.722441, 40.112194, 32.416424>,  <25.011097, 40.261196, 31.767353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.722441, 40.112194, 32.416424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980080, 39.806259, 32.411415>,  <25.134663, 39.622696, 32.408409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980080, 39.806259, 32.411415>,  <24.722441, 40.112194, 32.416424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.980080, 39.806259, 32.411415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088607, 0.058341, 0.994357,
		-0.759794, -0.641573, 0.105347,
		0.644098, -0.764841, -0.012521,
		25.173309, 39.576805, 32.407658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.477587, 39.748634, 33.042500>,  <24.722441, 40.112194, 32.416424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.477587, 39.748634, 33.042500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843473, 39.620159, 32.944412>,  <25.063005, 39.543072, 32.885559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843473, 39.620159, 32.944412>,  <24.477587, 39.748634, 33.042500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843473, 39.620159, 32.944412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315506, 0.188505, 0.930012,
		-0.252487, -0.928064, 0.273766,
		0.914716, -0.321190, -0.245215,
		25.117889, 39.523804, 32.870846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.611858, 39.385620, 33.581097>,  <24.477587, 39.748634, 33.042500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.611858, 39.385620, 33.581097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956377, 39.464451, 33.393768>,  <25.163088, 39.511749, 33.281372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956377, 39.464451, 33.393768>,  <24.611858, 39.385620, 33.581097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.956377, 39.464451, 33.393768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460921, 0.084818, 0.883379,
		0.213817, -0.976712, -0.017784,
		0.861298, 0.197078, -0.468322,
		25.214766, 39.523575, 33.253273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.160158, 38.983494, 33.924561>,  <24.611858, 39.385620, 33.581097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.160158, 38.983494, 33.924561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345047, 39.282169, 33.733227>,  <25.455980, 39.461376, 33.618427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345047, 39.282169, 33.733227>,  <25.160158, 38.983494, 33.924561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345047, 39.282169, 33.733227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516938, 0.211395, 0.829510,
		0.720505, -0.630687, -0.288281,
		0.462220, 0.746690, -0.478337,
		25.483713, 39.506176, 33.589725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938902, 38.941402, 34.026344>,  <25.160158, 38.983494, 33.924561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938902, 38.941402, 34.026344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890268, 39.321663, 33.912167>,  <25.861088, 39.549820, 33.843662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890268, 39.321663, 33.912167>,  <25.938902, 38.941402, 34.026344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890268, 39.321663, 33.912167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640858, 0.294787, 0.708803,
		0.757970, -0.096745, -0.645075,
		-0.121586, 0.950653, -0.285440,
		25.853792, 39.606857, 33.826534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669111, 39.301151, 33.977333>,  <25.938902, 38.941402, 34.026344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669111, 39.301151, 33.977333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379667, 39.569225, 34.043354>,  <26.206001, 39.730072, 34.082966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379667, 39.569225, 34.043354>,  <26.669111, 39.301151, 33.977333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379667, 39.569225, 34.043354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563252, 0.435165, 0.702409,
		0.398922, 0.601233, -0.692373,
		-0.723608, 0.670187, 0.165049,
		26.162584, 39.770283, 34.092869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055876, 39.806087, 34.268578>,  <26.669111, 39.301151, 33.977333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055876, 39.806087, 34.268578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674572, 39.880795, 34.363586>,  <26.445789, 39.925621, 34.420589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674572, 39.880795, 34.363586>,  <27.055876, 39.806087, 34.268578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674572, 39.880795, 34.363586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283430, 0.280296, 0.917116,
		0.104714, 0.941569, -0.320130,
		-0.953259, 0.186770, 0.237518,
		26.388594, 39.936825, 34.434841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119326, 40.478554, 34.596970>,  <27.055876, 39.806087, 34.268578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119326, 40.478554, 34.596970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762302, 40.334702, 34.705788>,  <26.548088, 40.248390, 34.771080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762302, 40.334702, 34.705788>,  <27.119326, 40.478554, 34.596970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762302, 40.334702, 34.705788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206614, 0.210085, 0.955602,
		-0.400813, 0.909138, -0.113209,
		-0.892558, -0.359627, 0.272046,
		26.494535, 40.226814, 34.787403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849606, 40.915447, 35.107777>,  <27.119326, 40.478554, 34.596970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849606, 40.915447, 35.107777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637527, 40.579544, 35.154591>,  <26.510281, 40.378002, 35.182678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637527, 40.579544, 35.154591>,  <26.849606, 40.915447, 35.107777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637527, 40.579544, 35.154591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137766, 0.050878, 0.989157,
		-0.836608, 0.540571, 0.088715,
		-0.530197, -0.839758, 0.117037,
		26.478468, 40.327618, 35.189701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394148, 40.938305, 35.776588>,  <26.849606, 40.915447, 35.107777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394148, 40.938305, 35.776588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392628, 40.550766, 35.677532>,  <26.391716, 40.318245, 35.618099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392628, 40.550766, 35.677532>,  <26.394148, 40.938305, 35.776588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392628, 40.550766, 35.677532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125514, -0.246147, 0.961071,
		-0.992085, -0.027430, 0.122539,
		-0.003800, -0.968844, -0.247641,
		26.391487, 40.260113, 35.603241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949617, 40.549294, 36.287182>,  <26.394148, 40.938305, 35.776588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949617, 40.549294, 36.287182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204281, 40.275848, 36.144444>,  <26.357079, 40.111782, 36.058800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204281, 40.275848, 36.144444>,  <25.949617, 40.549294, 36.287182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204281, 40.275848, 36.144444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247657, -0.256972, 0.934147,
		-0.730295, -0.683108, 0.005698,
		0.636659, -0.683614, -0.356842,
		26.395279, 40.070763, 36.037392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000231, 40.031261, 36.782982>,  <25.949617, 40.549294, 36.287182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000231, 40.031261, 36.782982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319246, 39.918098, 36.569855>,  <26.510656, 39.850201, 36.441978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319246, 39.918098, 36.569855>,  <26.000231, 40.031261, 36.782982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319246, 39.918098, 36.569855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408277, -0.397095, 0.821965,
		-0.444122, -0.873085, -0.201192,
		0.797537, -0.282910, -0.532819,
		26.558508, 39.833225, 36.410007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218704, 39.446362, 37.173080>,  <26.000231, 40.031261, 36.782982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218704, 39.446362, 37.173080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536530, 39.498753, 36.935928>,  <26.727224, 39.530186, 36.793636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536530, 39.498753, 36.935928>,  <26.218704, 39.446362, 37.173080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536530, 39.498753, 36.935928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557891, -0.542862, 0.627740,
		-0.239634, -0.829545, -0.504411,
		0.794564, 0.130979, -0.592884,
		26.774899, 39.538048, 36.758064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491434, 38.757282, 37.060776>,  <26.218704, 39.446362, 37.173080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491434, 38.757282, 37.060776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789845, 39.013069, 36.986454>,  <26.968891, 39.166542, 36.941860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789845, 39.013069, 36.986454>,  <26.491434, 38.757282, 37.060776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789845, 39.013069, 36.986454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637072, -0.604141, 0.478700,
		0.193859, -0.475496, -0.858092,
		0.746028, 0.639467, -0.185806,
		27.013653, 39.204910, 36.930714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079073, 38.411976, 36.689953>,  <26.491434, 38.757282, 37.060776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079073, 38.411976, 36.689953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226561, 38.738869, 36.867119>,  <27.315054, 38.935005, 36.973419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226561, 38.738869, 36.867119>,  <27.079073, 38.411976, 36.689953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226561, 38.738869, 36.867119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727321, -0.550362, 0.410007,
		0.578836, 0.170964, -0.797321,
		0.368718, 0.817235, 0.442915,
		27.337175, 38.984039, 36.999992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787064, 38.431305, 36.485092>,  <27.079073, 38.411976, 36.689953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787064, 38.431305, 36.485092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789318, 38.652683, 36.818241>,  <27.790670, 38.785511, 37.018131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789318, 38.652683, 36.818241>,  <27.787064, 38.431305, 36.485092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789318, 38.652683, 36.818241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716152, -0.583529, 0.382909,
		0.697921, 0.594303, -0.399637,
		0.005636, 0.553441, 0.832869,
		27.791008, 38.818714, 37.068100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443346, 38.293259, 36.678688>,  <27.787064, 38.431305, 36.485092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443346, 38.293259, 36.678688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296410, 38.492176, 36.993076>,  <28.208248, 38.611526, 37.181709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296410, 38.492176, 36.993076>,  <28.443346, 38.293259, 36.678688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296410, 38.492176, 36.993076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694828, -0.415030, 0.587336,
		0.618284, 0.761869, -0.193079,
		-0.367340, 0.497298, 0.785975,
		28.186207, 38.641365, 37.228870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036207, 38.613071, 36.959770>,  <28.443346, 38.293259, 36.678688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036207, 38.613071, 36.959770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746540, 38.577259, 37.233284>,  <28.572741, 38.555771, 37.397392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746540, 38.577259, 37.233284>,  <29.036207, 38.613071, 36.959770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746540, 38.577259, 37.233284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611900, -0.540725, 0.577230,
		0.318059, 0.836421, 0.446361,
		-0.724166, -0.089535, 0.683789,
		28.529291, 38.550400, 37.438419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296417, 38.924129, 37.480755>,  <29.036207, 38.613071, 36.959770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296417, 38.924129, 37.480755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021240, 38.657032, 37.594498>,  <28.856134, 38.496773, 37.662743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021240, 38.657032, 37.594498>,  <29.296417, 38.924129, 37.480755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021240, 38.657032, 37.594498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704116, -0.519072, 0.484546,
		-0.175947, 0.533561, 0.827257,
		-0.687941, -0.667740, 0.284360,
		28.814857, 38.456711, 37.679806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382378, 38.766556, 38.265774>,  <29.296417, 38.924129, 37.480755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382378, 38.766556, 38.265774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180605, 38.448357, 38.131470>,  <29.059542, 38.257439, 38.050888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180605, 38.448357, 38.131470>,  <29.382378, 38.766556, 38.265774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180605, 38.448357, 38.131470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749666, -0.596432, 0.286828,
		-0.428428, -0.107022, 0.897216,
		-0.504431, -0.795497, -0.335758,
		29.029276, 38.209709, 38.030743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253006, 38.281284, 38.812054>,  <29.382378, 38.766556, 38.265774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253006, 38.281284, 38.812054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263809, 38.080025, 38.466541>,  <29.270292, 37.959270, 38.259235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263809, 38.080025, 38.466541>,  <29.253006, 38.281284, 38.812054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263809, 38.080025, 38.466541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578213, -0.697008, 0.424087,
		-0.815439, -0.510901, 0.272101,
		0.027010, -0.503149, -0.863777,
		29.271912, 37.929081, 38.207409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096121, 37.599354, 38.855728>,  <29.253006, 38.281284, 38.812054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096121, 37.599354, 38.855728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320095, 37.608490, 38.524441>,  <29.454479, 37.613972, 38.325668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320095, 37.608490, 38.524441>,  <29.096121, 37.599354, 38.855728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320095, 37.608490, 38.524441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666840, -0.605684, 0.434132,
		-0.491726, -0.795377, -0.354374,
		0.559937, 0.022837, -0.828220,
		29.488075, 37.615341, 38.275974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204847, 36.980576, 38.363914>,  <29.096121, 37.599354, 38.855728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204847, 36.980576, 38.363914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537920, 37.202049, 38.367287>,  <29.737764, 37.334934, 38.369312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537920, 37.202049, 38.367287>,  <29.204847, 36.980576, 38.363914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537920, 37.202049, 38.367287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474039, -0.720610, 0.505972,
		0.286227, -0.417317, -0.862509,
		0.832683, 0.553685, 0.008434,
		29.787725, 37.368156, 38.369816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846344, 36.674583, 38.090996>,  <29.204847, 36.980576, 38.363914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846344, 36.674583, 38.090996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912485, 36.930958, 38.390823>,  <29.952169, 37.084782, 38.570721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912485, 36.930958, 38.390823>,  <29.846344, 36.674583, 38.090996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912485, 36.930958, 38.390823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302008, -0.756426, 0.580181,
		0.938856, 0.130442, -0.318645,
		0.165351, 0.640940, 0.749570,
		29.962091, 37.123241, 38.615696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541338, 36.464111, 38.185936>,  <29.846344, 36.674583, 38.090996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541338, 36.464111, 38.185936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384705, 36.637112, 38.510799>,  <30.290724, 36.740910, 38.705719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384705, 36.637112, 38.510799>,  <30.541338, 36.464111, 38.185936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384705, 36.637112, 38.510799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292253, -0.778485, 0.555473,
		0.872496, 0.454872, 0.178445,
		-0.391585, 0.432497, 0.812162,
		30.267229, 36.766861, 38.754448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044447, 36.654221, 38.655064>,  <30.541338, 36.464111, 38.185936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044447, 36.654221, 38.655064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692736, 36.559151, 38.820171>,  <30.481709, 36.502110, 38.919235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692736, 36.559151, 38.820171>,  <31.044447, 36.654221, 38.655064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692736, 36.559151, 38.820171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439829, -0.737767, 0.512104,
		0.182811, 0.631830, 0.753241,
		-0.879279, -0.237679, 0.412769,
		30.428951, 36.487846, 38.944000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998785, 36.681179, 39.408028>,  <31.044447, 36.654221, 38.655064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998785, 36.681179, 39.408028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781467, 36.388527, 39.243324>,  <30.651077, 36.212936, 39.144501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781467, 36.388527, 39.243324>,  <30.998785, 36.681179, 39.408028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781467, 36.388527, 39.243324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469255, -0.671332, 0.573684,
		-0.696153, 0.118458, 0.708053,
		-0.543296, -0.731629, -0.411763,
		30.618479, 36.169037, 39.119797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693865, 36.320930, 39.954987>,  <30.998785, 36.681179, 39.408028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693865, 36.320930, 39.954987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734928, 36.093803, 39.628296>,  <30.759565, 35.957527, 39.432281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734928, 36.093803, 39.628296>,  <30.693865, 36.320930, 39.954987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734928, 36.093803, 39.628296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518224, -0.670308, 0.531160,
		-0.849061, -0.477776, 0.225444,
		0.102659, -0.567818, -0.816728,
		30.765726, 35.923458, 39.383278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533113, 35.635044, 40.155666>,  <30.693865, 36.320930, 39.954987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533113, 35.635044, 40.155666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749783, 35.561287, 39.827621>,  <30.879784, 35.517033, 39.630795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749783, 35.561287, 39.827621>,  <30.533113, 35.635044, 40.155666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749783, 35.561287, 39.827621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530707, -0.681588, 0.503774,
		-0.651873, -0.708122, -0.271341,
		0.541676, -0.184394, -0.820114,
		30.912285, 35.505970, 39.581589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467796, 34.939590, 40.108948>,  <30.533113, 35.635044, 40.155666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467796, 34.939590, 40.108948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795488, 35.069019, 39.919563>,  <30.992104, 35.146675, 39.805931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795488, 35.069019, 39.919563>,  <30.467796, 34.939590, 40.108948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795488, 35.069019, 39.919563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560571, -0.625947, 0.542172,
		-0.120929, -0.709571, -0.694180,
		0.819229, 0.323573, -0.473460,
		31.041258, 35.166092, 39.777527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816683, 34.398602, 39.982738>,  <30.467796, 34.939590, 40.108948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816683, 34.398602, 39.982738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103920, 34.676956, 39.986431>,  <31.276262, 34.843967, 39.988647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103920, 34.676956, 39.986431>,  <30.816683, 34.398602, 39.982738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103920, 34.676956, 39.986431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655838, -0.681084, 0.325578,
		0.232852, -0.227741, -0.945470,
		0.718092, 0.695887, 0.009231,
		31.319347, 34.885723, 39.989201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454185, 33.986023, 40.055187>,  <30.816683, 34.398602, 39.982738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454185, 33.986023, 40.055187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604254, 34.354088, 40.099998>,  <31.694296, 34.574924, 40.126884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604254, 34.354088, 40.099998>,  <31.454185, 33.986023, 40.055187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604254, 34.354088, 40.099998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705966, -0.361957, 0.608769,
		0.600715, -0.149305, -0.785398,
		0.375172, 0.920160, 0.112029,
		31.716806, 34.630135, 40.133606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221207, 34.017326, 39.992397>,  <31.454185, 33.986023, 40.055187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221207, 34.017326, 39.992397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138340, 34.339279, 40.214836>,  <32.088619, 34.532452, 40.348297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138340, 34.339279, 40.214836>,  <32.221207, 34.017326, 39.992397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138340, 34.339279, 40.214836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594464, -0.347879, 0.724978,
		0.776977, 0.480770, -0.406407,
		-0.207167, 0.804886, 0.556094,
		32.076191, 34.580746, 40.381664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826538, 34.243649, 40.308563>,  <32.221207, 34.017326, 39.992397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826538, 34.243649, 40.308563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552216, 34.441730, 40.521893>,  <32.387623, 34.560581, 40.649891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552216, 34.441730, 40.521893>,  <32.826538, 34.243649, 40.308563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552216, 34.441730, 40.521893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541379, -0.142629, 0.828593,
		0.486394, 0.856986, -0.170280,
		-0.685806, 0.495209, 0.533328,
		32.346474, 34.590294, 40.681892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130470, 34.741631, 40.695686>,  <32.826538, 34.243649, 40.308563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130470, 34.741631, 40.695686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778782, 34.707966, 40.883255>,  <32.567768, 34.687767, 40.995796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778782, 34.707966, 40.883255>,  <33.130470, 34.741631, 40.695686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778782, 34.707966, 40.883255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476333, -0.173142, 0.862049,
		0.008639, 0.981295, 0.192318,
		-0.879223, -0.084160, 0.468919,
		32.515015, 34.682716, 41.023930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331276, 35.009094, 41.336376>,  <33.130470, 34.741631, 40.695686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331276, 35.009094, 41.336376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985298, 34.820606, 41.405453>,  <32.777710, 34.707512, 41.446899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985298, 34.820606, 41.405453>,  <33.331276, 35.009094, 41.336376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985298, 34.820606, 41.405453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282614, -0.172966, 0.943511,
		-0.414731, 0.864890, 0.282779,
		-0.864944, -0.471220, 0.172695,
		32.725815, 34.679241, 41.457260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111824, 35.151348, 42.077599>,  <33.331276, 35.009094, 41.336376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111824, 35.151348, 42.077599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924595, 34.818886, 41.957539>,  <32.812256, 34.619408, 41.885502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924595, 34.818886, 41.957539>,  <33.111824, 35.151348, 42.077599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924595, 34.818886, 41.957539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447158, -0.515731, 0.730802,
		-0.762204, 0.207858, 0.613058,
		-0.468076, -0.831154, -0.300147,
		32.784172, 34.569538, 41.867493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894825, 34.883739, 42.733212>,  <33.111824, 35.151348, 42.077599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894825, 34.883739, 42.733212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857975, 34.562572, 42.497639>,  <32.835865, 34.369873, 42.356297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857975, 34.562572, 42.497639>,  <32.894825, 34.883739, 42.733212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857975, 34.562572, 42.497639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344777, -0.580578, 0.737603,
		-0.934153, -0.135099, 0.330312,
		-0.092123, -0.802918, -0.588928,
		32.830338, 34.321697, 42.320961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547825, 34.245075, 43.081646>,  <32.894825, 34.883739, 42.733212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547825, 34.245075, 43.081646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741138, 34.054092, 42.788124>,  <32.857124, 33.939503, 42.612011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741138, 34.054092, 42.788124>,  <32.547825, 34.245075, 43.081646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741138, 34.054092, 42.788124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151013, -0.780162, 0.607077,
		-0.862343, -0.404203, -0.304934,
		0.483280, -0.477460, -0.733807,
		32.886124, 33.910854, 42.567982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245346, 33.548676, 42.889130>,  <32.547825, 34.245075, 43.081646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245346, 33.548676, 42.889130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628319, 33.549286, 42.773666>,  <32.858101, 33.549652, 42.704388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628319, 33.549286, 42.773666>,  <32.245346, 33.548676, 42.889130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628319, 33.549286, 42.773666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183394, -0.775442, 0.604200,
		-0.222918, -0.631418, -0.742711,
		0.957431, 0.001522, -0.288658,
		32.915546, 33.549744, 42.687069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423359, 32.870251, 42.813644>,  <32.245346, 33.548676, 42.889130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423359, 32.870251, 42.813644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764538, 33.076092, 42.848663>,  <32.969246, 33.199596, 42.869675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764538, 33.076092, 42.848663>,  <32.423359, 32.870251, 42.813644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764538, 33.076092, 42.848663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377500, -0.723937, 0.577415,
		0.360517, -0.459457, -0.811743,
		0.852948, 0.514601, 0.087547,
		33.020424, 33.230473, 42.874928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925968, 32.386868, 42.601215>,  <32.423359, 32.870251, 42.813644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925968, 32.386868, 42.601215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081856, 32.672871, 42.833382>,  <33.175388, 32.844471, 42.972683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081856, 32.672871, 42.833382>,  <32.925968, 32.386868, 42.601215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081856, 32.672871, 42.833382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395423, -0.699114, 0.595719,
		0.831721, -0.002653, -0.555188,
		0.389720, 0.715006, 0.580419,
		33.198772, 32.887371, 43.007507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346554, 32.018875, 43.015854>,  <32.925968, 32.386868, 42.601215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346554, 32.018875, 43.015854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369099, 32.361088, 43.221725>,  <33.382626, 32.566414, 43.345249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369099, 32.361088, 43.221725>,  <33.346554, 32.018875, 43.015854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369099, 32.361088, 43.221725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393058, -0.492884, 0.776255,
		0.917785, 0.158545, -0.364053,
		0.056365, 0.855529, 0.514679,
		33.386009, 32.617744, 43.376129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903076, 31.932741, 43.404823>,  <33.346554, 32.018875, 43.015854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903076, 31.932741, 43.404823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749634, 32.249180, 43.595406>,  <33.657570, 32.439045, 43.709755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749634, 32.249180, 43.595406>,  <33.903076, 31.932741, 43.404823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749634, 32.249180, 43.595406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218444, -0.423559, 0.879136,
		0.897292, 0.441317, -0.010332,
		-0.383601, 0.791098, 0.476459,
		33.634552, 32.486511, 43.738342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410797, 32.225815, 43.935192>,  <33.903076, 31.932741, 43.404823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410797, 32.225815, 43.935192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056915, 32.376465, 44.045071>,  <33.844585, 32.466854, 44.110996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056915, 32.376465, 44.045071>,  <34.410797, 32.225815, 43.935192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056915, 32.376465, 44.045071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145394, -0.336940, 0.930232,
		0.442904, 0.862917, 0.243332,
		-0.884701, 0.376625, 0.274695,
		33.791504, 32.489452, 44.127480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448772, 32.551701, 44.543587>,  <34.410797, 32.225815, 43.935192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448772, 32.551701, 44.543587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058464, 32.464565, 44.551746>,  <33.824280, 32.412285, 44.556641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058464, 32.464565, 44.551746>,  <34.448772, 32.551701, 44.543587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058464, 32.464565, 44.551746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085599, -0.294300, 0.951872,
		-0.201352, 0.930556, 0.305816,
		-0.975772, -0.217839, 0.020397,
		33.765732, 32.399212, 44.557865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179424, 32.901871, 45.135799>,  <34.448772, 32.551701, 44.543587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179424, 32.901871, 45.135799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918377, 32.612289, 45.046375>,  <33.761749, 32.438541, 44.992722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918377, 32.612289, 45.046375>,  <34.179424, 32.901871, 45.135799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918377, 32.612289, 45.046375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063179, -0.346029, 0.936094,
		-0.755047, 0.596789, 0.271564,
		-0.652619, -0.723952, -0.223564,
		33.722591, 32.395103, 44.979305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727562, 32.808922, 45.705608>,  <34.179424, 32.901871, 45.135799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727562, 32.808922, 45.705608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688484, 32.454285, 45.524761>,  <33.665039, 32.241501, 45.416252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688484, 32.454285, 45.524761>,  <33.727562, 32.808922, 45.705608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688484, 32.454285, 45.524761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063930, -0.458945, 0.886162,
		-0.993161, 0.057668, 0.101516,
		-0.097693, -0.886591, -0.452119,
		33.659176, 32.188309, 45.389126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373463, 32.407238, 46.189529>,  <33.727562, 32.808922, 45.705608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373463, 32.407238, 46.189529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533508, 32.140945, 45.937592>,  <33.629536, 31.981169, 45.786430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533508, 32.140945, 45.937592>,  <33.373463, 32.407238, 46.189529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533508, 32.140945, 45.937592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273120, -0.569409, 0.775357,
		-0.874823, -0.482254, -0.046003,
		0.400113, -0.665736, -0.629845,
		33.653542, 31.941225, 45.748638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006130, 31.830101, 46.375961>,  <33.373463, 32.407238, 46.189529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006130, 31.830101, 46.375961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336437, 31.708662, 46.185829>,  <33.534622, 31.635799, 46.071751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336437, 31.708662, 46.185829>,  <33.006130, 31.830101, 46.375961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336437, 31.708662, 46.185829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291555, -0.491662, 0.820527,
		-0.482812, -0.816148, -0.317482,
		0.825765, -0.303597, -0.475332,
		33.584167, 31.617582, 46.043228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099224, 31.190620, 46.577217>,  <33.006130, 31.830101, 46.375961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099224, 31.190620, 46.577217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453533, 31.269384, 46.409107>,  <33.666119, 31.316643, 46.308243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453533, 31.269384, 46.409107>,  <33.099224, 31.190620, 46.577217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453533, 31.269384, 46.409107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431139, -0.684341, 0.588044,
		-0.171817, -0.702071, -0.691069,
		0.885775, 0.196910, -0.420272,
		33.719265, 31.328457, 46.283028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363014, 30.627483, 46.362438>,  <33.099224, 31.190620, 46.577217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363014, 30.627483, 46.362438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685146, 30.854485, 46.431000>,  <33.878426, 30.990685, 46.472137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685146, 30.854485, 46.431000>,  <33.363014, 30.627483, 46.362438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685146, 30.854485, 46.431000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297339, -0.636811, 0.711380,
		0.512865, -0.521930, -0.681585,
		0.805332, 0.567504, 0.171408,
		33.926746, 31.024736, 46.482422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988136, 30.140768, 46.426704>,  <33.363014, 30.627483, 46.362438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988136, 30.140768, 46.426704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140423, 30.468462, 46.598244>,  <34.231796, 30.665077, 46.701168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140423, 30.468462, 46.598244>,  <33.988136, 30.140768, 46.426704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140423, 30.468462, 46.598244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490529, -0.572070, 0.657357,
		0.783859, -0.039906, -0.619655,
		0.380718, 0.819234, 0.428847,
		34.254639, 30.714231, 46.726898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649925, 30.052906, 46.430122>,  <33.988136, 30.140768, 46.426704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649925, 30.052906, 46.430122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600784, 30.319145, 46.724575>,  <34.571301, 30.478889, 46.901245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600784, 30.319145, 46.724575>,  <34.649925, 30.052906, 46.430122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600784, 30.319145, 46.724575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571837, -0.558762, 0.600657,
		0.811117, 0.494737, -0.311970,
		-0.122850, 0.665598, 0.736130,
		34.563931, 30.518826, 46.945415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370659, 30.119295, 46.738510>,  <34.649925, 30.052906, 46.430122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370659, 30.119295, 46.738510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103508, 30.274672, 46.992458>,  <34.943218, 30.367897, 47.144825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103508, 30.274672, 46.992458>,  <35.370659, 30.119295, 46.738510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103508, 30.274672, 46.992458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422934, -0.503824, 0.753185,
		0.612430, 0.771541, 0.172206,
		-0.667875, 0.388441, 0.634868,
		34.903145, 30.391205, 47.182919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709175, 30.528055, 47.337345>,  <35.370659, 30.119295, 46.738510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709175, 30.528055, 47.337345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343231, 30.404470, 47.441319>,  <35.123665, 30.330318, 47.503704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343231, 30.404470, 47.441319>,  <35.709175, 30.528055, 47.337345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343231, 30.404470, 47.441319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387001, -0.487439, 0.782709,
		-0.115126, 0.816667, 0.565509,
		-0.914864, -0.308963, 0.259934,
		35.068771, 30.311781, 47.519299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719292, 30.560268, 48.083221>,  <35.709175, 30.528055, 47.337345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719292, 30.560268, 48.083221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383102, 30.352085, 48.022923>,  <35.181389, 30.227175, 47.986744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383102, 30.352085, 48.022923>,  <35.719292, 30.560268, 48.083221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383102, 30.352085, 48.022923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275735, -0.650303, 0.707867,
		-0.466446, 0.553379, 0.690072,
		-0.840475, -0.520458, -0.150745,
		35.130959, 30.195948, 47.977699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340210, 30.599012, 48.651485>,  <35.719292, 30.560268, 48.083221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340210, 30.599012, 48.651485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228432, 30.273771, 48.447224>,  <35.161366, 30.078627, 48.324665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228432, 30.273771, 48.447224>,  <35.340210, 30.599012, 48.651485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228432, 30.273771, 48.447224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324776, -0.580544, 0.746653,
		-0.903564, 0.042803, 0.426309,
		-0.279450, -0.813103, -0.510657,
		35.144596, 30.029840, 48.294025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025936, 30.174992, 49.104420>,  <35.340210, 30.599012, 48.651485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025936, 30.174992, 49.104420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128559, 29.917658, 48.815895>,  <35.190132, 29.763258, 48.642780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128559, 29.917658, 48.815895>,  <35.025936, 30.174992, 49.104420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128559, 29.917658, 48.815895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240268, -0.680417, 0.692318,
		-0.936189, -0.350928, -0.019992,
		0.256556, -0.643337, -0.721316,
		35.205524, 29.724657, 48.599499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619205, 29.569929, 49.170853>,  <35.025936, 30.174992, 49.104420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619205, 29.569929, 49.170853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934151, 29.436750, 48.963310>,  <35.123116, 29.356842, 48.838787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934151, 29.436750, 48.963310>,  <34.619205, 29.569929, 49.170853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934151, 29.436750, 48.963310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178363, -0.682601, 0.708691,
		-0.590126, -0.650540, -0.478068,
		0.787361, -0.332948, -0.518852,
		35.170361, 29.336866, 48.807655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711334, 28.831947, 49.296654>,  <34.619205, 29.569929, 49.170853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711334, 28.831947, 49.296654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066307, 28.907471, 49.128452>,  <35.279289, 28.952784, 49.027531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066307, 28.907471, 49.128452>,  <34.711334, 28.831947, 49.296654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066307, 28.907471, 49.128452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410674, -0.738137, 0.535258,
		-0.209329, -0.647693, -0.732581,
		0.887428, 0.188807, -0.420504,
		35.332535, 28.964113, 49.002300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873310, 28.329603, 48.921070>,  <34.711334, 28.831947, 49.296654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873310, 28.329603, 48.921070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214413, 28.501429, 49.039917>,  <35.419075, 28.604525, 49.111225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214413, 28.501429, 49.039917>,  <34.873310, 28.329603, 48.921070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214413, 28.501429, 49.039917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259160, -0.841884, 0.473357,
		0.453480, -0.326656, -0.829248,
		0.852756, 0.429565, 0.297121,
		35.470238, 28.630299, 49.129055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473545, 27.893862, 48.700535>,  <34.873310, 28.329603, 48.921070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473545, 27.893862, 48.700535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572437, 28.114395, 49.019260>,  <35.631775, 28.246716, 49.210495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572437, 28.114395, 49.019260>,  <35.473545, 27.893862, 48.700535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572437, 28.114395, 49.019260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305056, -0.824811, 0.476054,
		0.919683, 0.125376, -0.372108,
		0.247233, 0.551332, 0.796811,
		35.646606, 28.279795, 49.258305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159336, 27.667830, 48.847637>,  <35.473545, 27.893862, 48.700535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159336, 27.667830, 48.847637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008579, 27.831837, 49.179863>,  <35.918125, 27.930241, 49.379200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008579, 27.831837, 49.179863>,  <36.159336, 27.667830, 48.847637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008579, 27.831837, 49.179863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300439, -0.794096, 0.528345,
		0.876179, 0.448662, 0.176102,
		-0.376890, 0.410017, 0.830566,
		35.895512, 27.954842, 49.429031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722610, 27.530714, 49.284557>,  <36.159336, 27.667830, 48.847637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722610, 27.530714, 49.284557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397556, 27.624025, 49.498177>,  <36.202526, 27.680012, 49.626350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397556, 27.624025, 49.498177>,  <36.722610, 27.530714, 49.284557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397556, 27.624025, 49.498177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163316, -0.788512, 0.592939,
		0.559425, 0.569061, 0.602672,
		-0.812633, 0.233279, 0.534050,
		36.153767, 27.694010, 49.658390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935284, 27.400236, 50.025387>,  <36.722610, 27.530714, 49.284557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935284, 27.400236, 50.025387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535988, 27.423903, 50.024147>,  <36.296410, 27.438103, 50.023403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535988, 27.423903, 50.024147>,  <36.935284, 27.400236, 50.025387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535988, 27.423903, 50.024147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044331, -0.711197, 0.701593,
		0.039304, 0.700498, 0.712571,
		-0.998244, 0.059164, -0.003101,
		36.236515, 27.441652, 50.023216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725773, 27.444311, 50.678120>,  <36.935284, 27.400236, 50.025387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725773, 27.444311, 50.678120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403736, 27.301596, 50.488583>,  <36.210514, 27.215965, 50.374859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403736, 27.301596, 50.488583>,  <36.725773, 27.444311, 50.678120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403736, 27.301596, 50.488583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065272, -0.740719, 0.668636,
		-0.589549, 0.569242, 0.573058,
		-0.805091, -0.356790, -0.473846,
		36.162209, 27.194559, 50.346428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300194, 27.104876, 51.230679>,  <36.725773, 27.444311, 50.678120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300194, 27.104876, 51.230679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189365, 26.946962, 50.880280>,  <36.122868, 26.852215, 50.670040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189365, 26.946962, 50.880280>,  <36.300194, 27.104876, 51.230679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189365, 26.946962, 50.880280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270306, -0.842849, 0.465339,
		-0.922043, 0.365722, 0.126821,
		-0.277075, -0.394783, -0.876000,
		36.106243, 26.828527, 50.617481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547653, 27.028217, 51.196121>,  <36.300194, 27.104876, 51.230679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547653, 27.028217, 51.196121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740105, 26.759876, 50.970387>,  <35.855576, 26.598871, 50.834946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740105, 26.759876, 50.970387>,  <35.547653, 27.028217, 51.196121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740105, 26.759876, 50.970387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182358, -0.706246, 0.684078,
		-0.857472, -0.226221, -0.462132,
		0.481132, -0.670851, -0.564333,
		35.884445, 26.558620, 50.801086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021870, 26.548574, 50.961300>,  <35.547653, 27.028217, 51.196121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021870, 26.548574, 50.961300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400936, 26.429050, 51.006279>,  <35.628376, 26.357336, 51.033264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400936, 26.429050, 51.006279>,  <35.021870, 26.548574, 50.961300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400936, 26.429050, 51.006279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283045, -0.623380, 0.728892,
		-0.147704, -0.722572, -0.675331,
		0.947665, -0.298809, 0.112445,
		35.685234, 26.339407, 51.040012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175026, 25.821945, 50.960621>,  <35.021870, 26.548574, 50.961300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175026, 25.821945, 50.960621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433746, 26.006044, 51.203873>,  <35.588978, 26.116505, 51.349823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433746, 26.006044, 51.203873>,  <35.175026, 25.821945, 50.960621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433746, 26.006044, 51.203873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354461, -0.524607, 0.774044,
		0.675280, -0.716211, -0.176178,
		0.646803, 0.460248, 0.608126,
		35.627789, 26.144119, 51.386311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526234, 25.258930, 51.340816>,  <35.175026, 25.821945, 50.960621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526234, 25.258930, 51.340816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520016, 25.611332, 51.529957>,  <35.516285, 25.822773, 51.643440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520016, 25.611332, 51.529957>,  <35.526234, 25.258930, 51.340816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520016, 25.611332, 51.529957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173626, -0.468106, 0.866447,
		0.984689, -0.068628, 0.160244,
		-0.015548, 0.881003, 0.472855,
		35.515350, 25.875633, 51.671814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051125, 25.152617, 51.950516>,  <35.526234, 25.258930, 51.340816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051125, 25.152617, 51.950516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761902, 25.421967, 52.012165>,  <35.588367, 25.583576, 52.049152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761902, 25.421967, 52.012165>,  <36.051125, 25.152617, 51.950516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761902, 25.421967, 52.012165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180859, -0.399864, 0.898554,
		0.666689, 0.621834, 0.410912,
		-0.723060, 0.673373, 0.154121,
		35.544983, 25.623978, 52.058403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596794, 25.302031, 51.439510>,  <36.051125, 25.152617, 51.950516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596794, 25.302031, 51.439510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985535, 25.211975, 51.467266>,  <37.218781, 25.157942, 51.483921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985535, 25.211975, 51.467266>,  <36.596794, 25.302031, 51.439510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985535, 25.211975, 51.467266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164931, 0.439865, -0.882789,
		0.168228, 0.869386, 0.464616,
		0.971853, -0.225139, 0.069391,
		37.277092, 25.144434, 51.488083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842102, 25.880121, 51.268875>,  <36.596794, 25.302031, 51.439510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842102, 25.880121, 51.268875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082138, 25.569605, 51.191654>,  <37.226158, 25.383295, 51.145321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082138, 25.569605, 51.191654>,  <36.842102, 25.880121, 51.268875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082138, 25.569605, 51.191654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173842, 0.362124, -0.915776,
		0.780816, 0.515986, 0.352258,
		0.600088, -0.776290, -0.193052,
		37.262165, 25.336718, 51.133739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469913, 26.142929, 50.997612>,  <36.842102, 25.880121, 51.268875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469913, 26.142929, 50.997612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386379, 25.774965, 50.864857>,  <37.336258, 25.554186, 50.785202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386379, 25.774965, 50.864857>,  <37.469913, 26.142929, 50.997612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386379, 25.774965, 50.864857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109984, 0.359311, -0.926714,
		0.971746, -0.157031, -0.176214,
		-0.208839, -0.919911, -0.331888,
		37.323727, 25.498991, 50.765289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927399, 25.943830, 50.404228>,  <37.469913, 26.142929, 50.997612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927399, 25.943830, 50.404228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588737, 25.732065, 50.382652>,  <37.385540, 25.605007, 50.369705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588737, 25.732065, 50.382652>,  <37.927399, 25.943830, 50.404228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588737, 25.732065, 50.382652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019878, 0.132758, -0.990949,
		0.531781, -0.837913, -0.122923,
		-0.846648, -0.529412, -0.053942,
		37.334743, 25.573242, 50.366470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940620, 25.413460, 49.872715>,  <37.927399, 25.943830, 50.404228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940620, 25.413460, 49.872715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551674, 25.483717, 49.934238>,  <37.318306, 25.525871, 49.971153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551674, 25.483717, 49.934238>,  <37.940620, 25.413460, 49.872715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551674, 25.483717, 49.934238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155771, 0.002654, -0.987790,
		-0.173906, -0.984450, 0.024780,
		-0.972364, 0.175643, 0.153810,
		37.259964, 25.536409, 49.980381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685017, 25.050653, 49.387589>,  <37.940620, 25.413460, 49.872715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685017, 25.050653, 49.387589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396378, 25.300961, 49.506054>,  <37.223194, 25.451145, 49.577133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396378, 25.300961, 49.506054>,  <37.685017, 25.050653, 49.387589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396378, 25.300961, 49.506054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284784, 0.121624, -0.950845,
		-0.631028, -0.770470, 0.090445,
		-0.721597, 0.625767, 0.296165,
		37.179897, 25.488691, 49.594902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092442, 24.869541, 49.082321>,  <37.685017, 25.050653, 49.387589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092442, 24.869541, 49.082321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046211, 25.256979, 49.170387>,  <37.018475, 25.489441, 49.223225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046211, 25.256979, 49.170387>,  <37.092442, 24.869541, 49.082321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046211, 25.256979, 49.170387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252314, 0.185750, -0.949650,
		-0.960719, -0.165302, 0.222922,
		-0.115571, 0.968593, 0.220161,
		37.011539, 25.547558, 49.236435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437820, 24.985020, 48.835236>,  <37.092442, 24.869541, 49.082321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437820, 24.985020, 48.835236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622330, 25.338966, 48.861286>,  <36.733036, 25.551334, 48.876915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622330, 25.338966, 48.861286>,  <36.437820, 24.985020, 48.835236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622330, 25.338966, 48.861286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339581, 0.243875, -0.908410,
		-0.819703, 0.396910, 0.412977,
		0.461272, 0.884866, 0.065122,
		36.760712, 25.604425, 48.880821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974243, 25.461273, 48.780899>,  <36.437820, 24.985020, 48.835236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974243, 25.461273, 48.780899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308098, 25.651884, 48.670410>,  <36.508411, 25.766251, 48.604115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308098, 25.651884, 48.670410>,  <35.974243, 25.461273, 48.780899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308098, 25.651884, 48.670410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456160, 0.316947, -0.831543,
		-0.308704, 0.820040, 0.481909,
		0.834638, 0.476528, -0.276226,
		36.558491, 25.794842, 48.587543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778427, 26.082052, 48.606060>,  <35.974243, 25.461273, 48.780899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778427, 26.082052, 48.606060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116467, 26.013941, 48.403351>,  <36.319290, 25.973074, 48.281723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116467, 26.013941, 48.403351>,  <35.778427, 26.082052, 48.606060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116467, 26.013941, 48.403351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411057, 0.399139, -0.819586,
		0.341832, 0.900940, 0.267316,
		0.845094, -0.170279, -0.506776,
		36.369995, 25.962856, 48.251320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613617, 26.457005, 48.032860>,  <35.778427, 26.082052, 48.606060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613617, 26.457005, 48.032860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965801, 26.287344, 47.948120>,  <36.177113, 26.185547, 47.897278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965801, 26.287344, 47.948120>,  <35.613617, 26.457005, 48.032860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965801, 26.287344, 47.948120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097249, 0.275756, -0.956295,
		0.464033, 0.862585, 0.201545,
		0.880464, -0.424152, -0.211846,
		36.229939, 26.160099, 47.884567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999420, 26.973440, 47.705036>,  <35.613617, 26.457005, 48.032860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999420, 26.973440, 47.705036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117012, 26.605524, 47.601063>,  <36.187565, 26.384775, 47.538677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117012, 26.605524, 47.601063>,  <35.999420, 26.973440, 47.705036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117012, 26.605524, 47.601063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123063, 0.233264, -0.964595,
		0.947857, 0.315556, -0.044618,
		0.293976, -0.919789, -0.259935,
		36.205204, 26.329588, 47.523083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527382, 27.076977, 47.229588>,  <35.999420, 26.973440, 47.705036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527382, 27.076977, 47.229588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367542, 26.716526, 47.162308>,  <36.271637, 26.500256, 47.121941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367542, 26.716526, 47.162308>,  <36.527382, 27.076977, 47.229588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367542, 26.716526, 47.162308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011696, 0.188478, -0.982008,
		0.916614, -0.390445, -0.085856,
		-0.399602, -0.901127, -0.168195,
		36.247662, 26.446188, 47.111851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952339, 26.880541, 46.746548>,  <36.527382, 27.076977, 47.229588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952339, 26.880541, 46.746548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619572, 26.660868, 46.714787>,  <36.419910, 26.529064, 46.695728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619572, 26.660868, 46.714787>,  <36.952339, 26.880541, 46.746548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619572, 26.660868, 46.714787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067586, 0.242315, -0.967841,
		0.550762, -0.799801, -0.238704,
		-0.831921, -0.549183, -0.079402,
		36.369995, 26.496113, 46.690968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051533, 26.510807, 46.191444>,  <36.952339, 26.880541, 46.746548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051533, 26.510807, 46.191444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655529, 26.462008, 46.219719>,  <36.417927, 26.432728, 46.236683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655529, 26.462008, 46.219719>,  <37.051533, 26.510807, 46.191444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655529, 26.462008, 46.219719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099032, 0.244765, -0.964512,
		0.100365, -0.961877, -0.254401,
		-0.990010, -0.121997, 0.070691,
		36.358524, 26.425407, 46.240925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819416, 26.246542, 45.492981>,  <37.051533, 26.510807, 46.191444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819416, 26.246542, 45.492981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477337, 26.379932, 45.651688>,  <36.272087, 26.459967, 45.746914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477337, 26.379932, 45.651688>,  <36.819416, 26.246542, 45.492981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477337, 26.379932, 45.651688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248412, 0.408145, -0.878470,
		-0.454889, -0.849830, -0.266206,
		-0.855200, 0.333477, 0.396768,
		36.220776, 26.479975, 45.770718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284451, 25.997246, 44.982265>,  <36.819416, 26.246542, 45.492981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284451, 25.997246, 44.982265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143559, 26.291447, 45.213772>,  <36.059025, 26.467968, 45.352676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143559, 26.291447, 45.213772>,  <36.284451, 25.997246, 44.982265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143559, 26.291447, 45.213772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469604, 0.396032, -0.789070,
		-0.809574, -0.549723, 0.205902,
		-0.352226, 0.735502, 0.578769,
		36.037891, 26.512096, 45.387402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677223, 26.169849, 44.616917>,  <36.284451, 25.997246, 44.982265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677223, 26.169849, 44.616917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730381, 26.478947, 44.865177>,  <35.762276, 26.664404, 45.014133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730381, 26.478947, 44.865177>,  <35.677223, 26.169849, 44.616917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730381, 26.478947, 44.865177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374052, 0.619001, -0.690596,
		-0.917837, -0.140381, 0.371307,
		0.132894, 0.772742, 0.620652,
		35.770248, 26.710770, 45.051373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026749, 26.564314, 44.703472>,  <35.677223, 26.169849, 44.616917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026749, 26.564314, 44.703472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314323, 26.823359, 44.804451>,  <35.486870, 26.978785, 44.865036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314323, 26.823359, 44.804451>,  <35.026749, 26.564314, 44.703472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314323, 26.823359, 44.804451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495003, 0.732003, -0.468128,
		-0.487955, 0.211595, 0.846834,
		0.718938, 0.647611, 0.252444,
		35.530006, 27.017641, 44.880184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698467, 27.133293, 44.850754>,  <35.026749, 26.564314, 44.703472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698467, 27.133293, 44.850754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068665, 27.255438, 44.761112>,  <35.290783, 27.328724, 44.707325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068665, 27.255438, 44.761112>,  <34.698467, 27.133293, 44.850754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068665, 27.255438, 44.761112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375189, 0.820256, -0.431757,
		0.051983, 0.483669, 0.873706,
		0.925490, 0.305361, -0.224106,
		35.346310, 27.347046, 44.693882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796959, 27.873573, 45.042725>,  <34.698467, 27.133293, 44.850754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796959, 27.873573, 45.042725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066872, 27.786760, 44.760571>,  <35.228817, 27.734673, 44.591278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066872, 27.786760, 44.760571>,  <34.796959, 27.873573, 45.042725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066872, 27.786760, 44.760571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303847, 0.789326, -0.533518,
		0.672571, 0.574336, 0.466675,
		0.674777, -0.217031, -0.705389,
		35.269306, 27.721651, 44.548954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107418, 28.495701, 44.836594>,  <34.796959, 27.873573, 45.042725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107418, 28.495701, 44.836594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171764, 28.247519, 44.529568>,  <35.210373, 28.098608, 44.345352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171764, 28.247519, 44.529568>,  <35.107418, 28.495701, 44.836594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171764, 28.247519, 44.529568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090555, 0.765134, -0.637472,
		0.982814, 0.172053, 0.066897,
		0.160864, -0.620458, -0.767564,
		35.220024, 28.061380, 44.299297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502853, 28.981167, 44.468632>,  <35.107418, 28.495701, 44.836594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502853, 28.981167, 44.468632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376453, 28.712387, 44.200714>,  <35.300613, 28.551119, 44.039963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376453, 28.712387, 44.200714>,  <35.502853, 28.981167, 44.468632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376453, 28.712387, 44.200714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110999, 0.727307, -0.677277,
		0.942243, -0.139675, -0.304417,
		-0.316003, -0.671950, -0.669795,
		35.281654, 28.510801, 43.999775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797836, 29.280746, 43.905384>,  <35.502853, 28.981167, 44.468632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797836, 29.280746, 43.905384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509781, 29.020958, 43.807747>,  <35.336948, 28.865084, 43.749165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509781, 29.020958, 43.807747>,  <35.797836, 29.280746, 43.905384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509781, 29.020958, 43.807747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155544, 0.493972, -0.855452,
		0.676167, -0.578080, -0.456751,
		-0.720142, -0.649473, -0.244091,
		35.293739, 28.826117, 43.734520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944630, 29.038103, 43.212448>,  <35.797836, 29.280746, 43.905384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944630, 29.038103, 43.212448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549393, 29.014811, 43.269413>,  <35.312252, 29.000835, 43.303593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549393, 29.014811, 43.269413>,  <35.944630, 29.038103, 43.212448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549393, 29.014811, 43.269413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148186, 0.609213, -0.779038,
		-0.041396, -0.790866, -0.610588,
		-0.988093, -0.058232, 0.142414,
		35.252964, 28.997341, 43.312138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723160, 28.930756, 42.574867>,  <35.944630, 29.038103, 43.212448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723160, 28.930756, 42.574867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409019, 29.060904, 42.785526>,  <35.220535, 29.138992, 42.911922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409019, 29.060904, 42.785526>,  <35.723160, 28.930756, 42.574867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409019, 29.060904, 42.785526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356310, 0.458110, -0.814358,
		-0.506230, -0.827207, -0.243845,
		-0.785350, 0.325368, 0.526651,
		35.173416, 29.158514, 42.943523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073334, 28.847944, 42.086658>,  <35.723160, 28.930756, 42.574867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073334, 28.847944, 42.086658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975353, 29.119249, 42.363773>,  <34.916565, 29.282032, 42.530045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975353, 29.119249, 42.363773>,  <35.073334, 28.847944, 42.086658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975353, 29.119249, 42.363773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457125, 0.549352, -0.699463,
		-0.855005, -0.488029, 0.175484,
		-0.244956, 0.678262, 0.692789,
		34.901867, 29.322727, 42.571609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310379, 28.966101, 41.955811>,  <35.073334, 28.847944, 42.086658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310379, 28.966101, 41.955811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463165, 29.276508, 42.156567>,  <34.554836, 29.462753, 42.277020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463165, 29.276508, 42.156567>,  <34.310379, 28.966101, 41.955811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463165, 29.276508, 42.156567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496068, 0.630362, -0.597127,
		-0.779756, -0.020890, 0.625735,
		0.381966, 0.776020, 0.501891,
		34.577755, 29.509314, 42.307133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723625, 29.413942, 42.088367>,  <34.310379, 28.966101, 41.955811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723625, 29.413942, 42.088367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025997, 29.669468, 42.145611>,  <34.207420, 29.822783, 42.179955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025997, 29.669468, 42.145611>,  <33.723625, 29.413942, 42.088367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025997, 29.669468, 42.145611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434804, 0.653354, -0.619737,
		-0.489395, 0.406258, 0.771652,
		0.755935, 0.638814, 0.143106,
		34.252777, 29.861113, 42.188541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478004, 30.007202, 41.962051>,  <33.723625, 29.413942, 42.088367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478004, 30.007202, 41.962051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858990, 30.126471, 41.937016>,  <34.087582, 30.198032, 41.921993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858990, 30.126471, 41.937016>,  <33.478004, 30.007202, 41.962051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858990, 30.126471, 41.937016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250738, 0.650456, -0.716964,
		-0.173069, 0.698571, 0.694295,
		0.952459, 0.298170, -0.062585,
		34.144726, 30.215921, 41.918240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396992, 30.741837, 41.939449>,  <33.478004, 30.007202, 41.962051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396992, 30.741837, 41.939449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770828, 30.688919, 41.807362>,  <33.995129, 30.657169, 41.728111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770828, 30.688919, 41.807362>,  <33.396992, 30.741837, 41.939449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770828, 30.688919, 41.807362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173372, 0.641174, -0.747555,
		0.310621, 0.755907, 0.576298,
		0.934589, -0.132292, -0.330215,
		34.051205, 30.649231, 41.708298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684277, 31.406429, 41.921543>,  <33.396992, 30.741837, 41.939449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684277, 31.406429, 41.921543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889137, 31.176092, 41.666637>,  <34.012054, 31.037889, 41.513695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889137, 31.176092, 41.666637>,  <33.684277, 31.406429, 41.921543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889137, 31.176092, 41.666637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133388, 0.679629, -0.721327,
		0.848471, 0.454435, 0.271265,
		0.512156, -0.575842, -0.637262,
		34.042786, 31.003340, 41.475460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978184, 31.852119, 41.515404>,  <33.684277, 31.406429, 41.921543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978184, 31.852119, 41.515404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038818, 31.538492, 41.274654>,  <34.075199, 31.350315, 41.130203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038818, 31.538492, 41.274654>,  <33.978184, 31.852119, 41.515404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038818, 31.538492, 41.274654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076111, 0.597846, -0.797990,
		0.985509, 0.166777, 0.030952,
		0.151591, -0.784070, -0.601876,
		34.084297, 31.303270, 41.094093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422287, 32.092564, 41.048744>,  <33.978184, 31.852119, 41.515404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422287, 32.092564, 41.048744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284348, 31.756380, 40.881550>,  <34.201584, 31.554670, 40.781235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284348, 31.756380, 40.881550>,  <34.422287, 32.092564, 41.048744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284348, 31.756380, 40.881550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102782, 0.476432, -0.873183,
		0.933013, -0.258156, -0.250682,
		-0.344850, -0.840457, -0.417983,
		34.180893, 31.504244, 40.756153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769009, 32.001938, 40.359806>,  <34.422287, 32.092564, 41.048744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769009, 32.001938, 40.359806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423473, 31.800497, 40.365032>,  <34.216152, 31.679632, 40.368168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423473, 31.800497, 40.365032>,  <34.769009, 32.001938, 40.359806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423473, 31.800497, 40.365032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296113, 0.486602, -0.821909,
		0.407553, -0.713867, -0.569468,
		-0.863839, -0.503598, 0.013070,
		34.164322, 31.649418, 40.368954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773991, 31.695375, 39.736877>,  <34.769009, 32.001938, 40.359806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773991, 31.695375, 39.736877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389278, 31.700464, 39.846283>,  <34.158451, 31.703518, 39.911926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389278, 31.700464, 39.846283>,  <34.773991, 31.695375, 39.736877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389278, 31.700464, 39.846283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231562, 0.495286, -0.837300,
		-0.146122, -0.868637, -0.473412,
		-0.961784, 0.012723, 0.273515,
		34.100742, 31.704281, 39.928337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443211, 31.322163, 39.299320>,  <34.773991, 31.695375, 39.736877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443211, 31.322163, 39.299320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174419, 31.571436, 39.459362>,  <34.013145, 31.721001, 39.555386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174419, 31.571436, 39.459362>,  <34.443211, 31.322163, 39.299320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174419, 31.571436, 39.459362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228909, 0.339022, -0.912505,
		-0.704303, -0.704772, -0.085163,
		-0.671980, 0.623186, 0.400103,
		33.972824, 31.758392, 39.579391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812283, 31.188618, 38.853271>,  <34.443211, 31.322163, 39.299320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812283, 31.188618, 38.853271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741230, 31.522224, 39.062218>,  <33.698601, 31.722389, 39.187584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741230, 31.522224, 39.062218>,  <33.812283, 31.188618, 38.853271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741230, 31.522224, 39.062218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079193, 0.516969, -0.852333,
		-0.980906, -0.192766, -0.025780,
		-0.177628, 0.834017, 0.522364,
		33.687943, 31.772429, 39.218925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120560, 31.417988, 38.579765>,  <33.812283, 31.188618, 38.853271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120560, 31.417988, 38.579765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305511, 31.730413, 38.747643>,  <33.416481, 31.917870, 38.848370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305511, 31.730413, 38.747643>,  <33.120560, 31.417988, 38.579765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305511, 31.730413, 38.747643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146697, 0.534195, -0.832536,
		-0.874464, 0.323378, 0.361580,
		0.462377, 0.781065, 0.419695,
		33.444225, 31.964733, 38.873550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642262, 31.990631, 38.644573>,  <33.120560, 31.417988, 38.579765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642262, 31.990631, 38.644573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009617, 32.148861, 38.641033>,  <33.230030, 32.243797, 38.638908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009617, 32.148861, 38.641033>,  <32.642262, 31.990631, 38.644573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009617, 32.148861, 38.641033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273601, 0.618743, -0.736410,
		-0.285831, 0.678733, 0.676477,
		0.918391, 0.395574, -0.008846,
		33.285133, 32.267532, 38.638378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521618, 32.724697, 38.655476>,  <32.642262, 31.990631, 38.644573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521618, 32.724697, 38.655476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901009, 32.699097, 38.531353>,  <33.128643, 32.683735, 38.456879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901009, 32.699097, 38.531353>,  <32.521618, 32.724697, 38.655476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901009, 32.699097, 38.531353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219308, 0.574219, -0.788782,
		0.228668, 0.816196, 0.530599,
		0.948480, -0.064005, -0.310304,
		33.185555, 32.679893, 38.438263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744682, 33.428783, 38.454956>,  <32.521618, 32.724697, 38.655476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744682, 33.428783, 38.454956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031517, 33.210091, 38.282040>,  <33.203617, 33.078876, 38.178288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031517, 33.210091, 38.282040>,  <32.744682, 33.428783, 38.454956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031517, 33.210091, 38.282040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091898, 0.540652, -0.836212,
		0.690902, 0.639361, 0.337449,
		0.717083, -0.546730, -0.432294,
		33.246643, 33.046070, 38.152351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123348, 34.005192, 38.070114>,  <32.744682, 33.428783, 38.454956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123348, 34.005192, 38.070114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204250, 33.641243, 37.925217>,  <33.252792, 33.422874, 37.838280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204250, 33.641243, 37.925217>,  <33.123348, 34.005192, 38.070114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204250, 33.641243, 37.925217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241560, 0.312110, -0.918823,
		0.949074, 0.273342, -0.156663,
		0.202257, -0.909874, -0.362244,
		33.264927, 33.368282, 37.816544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642101, 34.119595, 37.538971>,  <33.123348, 34.005192, 38.070114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642101, 34.119595, 37.538971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414078, 33.801167, 37.457672>,  <33.277264, 33.610111, 37.408894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414078, 33.801167, 37.457672>,  <33.642101, 34.119595, 37.538971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414078, 33.801167, 37.457672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293901, 0.428592, -0.854360,
		0.767242, -0.427296, -0.478287,
		-0.570054, -0.796070, -0.203251,
		33.243061, 33.562347, 37.396698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921707, 33.889946, 36.884464>,  <33.642101, 34.119595, 37.538971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921707, 33.889946, 36.884464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547417, 33.771240, 36.960720>,  <33.322842, 33.700016, 37.006474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547417, 33.771240, 36.960720>,  <33.921707, 33.889946, 36.884464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547417, 33.771240, 36.960720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322437, 0.500590, -0.803395,
		0.142987, -0.813229, -0.564104,
		-0.935729, -0.296763, 0.190638,
		33.266697, 33.682213, 37.017910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603104, 33.549549, 37.312714>,  <33.921707, 33.889946, 36.884464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603104, 33.549549, 37.312714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954704, 33.502686, 37.127831>,  <35.165665, 33.474567, 37.016899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954704, 33.502686, 37.127831>,  <34.603104, 33.549549, 37.312714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954704, 33.502686, 37.127831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275506, -0.666377, 0.692848,
		-0.389175, -0.736353, -0.553468,
		0.878999, -0.117155, -0.462207,
		35.218403, 33.467541, 36.989170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660469, 32.830757, 37.249203>,  <34.603104, 33.549549, 37.312714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660469, 32.830757, 37.249203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022781, 32.997143, 37.216858>,  <35.240170, 33.096973, 37.197453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022781, 32.997143, 37.216858>,  <34.660469, 32.830757, 37.249203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022781, 32.997143, 37.216858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347979, -0.621242, 0.702117,
		0.241822, -0.664101, -0.707455,
		0.905777, 0.415967, -0.080863,
		35.294514, 33.121933, 37.192600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124371, 32.253529, 37.101837>,  <34.660469, 32.830757, 37.249203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124371, 32.253529, 37.101837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326557, 32.563004, 37.254627>,  <35.447868, 32.748688, 37.346302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326557, 32.563004, 37.254627>,  <35.124371, 32.253529, 37.101837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326557, 32.563004, 37.254627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308812, -0.575586, 0.757190,
		0.805689, -0.264778, -0.529866,
		0.505470, 0.773688, 0.381977,
		35.478199, 32.795109, 37.369221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762405, 31.983994, 37.133190>,  <35.124371, 32.253529, 37.101837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762405, 31.983994, 37.133190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780087, 32.307579, 37.367668>,  <35.790695, 32.501732, 37.508354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780087, 32.307579, 37.367668>,  <35.762405, 31.983994, 37.133190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780087, 32.307579, 37.367668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540857, -0.512718, 0.666779,
		0.839953, 0.287577, -0.460195,
		0.044200, 0.808962, 0.586197,
		35.793346, 32.550266, 37.543526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458134, 32.036911, 37.290905>,  <35.762405, 31.983994, 37.133190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458134, 32.036911, 37.290905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224049, 32.206417, 37.567440>,  <36.083595, 32.308121, 37.733360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224049, 32.206417, 37.567440>,  <36.458134, 32.036911, 37.290905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224049, 32.206417, 37.567440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387725, -0.602567, 0.697555,
		0.712174, 0.676269, 0.188329,
		-0.585216, 0.423761, 0.691339,
		36.048485, 32.333546, 37.774841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894413, 32.219524, 37.812172>,  <36.458134, 32.036911, 37.290905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894413, 32.219524, 37.812172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548367, 32.220917, 38.012794>,  <36.340736, 32.221752, 38.133167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548367, 32.220917, 38.012794>,  <36.894413, 32.219524, 37.812172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548367, 32.220917, 38.012794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390398, -0.623138, 0.677708,
		0.314893, 0.782104, 0.537732,
		-0.865120, 0.003476, 0.501554,
		36.288830, 32.221958, 38.163261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132965, 32.407269, 38.499233>,  <36.894413, 32.219524, 37.812172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132965, 32.407269, 38.499233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764126, 32.254143, 38.521801>,  <36.542820, 32.162270, 38.535343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764126, 32.254143, 38.521801>,  <37.132965, 32.407269, 38.499233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764126, 32.254143, 38.521801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298080, -0.609767, 0.734393,
		-0.246730, 0.694003, 0.676375,
		-0.922102, -0.382811, 0.056421,
		36.487495, 32.139301, 38.538727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150742, 32.306828, 39.138592>,  <37.132965, 32.407269, 38.499233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150742, 32.306828, 39.138592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835423, 32.094311, 39.014454>,  <36.646233, 31.966801, 38.939972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835423, 32.094311, 39.014454>,  <37.150742, 32.306828, 39.138592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835423, 32.094311, 39.014454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167821, -0.670918, 0.722292,
		-0.591966, 0.517298, 0.618045,
		-0.788298, -0.531293, -0.310347,
		36.598934, 31.934923, 38.921349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731922, 32.151688, 39.804981>,  <37.150742, 32.306828, 39.138592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731922, 32.151688, 39.804981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668579, 31.883320, 39.515213>,  <36.630573, 31.722298, 39.341351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668579, 31.883320, 39.515213>,  <36.731922, 32.151688, 39.804981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668579, 31.883320, 39.515213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051775, -0.727026, 0.684655,
		-0.986024, 0.145927, 0.080392,
		-0.158357, -0.670924, -0.724420,
		36.621071, 31.682043, 39.297886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247250, 31.719345, 39.991531>,  <36.731922, 32.151688, 39.804981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247250, 31.719345, 39.991531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425667, 31.490774, 39.715988>,  <36.532719, 31.353632, 39.550663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425667, 31.490774, 39.715988>,  <36.247250, 31.719345, 39.991531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425667, 31.490774, 39.715988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000621, -0.769856, 0.638217,
		-0.895012, -0.284244, -0.343743,
		0.446042, -0.571425, -0.688853,
		36.559479, 31.319347, 39.509331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927727, 31.060038, 40.133755>,  <36.247250, 31.719345, 39.991531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927727, 31.060038, 40.133755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244427, 30.980959, 39.902569>,  <36.434448, 30.933512, 39.763859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244427, 30.980959, 39.902569>,  <35.927727, 31.060038, 40.133755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244427, 30.980959, 39.902569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255271, -0.752507, 0.607099,
		-0.554942, -0.628211, -0.545335,
		0.791755, -0.197697, -0.577962,
		36.481953, 30.921650, 39.729179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929794, 30.388723, 40.030323>,  <35.927727, 31.060038, 40.133755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929794, 30.388723, 40.030323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311848, 30.482361, 39.957748>,  <36.541080, 30.538544, 39.914204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311848, 30.482361, 39.957748>,  <35.929794, 30.388723, 40.030323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311848, 30.482361, 39.957748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290510, -0.859744, 0.420052,
		-0.057658, -0.453915, -0.889177,
		0.955133, 0.234096, -0.181438,
		36.598389, 30.552589, 39.903316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315079, 29.881334, 39.562252>,  <35.929794, 30.388723, 40.030323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315079, 29.881334, 39.562252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577312, 30.055967, 39.808701>,  <36.734653, 30.160748, 39.956570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577312, 30.055967, 39.808701>,  <36.315079, 29.881334, 39.562252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577312, 30.055967, 39.808701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228832, -0.892417, 0.388880,
		0.719612, -0.113957, -0.684961,
		0.655587, 0.436584, 0.616117,
		36.773987, 30.186943, 39.993534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716042, 29.301870, 39.783337>,  <36.315079, 29.881334, 39.562252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716042, 29.301870, 39.783337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860722, 29.594299, 40.014751>,  <36.947529, 29.769756, 40.153599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860722, 29.594299, 40.014751>,  <36.716042, 29.301870, 39.783337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860722, 29.594299, 40.014751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348686, -0.681596, 0.643308,
		0.864633, -0.030959, -0.501450,
		0.361703, 0.731074, 0.578535,
		36.969231, 29.813622, 40.188313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468914, 29.251717, 39.931767>,  <36.716042, 29.301870, 39.783337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468914, 29.251717, 39.931767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336403, 29.480080, 40.232250>,  <37.256897, 29.617098, 40.412540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336403, 29.480080, 40.232250>,  <37.468914, 29.251717, 39.931767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336403, 29.480080, 40.232250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267958, -0.706459, 0.655067,
		0.904683, 0.418305, 0.081058,
		-0.331282, 0.570908, 0.751210,
		37.237019, 29.651352, 40.457615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975800, 29.214348, 40.372444>,  <37.468914, 29.251717, 39.931767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975800, 29.214348, 40.372444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681801, 29.358038, 40.602482>,  <37.505402, 29.444252, 40.740505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681801, 29.358038, 40.602482>,  <37.975800, 29.214348, 40.372444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681801, 29.358038, 40.602482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363736, -0.506907, 0.781499,
		0.572254, 0.783584, 0.241913,
		-0.734998, 0.359223, 0.575097,
		37.461300, 29.465805, 40.775009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210930, 29.436579, 41.104939>,  <37.975800, 29.214348, 40.372444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210930, 29.436579, 41.104939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822918, 29.355385, 41.158367>,  <37.590111, 29.306669, 41.190426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822918, 29.355385, 41.158367>,  <38.210930, 29.436579, 41.104939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822918, 29.355385, 41.158367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221054, -0.508904, 0.831957,
		-0.100898, 0.836549, 0.538522,
		-0.970028, -0.202985, 0.133575,
		37.531910, 29.294489, 41.198441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139999, 29.609348, 41.736034>,  <38.210930, 29.436579, 41.104939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139999, 29.609348, 41.736034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804218, 29.400560, 41.675545>,  <37.602749, 29.275288, 41.639252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804218, 29.400560, 41.675545>,  <38.139999, 29.609348, 41.736034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804218, 29.400560, 41.675545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013357, -0.298001, 0.954472,
		-0.543269, 0.799214, 0.257130,
		-0.839453, -0.521969, -0.151219,
		37.552383, 29.243969, 41.630180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816975, 29.640745, 42.292038>,  <38.139999, 29.609348, 41.736034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816975, 29.640745, 42.292038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619732, 29.329893, 42.135620>,  <37.501385, 29.143383, 42.041771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619732, 29.329893, 42.135620>,  <37.816975, 29.640745, 42.292038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619732, 29.329893, 42.135620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105659, -0.499661, 0.859753,
		-0.863526, 0.382637, 0.328499,
		-0.493111, -0.777128, -0.391042,
		37.471798, 29.096754, 42.018307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328468, 29.520273, 42.794289>,  <37.816975, 29.640745, 42.292038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328468, 29.520273, 42.794289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400188, 29.196560, 42.570534>,  <37.443222, 29.002333, 42.436279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400188, 29.196560, 42.570534>,  <37.328468, 29.520273, 42.794289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400188, 29.196560, 42.570534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153916, -0.538524, 0.828433,
		-0.971679, -0.234638, 0.028003,
		0.179302, -0.809282, -0.559387,
		37.453979, 28.953775, 42.402718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765026, 28.893475, 42.916462>,  <37.328468, 29.520273, 42.794289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765026, 28.893475, 42.916462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116558, 28.757540, 42.782501>,  <37.327477, 28.675980, 42.702126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116558, 28.757540, 42.782501>,  <36.765026, 28.893475, 42.916462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116558, 28.757540, 42.782501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013892, -0.683394, 0.729918,
		-0.476924, -0.646130, -0.595869,
		0.878835, -0.339837, -0.334903,
		37.380207, 28.655588, 42.682030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736069, 28.305538, 43.178093>,  <36.765026, 28.893475, 42.916462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736069, 28.305538, 43.178093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120811, 28.326897, 43.070770>,  <37.351658, 28.339712, 43.006378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120811, 28.326897, 43.070770>,  <36.736069, 28.305538, 43.178093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120811, 28.326897, 43.070770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228570, -0.695762, 0.680934,
		-0.150320, -0.716285, -0.681425,
		0.961852, 0.053396, -0.268308,
		37.409367, 28.342915, 42.990276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880051, 27.579592, 43.170918>,  <36.736069, 28.305538, 43.178093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880051, 27.579592, 43.170918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221897, 27.786493, 43.189137>,  <37.427006, 27.910635, 43.200066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221897, 27.786493, 43.189137>,  <36.880051, 27.579592, 43.170918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221897, 27.786493, 43.189137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345633, -0.632129, 0.693507,
		0.387509, -0.576942, -0.719009,
		0.854620, 0.517254, 0.045545,
		37.478283, 27.941669, 43.202801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446480, 27.125940, 43.046146>,  <36.880051, 27.579592, 43.170918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446480, 27.125940, 43.046146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553303, 27.429192, 43.284111>,  <37.617397, 27.611143, 43.426891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553303, 27.429192, 43.284111>,  <37.446480, 27.125940, 43.046146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553303, 27.429192, 43.284111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375043, -0.650431, 0.660517,
		0.887707, 0.046722, -0.458033,
		0.267058, 0.758128, 0.594914,
		37.633419, 27.656630, 43.462585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159588, 26.860624, 43.339550>,  <37.446480, 27.125940, 43.046146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159588, 26.860624, 43.339550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042538, 27.156893, 43.581467>,  <37.972305, 27.334654, 43.726616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042538, 27.156893, 43.581467>,  <38.159588, 26.860624, 43.339550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042538, 27.156893, 43.581467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284668, -0.536325, 0.794556,
		0.912870, 0.404676, -0.053901,
		-0.292629, 0.740671, 0.604793,
		37.954750, 27.379093, 43.762905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641586, 26.983059, 43.921009>,  <38.159588, 26.860624, 43.339550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641586, 26.983059, 43.921009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353828, 27.202175, 44.091839>,  <38.181171, 27.333645, 44.194336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353828, 27.202175, 44.091839>,  <38.641586, 26.983059, 43.921009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353828, 27.202175, 44.091839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359017, -0.233108, 0.903752,
		0.594622, 0.803484, -0.028969,
		-0.719397, 0.547791, 0.427076,
		38.138008, 27.366512, 44.219963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004494, 27.303522, 44.406364>,  <38.641586, 26.983059, 43.921009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004494, 27.303522, 44.406364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619377, 27.298466, 44.514339>,  <38.388306, 27.295431, 44.579124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619377, 27.298466, 44.514339>,  <39.004494, 27.303522, 44.406364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619377, 27.298466, 44.514339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268180, -0.167618, 0.948675,
		0.033253, 0.985771, 0.164772,
		-0.962795, -0.012642, 0.269938,
		38.330540, 27.294674, 44.595322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070213, 27.733114, 44.976181>,  <39.004494, 27.303522, 44.406364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070213, 27.733114, 44.976181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718117, 27.545513, 45.005039>,  <38.506859, 27.432953, 45.022354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718117, 27.545513, 45.005039>,  <39.070213, 27.733114, 44.976181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718117, 27.545513, 45.005039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128833, -0.089886, 0.987584,
		-0.456694, 0.878612, 0.139544,
		-0.880246, -0.469001, 0.072144,
		38.454044, 27.404812, 45.026684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602531, 28.120365, 45.503555>,  <39.070213, 27.733114, 44.976181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602531, 28.120365, 45.503555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503784, 27.733677, 45.476700>,  <38.444534, 27.501663, 45.460587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503784, 27.733677, 45.476700>,  <38.602531, 28.120365, 45.503555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503784, 27.733677, 45.476700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112545, -0.097419, 0.988859,
		-0.962491, 0.236563, 0.132849,
		-0.246869, -0.966720, -0.067141,
		38.429722, 27.443661, 45.456558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327114, 27.979815, 46.092571>,  <38.602531, 28.120365, 45.503555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327114, 27.979815, 46.092571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373905, 27.596731, 45.987415>,  <38.401981, 27.366880, 45.924320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373905, 27.596731, 45.987415>,  <38.327114, 27.979815, 46.092571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373905, 27.596731, 45.987415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236914, -0.230154, 0.943875,
		-0.964462, -0.172696, 0.199971,
		0.116979, -0.957708, -0.262889,
		38.409000, 27.309420, 45.908550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899227, 27.565437, 46.626205>,  <38.327114, 27.979815, 46.092571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899227, 27.565437, 46.626205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131573, 27.291290, 46.450539>,  <38.270981, 27.126802, 46.345139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131573, 27.291290, 46.450539>,  <37.899227, 27.565437, 46.626205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131573, 27.291290, 46.450539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234442, -0.375792, 0.896559,
		-0.779507, -0.623739, -0.057606,
		0.580867, -0.685368, -0.439163,
		38.305832, 27.085680, 46.318790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728096, 26.936909, 46.867874>,  <37.899227, 27.565437, 46.626205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728096, 26.936909, 46.867874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110508, 26.877380, 46.766792>,  <38.339954, 26.841663, 46.706142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110508, 26.877380, 46.766792>,  <37.728096, 26.936909, 46.867874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110508, 26.877380, 46.766792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168307, -0.427227, 0.888341,
		-0.240166, -0.891813, -0.383394,
		0.956030, -0.148821, -0.252704,
		38.397316, 26.832733, 46.690983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944988, 26.239969, 47.209190>,  <37.728096, 26.936909, 46.867874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944988, 26.239969, 47.209190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284916, 26.432367, 47.122978>,  <38.488873, 26.547806, 47.071251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284916, 26.432367, 47.122978>,  <37.944988, 26.239969, 47.209190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284916, 26.432367, 47.122978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444862, -0.435245, 0.782726,
		0.282680, -0.761055, -0.583855,
		0.849818, 0.480996, -0.215529,
		38.539860, 26.576666, 47.058319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484318, 25.745285, 47.241196>,  <37.944988, 26.239969, 47.209190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484318, 25.745285, 47.241196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669643, 26.095722, 47.294571>,  <38.780838, 26.305984, 47.326595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669643, 26.095722, 47.294571>,  <38.484318, 25.745285, 47.241196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669643, 26.095722, 47.294571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425509, -0.352008, 0.833686,
		0.777358, -0.329475, -0.535874,
		0.463311, 0.876092, 0.133441,
		38.808636, 26.358549, 47.334602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123280, 25.588184, 47.496735>,  <38.484318, 25.745285, 47.241196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123280, 25.588184, 47.496735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079460, 25.974361, 47.591320>,  <39.053169, 26.206068, 47.648071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079460, 25.974361, 47.591320>,  <39.123280, 25.588184, 47.496735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079460, 25.974361, 47.591320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350612, -0.185075, 0.918051,
		0.930092, 0.183478, -0.318222,
		-0.109548, 0.965444, 0.236466,
		39.046597, 26.263994, 47.662258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744267, 25.721937, 47.892826>,  <39.123280, 25.588184, 47.496735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744267, 25.721937, 47.892826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496826, 26.018438, 47.997044>,  <39.348362, 26.196339, 48.059574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496826, 26.018438, 47.997044>,  <39.744267, 25.721937, 47.892826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496826, 26.018438, 47.997044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299157, -0.084419, 0.950462,
		0.726528, 0.665895, -0.169530,
		-0.618597, 0.741254, 0.260540,
		39.311249, 26.240814, 48.075207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051571, 26.258636, 48.321438>,  <39.744267, 25.721937, 47.892826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051571, 26.258636, 48.321438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661015, 26.268753, 48.407249>,  <39.426682, 26.274824, 48.458736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661015, 26.268753, 48.407249>,  <40.051571, 26.258636, 48.321438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661015, 26.268753, 48.407249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215643, 0.055797, 0.974877,
		0.012687, 0.998122, -0.059934,
		-0.976390, 0.025293, 0.214530,
		39.368099, 26.276340, 48.471607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964149, 26.593582, 49.082344>,  <40.051571, 26.258636, 48.321438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964149, 26.593582, 49.082344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190819, 26.837337, 49.304165>,  <40.326820, 26.983591, 49.437260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190819, 26.837337, 49.304165>,  <39.964149, 26.593582, 49.082344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190819, 26.837337, 49.304165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100202, 0.617083, -0.780492,
		-0.817828, 0.497850, 0.288621,
		0.566671, 0.609388, 0.554554,
		40.360821, 27.020153, 49.470531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765659, 27.260435, 48.981518>,  <39.964149, 26.593582, 49.082344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765659, 27.260435, 48.981518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139130, 27.283304, 49.122932>,  <40.363213, 27.297026, 49.207783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139130, 27.283304, 49.122932>,  <39.765659, 27.260435, 48.981518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139130, 27.283304, 49.122932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245226, 0.617372, -0.747474,
		-0.260999, 0.784591, 0.562402,
		0.933672, 0.057175, 0.353536,
		40.419231, 27.300457, 49.228992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009960, 27.997608, 49.019936>,  <39.765659, 27.260435, 48.981518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009960, 27.997608, 49.019936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316635, 27.746109, 48.967979>,  <40.500641, 27.595209, 48.936806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316635, 27.746109, 48.967979>,  <40.009960, 27.997608, 49.019936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316635, 27.746109, 48.967979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317722, 0.547369, -0.774235,
		0.557896, 0.552325, 0.619426,
		0.766684, -0.628748, -0.129889,
		40.546638, 27.557484, 48.929012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538918, 28.401360, 48.939285>,  <40.009960, 27.997608, 49.019936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538918, 28.401360, 48.939285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664349, 28.055283, 48.782764>,  <40.739605, 27.847637, 48.688850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664349, 28.055283, 48.782764>,  <40.538918, 28.401360, 48.939285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664349, 28.055283, 48.782764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375156, 0.491439, -0.785968,
		0.872313, 0.099660, 0.478684,
		0.313574, -0.865191, -0.391301,
		40.758419, 27.795725, 48.665375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219311, 28.568321, 48.655766>,  <40.538918, 28.401360, 48.939285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219311, 28.568321, 48.655766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089603, 28.246187, 48.457256>,  <41.011780, 28.052908, 48.338150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089603, 28.246187, 48.457256>,  <41.219311, 28.568321, 48.655766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089603, 28.246187, 48.457256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298610, 0.410655, -0.861507,
		0.897598, -0.427553, 0.107317,
		-0.324269, -0.805333, -0.496274,
		40.992321, 28.004587, 48.308372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653107, 28.606304, 48.157108>,  <41.219311, 28.568321, 48.655766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653107, 28.606304, 48.157108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395378, 28.327589, 48.031040>,  <41.240742, 28.160360, 47.955399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395378, 28.327589, 48.031040>,  <41.653107, 28.606304, 48.157108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395378, 28.327589, 48.031040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153762, 0.285667, -0.945913,
		0.749134, -0.657937, -0.076923,
		-0.644325, -0.696788, -0.315168,
		41.202080, 28.118553, 47.936489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025333, 28.192997, 47.691929>,  <41.653107, 28.606304, 48.157108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025333, 28.192997, 47.691929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631115, 28.170237, 47.628113>,  <41.394585, 28.156580, 47.589825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631115, 28.170237, 47.628113>,  <42.025333, 28.192997, 47.691929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631115, 28.170237, 47.628113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138462, 0.271881, -0.952317,
		0.097562, -0.960647, -0.260075,
		-0.985550, -0.056899, -0.159539,
		41.335449, 28.153166, 47.580250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943077, 27.899069, 47.024521>,  <42.025333, 28.192997, 47.691929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943077, 27.899069, 47.024521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575470, 28.048738, 47.074162>,  <41.354904, 28.138540, 47.103947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575470, 28.048738, 47.074162>,  <41.943077, 27.899069, 47.024521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575470, 28.048738, 47.074162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064838, 0.167043, -0.983815,
		-0.388850, -0.912189, -0.129255,
		-0.919017, 0.374176, 0.124099,
		41.299767, 28.160992, 47.111393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490677, 27.604034, 46.477932>,  <41.943077, 27.899069, 47.024521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490677, 27.604034, 46.477932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337677, 27.950882, 46.605556>,  <41.245876, 28.158991, 46.682129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337677, 27.950882, 46.605556>,  <41.490677, 27.604034, 46.477932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337677, 27.950882, 46.605556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016441, 0.351650, -0.935987,
		-0.923809, -0.352770, -0.148762,
		-0.382500, 0.867119, 0.319058,
		41.222927, 28.211018, 46.701275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866215, 27.733067, 46.019768>,  <41.490677, 27.604034, 46.477932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866215, 27.733067, 46.019768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979355, 28.085552, 46.171272>,  <41.047241, 28.297043, 46.262173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979355, 28.085552, 46.171272>,  <40.866215, 27.733067, 46.019768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979355, 28.085552, 46.171272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123014, 0.424951, -0.896819,
		-0.951242, 0.207076, 0.228600,
		0.282854, 0.881213, 0.378758,
		41.064213, 28.349916, 46.284901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436802, 28.195488, 45.698509>,  <40.866215, 27.733067, 46.019768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436802, 28.195488, 45.698509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703545, 28.454029, 45.846851>,  <40.863590, 28.609154, 45.935856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703545, 28.454029, 45.846851>,  <40.436802, 28.195488, 45.698509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703545, 28.454029, 45.846851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181449, 0.623528, -0.760453,
		-0.722759, 0.439820, 0.533082,
		0.666855, 0.646352, 0.370855,
		40.903603, 28.647934, 45.958107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149025, 28.893379, 45.689720>,  <40.436802, 28.195488, 45.698509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149025, 28.893379, 45.689720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546097, 28.934080, 45.663696>,  <40.784340, 28.958500, 45.648083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546097, 28.934080, 45.663696>,  <40.149025, 28.893379, 45.689720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546097, 28.934080, 45.663696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120057, 0.772657, -0.623368,
		-0.013158, 0.626617, 0.779217,
		0.992680, 0.101753, -0.065063,
		40.843903, 28.964605, 45.644176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259544, 29.521158, 45.728897>,  <40.149025, 28.893379, 45.689720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259544, 29.521158, 45.728897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579304, 29.384663, 45.531101>,  <40.771160, 29.302765, 45.412422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579304, 29.384663, 45.531101>,  <40.259544, 29.521158, 45.728897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579304, 29.384663, 45.531101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198798, 0.626452, -0.753683,
		0.566962, 0.700794, 0.432945,
		0.799396, -0.341241, -0.494491,
		40.819122, 29.282290, 45.382755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480785, 30.083117, 45.314098>,  <40.259544, 29.521158, 45.728897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480785, 30.083117, 45.314098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648666, 29.766649, 45.136150>,  <40.749393, 29.576769, 45.029381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648666, 29.766649, 45.136150>,  <40.480785, 30.083117, 45.314098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648666, 29.766649, 45.136150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167269, 0.414312, -0.894632,
		0.892118, 0.449888, 0.041549,
		0.419699, -0.791167, -0.444868,
		40.774574, 29.529299, 45.002689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829945, 30.412045, 44.846489>,  <40.480785, 30.083117, 45.314098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829945, 30.412045, 44.846489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852779, 30.036695, 44.710140>,  <40.866478, 29.811485, 44.628330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852779, 30.036695, 44.710140>,  <40.829945, 30.412045, 44.846489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852779, 30.036695, 44.710140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035190, 0.343109, -0.938636,
		0.997749, 0.041587, 0.052608,
		0.057085, -0.938374, -0.340874,
		40.869904, 29.755182, 44.607880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158512, 30.431950, 44.216625>,  <40.829945, 30.412045, 44.846489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158512, 30.431950, 44.216625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980385, 30.078106, 44.161255>,  <40.873508, 29.865799, 44.128033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980385, 30.078106, 44.161255>,  <41.158512, 30.431950, 44.216625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980385, 30.078106, 44.161255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053020, 0.180386, -0.982166,
		0.893803, -0.430033, -0.127230,
		-0.445314, -0.884609, -0.138429,
		40.846790, 29.812723, 44.119724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521893, 30.191797, 43.684311>,  <41.158512, 30.431950, 44.216625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521893, 30.191797, 43.684311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183811, 29.980648, 43.717728>,  <40.980961, 29.853958, 43.737778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183811, 29.980648, 43.717728>,  <41.521893, 30.191797, 43.684311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183811, 29.980648, 43.717728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267948, 0.283289, -0.920843,
		0.462423, -0.800684, -0.380880,
		-0.845204, -0.527875, 0.083542,
		40.930248, 29.822287, 43.742790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475605, 29.746653, 43.036587>,  <41.521893, 30.191797, 43.684311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475605, 29.746653, 43.036587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117661, 29.801949, 43.206348>,  <40.902893, 29.835127, 43.308205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117661, 29.801949, 43.206348>,  <41.475605, 29.746653, 43.036587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117661, 29.801949, 43.206348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377860, 0.271517, -0.885155,
		-0.237599, -0.952454, -0.190733,
		-0.894857, 0.138242, 0.424407,
		40.849205, 29.843420, 43.333672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040203, 29.503008, 42.602879>,  <41.475605, 29.746653, 43.036587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040203, 29.503008, 42.602879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786419, 29.733816, 42.808601>,  <40.634148, 29.872301, 42.932037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786419, 29.733816, 42.808601>,  <41.040203, 29.503008, 42.602879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786419, 29.733816, 42.808601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448719, 0.266829, -0.852909,
		-0.629378, -0.771913, 0.089629,
		-0.634455, 0.577021, 0.514309,
		40.596081, 29.906921, 42.962894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375572, 29.324778, 42.334648>,  <41.040203, 29.503008, 42.602879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375572, 29.324778, 42.334648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334740, 29.678865, 42.516182>,  <40.310242, 29.891319, 42.625103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334740, 29.678865, 42.516182>,  <40.375572, 29.324778, 42.334648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334740, 29.678865, 42.516182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623459, 0.298569, -0.722603,
		-0.775164, -0.356708, 0.521422,
		-0.102078, 0.885221, 0.453832,
		40.304115, 29.944431, 42.652332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774368, 29.444704, 42.172314>,  <40.375572, 29.324778, 42.334648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774368, 29.444704, 42.172314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892822, 29.810266, 42.283367>,  <39.963894, 30.029604, 42.349998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892822, 29.810266, 42.283367>,  <39.774368, 29.444704, 42.172314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892822, 29.810266, 42.283367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458652, 0.391030, -0.797956,
		-0.837820, 0.108965, 0.534962,
		0.296135, 0.913905, 0.277636,
		39.981663, 30.084438, 42.366657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211338, 29.941248, 42.298367>,  <39.774368, 29.444704, 42.172314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211338, 29.941248, 42.298367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528538, 30.152460, 42.176823>,  <39.718857, 30.279186, 42.103897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528538, 30.152460, 42.176823>,  <39.211338, 29.941248, 42.298367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528538, 30.152460, 42.176823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530562, 0.353442, -0.770444,
		-0.299419, 0.772182, 0.560432,
		0.793002, 0.528029, -0.303863,
		39.766438, 30.310869, 42.085663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947166, 30.556404, 42.147274>,  <39.211338, 29.941248, 42.298367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947166, 30.556404, 42.147274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295616, 30.567284, 41.951149>,  <39.504684, 30.573812, 41.833473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295616, 30.567284, 41.951149>,  <38.947166, 30.556404, 42.147274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295616, 30.567284, 41.951149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371897, 0.688577, -0.622539,
		0.320685, 0.724653, 0.609950,
		0.871122, 0.027200, -0.490312,
		39.556953, 30.575443, 41.804054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070324, 31.241308, 42.113422>,  <38.947166, 30.556404, 42.147274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070324, 31.241308, 42.113422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317154, 31.088522, 41.838230>,  <39.465252, 30.996851, 41.673115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317154, 31.088522, 41.838230>,  <39.070324, 31.241308, 42.113422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317154, 31.088522, 41.838230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246325, 0.736590, -0.629888,
		0.747356, 0.558156, 0.360445,
		0.617076, -0.381964, -0.687983,
		39.502277, 30.973932, 41.631836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164696, 31.769644, 41.700977>,  <39.070324, 31.241308, 42.113422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164696, 31.769644, 41.700977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311119, 31.482868, 41.463657>,  <39.398972, 31.310802, 41.321266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311119, 31.482868, 41.463657>,  <39.164696, 31.769644, 41.700977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311119, 31.482868, 41.463657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115753, 0.597518, -0.793457,
		0.923367, 0.359124, 0.135736,
		0.366054, -0.716940, -0.593298,
		39.420937, 31.267786, 41.285667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745796, 32.076283, 41.207230>,  <39.164696, 31.769644, 41.700977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745796, 32.076283, 41.207230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607914, 31.738649, 41.042934>,  <39.525185, 31.536070, 40.944355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607914, 31.738649, 41.042934>,  <39.745796, 32.076283, 41.207230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607914, 31.738649, 41.042934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028624, 0.446806, -0.894173,
		0.938274, -0.296471, -0.178178,
		-0.344707, -0.844079, -0.410740,
		39.504501, 31.485426, 40.919712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963264, 32.178555, 40.561440>,  <39.745796, 32.076283, 41.207230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963264, 32.178555, 40.561440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727913, 31.857447, 40.522717>,  <39.586700, 31.664782, 40.499485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727913, 31.857447, 40.522717>,  <39.963264, 32.178555, 40.561440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727913, 31.857447, 40.522717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078246, 0.175688, -0.981332,
		0.804788, -0.569823, -0.166185,
		-0.588382, -0.802767, -0.096805,
		39.551399, 31.616617, 40.493675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289566, 31.820900, 40.083954>,  <39.963264, 32.178555, 40.561440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289566, 31.820900, 40.083954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907978, 31.700947, 40.082382>,  <39.679028, 31.628975, 40.081440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907978, 31.700947, 40.082382>,  <40.289566, 31.820900, 40.083954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907978, 31.700947, 40.082382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053653, 0.183545, -0.981546,
		0.295072, -0.936152, -0.191185,
		-0.953968, -0.299884, -0.003932,
		39.621788, 31.610983, 40.081203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231640, 31.329798, 39.625015>,  <40.289566, 31.820900, 40.083954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231640, 31.329798, 39.625015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870090, 31.492573, 39.677807>,  <39.653160, 31.590239, 39.709480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870090, 31.492573, 39.677807>,  <40.231640, 31.329798, 39.625015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870090, 31.492573, 39.677807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004599, 0.317721, -0.948173,
		-0.427779, -0.856420, -0.289051,
		-0.903872, 0.406938, 0.131976,
		39.598930, 31.614655, 39.717400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902622, 31.128477, 39.038349>,  <40.231640, 31.329798, 39.625015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902622, 31.128477, 39.038349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701740, 31.440483, 39.187679>,  <39.581211, 31.627687, 39.277279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701740, 31.440483, 39.187679>,  <39.902622, 31.128477, 39.038349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701740, 31.440483, 39.187679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146545, 0.348703, -0.925705,
		-0.852243, -0.519599, -0.060812,
		-0.502201, 0.780014, 0.373325,
		39.551079, 31.674488, 39.299675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391659, 31.244373, 38.565968>,  <39.902622, 31.128477, 39.038349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391659, 31.244373, 38.565968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393314, 31.587830, 38.770992>,  <39.394310, 31.793903, 38.894009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393314, 31.587830, 38.770992>,  <39.391659, 31.244373, 38.565968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393314, 31.587830, 38.770992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307369, 0.488847, -0.816427,
		-0.951582, -0.154164, 0.265944,
		0.004143, 0.858640, 0.512563,
		39.394558, 31.845421, 38.924763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757156, 31.553484, 38.368828>,  <39.391659, 31.244373, 38.565968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757156, 31.553484, 38.368828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990429, 31.837942, 38.525887>,  <39.130390, 32.008617, 38.620121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990429, 31.837942, 38.525887>,  <38.757156, 31.553484, 38.368828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990429, 31.837942, 38.525887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267327, 0.624436, -0.733904,
		-0.767099, 0.323030, 0.554266,
		0.583177, 0.711148, 0.392649,
		39.165382, 32.051285, 38.643681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402580, 32.149658, 38.252552>,  <38.757156, 31.553484, 38.368828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402580, 32.149658, 38.252552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763039, 32.302876, 38.333752>,  <38.979313, 32.394806, 38.382469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763039, 32.302876, 38.333752>,  <38.402580, 32.149658, 38.252552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763039, 32.302876, 38.333752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171427, 0.744965, -0.644701,
		-0.398173, 0.546173, 0.736989,
		0.901150, 0.383042, 0.202996,
		39.033382, 32.417789, 38.394650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384102, 32.898563, 38.235226>,  <38.402580, 32.149658, 38.252552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384102, 32.898563, 38.235226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769238, 32.825157, 38.155964>,  <39.000317, 32.781113, 38.108406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769238, 32.825157, 38.155964>,  <38.384102, 32.898563, 38.235226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769238, 32.825157, 38.155964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042686, 0.827868, -0.559297,
		0.266691, 0.530053, 0.804935,
		0.962836, -0.183519, -0.198159,
		39.058090, 32.770100, 38.096516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645237, 33.552864, 38.040905>,  <38.384102, 32.898563, 38.235226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645237, 33.552864, 38.040905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899902, 33.267284, 37.924328>,  <39.052700, 33.095936, 37.854382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899902, 33.267284, 37.924328>,  <38.645237, 33.552864, 38.040905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899902, 33.267284, 37.924328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203157, 0.519872, -0.829735,
		0.743902, 0.469051, 0.476026,
		0.636660, -0.713950, -0.291443,
		39.090900, 33.053101, 37.836895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251228, 33.828953, 38.072952>,  <38.645237, 33.552864, 38.040905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251228, 33.828953, 38.072952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283745, 33.548244, 37.789852>,  <39.303257, 33.379818, 37.619991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283745, 33.548244, 37.789852>,  <39.251228, 33.828953, 38.072952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283745, 33.548244, 37.789852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138155, 0.711179, -0.689302,
		0.987068, -0.041742, 0.154768,
		0.081295, -0.701770, -0.707749,
		39.308132, 33.337715, 37.577526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680763, 34.136555, 37.613487>,  <39.251228, 33.828953, 38.072952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680763, 34.136555, 37.613487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571491, 33.815311, 37.401680>,  <39.505928, 33.622566, 37.274597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571491, 33.815311, 37.401680>,  <39.680763, 34.136555, 37.613487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571491, 33.815311, 37.401680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265293, 0.466212, -0.843958,
		0.924658, -0.371031, 0.085699,
		-0.273181, -0.803108, -0.529518,
		39.489536, 33.574379, 37.242825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182068, 34.184193, 36.997513>,  <39.680763, 34.136555, 37.613487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182068, 34.184193, 36.997513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879200, 33.947338, 36.887192>,  <39.697479, 33.805225, 36.820999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879200, 33.947338, 36.887192>,  <40.182068, 34.184193, 36.997513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879200, 33.947338, 36.887192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156292, 0.245733, -0.956655,
		0.634247, -0.767454, -0.093515,
		-0.757168, -0.592139, -0.275803,
		39.652050, 33.769695, 36.804451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395134, 33.667995, 36.433739>,  <40.182068, 34.184193, 36.997513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395134, 33.667995, 36.433739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000969, 33.732094, 36.410809>,  <39.764469, 33.770554, 36.397049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000969, 33.732094, 36.410809>,  <40.395134, 33.667995, 36.433739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000969, 33.732094, 36.410809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116746, 0.391350, -0.912807,
		-0.123842, -0.906182, -0.404349,
		-0.985411, 0.160250, -0.057328,
		39.705345, 33.780170, 36.393612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234898, 33.524338, 35.790436>,  <40.395134, 33.667995, 36.433739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234898, 33.524338, 35.790436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898796, 33.714104, 35.895439>,  <39.697136, 33.827961, 35.958443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898796, 33.714104, 35.895439>,  <40.234898, 33.524338, 35.790436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898796, 33.714104, 35.895439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002404, 0.487415, -0.873167,
		-0.542192, -0.733048, -0.410692,
		-0.840251, 0.474411, 0.262510,
		39.646721, 33.856426, 35.974194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881557, 33.498737, 35.184284>,  <40.234898, 33.524338, 35.790436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881557, 33.498737, 35.184284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724201, 33.805264, 35.387463>,  <39.629787, 33.989178, 35.509369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724201, 33.805264, 35.387463>,  <39.881557, 33.498737, 35.184284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724201, 33.805264, 35.387463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076314, 0.577800, -0.812603,
		-0.916198, -0.280907, -0.285782,
		-0.393391, 0.766315, 0.507942,
		39.606182, 34.035156, 35.539845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583263, 33.001682, 35.304855>,  <39.881557, 33.498737, 35.184284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583263, 33.001682, 35.304855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930992, 32.944126, 35.115719>,  <41.139629, 32.909592, 35.002235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930992, 32.944126, 35.115719>,  <40.583263, 33.001682, 35.304855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930992, 32.944126, 35.115719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141294, -0.989109, 0.041225,
		-0.473626, 0.030973, -0.880181,
		0.869318, -0.143890, -0.472844,
		41.191788, 32.900959, 34.973866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504211, 32.439522, 34.747547>,  <40.583263, 33.001682, 35.304855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504211, 32.439522, 34.747547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872417, 32.463924, 34.901909>,  <41.093342, 32.478565, 34.994526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872417, 32.463924, 34.901909>,  <40.504211, 32.439522, 34.747547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872417, 32.463924, 34.901909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008342, -0.984438, 0.175532,
		0.390607, -0.164800, -0.905686,
		0.920520, 0.061009, 0.385904,
		41.148575, 32.482227, 35.017681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002529, 31.930347, 34.483738>,  <40.504211, 32.439522, 34.747547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002529, 31.930347, 34.483738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071812, 32.043701, 34.861031>,  <41.113380, 32.111713, 35.087406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071812, 32.043701, 34.861031>,  <41.002529, 31.930347, 34.483738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071812, 32.043701, 34.861031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013612, -0.958308, 0.285413,
		0.984791, -0.036597, -0.169845,
		0.173209, 0.283384, 0.943235,
		41.123775, 32.128716, 35.144001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565704, 31.628515, 34.725086>,  <41.002529, 31.930347, 34.483738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565704, 31.628515, 34.725086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318356, 31.685810, 35.034176>,  <41.169945, 31.720186, 35.219631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318356, 31.685810, 35.034176>,  <41.565704, 31.628515, 34.725086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318356, 31.685810, 35.034176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155644, -0.941453, 0.299067,
		0.770320, 0.305204, 0.559873,
		-0.618370, 0.143237, 0.772723,
		41.132843, 31.728781, 35.265991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940887, 31.658722, 35.321880>,  <41.565704, 31.628515, 34.725086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940887, 31.658722, 35.321880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573448, 31.530029, 35.413677>,  <41.352985, 31.452814, 35.468754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573448, 31.530029, 35.413677>,  <41.940887, 31.658722, 35.321880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573448, 31.530029, 35.413677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384906, -0.860012, 0.335002,
		0.089583, 0.396065, 0.913842,
		-0.918598, -0.321733, 0.229490,
		41.297871, 31.433510, 35.482525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051369, 32.354691, 35.037560>,  <41.940887, 31.658722, 35.321880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051369, 32.354691, 35.037560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331635, 32.351803, 35.322941>,  <42.499794, 32.350071, 35.494167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331635, 32.351803, 35.322941>,  <42.051369, 32.354691, 35.037560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331635, 32.351803, 35.322941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478007, 0.737612, 0.476904,
		-0.529691, -0.675186, 0.513372,
		0.700668, -0.007216, 0.713451,
		42.541836, 32.349640, 35.536976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730026, 32.603966, 35.584732>,  <42.051369, 32.354691, 35.037560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730026, 32.603966, 35.584732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119049, 32.649284, 35.666019>,  <42.352463, 32.676476, 35.714794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119049, 32.649284, 35.666019>,  <41.730026, 32.603966, 35.584732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119049, 32.649284, 35.666019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196354, 0.868225, 0.455664,
		-0.124817, -0.483062, 0.866644,
		0.972556, 0.113295, 0.203220,
		42.410816, 32.683273, 35.726986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863182, 32.538837, 36.279301>,  <41.730026, 32.603966, 35.584732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863182, 32.538837, 36.279301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125229, 32.790554, 36.112057>,  <42.282455, 32.941582, 36.011711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125229, 32.790554, 36.112057>,  <41.863182, 32.538837, 36.279301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125229, 32.790554, 36.112057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254739, 0.704977, 0.661903,
		0.711309, -0.327093, 0.622133,
		0.655093, 0.629299, -0.418133,
		42.321766, 32.979340, 35.986622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152733, 32.972637, 36.817101>,  <41.863182, 32.538837, 36.279301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152733, 32.972637, 36.817101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276085, 33.210796, 36.520344>,  <42.350094, 33.353691, 36.342289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276085, 33.210796, 36.520344>,  <42.152733, 32.972637, 36.817101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276085, 33.210796, 36.520344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143315, 0.800080, 0.582523,
		0.940407, -0.073312, 0.332055,
		0.308376, 0.595397, -0.741894,
		42.368599, 33.389416, 36.297775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579613, 33.461895, 37.208286>,  <42.152733, 32.972637, 36.817101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579613, 33.461895, 37.208286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503166, 33.624203, 36.850777>,  <42.457298, 33.721588, 36.636272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503166, 33.624203, 36.850777>,  <42.579613, 33.461895, 37.208286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503166, 33.624203, 36.850777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144681, 0.888964, 0.434523,
		0.970845, 0.212357, -0.111191,
		-0.191119, 0.405768, -0.893771,
		42.445831, 33.745934, 36.582645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013752, 33.985283, 37.224777>,  <42.579613, 33.461895, 37.208286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013752, 33.985283, 37.224777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721226, 34.062927, 36.963245>,  <42.545708, 34.109516, 36.806328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721226, 34.062927, 36.963245>,  <43.013752, 33.985283, 37.224777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721226, 34.062927, 36.963245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177646, 0.871341, 0.457391,
		0.658495, 0.450649, -0.602744,
		-0.731318, 0.194114, -0.653830,
		42.501831, 34.121162, 36.767097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120796, 34.704063, 37.058029>,  <43.013752, 33.985283, 37.224777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120796, 34.704063, 37.058029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748871, 34.650490, 36.920910>,  <42.525715, 34.618347, 36.838638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748871, 34.650490, 36.920910>,  <43.120796, 34.704063, 37.058029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748871, 34.650490, 36.920910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292704, 0.833737, 0.468194,
		0.223100, 0.535672, -0.814421,
		-0.929812, -0.133930, -0.342800,
		42.469929, 34.610310, 36.818069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887375, 35.307003, 36.754673>,  <43.120796, 34.704063, 37.058029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887375, 35.307003, 36.754673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543732, 35.114342, 36.823879>,  <42.337543, 34.998745, 36.865402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543732, 35.114342, 36.823879>,  <42.887375, 35.307003, 36.754673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543732, 35.114342, 36.823879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402559, 0.844719, 0.352699,
		-0.316026, 0.233361, -0.919603,
		-0.859112, -0.481656, 0.173011,
		42.285999, 34.969845, 36.875782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369186, 35.735168, 36.427185>,  <42.887375, 35.307003, 36.754673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369186, 35.735168, 36.427185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170189, 35.531281, 36.707954>,  <42.050793, 35.408947, 36.876415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170189, 35.531281, 36.707954>,  <42.369186, 35.735168, 36.427185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170189, 35.531281, 36.707954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548964, 0.811512, 0.200217,
		-0.671670, -0.285722, -0.683537,
		-0.497492, -0.509717, 0.701919,
		42.020943, 35.378365, 36.918530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709423, 35.989384, 36.378193>,  <42.369186, 35.735168, 36.427185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709423, 35.989384, 36.378193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729946, 35.829559, 36.744301>,  <41.742260, 35.733665, 36.963966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729946, 35.829559, 36.744301>,  <41.709423, 35.989384, 36.378193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729946, 35.829559, 36.744301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345545, 0.852769, 0.391643,
		-0.936999, -0.336361, -0.094313,
		0.051307, -0.399558, 0.915271,
		41.745338, 35.709690, 37.018883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068844, 36.245010, 36.726555>,  <41.709423, 35.989384, 36.378193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068844, 36.245010, 36.726555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306305, 36.117233, 37.021996>,  <41.448780, 36.040569, 37.199261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306305, 36.117233, 37.021996>,  <41.068844, 36.245010, 36.726555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306305, 36.117233, 37.021996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201895, 0.829359, 0.520962,
		-0.778986, -0.458390, 0.427855,
		0.593650, -0.319440, 0.738605,
		41.484402, 36.021400, 37.243576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676601, 36.415600, 37.393333>,  <41.068844, 36.245010, 36.726555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676601, 36.415600, 37.393333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048977, 36.349506, 37.523594>,  <41.272404, 36.309849, 37.601749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048977, 36.349506, 37.523594>,  <40.676601, 36.415600, 37.393333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048977, 36.349506, 37.523594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101647, 0.739275, 0.665688,
		-0.350744, -0.652816, 0.671424,
		0.930939, -0.165237, 0.325653,
		41.328259, 36.299934, 37.621288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629932, 36.553284, 38.132771>,  <40.676601, 36.415600, 37.393333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629932, 36.553284, 38.132771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019356, 36.579964, 38.045376>,  <41.253010, 36.595970, 37.992939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019356, 36.579964, 38.045376>,  <40.629932, 36.553284, 38.132771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019356, 36.579964, 38.045376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109766, 0.702213, 0.703454,
		0.200345, -0.708836, 0.676324,
		0.973557, 0.066696, -0.218491,
		41.311424, 36.599972, 37.979828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950977, 36.602024, 38.846771>,  <40.629932, 36.553284, 38.132771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950977, 36.602024, 38.846771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205029, 36.745541, 38.573162>,  <41.357460, 36.831650, 38.408997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205029, 36.745541, 38.573162>,  <40.950977, 36.602024, 38.846771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205029, 36.745541, 38.573162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187462, 0.787492, 0.587124,
		0.749313, -0.501127, 0.432899,
		0.635128, 0.358788, -0.684020,
		41.395565, 36.853176, 38.367954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619839, 36.651787, 39.168514>,  <40.950977, 36.602024, 38.846771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619839, 36.651787, 39.168514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595272, 36.911480, 38.865273>,  <41.580532, 37.067295, 38.683327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595272, 36.911480, 38.865273>,  <41.619839, 36.651787, 39.168514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595272, 36.911480, 38.865273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258218, 0.744017, 0.616249,
		0.964133, -0.157911, -0.213336,
		-0.061413, 0.649233, -0.758106,
		41.576847, 37.106251, 38.637840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138981, 37.027916, 39.420593>,  <41.619839, 36.651787, 39.168514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138981, 37.027916, 39.420593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945660, 37.225060, 39.131180>,  <41.829666, 37.343346, 38.957531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945660, 37.225060, 39.131180>,  <42.138981, 37.027916, 39.420593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945660, 37.225060, 39.131180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281726, 0.870068, 0.404490,
		0.828883, -0.008348, -0.559359,
		-0.483304, 0.492861, -0.723537,
		41.800667, 37.372917, 38.914120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572392, 37.512550, 39.121223>,  <42.138981, 37.027916, 39.420593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572392, 37.512550, 39.121223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211807, 37.655266, 39.023190>,  <41.995457, 37.740894, 38.964371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211807, 37.655266, 39.023190>,  <42.572392, 37.512550, 39.121223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211807, 37.655266, 39.023190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256682, 0.896527, 0.361046,
		0.348540, 0.262562, -0.899767,
		-0.901462, 0.356793, -0.245080,
		41.941368, 37.762302, 38.949665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612598, 38.165634, 38.740112>,  <42.572392, 37.512550, 39.121223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612598, 38.165634, 38.740112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254341, 38.151543, 38.917461>,  <42.039387, 38.143089, 39.023869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254341, 38.151543, 38.917461>,  <42.612598, 38.165634, 38.740112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254341, 38.151543, 38.917461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204203, 0.853015, 0.480277,
		-0.395120, 0.520696, -0.756807,
		-0.895646, -0.035225, 0.443371,
		41.985649, 38.140976, 39.050472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396812, 38.895779, 38.826199>,  <42.612598, 38.165634, 38.740112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396812, 38.895779, 38.826199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131870, 38.733372, 39.078053>,  <41.972904, 38.635929, 39.229164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131870, 38.733372, 39.078053>,  <42.396812, 38.895779, 38.826199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131870, 38.733372, 39.078053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094524, 0.878990, 0.467378,
		-0.743204, 0.250054, -0.620580,
		-0.662354, -0.406017, 0.629633,
		41.933163, 38.611568, 39.266941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894573, 39.379662, 38.838341>,  <42.396812, 38.895779, 38.826199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894573, 39.379662, 38.838341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818047, 39.141632, 39.150570>,  <41.772129, 38.998814, 39.337906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818047, 39.141632, 39.150570>,  <41.894573, 39.379662, 38.838341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818047, 39.141632, 39.150570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306780, 0.791671, 0.528340,
		-0.932353, -0.138381, -0.334018,
		-0.191320, -0.595070, 0.780570,
		41.760651, 38.963112, 39.384739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234509, 39.609253, 39.020142>,  <41.894573, 39.379662, 38.838341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234509, 39.609253, 39.020142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464245, 39.443359, 39.302456>,  <41.602085, 39.343822, 39.471844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464245, 39.443359, 39.302456>,  <41.234509, 39.609253, 39.020142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464245, 39.443359, 39.302456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066196, 0.835810, 0.545013,
		-0.815938, -0.359741, 0.452583,
		0.574338, -0.414738, 0.705783,
		41.636547, 39.318939, 39.514191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896252, 39.773926, 39.601204>,  <41.234509, 39.609253, 39.020142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896252, 39.773926, 39.601204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257244, 39.668694, 39.737629>,  <41.473839, 39.605553, 39.819485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257244, 39.668694, 39.737629>,  <40.896252, 39.773926, 39.601204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257244, 39.668694, 39.737629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019978, 0.765389, 0.643258,
		-0.430270, -0.587340, 0.685491,
		0.902479, -0.263080, 0.341058,
		41.527988, 39.589771, 39.839947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904152, 39.956284, 40.315079>,  <40.896252, 39.773926, 39.601204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904152, 39.956284, 40.315079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299553, 39.913998, 40.271847>,  <41.536793, 39.888626, 40.245907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299553, 39.913998, 40.271847>,  <40.904152, 39.956284, 40.315079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299553, 39.913998, 40.271847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147724, 0.827545, 0.541615,
		0.032184, -0.551355, 0.833650,
		0.988505, -0.105719, -0.108082,
		41.596104, 39.882282, 40.239422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169731, 40.178692, 40.948963>,  <40.904152, 39.956284, 40.315079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169731, 40.178692, 40.948963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457481, 40.213173, 40.673264>,  <41.630131, 40.233864, 40.507843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457481, 40.213173, 40.673264>,  <41.169731, 40.178692, 40.948963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457481, 40.213173, 40.673264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393757, 0.766829, 0.506882,
		0.572230, -0.636036, 0.517697,
		0.719380, 0.086206, -0.689247,
		41.673294, 40.239037, 40.466488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851593, 40.126041, 41.249237>,  <41.169731, 40.178692, 40.948963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851593, 40.126041, 41.249237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883495, 40.368664, 40.932823>,  <41.902637, 40.514236, 40.742977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883495, 40.368664, 40.932823>,  <41.851593, 40.126041, 41.249237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883495, 40.368664, 40.932823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483070, 0.670630, 0.562938,
		0.871942, -0.427020, -0.239522,
		0.079755, 0.606555, -0.791031,
		41.907421, 40.550629, 40.695515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509678, 40.051167, 41.092949>,  <41.851593, 40.126041, 41.249237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509678, 40.051167, 41.092949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345928, 40.401245, 40.989841>,  <42.247681, 40.611294, 40.927979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345928, 40.401245, 40.989841>,  <42.509678, 40.051167, 41.092949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345928, 40.401245, 40.989841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629571, 0.475458, 0.614475,
		0.660346, 0.089264, -0.745637,
		-0.409370, 0.875198, -0.257769,
		42.223118, 40.663803, 40.912510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069515, 39.792099, 41.511398>,  <42.509678, 40.051167, 41.092949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069515, 39.792099, 41.511398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436245, 39.939472, 41.449825>,  <43.656281, 40.027897, 41.412880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436245, 39.939472, 41.449825>,  <43.069515, 39.792099, 41.511398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436245, 39.939472, 41.449825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116513, 0.615584, 0.779411,
		0.381920, -0.696645, 0.607308,
		0.916821, 0.368432, -0.153936,
		43.711292, 40.050003, 41.403645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228443, 39.822495, 42.183964>,  <43.069515, 39.792099, 41.511398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228443, 39.822495, 42.183964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470924, 40.037899, 41.949863>,  <43.616413, 40.167141, 41.809402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470924, 40.037899, 41.949863>,  <43.228443, 39.822495, 42.183964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470924, 40.037899, 41.949863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075345, 0.693686, 0.716326,
		0.791734, -0.478333, 0.379939,
		0.606201, 0.538514, -0.585255,
		43.652786, 40.199451, 41.774288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148430, 40.507912, 42.435036>,  <43.228443, 39.822495, 42.183964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148430, 40.507912, 42.435036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378105, 40.821651, 42.341148>,  <43.515911, 41.009895, 42.284817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378105, 40.821651, 42.341148>,  <43.148430, 40.507912, 42.435036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378105, 40.821651, 42.341148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674377, -0.615669, -0.407637,
		-0.464240, 0.075774, -0.882462,
		0.574193, 0.784353, -0.234718,
		43.550362, 41.056957, 42.270733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273766, 40.667118, 41.778461>,  <43.148430, 40.507912, 42.435036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273766, 40.667118, 41.778461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602440, 40.776299, 41.978596>,  <43.799644, 40.841805, 42.098679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602440, 40.776299, 41.978596>,  <43.273766, 40.667118, 41.778461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602440, 40.776299, 41.978596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492746, -0.781378, -0.382949,
		0.286428, 0.561201, -0.776539,
		0.821682, 0.272949, 0.500338,
		43.848946, 40.858185, 42.128696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777866, 40.829216, 41.340706>,  <43.273766, 40.667118, 41.778461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777866, 40.829216, 41.340706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918877, 40.656143, 41.672611>,  <44.003483, 40.552299, 41.871754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918877, 40.656143, 41.672611>,  <43.777866, 40.829216, 41.340706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918877, 40.656143, 41.672611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380915, -0.743564, -0.549560,
		0.854769, 0.509805, -0.097312,
		0.352525, -0.432679, 0.829768,
		44.024635, 40.526340, 41.921543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496490, 40.755291, 41.257771>,  <43.777866, 40.829216, 41.340706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496490, 40.755291, 41.257771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324505, 40.481949, 41.493790>,  <44.221313, 40.317944, 41.635403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324505, 40.481949, 41.493790>,  <44.496490, 40.755291, 41.257771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324505, 40.481949, 41.493790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282293, -0.722532, -0.631077,
		0.857577, -0.104776, 0.503571,
		-0.429968, -0.683352, 0.590049,
		44.195515, 40.276943, 41.670803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966255, 40.291164, 41.257053>,  <44.496490, 40.755291, 41.257771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966255, 40.291164, 41.257053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606430, 40.143875, 41.351028>,  <44.390533, 40.055500, 41.407413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606430, 40.143875, 41.351028>,  <44.966255, 40.291164, 41.257053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606430, 40.143875, 41.351028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179629, -0.802154, -0.569458,
		0.398148, -0.470061, 0.787731,
		-0.899562, -0.368228, 0.234940,
		44.336563, 40.033405, 41.421509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959118, 39.564976, 41.360985>,  <44.966255, 40.291164, 41.257053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959118, 39.564976, 41.360985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.591312, 39.677189, 41.250870>,  <44.370628, 39.744518, 41.184799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.591312, 39.677189, 41.250870>,  <44.959118, 39.564976, 41.360985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591312, 39.677189, 41.250870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044187, -0.622182, -0.781625,
		-0.390556, -0.730882, 0.559712,
		-0.919518, 0.280536, -0.275292,
		44.315456, 39.761349, 41.168282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.575207, 38.980408, 41.399963>,  <44.959118, 39.564976, 41.360985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.575207, 38.980408, 41.399963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358585, 39.217262, 41.161270>,  <44.228615, 39.359375, 41.018055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358585, 39.217262, 41.161270>,  <44.575207, 38.980408, 41.399963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358585, 39.217262, 41.161270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099974, -0.750162, -0.653653,
		-0.834703, -0.294327, 0.465448,
		-0.541549, 0.592139, -0.596738,
		44.196121, 39.394905, 40.982250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083538, 38.434521, 41.099014>,  <44.575207, 38.980408, 41.399963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083538, 38.434521, 41.099014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093182, 38.774578, 40.888611>,  <44.098969, 38.978611, 40.762371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093182, 38.774578, 40.888611>,  <44.083538, 38.434521, 41.099014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093182, 38.774578, 40.888611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058729, -0.524046, -0.849663,
		-0.997983, 0.051375, 0.037294,
		0.024107, 0.850139, -0.526006,
		44.100414, 39.029621, 40.730808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575703, 38.358158, 40.558868>,  <44.083538, 38.434521, 41.099014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575703, 38.358158, 40.558868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818703, 38.646805, 40.426071>,  <43.964500, 38.819992, 40.346394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818703, 38.646805, 40.426071>,  <43.575703, 38.358158, 40.558868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818703, 38.646805, 40.426071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185156, -0.535091, -0.824254,
		-0.772442, 0.439260, -0.458677,
		0.607495, 0.721615, -0.331995,
		44.000950, 38.863289, 40.326473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323956, 38.477779, 39.920586>,  <43.575703, 38.358158, 40.558868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323956, 38.477779, 39.920586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688362, 38.642479, 39.911499>,  <43.907005, 38.741299, 39.906048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688362, 38.642479, 39.911499>,  <43.323956, 38.477779, 39.920586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688362, 38.642479, 39.911499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186043, -0.459537, -0.868455,
		-0.368023, 0.786949, -0.495248,
		0.911014, 0.411749, -0.022713,
		43.961666, 38.766003, 39.904686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469666, 38.556488, 39.149281>,  <43.323956, 38.477779, 39.920586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469666, 38.556488, 39.149281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831596, 38.564270, 39.319412>,  <44.048756, 38.568939, 39.421494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831596, 38.564270, 39.319412>,  <43.469666, 38.556488, 39.149281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831596, 38.564270, 39.319412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346878, -0.612965, -0.709894,
		0.246902, 0.789871, -0.561377,
		0.904829, 0.019455, 0.425331,
		44.103046, 38.570107, 39.447010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913609, 38.735268, 38.632286>,  <43.469666, 38.556488, 39.149281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913609, 38.735268, 38.632286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137798, 38.533085, 38.894699>,  <44.272312, 38.411774, 39.052147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137798, 38.533085, 38.894699>,  <43.913609, 38.735268, 38.632286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137798, 38.533085, 38.894699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395527, -0.532598, -0.748263,
		0.727618, 0.678861, -0.098586,
		0.560474, -0.505457, 0.656036,
		44.305939, 38.381447, 39.091511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467030, 38.672409, 38.326206>,  <43.913609, 38.735268, 38.632286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467030, 38.672409, 38.326206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505249, 38.377518, 38.593746>,  <44.528179, 38.200584, 38.754272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505249, 38.377518, 38.593746>,  <44.467030, 38.672409, 38.326206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505249, 38.377518, 38.593746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350737, -0.603904, -0.715740,
		0.931587, 0.302977, 0.200873,
		0.095545, -0.737228, 0.668854,
		44.533913, 38.156349, 38.794403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165173, 38.391899, 38.264355>,  <44.467030, 38.672409, 38.326206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165173, 38.391899, 38.264355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915436, 38.119015, 38.416561>,  <44.765594, 37.955284, 38.507885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915436, 38.119015, 38.416561>,  <45.165173, 38.391899, 38.264355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915436, 38.119015, 38.416561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321073, -0.668181, -0.671153,
		0.712119, -0.296854, 0.636211,
		-0.624338, -0.682211, 0.380513,
		44.728134, 37.914352, 38.530716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599258, 37.707531, 38.273365>,  <45.165173, 38.391899, 38.264355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599258, 37.707531, 38.273365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225903, 37.577084, 38.333267>,  <45.001888, 37.498814, 38.369209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225903, 37.577084, 38.333267>,  <45.599258, 37.707531, 38.273365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225903, 37.577084, 38.333267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227021, -0.859794, -0.457401,
		0.277929, -0.392935, 0.876560,
		-0.933390, -0.326123, 0.149757,
		44.945885, 37.479248, 38.378193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583160, 37.063309, 38.623959>,  <45.599258, 37.707531, 38.273365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583160, 37.063309, 38.623959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230476, 37.086708, 38.436699>,  <45.018867, 37.100750, 38.324345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230476, 37.086708, 38.436699>,  <45.583160, 37.063309, 38.623959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230476, 37.086708, 38.436699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169970, -0.886263, -0.430869,
		-0.440108, -0.459473, 0.771485,
		-0.881711, 0.058500, -0.468149,
		44.965961, 37.104259, 38.296253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.297226, 36.355644, 38.711742>,  <45.583160, 37.063309, 38.623959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.297226, 36.355644, 38.711742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048191, 36.505943, 38.437168>,  <44.898769, 36.596123, 38.272423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048191, 36.505943, 38.437168>,  <45.297226, 36.355644, 38.711742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.048191, 36.505943, 38.437168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002298, -0.878056, -0.478552,
		-0.782545, -0.296364, 0.547532,
		-0.622589, 0.375747, -0.686438,
		44.861416, 36.618668, 38.231236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740021, 35.868313, 38.655163>,  <45.297226, 36.355644, 38.711742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740021, 35.868313, 38.655163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734158, 36.064644, 38.306709>,  <44.730640, 36.182442, 38.097637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734158, 36.064644, 38.306709>,  <44.740021, 35.868313, 38.655163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734158, 36.064644, 38.306709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090122, -0.867034, -0.490030,
		-0.995823, -0.085693, -0.031522,
		-0.014661, 0.490824, -0.871135,
		44.729759, 36.211891, 38.045368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229874, 35.607624, 38.279015>,  <44.740021, 35.868313, 38.655163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229874, 35.607624, 38.279015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427334, 35.788616, 37.981945>,  <44.545811, 35.897213, 37.803703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427334, 35.788616, 37.981945>,  <44.229874, 35.607624, 38.279015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427334, 35.788616, 37.981945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001339, -0.854379, -0.519648,
		-0.869657, 0.255532, -0.422374,
		0.493654, 0.452482, -0.742675,
		44.575432, 35.924362, 37.759144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937237, 35.275341, 37.624638>,  <44.229874, 35.607624, 38.279015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937237, 35.275341, 37.624638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276890, 35.454212, 37.512211>,  <44.480682, 35.561535, 37.444756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276890, 35.454212, 37.512211>,  <43.937237, 35.275341, 37.624638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276890, 35.454212, 37.512211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174938, -0.740226, -0.649201,
		-0.498362, 0.502091, -0.706782,
		0.849136, 0.447180, -0.281066,
		44.531631, 35.588367, 37.427891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825661, 35.385792, 36.933903>,  <43.937237, 35.275341, 37.624638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825661, 35.385792, 36.933903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.222569, 35.386063, 36.983551>,  <44.460712, 35.386227, 37.013340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.222569, 35.386063, 36.983551>,  <43.825661, 35.385792, 36.933903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222569, 35.386063, 36.983551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098746, -0.610179, -0.786086,
		0.075201, 0.792263, -0.605527,
		0.992267, 0.000679, 0.124119,
		44.520248, 35.386265, 37.020786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052975, 35.487415, 36.294926>,  <43.825661, 35.385792, 36.933903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052975, 35.487415, 36.294926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356430, 35.336128, 36.507118>,  <44.538506, 35.245358, 36.634434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356430, 35.336128, 36.507118>,  <44.052975, 35.487415, 36.294926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356430, 35.336128, 36.507118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174492, -0.666538, -0.724761,
		0.627707, 0.642399, -0.439667,
		0.758641, -0.378219, 0.530484,
		44.584023, 35.222664, 36.666264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571827, 35.518463, 35.836758>,  <44.052975, 35.487415, 36.294926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571827, 35.518463, 35.836758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688553, 35.263943, 36.122406>,  <44.758591, 35.111233, 36.293797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688553, 35.263943, 36.122406>,  <44.571827, 35.518463, 35.836758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688553, 35.263943, 36.122406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234845, -0.676096, -0.698385,
		0.927195, 0.371508, -0.047865,
		0.291817, -0.636298, 0.714120,
		44.776096, 35.073051, 36.336643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118343, 35.352142, 35.593636>,  <44.571827, 35.518463, 35.836758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118343, 35.352142, 35.593636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016174, 35.076077, 35.864464>,  <44.954872, 34.910439, 36.026962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016174, 35.076077, 35.864464>,  <45.118343, 35.352142, 35.593636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016174, 35.076077, 35.864464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278730, -0.723136, -0.631968,
		0.925779, 0.027299, 0.377077,
		-0.255426, -0.690166, 0.677074,
		44.939545, 34.869026, 36.067585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641201, 34.995026, 35.625313>,  <45.118343, 35.352142, 35.593636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641201, 34.995026, 35.625313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349247, 34.751640, 35.749912>,  <45.174072, 34.605610, 35.824673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349247, 34.751640, 35.749912>,  <45.641201, 34.995026, 35.625313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349247, 34.751640, 35.749912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359441, -0.729241, -0.582246,
		0.581435, -0.313010, 0.750972,
		-0.729888, -0.608468, 0.311497,
		45.130280, 34.569099, 35.843361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.014484, 34.360661, 35.589443>,  <45.641201, 34.995026, 35.625313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.014484, 34.360661, 35.589443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.623642, 34.277397, 35.607063>,  <45.389137, 34.227440, 35.617634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.623642, 34.277397, 35.607063>,  <46.014484, 34.360661, 35.589443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623642, 34.277397, 35.607063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160811, -0.858064, -0.487714,
		0.139320, -0.469463, 0.871891,
		-0.977103, -0.208158, 0.044050,
		45.330513, 34.214951, 35.620277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564976, 34.106659, 35.142109>,  <46.014484, 34.360661, 35.589443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564976, 34.106659, 35.142109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.641945, 34.467430, 35.296768>,  <46.688126, 34.683895, 35.389565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.641945, 34.467430, 35.296768>,  <46.564976, 34.106659, 35.142109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.641945, 34.467430, 35.296768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803817, 0.081142, -0.589316,
		-0.562895, 0.424191, -0.709373,
		0.192423, 0.901930, 0.386646,
		46.699673, 34.738010, 35.412762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.800030, 34.559738, 34.545578>,  <46.564976, 34.106659, 35.142109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.800030, 34.559738, 34.545578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.972534, 34.648952, 34.895267>,  <47.076038, 34.702480, 35.105080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.972534, 34.648952, 34.895267>,  <46.800030, 34.559738, 34.545578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.972534, 34.648952, 34.895267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877346, 0.122314, -0.464008,
		-0.210420, 0.967106, -0.142931,
		0.431263, 0.223036, 0.874224,
		47.101913, 34.715862, 35.157536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.295605, 35.125313, 34.385334>,  <46.800030, 34.559738, 34.545578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.295605, 35.125313, 34.385334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406105, 34.911869, 34.705070>,  <47.472404, 34.783802, 34.896912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406105, 34.911869, 34.705070>,  <47.295605, 35.125313, 34.385334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.406105, 34.911869, 34.705070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944387, -0.003660, -0.328816,
		0.178385, 0.845723, 0.502923,
		0.276247, -0.533610, 0.799342,
		47.488979, 34.751785, 34.944874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.391125, 35.238762, 35.240650>,  <47.295605, 35.125313, 34.385334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.391125, 35.238762, 35.240650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680859, 35.088654, 35.009300>,  <47.854698, 34.998589, 34.870491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680859, 35.088654, 35.009300>,  <47.391125, 35.238762, 35.240650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.680859, 35.088654, 35.009300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518208, -0.256989, 0.815731,
		-0.454757, -0.890577, 0.008324,
		0.724332, -0.375273, -0.578372,
		47.898159, 34.976070, 34.835789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.482330, 33.012314, 45.179970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117584, 32.946529, 45.330410>,  <36.898735, 32.907059, 45.420673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117584, 32.946529, 45.330410>,  <37.482330, 33.012314, 45.179970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117584, 32.946529, 45.330410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409890, 0.315338, -0.855893,
		0.022162, -0.934620, -0.354957,
		-0.911866, -0.164461, 0.376103,
		36.844025, 32.897190, 45.443241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223354, 32.594833, 44.657242>,  <37.482330, 33.012314, 45.179970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223354, 32.594833, 44.657242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.922089, 32.773796, 44.850140>,  <36.741329, 32.881172, 44.965878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.922089, 32.773796, 44.850140>,  <37.223354, 32.594833, 44.657242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922089, 32.773796, 44.850140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324624, 0.384828, -0.864018,
		-0.572151, -0.807300, -0.144601,
		-0.753168, 0.447408, 0.482249,
		36.696136, 32.908020, 44.994816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714710, 32.523144, 44.185776>,  <37.223354, 32.594833, 44.657242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714710, 32.523144, 44.185776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.572983, 32.816650, 44.417652>,  <36.487946, 32.992756, 44.556778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.572983, 32.816650, 44.417652>,  <36.714710, 32.523144, 44.185776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572983, 32.816650, 44.417652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331181, 0.481267, -0.811604,
		-0.874515, -0.479551, 0.072488,
		-0.354319, 0.733766, 0.579693,
		36.466686, 33.036781, 44.591560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048805, 32.568382, 44.015900>,  <36.714710, 32.523144, 44.185776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048805, 32.568382, 44.015900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.144424, 32.922215, 44.176083>,  <36.201797, 33.134514, 44.272194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.144424, 32.922215, 44.176083>,  <36.048805, 32.568382, 44.015900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144424, 32.922215, 44.176083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494212, 0.465842, -0.733993,
		-0.835828, -0.022448, 0.548533,
		0.239053, 0.884583, 0.400458,
		36.216141, 33.187588, 44.296219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437817, 32.836361, 44.162369>,  <36.048805, 32.568382, 44.015900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437817, 32.836361, 44.162369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.693859, 33.143349, 44.148216>,  <35.847485, 33.327541, 44.139725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.693859, 33.143349, 44.148216>,  <35.437817, 32.836361, 44.162369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693859, 33.143349, 44.148216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551009, 0.426497, -0.717279,
		-0.535399, 0.478632, 0.695887,
		0.640106, 0.767471, -0.035385,
		35.885891, 33.373589, 44.137600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034073, 33.493687, 44.193722>,  <35.437817, 32.836361, 44.162369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034073, 33.493687, 44.193722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.386723, 33.577320, 44.024479>,  <35.598312, 33.627499, 43.922935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.386723, 33.577320, 44.024479>,  <35.034073, 33.493687, 44.193722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386723, 33.577320, 44.024479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466398, 0.523042, -0.713373,
		0.072147, 0.826264, 0.558644,
		0.881628, 0.209082, -0.423104,
		35.651211, 33.640045, 43.897549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902645, 34.193836, 43.842030>,  <35.034073, 33.493687, 44.193722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902645, 34.193836, 43.842030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.215153, 34.003124, 43.680882>,  <35.402657, 33.888699, 43.584190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.215153, 34.003124, 43.680882>,  <34.902645, 34.193836, 43.842030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215153, 34.003124, 43.680882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253178, 0.347903, -0.902698,
		0.570546, 0.807247, 0.151096,
		0.781267, -0.476776, -0.402872,
		35.449532, 33.860092, 43.560020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240314, 34.690929, 43.406769>,  <34.902645, 34.193836, 43.842030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240314, 34.690929, 43.406769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389469, 34.341759, 43.280945>,  <35.478962, 34.132256, 43.205452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389469, 34.341759, 43.280945>,  <35.240314, 34.690929, 43.406769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389469, 34.341759, 43.280945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101987, 0.298395, -0.948978,
		0.922253, 0.385946, 0.022242,
		0.372891, -0.872930, -0.314557,
		35.501335, 34.079880, 43.186577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803085, 34.843788, 43.048229>,  <35.240314, 34.690929, 43.406769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803085, 34.843788, 43.048229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674316, 34.482029, 42.936207>,  <35.597057, 34.264973, 42.868992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674316, 34.482029, 42.936207>,  <35.803085, 34.843788, 43.048229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674316, 34.482029, 42.936207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014233, 0.300394, -0.953709,
		0.946660, -0.303031, -0.109575,
		-0.321919, -0.904398, -0.280058,
		35.577740, 34.210709, 42.852188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132935, 34.779522, 42.376446>,  <35.803085, 34.843788, 43.048229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132935, 34.779522, 42.376446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856804, 34.490181, 42.370567>,  <35.691124, 34.316578, 42.367043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856804, 34.490181, 42.370567>,  <36.132935, 34.779522, 42.376446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856804, 34.490181, 42.370567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102684, 0.118058, -0.987683,
		0.716175, -0.680315, -0.155775,
		-0.690326, -0.723350, -0.014693,
		35.649708, 34.273174, 42.366161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347080, 34.275665, 41.788902>,  <36.132935, 34.779522, 42.376446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347080, 34.275665, 41.788902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.956795, 34.262089, 41.875469>,  <35.722626, 34.253944, 41.927410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.956795, 34.262089, 41.875469>,  <36.347080, 34.275665, 41.788902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956795, 34.262089, 41.875469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218611, 0.087743, -0.971859,
		0.013991, -0.995565, -0.093031,
		-0.975712, -0.033935, 0.216413,
		35.664082, 34.251907, 41.940392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045601, 33.832569, 41.349110>,  <36.347080, 34.275665, 41.788902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045601, 33.832569, 41.349110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708591, 34.019218, 41.456749>,  <35.506386, 34.131210, 41.521332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708591, 34.019218, 41.456749>,  <36.045601, 33.832569, 41.349110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708591, 34.019218, 41.456749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225678, 0.147831, -0.962920,
		-0.489104, -0.872013, -0.019244,
		-0.842524, 0.466625, 0.269099,
		35.455833, 34.159206, 41.537479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490490, 33.553116, 41.008442>,  <36.045601, 33.832569, 41.349110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490490, 33.553116, 41.008442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.302155, 33.892685, 41.104473>,  <35.189152, 34.096428, 41.162090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.302155, 33.892685, 41.104473>,  <35.490490, 33.553116, 41.008442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302155, 33.892685, 41.104473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268549, 0.121297, -0.955598,
		-0.840353, -0.514403, 0.170867,
		-0.470838, 0.848926, 0.240075,
		35.160904, 34.147362, 41.176495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811676, 33.633385, 40.673901>,  <35.490490, 33.553116, 41.008442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811676, 33.633385, 40.673901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.921970, 34.010895, 40.746845>,  <34.988148, 34.237400, 40.790611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.921970, 34.010895, 40.746845>,  <34.811676, 33.633385, 40.673901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921970, 34.010895, 40.746845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212608, 0.244895, -0.945952,
		-0.937427, 0.222060, 0.268180,
		0.275734, 0.943778, 0.182359,
		35.004692, 34.294029, 40.801552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241837, 34.076721, 40.403053>,  <34.811676, 33.633385, 40.673901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241837, 34.076721, 40.403053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.599430, 34.251934, 40.440830>,  <34.813988, 34.357063, 40.463497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.599430, 34.251934, 40.440830>,  <34.241837, 34.076721, 40.403053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599430, 34.251934, 40.440830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082658, 0.368359, -0.926002,
		-0.440409, 0.820024, 0.365514,
		0.893984, 0.438032, 0.094447,
		34.867626, 34.383343, 40.469166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142437, 34.664978, 39.899292>,  <34.241837, 34.076721, 40.403053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142437, 34.664978, 39.899292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.527874, 34.721424, 39.990139>,  <34.759136, 34.755291, 40.044647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.527874, 34.721424, 39.990139>,  <34.142437, 34.664978, 39.899292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527874, 34.721424, 39.990139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167673, 0.342741, -0.924345,
		-0.208279, 0.928771, 0.306601,
		0.963590, 0.141113, 0.227116,
		34.816952, 34.763760, 40.058273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276737, 35.321003, 39.731815>,  <34.142437, 34.664978, 39.899292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276737, 35.321003, 39.731815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.636723, 35.146805, 39.723686>,  <34.852715, 35.042286, 39.718811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.636723, 35.146805, 39.723686>,  <34.276737, 35.321003, 39.731815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636723, 35.146805, 39.723686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194681, 0.443136, -0.875060,
		0.390090, 0.783564, 0.483588,
		0.899960, -0.435498, -0.020318,
		34.906712, 35.016155, 39.717590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614140, 35.858772, 39.594822>,  <34.276737, 35.321003, 39.731815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614140, 35.858772, 39.594822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.818981, 35.529549, 39.496578>,  <34.941887, 35.332016, 39.437630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.818981, 35.529549, 39.496578>,  <34.614140, 35.858772, 39.594822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818981, 35.529549, 39.496578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143303, 0.363816, -0.920382,
		0.846886, 0.436132, 0.304257,
		0.512102, -0.823059, -0.245612,
		34.972610, 35.282631, 39.422894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301937, 36.151638, 39.284164>,  <34.614140, 35.858772, 39.594822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301937, 36.151638, 39.284164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.264854, 35.775444, 39.153381>,  <35.242607, 35.549728, 39.074913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.264854, 35.775444, 39.153381>,  <35.301937, 36.151638, 39.284164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264854, 35.775444, 39.153381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203293, 0.303574, -0.930868,
		0.974720, -0.152762, 0.163051,
		-0.092704, -0.940482, -0.326955,
		35.237041, 35.493298, 39.055294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927914, 35.997307, 38.960361>,  <35.301937, 36.151638, 39.284164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927914, 35.997307, 38.960361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671638, 35.728729, 38.811401>,  <35.517872, 35.567581, 38.722027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671638, 35.728729, 38.811401>,  <35.927914, 35.997307, 38.960361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671638, 35.728729, 38.811401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053015, 0.445172, -0.893874,
		0.765969, -0.592437, -0.249619,
		-0.640688, -0.671446, -0.372397,
		35.479431, 35.527294, 38.699684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126644, 35.837383, 38.349350>,  <35.927914, 35.997307, 38.960361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126644, 35.837383, 38.349350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757843, 35.690876, 38.299126>,  <35.536564, 35.602970, 38.268993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757843, 35.690876, 38.299126>,  <36.126644, 35.837383, 38.349350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757843, 35.690876, 38.299126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065444, 0.172194, -0.982887,
		0.381622, -0.914437, -0.134792,
		-0.921999, -0.366270, -0.125558,
		35.481243, 35.580994, 38.261459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269112, 35.841274, 37.734058>,  <36.126644, 35.837383, 38.349350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269112, 35.841274, 37.734058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894489, 35.702480, 37.753929>,  <35.669716, 35.619202, 37.765854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894489, 35.702480, 37.753929>,  <36.269112, 35.841274, 37.734058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894489, 35.702480, 37.753929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034900, -0.048720, -0.998202,
		0.348784, -0.936603, 0.033519,
		-0.936553, -0.346987, 0.049681,
		35.613522, 35.598385, 37.768833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034000, 36.131046, 37.730286>,  <36.269112, 35.841274, 37.734058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034000, 36.131046, 37.730286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373081, 36.165333, 37.520882>,  <37.576530, 36.185905, 37.395241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373081, 36.165333, 37.520882>,  <37.034000, 36.131046, 37.730286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373081, 36.165333, 37.520882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437402, -0.671306, 0.598354,
		-0.300147, -0.736207, -0.606557,
		0.847698, 0.085715, -0.523509,
		37.627392, 36.191048, 37.363831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353203, 35.455181, 37.453526>,  <37.034000, 36.131046, 37.730286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353203, 35.455181, 37.453526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.643585, 35.727592, 37.491852>,  <37.817814, 35.891041, 37.514847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.643585, 35.727592, 37.491852>,  <37.353203, 35.455181, 37.453526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643585, 35.727592, 37.491852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480897, -0.602268, 0.637191,
		0.491653, -0.416498, -0.764727,
		0.725959, 0.681031, 0.095814,
		37.861374, 35.931900, 37.520596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009735, 35.059280, 37.310982>,  <37.353203, 35.455181, 37.453526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009735, 35.059280, 37.310982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.078960, 35.394993, 37.517147>,  <38.120495, 35.596420, 37.640846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.078960, 35.394993, 37.517147>,  <38.009735, 35.059280, 37.310982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078960, 35.394993, 37.517147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557145, -0.514958, 0.651466,
		0.812182, 0.174420, -0.556720,
		0.173059, 0.839283, 0.515417,
		38.130878, 35.646778, 37.671772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667706, 34.937939, 37.482861>,  <38.009735, 35.059280, 37.310982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667706, 34.937939, 37.482861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573765, 35.235390, 37.733257>,  <38.517399, 35.413860, 37.883495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573765, 35.235390, 37.733257>,  <38.667706, 34.937939, 37.482861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573765, 35.235390, 37.733257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510702, -0.453556, 0.730390,
		0.827059, 0.491231, -0.273251,
		-0.234856, 0.743625, 0.625991,
		38.503307, 35.458477, 37.921055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239864, 35.092316, 37.935658>,  <38.667706, 34.937939, 37.482861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239864, 35.092316, 37.935658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941685, 35.282948, 38.122063>,  <38.762775, 35.397327, 38.233906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941685, 35.282948, 38.122063>,  <39.239864, 35.092316, 37.935658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941685, 35.282948, 38.122063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343851, -0.323986, 0.881362,
		0.571023, 0.817254, 0.077643,
		-0.745452, 0.476581, 0.466017,
		38.718048, 35.425922, 38.261868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572174, 35.523220, 38.411701>,  <39.239864, 35.092316, 37.935658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572174, 35.523220, 38.411701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.204514, 35.443375, 38.547535>,  <38.983917, 35.395466, 38.629036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.204514, 35.443375, 38.547535>,  <39.572174, 35.523220, 38.411701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204514, 35.443375, 38.547535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390753, -0.353237, 0.850021,
		-0.049724, 0.913990, 0.402678,
		-0.919152, -0.199614, 0.339580,
		38.928768, 35.383492, 38.649410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518356, 35.675781, 39.135288>,  <39.572174, 35.523220, 38.411701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518356, 35.675781, 39.135288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.203571, 35.433086, 39.090466>,  <39.014698, 35.287468, 39.063572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.203571, 35.433086, 39.090466>,  <39.518356, 35.675781, 39.135288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203571, 35.433086, 39.090466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153379, -0.368298, 0.916969,
		-0.597630, 0.704434, 0.382898,
		-0.786964, -0.606737, -0.112060,
		38.967484, 35.251064, 39.056847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217873, 35.704441, 39.806252>,  <39.518356, 35.675781, 39.135288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217873, 35.704441, 39.806252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012691, 35.394310, 39.658878>,  <38.889584, 35.208229, 39.570454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012691, 35.394310, 39.658878>,  <39.217873, 35.704441, 39.806252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012691, 35.394310, 39.658878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099753, -0.372453, 0.922674,
		-0.852602, 0.510040, 0.113709,
		-0.512952, -0.775331, -0.368433,
		38.858807, 35.161713, 39.548347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582291, 35.609966, 40.247463>,  <39.217873, 35.704441, 39.806252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582291, 35.609966, 40.247463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.642338, 35.262794, 40.058075>,  <38.678364, 35.054493, 39.944443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.642338, 35.262794, 40.058075>,  <38.582291, 35.609966, 40.247463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642338, 35.262794, 40.058075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110649, -0.490634, 0.864312,
		-0.982457, -0.077358, -0.169686,
		0.150115, -0.867925, -0.473467,
		38.687374, 35.002419, 39.916035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028008, 35.152740, 40.518353>,  <38.582291, 35.609966, 40.247463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028008, 35.152740, 40.518353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.336296, 34.941906, 40.375153>,  <38.521271, 34.815403, 40.289234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.336296, 34.941906, 40.375153>,  <38.028008, 35.152740, 40.518353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336296, 34.941906, 40.375153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039881, -0.600664, 0.798507,
		-0.635925, -0.601147, -0.483964,
		0.770720, -0.527092, -0.358002,
		38.567513, 34.783779, 40.267754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852814, 34.373184, 40.622280>,  <38.028008, 35.152740, 40.518353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852814, 34.373184, 40.622280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.250946, 34.390850, 40.587959>,  <38.489826, 34.401451, 40.567368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.250946, 34.390850, 40.587959>,  <37.852814, 34.373184, 40.622280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250946, 34.390850, 40.587959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089268, -0.759199, 0.644708,
		-0.036667, -0.649358, -0.759598,
		0.995333, 0.044168, -0.085805,
		38.549545, 34.404099, 40.562218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030945, 33.549370, 40.505299>,  <37.852814, 34.373184, 40.622280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030945, 33.549370, 40.505299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326038, 33.780815, 40.644409>,  <38.503094, 33.919682, 40.727875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326038, 33.780815, 40.644409>,  <38.030945, 33.549370, 40.505299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326038, 33.780815, 40.644409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224827, -0.696334, 0.681595,
		0.636552, -0.424646, -0.643799,
		0.737736, 0.578614, 0.347781,
		38.547359, 33.954399, 40.748745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652550, 33.080551, 40.627384>,  <38.030945, 33.549370, 40.505299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652550, 33.080551, 40.627384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715683, 33.400848, 40.858517>,  <38.753563, 33.593029, 40.997196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715683, 33.400848, 40.858517>,  <38.652550, 33.080551, 40.627384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715683, 33.400848, 40.858517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312114, -0.595624, 0.740147,
		0.936843, 0.063532, -0.343932,
		0.157831, 0.800747, 0.577835,
		38.763031, 33.641071, 41.031868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180050, 32.919212, 40.941425>,  <38.652550, 33.080551, 40.627384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180050, 32.919212, 40.941425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.014973, 33.197250, 41.176891>,  <38.915928, 33.364075, 41.318172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.014973, 33.197250, 41.176891>,  <39.180050, 32.919212, 40.941425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014973, 33.197250, 41.176891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208864, -0.556831, 0.803937,
		0.886603, 0.454726, 0.084617,
		-0.412689, 0.695099, 0.588664,
		38.891167, 33.405781, 41.353489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593601, 32.840435, 41.516506>,  <39.180050, 32.919212, 40.941425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593601, 32.840435, 41.516506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.272495, 33.047237, 41.635349>,  <39.079834, 33.171318, 41.706657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.272495, 33.047237, 41.635349>,  <39.593601, 32.840435, 41.516506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272495, 33.047237, 41.635349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003252, -0.502046, 0.864835,
		0.596290, 0.693291, 0.404705,
		-0.802763, 0.517008, 0.297110,
		39.031666, 33.202339, 41.724483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743401, 33.423004, 42.094631>,  <39.593601, 32.840435, 41.516506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743401, 33.423004, 42.094631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.365299, 33.294682, 42.118530>,  <39.138439, 33.217686, 42.132870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.365299, 33.294682, 42.118530>,  <39.743401, 33.423004, 42.094631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365299, 33.294682, 42.118530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158855, -0.292448, 0.942995,
		-0.285049, 0.900864, 0.327401,
		-0.945258, -0.320809, 0.059745,
		39.081722, 33.198441, 42.136456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618969, 33.602776, 42.732971>,  <39.743401, 33.423004, 42.094631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618969, 33.602776, 42.732971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.276894, 33.405094, 42.670467>,  <39.071648, 33.286484, 42.632965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.276894, 33.405094, 42.670467>,  <39.618969, 33.602776, 42.732971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276894, 33.405094, 42.670467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029532, -0.254522, 0.966616,
		-0.517477, 0.831252, 0.203069,
		-0.855187, -0.494205, -0.156258,
		39.020336, 33.256832, 42.623589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141644, 33.838688, 43.278152>,  <39.618969, 33.602776, 42.732971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141644, 33.838688, 43.278152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.010365, 33.477970, 43.165684>,  <38.931595, 33.261539, 43.098202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.010365, 33.477970, 43.165684>,  <39.141644, 33.838688, 43.278152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010365, 33.477970, 43.165684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112061, -0.258386, 0.959520,
		-0.937938, 0.346422, -0.016253,
		-0.328200, -0.901792, -0.281170,
		38.911903, 33.207432, 43.081333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.559059, 33.689377, 43.798626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.684494, 33.348915, 43.630249>,  <38.759754, 33.144638, 43.529224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.684494, 33.348915, 43.630249>,  <38.559059, 33.689377, 43.798626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684494, 33.348915, 43.630249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034818, -0.432696, 0.900868,
		-0.948919, -0.297160, -0.106053,
		0.313591, -0.851158, -0.420940,
		38.778572, 33.093567, 43.503967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235569, 33.202175, 44.223312>,  <38.559059, 33.689377, 43.798626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235569, 33.202175, 44.223312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519062, 32.991497, 44.035572>,  <38.689159, 32.865089, 43.922928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519062, 32.991497, 44.035572>,  <38.235569, 33.202175, 44.223312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519062, 32.991497, 44.035572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173521, -0.514714, 0.839619,
		-0.683803, -0.676509, -0.273403,
		0.708734, -0.526693, -0.469351,
		38.731682, 32.833488, 43.894768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110989, 32.560547, 44.366711>,  <38.235569, 33.202175, 44.223312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110989, 32.560547, 44.366711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.494221, 32.567093, 44.252304>,  <38.724159, 32.571022, 44.183659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.494221, 32.567093, 44.252304>,  <38.110989, 32.560547, 44.366711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494221, 32.567093, 44.252304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254580, -0.506520, 0.823788,
		-0.131389, -0.862073, -0.489456,
		0.958085, 0.016369, -0.286018,
		38.781647, 32.572002, 44.166500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272663, 31.880436, 44.443497>,  <38.110989, 32.560547, 44.366711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272663, 31.880436, 44.443497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.615116, 32.085587, 44.468769>,  <38.820587, 32.208675, 44.483932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.615116, 32.085587, 44.468769>,  <38.272663, 31.880436, 44.443497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615116, 32.085587, 44.468769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191747, -0.428836, 0.882798,
		0.479864, -0.743677, -0.465484,
		0.856133, 0.512878, 0.063185,
		38.871956, 32.239449, 44.487724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661430, 31.451504, 44.723404>,  <38.272663, 31.880436, 44.443497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661430, 31.451504, 44.723404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880100, 31.777115, 44.801895>,  <39.011303, 31.972481, 44.848991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880100, 31.777115, 44.801895>,  <38.661430, 31.451504, 44.723404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880100, 31.777115, 44.801895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286943, -0.402278, 0.869388,
		0.786644, -0.418967, -0.453495,
		0.546676, 0.814026, 0.196230,
		39.044102, 32.021324, 44.860764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446888, 31.275318, 44.736145>,  <38.661430, 31.451504, 44.723404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446888, 31.275318, 44.736145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.360928, 31.610079, 44.937504>,  <39.309353, 31.810936, 45.058319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.360928, 31.610079, 44.937504>,  <39.446888, 31.275318, 44.736145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360928, 31.610079, 44.937504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262163, -0.447091, 0.855208,
		0.940791, 0.315757, -0.123325,
		-0.214901, 0.836903, 0.503399,
		39.296459, 31.861149, 45.088524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029026, 31.332581, 45.188141>,  <39.446888, 31.275318, 44.736145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029026, 31.332581, 45.188141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.752129, 31.567171, 45.356354>,  <39.585991, 31.707926, 45.457279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.752129, 31.567171, 45.356354>,  <40.029026, 31.332581, 45.188141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752129, 31.567171, 45.356354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240981, -0.361420, 0.900724,
		0.680243, 0.724858, 0.108860,
		-0.692241, 0.586478, 0.420530,
		39.544456, 31.743114, 45.482513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333771, 31.708584, 45.791405>,  <40.029026, 31.332581, 45.188141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333771, 31.708584, 45.791405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.937485, 31.732885, 45.840069>,  <39.699715, 31.747467, 45.869267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.937485, 31.732885, 45.840069>,  <40.333771, 31.708584, 45.791405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937485, 31.732885, 45.840069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106504, -0.209595, 0.971971,
		0.084551, 0.975899, 0.201177,
		-0.990711, 0.060755, 0.121658,
		39.640270, 31.751112, 45.876568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206917, 32.250954, 46.314411>,  <40.333771, 31.708584, 45.791405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206917, 32.250954, 46.314411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.892311, 32.003956, 46.310471>,  <39.703548, 31.855757, 46.308105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.892311, 32.003956, 46.310471>,  <40.206917, 32.250954, 46.314411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892311, 32.003956, 46.310471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216347, -0.290426, 0.932119,
		-0.578443, 0.730991, 0.362018,
		-0.786510, -0.617499, -0.009847,
		39.656357, 31.818707, 46.307518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051960, 32.319080, 46.898975>,  <40.206917, 32.250954, 46.314411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051960, 32.319080, 46.898975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.849743, 31.987890, 46.801903>,  <39.728413, 31.789177, 46.743660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.849743, 31.987890, 46.801903>,  <40.051960, 32.319080, 46.898975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849743, 31.987890, 46.801903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119893, -0.345952, 0.930560,
		-0.854433, 0.441339, 0.274160,
		-0.505539, -0.827972, -0.242680,
		39.698082, 31.739498, 46.729099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591476, 32.180981, 47.474831>,  <40.051960, 32.319080, 46.898975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591476, 32.180981, 47.474831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577419, 31.823877, 47.295162>,  <39.568985, 31.609615, 47.187363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577419, 31.823877, 47.295162>,  <39.591476, 32.180981, 47.474831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577419, 31.823877, 47.295162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014896, -0.449863, 0.892973,
		-0.999271, 0.024694, 0.029110,
		-0.035147, -0.892756, -0.449167,
		39.566875, 31.556051, 47.160412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270054, 31.840437, 47.972412>,  <39.591476, 32.180981, 47.474831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270054, 31.840437, 47.972412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.446949, 31.576447, 47.729481>,  <39.553085, 31.418053, 47.583721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.446949, 31.576447, 47.729481>,  <39.270054, 31.840437, 47.972412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446949, 31.576447, 47.729481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149572, -0.613397, 0.775482,
		-0.884336, -0.433791, -0.172556,
		0.442242, -0.659977, -0.607332,
		39.579620, 31.378454, 47.547279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016026, 31.268314, 48.245239>,  <39.270054, 31.840437, 47.972412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016026, 31.268314, 48.245239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.351238, 31.166533, 48.052177>,  <39.552364, 31.105463, 47.936340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.351238, 31.166533, 48.052177>,  <39.016026, 31.268314, 48.245239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351238, 31.166533, 48.052177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303011, -0.518601, 0.799523,
		-0.453744, -0.816277, -0.357504,
		0.838034, -0.254451, -0.482653,
		39.602650, 31.090197, 47.907383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131142, 30.672548, 48.503643>,  <39.016026, 31.268314, 48.245239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131142, 30.672548, 48.503643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.495872, 30.741951, 48.354797>,  <39.714710, 30.783592, 48.265491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.495872, 30.741951, 48.354797>,  <39.131142, 30.672548, 48.503643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495872, 30.741951, 48.354797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407956, -0.485142, 0.773440,
		-0.046331, -0.857049, -0.513148,
		0.911826, 0.173507, -0.372115,
		39.769421, 30.794003, 48.243164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463173, 30.039215, 48.426548>,  <39.131142, 30.672548, 48.503643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463173, 30.039215, 48.426548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.758797, 30.304424, 48.474186>,  <39.936172, 30.463551, 48.502769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.758797, 30.304424, 48.474186>,  <39.463173, 30.039215, 48.426548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758797, 30.304424, 48.474186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443361, -0.611865, 0.655021,
		0.507165, -0.431300, -0.746166,
		0.739063, 0.663025, 0.119095,
		39.980515, 30.503332, 48.509914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040585, 29.614044, 48.446568>,  <39.463173, 30.039215, 48.426548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040585, 29.614044, 48.446568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.153374, 29.973738, 48.580357>,  <40.221046, 30.189554, 48.660629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.153374, 29.973738, 48.580357>,  <40.040585, 29.614044, 48.446568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153374, 29.973738, 48.580357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496263, -0.435062, 0.751295,
		0.821104, -0.045862, -0.568933,
		0.281977, 0.899232, 0.334472,
		40.237968, 30.243507, 48.680698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875648, 29.662752, 48.469292>,  <40.040585, 29.614044, 48.446568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875648, 29.662752, 48.469292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.699821, 29.909586, 48.730362>,  <40.594326, 30.057686, 48.887005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.699821, 29.909586, 48.730362>,  <40.875648, 29.662752, 48.469292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699821, 29.909586, 48.730362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466496, -0.464111, 0.752983,
		0.767568, 0.635458, -0.083859,
		-0.439569, 0.617085, 0.652675,
		40.567951, 30.094711, 48.926163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406338, 29.839437, 48.973080>,  <40.875648, 29.662752, 48.469292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406338, 29.839437, 48.973080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.059029, 29.917212, 49.155643>,  <40.850643, 29.963875, 49.265182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.059029, 29.917212, 49.155643>,  <41.406338, 29.839437, 48.973080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059029, 29.917212, 49.155643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351172, -0.408942, 0.842285,
		0.350411, 0.891607, 0.286792,
		-0.868269, 0.194433, 0.456405,
		40.798550, 29.975542, 49.292564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548763, 30.009483, 49.643795>,  <41.406338, 29.839437, 48.973080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548763, 30.009483, 49.643795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.155903, 29.954342, 49.694977>,  <40.920185, 29.921257, 49.725685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.155903, 29.954342, 49.694977>,  <41.548763, 30.009483, 49.643795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155903, 29.954342, 49.694977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183517, -0.553395, 0.812450,
		-0.041189, 0.821432, 0.568816,
		-0.982153, -0.137852, 0.127953,
		40.861256, 29.912987, 49.733364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390205, 30.255829, 50.371845>,  <41.548763, 30.009483, 49.643795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390205, 30.255829, 50.371845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.113255, 29.995962, 50.246277>,  <40.947083, 29.840042, 50.170937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.113255, 29.995962, 50.246277>,  <41.390205, 30.255829, 50.371845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113255, 29.995962, 50.246277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000367, -0.435385, 0.900244,
		-0.721534, 0.623195, 0.301690,
		-0.692379, -0.649667, -0.313917,
		40.905540, 29.801062, 50.152103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982449, 30.277756, 50.898762>,  <41.390205, 30.255829, 50.371845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982449, 30.277756, 50.898762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.901333, 29.940590, 50.699417>,  <40.852661, 29.738291, 50.579811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.901333, 29.940590, 50.699417>,  <40.982449, 30.277756, 50.898762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901333, 29.940590, 50.699417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045569, -0.500265, 0.864673,
		-0.978161, 0.198059, 0.063040,
		-0.202793, -0.842916, -0.498365,
		40.840496, 29.687716, 50.549908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363949, 29.938065, 51.291885>,  <40.982449, 30.277756, 50.898762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363949, 29.938065, 51.291885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.576237, 29.659536, 51.098610>,  <40.703609, 29.492420, 50.982643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.576237, 29.659536, 51.098610>,  <40.363949, 29.938065, 51.291885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576237, 29.659536, 51.098610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067493, -0.603016, 0.794868,
		-0.844854, -0.389243, -0.367031,
		0.530723, -0.696319, -0.483189,
		40.735455, 29.450640, 50.953651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195164, 29.302765, 51.560944>,  <40.363949, 29.938065, 51.291885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195164, 29.302765, 51.560944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.554138, 29.218149, 51.406094>,  <40.769524, 29.167379, 51.313183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.554138, 29.218149, 51.406094>,  <40.195164, 29.302765, 51.560944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554138, 29.218149, 51.406094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186428, -0.613467, 0.767400,
		-0.399821, -0.760861, -0.511110,
		0.897434, -0.211537, -0.387123,
		40.823368, 29.154688, 51.289955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968872, 29.059797, 52.272945>,  <40.195164, 29.302765, 51.560944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968872, 29.059797, 52.272945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.276237, 28.822241, 52.177593>,  <40.460659, 28.679707, 52.120380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.276237, 28.822241, 52.177593>,  <39.968872, 29.059797, 52.272945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276237, 28.822241, 52.177593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630516, 0.766324, 0.123275,
		0.109465, -0.245031, 0.963316,
		0.768418, -0.593892, -0.238382,
		40.506763, 28.644073, 52.106079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431217, 29.011597, 51.723778>,  <39.968872, 29.059797, 52.272945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431217, 29.011597, 51.723778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.080708, 29.115427, 51.886139>,  <38.870399, 29.177725, 51.983555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.080708, 29.115427, 51.886139>,  <39.431217, 29.011597, 51.723778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080708, 29.115427, 51.886139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393146, 0.101785, -0.913825,
		-0.278521, -0.960344, 0.012858,
		-0.876278, 0.259574, 0.405905,
		38.817825, 29.193298, 52.007912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879402, 28.522549, 51.438961>,  <39.431217, 29.011597, 51.723778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879402, 28.522549, 51.438961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.651413, 28.807135, 51.603378>,  <38.514622, 28.977886, 51.702026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.651413, 28.807135, 51.603378>,  <38.879402, 28.522549, 51.438961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651413, 28.807135, 51.603378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581287, 0.004416, -0.813686,
		-0.580723, -0.702709, 0.411048,
		-0.569970, 0.711464, 0.411040,
		38.480423, 29.020575, 51.726692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118298, 28.369879, 51.339184>,  <38.879402, 28.522549, 51.438961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118298, 28.369879, 51.339184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.117428, 28.767578, 51.382015>,  <38.116905, 29.006197, 51.407715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.117428, 28.767578, 51.382015>,  <38.118298, 28.369879, 51.339184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117428, 28.767578, 51.382015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511079, 0.090932, -0.854710,
		-0.859531, -0.056582, 0.507942,
		-0.002173, 0.994248, 0.107077,
		38.116776, 29.065853, 51.414139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492203, 28.582481, 51.198067>,  <38.118298, 28.369879, 51.339184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492203, 28.582481, 51.198067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640350, 28.951405, 51.153934>,  <37.729240, 29.172758, 51.127457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640350, 28.951405, 51.153934>,  <37.492203, 28.582481, 51.198067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640350, 28.951405, 51.153934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600787, 0.147266, -0.785727,
		-0.708434, 0.357297, 0.608654,
		0.370372, 0.922308, -0.110331,
		37.751461, 29.228096, 51.120834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040237, 29.087933, 50.959743>,  <37.492203, 28.582481, 51.198067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040237, 29.087933, 50.959743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.373470, 29.272188, 50.837250>,  <37.573410, 29.382742, 50.763752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.373470, 29.272188, 50.837250>,  <37.040237, 29.087933, 50.959743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373470, 29.272188, 50.837250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448551, 0.238614, -0.861316,
		-0.323682, 0.854913, 0.405405,
		0.833086, 0.460637, -0.306238,
		37.623398, 29.410379, 50.745377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761600, 29.708891, 50.733593>,  <37.040237, 29.087933, 50.959743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761600, 29.708891, 50.733593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140327, 29.690668, 50.606186>,  <37.367565, 29.679735, 50.529739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140327, 29.690668, 50.606186>,  <36.761600, 29.708891, 50.733593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140327, 29.690668, 50.606186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278568, 0.379367, -0.882315,
		0.161033, 0.924124, 0.346502,
		0.946820, -0.045557, -0.318522,
		37.424374, 29.677000, 50.510628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864079, 30.395706, 50.363468>,  <36.761600, 29.708891, 50.733593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864079, 30.395706, 50.363468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.131676, 30.121571, 50.248394>,  <37.292233, 29.957088, 50.179348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.131676, 30.121571, 50.248394>,  <36.864079, 30.395706, 50.363468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131676, 30.121571, 50.248394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042489, 0.351156, -0.935352,
		0.742057, 0.637964, 0.205800,
		0.668989, -0.685340, -0.287684,
		37.332371, 29.915968, 50.162090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353420, 30.789675, 49.998650>,  <36.864079, 30.395706, 50.363468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353420, 30.789675, 49.998650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.374233, 30.406807, 49.884727>,  <37.386723, 30.177086, 49.816376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.374233, 30.406807, 49.884727>,  <37.353420, 30.789675, 49.998650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374233, 30.406807, 49.884727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086466, 0.279803, -0.956156,
		0.994895, 0.074381, -0.068203,
		0.052036, -0.957172, -0.284806,
		37.389843, 30.119656, 49.799286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769047, 30.830664, 49.447376>,  <37.353420, 30.789675, 49.998650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769047, 30.830664, 49.447376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583046, 30.480835, 49.392391>,  <37.471447, 30.270937, 49.359398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583046, 30.480835, 49.392391>,  <37.769047, 30.830664, 49.447376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583046, 30.480835, 49.392391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152942, 0.232295, -0.960545,
		0.872000, -0.425629, -0.241776,
		-0.465000, -0.874573, -0.137465,
		37.443546, 30.218464, 49.351151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148026, 30.520025, 48.884109>,  <37.769047, 30.830664, 49.447376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148026, 30.520025, 48.884109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.791374, 30.340841, 48.910461>,  <37.577385, 30.233332, 48.926273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.791374, 30.340841, 48.910461>,  <38.148026, 30.520025, 48.884109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791374, 30.340841, 48.910461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160347, 0.176336, -0.971182,
		0.423434, -0.876492, -0.229054,
		-0.891624, -0.447959, 0.065877,
		37.523888, 30.206453, 48.930225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146214, 30.152939, 48.254879>,  <38.148026, 30.520025, 48.884109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146214, 30.152939, 48.254879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.769978, 30.165279, 48.390137>,  <37.544235, 30.172684, 48.471291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.769978, 30.165279, 48.390137>,  <38.146214, 30.152939, 48.254879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769978, 30.165279, 48.390137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336616, 0.045835, -0.940526,
		-0.044513, -0.998473, -0.032728,
		-0.940589, 0.030849, 0.338142,
		37.487801, 30.174534, 48.491581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859783, 29.765692, 47.784935>,  <38.146214, 30.152939, 48.254879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859783, 29.765692, 47.784935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.573097, 29.999046, 47.937763>,  <37.401085, 30.139059, 48.029461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.573097, 29.999046, 47.937763>,  <37.859783, 29.765692, 47.784935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573097, 29.999046, 47.937763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123541, 0.432999, -0.892888,
		-0.686336, -0.687148, -0.238265,
		-0.716715, 0.583386, 0.382074,
		37.358082, 30.174063, 48.052387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322346, 29.766470, 47.322861>,  <37.859783, 29.765692, 47.784935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322346, 29.766470, 47.322861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.290829, 30.107338, 47.529781>,  <37.271919, 30.311859, 47.653934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.290829, 30.107338, 47.529781>,  <37.322346, 29.766470, 47.322861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290829, 30.107338, 47.529781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134148, 0.505131, -0.852553,
		-0.987824, -0.136569, 0.074516,
		-0.078792, 0.852168, 0.517301,
		37.267193, 30.362989, 47.684971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769157, 30.150776, 46.911510>,  <37.322346, 29.766470, 47.322861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769157, 30.150776, 46.911510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903725, 30.438860, 47.154202>,  <36.984467, 30.611710, 47.299816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903725, 30.438860, 47.154202>,  <36.769157, 30.150776, 46.911510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903725, 30.438860, 47.154202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309422, 0.693049, -0.651107,
		-0.889426, 0.031311, 0.456005,
		0.336421, 0.720210, 0.606728,
		37.004650, 30.654922, 47.336220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185928, 30.722630, 46.799480>,  <36.769157, 30.150776, 46.911510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185928, 30.722630, 46.799480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527817, 30.878777, 46.936340>,  <36.732948, 30.972466, 47.018456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527817, 30.878777, 46.936340>,  <36.185928, 30.722630, 46.799480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527817, 30.878777, 46.936340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172338, 0.835147, -0.522330,
		-0.489643, 0.387482, 0.781094,
		0.854722, 0.390367, 0.342146,
		36.784233, 30.995886, 47.038982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973637, 31.518108, 47.030289>,  <36.185928, 30.722630, 46.799480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973637, 31.518108, 47.030289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371773, 31.502676, 46.994946>,  <36.610653, 31.493416, 46.973740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371773, 31.502676, 46.994946>,  <35.973637, 31.518108, 47.030289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371773, 31.502676, 46.994946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015067, 0.842949, -0.537782,
		0.095232, 0.536608, 0.838440,
		0.995341, -0.038582, -0.088361,
		36.670376, 31.491102, 46.968437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172615, 32.155796, 47.196381>,  <35.973637, 31.518108, 47.030289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172615, 32.155796, 47.196381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.480404, 32.032749, 46.972492>,  <36.665077, 31.958921, 46.838158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.480404, 32.032749, 46.972492>,  <36.172615, 32.155796, 47.196381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480404, 32.032749, 46.972492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084049, 0.819975, -0.566195,
		0.633127, 0.482715, 0.605092,
		0.769471, -0.307616, -0.559720,
		36.711246, 31.940464, 46.804577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564262, 32.729172, 47.318428>,  <36.172615, 32.155796, 47.196381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564262, 32.729172, 47.318428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.656063, 32.518463, 46.991055>,  <36.711143, 32.392036, 46.794628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.656063, 32.518463, 46.991055>,  <36.564262, 32.729172, 47.318428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656063, 32.518463, 46.991055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052734, 0.832919, -0.550877,
		0.971878, 0.169588, 0.163379,
		0.229504, -0.526770, -0.818438,
		36.724915, 32.360432, 46.745522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012352, 33.163765, 46.909378>,  <36.564262, 32.729172, 47.318428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012352, 33.163765, 46.909378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.894917, 32.910686, 46.622742>,  <36.824455, 32.758839, 46.450760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.894917, 32.910686, 46.622742>,  <37.012352, 33.163765, 46.909378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894917, 32.910686, 46.622742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016819, 0.746090, -0.665633,
		0.955785, -0.207471, -0.208399,
		-0.293584, -0.632697, -0.716591,
		36.806843, 32.720879, 46.407764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395222, 33.291615, 46.265030>,  <37.012352, 33.163765, 46.909378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395222, 33.291615, 46.265030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080395, 33.081623, 46.135468>,  <36.891499, 32.955627, 46.057732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080395, 33.081623, 46.135468>,  <37.395222, 33.291615, 46.265030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080395, 33.081623, 46.135468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080561, 0.608063, -0.789791,
		0.611602, -0.595512, -0.520872,
		-0.787053, -0.524999, -0.323918,
		36.844273, 32.924129, 46.038296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.889565, 39.798595, 39.927147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516361, 39.801514, 40.071060>,  <42.292439, 39.803265, 40.157410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516361, 39.801514, 40.071060>,  <42.889565, 39.798595, 39.927147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516361, 39.801514, 40.071060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107961, -0.959411, -0.260526,
		0.343279, -0.281915, 0.895926,
		-0.933008, 0.007291, 0.359782,
		42.236458, 39.803699, 40.178993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698883, 39.154808, 40.305553>,  <42.889565, 39.798595, 39.927147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698883, 39.154808, 40.305553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347504, 39.289284, 40.169727>,  <42.136677, 39.369968, 40.088234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347504, 39.289284, 40.169727>,  <42.698883, 39.154808, 40.305553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347504, 39.289284, 40.169727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229533, -0.920156, -0.317220,
		-0.419098, -0.200720, 0.885476,
		-0.878449, 0.336192, -0.339563,
		42.083969, 39.390141, 40.067860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215462, 38.683468, 40.495407>,  <42.698883, 39.154808, 40.305553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215462, 38.683468, 40.495407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.061489, 38.877621, 40.181408>,  <41.969105, 38.994114, 39.993008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.061489, 38.877621, 40.181408>,  <42.215462, 38.683468, 40.495407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061489, 38.877621, 40.181408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210871, -0.874297, -0.437193,
		-0.898532, -0.002755, 0.438899,
		-0.384932, 0.485383, -0.785004,
		41.946007, 39.023235, 39.945908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614567, 38.287415, 40.476700>,  <42.215462, 38.683468, 40.495407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614567, 38.287415, 40.476700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664406, 38.475307, 40.127113>,  <41.694309, 38.588043, 39.917362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664406, 38.475307, 40.127113>,  <41.614567, 38.287415, 40.476700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664406, 38.475307, 40.127113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131433, -0.865257, -0.483792,
		-0.983464, 0.175147, -0.046068,
		0.124595, 0.469737, -0.873970,
		41.701786, 38.616230, 39.864922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143364, 38.031334, 40.100704>,  <41.614567, 38.287415, 40.476700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143364, 38.031334, 40.100704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.363960, 38.208160, 39.817738>,  <41.496319, 38.314255, 39.647957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.363960, 38.208160, 39.817738>,  <41.143364, 38.031334, 40.100704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363960, 38.208160, 39.817738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105337, -0.804342, -0.584755,
		-0.827502, 0.397005, -0.397024,
		0.551494, 0.442064, -0.707413,
		41.529408, 38.340778, 39.605515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744637, 38.023758, 39.413631>,  <41.143364, 38.031334, 40.100704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744637, 38.023758, 39.413631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.131493, 38.060062, 39.318638>,  <41.363605, 38.081844, 39.261642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.131493, 38.060062, 39.318638>,  <40.744637, 38.023758, 39.413631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131493, 38.060062, 39.318638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117916, -0.667417, -0.735289,
		-0.225235, 0.739132, -0.634785,
		0.967143, 0.090762, -0.237481,
		41.421635, 38.087292, 39.247395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761715, 38.229763, 38.698997>,  <40.744637, 38.023758, 39.413631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761715, 38.229763, 38.698997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130905, 38.087929, 38.758835>,  <41.352421, 38.002827, 38.794735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130905, 38.087929, 38.758835>,  <40.761715, 38.229763, 38.698997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130905, 38.087929, 38.758835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098031, -0.592493, -0.799589,
		0.372154, 0.723340, -0.581620,
		0.922980, -0.354587, 0.149589,
		41.407799, 37.981552, 38.803711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203407, 38.151814, 37.958832>,  <40.761715, 38.229763, 38.698997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203407, 38.151814, 37.958832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.370285, 37.918915, 38.237953>,  <41.470413, 37.779175, 38.405426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.370285, 37.918915, 38.237953>,  <41.203407, 38.151814, 37.958832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370285, 37.918915, 38.237953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165819, -0.706163, -0.688359,
		0.893562, 0.402888, -0.198059,
		0.417194, -0.582249, 0.697807,
		41.495441, 37.744240, 38.447296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718143, 37.873451, 37.614109>,  <41.203407, 38.151814, 37.958832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718143, 37.873451, 37.614109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.689968, 37.639469, 37.937309>,  <41.673065, 37.499081, 38.131229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.689968, 37.639469, 37.937309>,  <41.718143, 37.873451, 37.614109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689968, 37.639469, 37.937309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224640, -0.798507, -0.558501,
		0.971893, 0.142172, 0.187647,
		-0.070434, -0.584956, 0.808001,
		41.668839, 37.463982, 38.179710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257729, 37.332218, 37.513256>,  <41.718143, 37.873451, 37.614109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257729, 37.332218, 37.513256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.984894, 37.184818, 37.765911>,  <41.821194, 37.096378, 37.917503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.984894, 37.184818, 37.765911>,  <42.257729, 37.332218, 37.513256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984894, 37.184818, 37.765911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050793, -0.885542, -0.461775,
		0.729503, -0.282889, 0.622735,
		-0.682089, -0.368496, 0.631637,
		41.780266, 37.074268, 37.955402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550602, 36.685287, 37.565250>,  <42.257729, 37.332218, 37.513256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550602, 36.685287, 37.565250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.176281, 36.673069, 37.705727>,  <41.951687, 36.665737, 37.790012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.176281, 36.673069, 37.705727>,  <42.550602, 36.685287, 37.565250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176281, 36.673069, 37.705727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108970, -0.922375, -0.370607,
		0.335251, -0.385085, 0.859835,
		-0.935806, -0.030550, 0.351190,
		41.895538, 36.663902, 37.811085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562107, 36.061535, 37.881241>,  <42.550602, 36.685287, 37.565250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562107, 36.061535, 37.881241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.177910, 36.159157, 37.827732>,  <41.947392, 36.217728, 37.795628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.177910, 36.159157, 37.827732>,  <42.562107, 36.061535, 37.881241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177910, 36.159157, 37.827732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169747, -0.894613, -0.413344,
		-0.220548, -0.374307, 0.900696,
		-0.960492, 0.244053, -0.133768,
		41.889763, 36.232372, 37.787601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230686, 35.620117, 38.248989>,  <42.562107, 36.061535, 37.881241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230686, 35.620117, 38.248989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.998184, 35.734741, 37.944351>,  <41.858685, 35.803516, 37.761570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.998184, 35.734741, 37.944351>,  <42.230686, 35.620117, 38.248989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998184, 35.734741, 37.944351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158013, -0.957872, -0.239818,
		-0.798232, -0.019054, 0.602049,
		-0.581256, 0.286562, -0.761593,
		41.823807, 35.820709, 37.715874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873978, 35.117664, 38.214180>,  <42.230686, 35.620117, 38.248989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873978, 35.117664, 38.214180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.804359, 35.286732, 37.858414>,  <41.762589, 35.388172, 37.644955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.804359, 35.286732, 37.858414>,  <41.873978, 35.117664, 38.214180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804359, 35.286732, 37.858414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015037, -0.904233, -0.426774,
		-0.984622, -0.060906, 0.163737,
		-0.174050, 0.422673, -0.889412,
		41.752144, 35.413532, 37.591591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565453, 34.553707, 37.814003>,  <41.873978, 35.117664, 38.214180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565453, 34.553707, 37.814003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700153, 34.811783, 37.539680>,  <41.780972, 34.966629, 37.375088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700153, 34.811783, 37.539680>,  <41.565453, 34.553707, 37.814003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700153, 34.811783, 37.539680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127805, -0.752927, -0.645574,
		-0.932881, 0.129746, -0.336005,
		0.336748, 0.645187, -0.685809,
		41.801178, 35.005341, 37.333939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190727, 34.471321, 37.198341>,  <41.565453, 34.553707, 37.814003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190727, 34.471321, 37.198341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.521145, 34.644585, 37.054108>,  <41.719395, 34.748543, 36.967567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.521145, 34.644585, 37.054108>,  <41.190727, 34.471321, 37.198341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521145, 34.644585, 37.054108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158991, -0.792893, -0.588255,
		-0.540717, 0.428594, -0.723832,
		0.826043, 0.433162, -0.360588,
		41.768959, 34.774532, 36.945930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245312, 34.402679, 36.543072>,  <41.190727, 34.471321, 37.198341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245312, 34.402679, 36.543072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.632248, 34.469807, 36.619068>,  <41.864410, 34.510082, 36.664665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.632248, 34.469807, 36.619068>,  <41.245312, 34.402679, 36.543072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632248, 34.469807, 36.619068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233807, -0.880236, -0.412939,
		0.097939, 0.443873, -0.890722,
		0.967338, 0.167814, 0.189990,
		41.922451, 34.520149, 36.676064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698238, 34.605038, 35.903934>,  <41.245312, 34.402679, 36.543072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698238, 34.605038, 35.903934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.895275, 34.407764, 36.190742>,  <42.013496, 34.289402, 36.362827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.895275, 34.407764, 36.190742>,  <41.698238, 34.605038, 35.903934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895275, 34.407764, 36.190742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364428, -0.631301, -0.684581,
		0.790282, 0.598523, -0.131245,
		0.492592, -0.493182, 0.717024,
		42.043053, 34.259811, 36.405849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347107, 34.564816, 35.685543>,  <41.698238, 34.605038, 35.903934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347107, 34.564816, 35.685543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.334835, 34.269367, 35.954910>,  <42.327473, 34.092098, 36.116531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.334835, 34.269367, 35.954910>,  <42.347107, 34.564816, 35.685543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334835, 34.269367, 35.954910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517356, -0.588198, -0.621583,
		0.855220, 0.329326, 0.400179,
		-0.030681, -0.738625, 0.673418,
		42.325630, 34.047779, 36.156937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845913, 34.180008, 35.388195>,  <42.347107, 34.564816, 35.685543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845913, 34.180008, 35.388195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.714802, 33.936237, 35.676964>,  <42.636135, 33.789974, 35.850224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.714802, 33.936237, 35.676964>,  <42.845913, 34.180008, 35.388195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714802, 33.936237, 35.676964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319979, -0.790583, -0.522104,
		0.888918, 0.059864, 0.454138,
		-0.327779, -0.609422, 0.721918,
		42.616467, 33.753410, 35.893539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328499, 33.635952, 35.464294>,  <42.845913, 34.180008, 35.388195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328499, 33.635952, 35.464294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.005608, 33.456581, 35.617809>,  <42.811874, 33.348957, 35.709919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.005608, 33.456581, 35.617809>,  <43.328499, 33.635952, 35.464294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005608, 33.456581, 35.617809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245165, -0.846219, -0.473083,
		0.536914, -0.287794, 0.793031,
		-0.807228, -0.448428, 0.383789,
		42.763439, 33.322052, 35.732944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021832, 33.938763, 35.606312>,  <43.328499, 33.635952, 35.464294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021832, 33.938763, 35.606312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.412258, 34.024281, 35.622242>,  <44.646515, 34.075592, 35.631798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.412258, 34.024281, 35.622242>,  <44.021832, 33.938763, 35.606312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412258, 34.024281, 35.622242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168211, 0.626143, 0.761348,
		0.137838, -0.749825, 0.647120,
		0.976067, 0.213795, 0.039823,
		44.705078, 34.088421, 35.634190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160107, 33.782272, 36.281845>,  <44.021832, 33.938763, 35.606312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160107, 33.782272, 36.281845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450588, 34.022251, 36.147564>,  <44.624878, 34.166237, 36.066994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450588, 34.022251, 36.147564>,  <44.160107, 33.782272, 36.281845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450588, 34.022251, 36.147564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087301, 0.564835, 0.820573,
		0.681919, -0.566592, 0.462558,
		0.726199, 0.599947, -0.335708,
		44.668449, 34.202236, 36.046852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476990, 34.019146, 36.925240>,  <44.160107, 33.782272, 36.281845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476990, 34.019146, 36.925240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.619118, 34.280491, 36.657848>,  <44.704395, 34.437298, 36.497414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.619118, 34.280491, 36.657848>,  <44.476990, 34.019146, 36.925240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619118, 34.280491, 36.657848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026316, 0.721857, 0.691542,
		0.934376, -0.228124, 0.273681,
		0.355316, 0.653362, -0.668482,
		44.725712, 34.476498, 36.457302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121601, 34.247963, 37.250851>,  <44.476990, 34.019146, 36.925240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121601, 34.247963, 37.250851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999886, 34.509972, 36.974197>,  <44.926857, 34.667179, 36.808205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999886, 34.509972, 36.974197>,  <45.121601, 34.247963, 37.250851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999886, 34.509972, 36.974197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099814, 0.743987, 0.660697,
		0.947336, 0.132008, -0.291767,
		-0.304288, 0.655024, -0.691630,
		44.908600, 34.706478, 36.766708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591801, 34.724754, 37.359463>,  <45.121601, 34.247963, 37.250851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591801, 34.724754, 37.359463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.289478, 34.881359, 37.149521>,  <45.108086, 34.975323, 37.023556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.289478, 34.881359, 37.149521>,  <45.591801, 34.724754, 37.359463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289478, 34.881359, 37.149521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119669, 0.870651, 0.477123,
		0.643768, 0.297803, -0.704894,
		-0.755806, 0.391510, -0.524859,
		45.062737, 34.998814, 36.992062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820145, 35.393177, 37.215683>,  <45.591801, 34.724754, 37.359463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820145, 35.393177, 37.215683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.424259, 35.388279, 37.158672>,  <45.186726, 35.385342, 37.124466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.424259, 35.388279, 37.158672>,  <45.820145, 35.393177, 37.215683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424259, 35.388279, 37.158672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090623, 0.824567, 0.558459,
		0.110685, 0.565632, -0.817196,
		-0.989715, -0.012244, -0.142527,
		45.127346, 35.384605, 37.115913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651352, 36.083759, 37.034409>,  <45.820145, 35.393177, 37.215683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651352, 36.083759, 37.034409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.299984, 35.935463, 37.155029>,  <45.089165, 35.846485, 37.227402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.299984, 35.935463, 37.155029>,  <45.651352, 36.083759, 37.034409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299984, 35.935463, 37.155029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207430, 0.864246, 0.458313,
		-0.430528, 0.340041, -0.836073,
		-0.878418, -0.370743, 0.301547,
		45.036457, 35.824242, 37.245495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194160, 36.600986, 36.779041>,  <45.651352, 36.083759, 37.034409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.194160, 36.600986, 36.779041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.013000, 36.402691, 37.075451>,  <44.904305, 36.283714, 37.253296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.013000, 36.402691, 37.075451>,  <45.194160, 36.600986, 36.779041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013000, 36.402691, 37.075451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255701, 0.868466, 0.424716,
		-0.854107, 0.002873, -0.520089,
		-0.452900, -0.495740, 0.741029,
		44.877129, 36.253967, 37.297760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594662, 36.920269, 36.944637>,  <45.194160, 36.600986, 36.779041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594662, 36.920269, 36.944637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.637482, 36.714985, 37.285263>,  <44.663174, 36.591816, 37.489639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.637482, 36.714985, 37.285263>,  <44.594662, 36.920269, 36.944637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.637482, 36.714985, 37.285263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277563, 0.807007, 0.521247,
		-0.954724, -0.292163, -0.056054,
		0.107053, -0.513206, 0.851563,
		44.669598, 36.561024, 37.540733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023430, 37.057545, 37.330765>,  <44.594662, 36.920269, 36.944637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023430, 37.057545, 37.330765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282532, 36.928070, 37.606632>,  <44.437992, 36.850384, 37.772152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282532, 36.928070, 37.606632>,  <44.023430, 37.057545, 37.330765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282532, 36.928070, 37.606632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206737, 0.796607, 0.568047,
		-0.733265, -0.510534, 0.449086,
		0.647752, -0.323686, 0.689670,
		44.476856, 36.830963, 37.813534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652859, 37.013828, 37.962212>,  <44.023430, 37.057545, 37.330765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652859, 37.013828, 37.962212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.034561, 37.048737, 38.076595>,  <44.263584, 37.069679, 38.145226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.034561, 37.048737, 38.076595>,  <43.652859, 37.013828, 37.962212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034561, 37.048737, 38.076595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266442, 0.682142, 0.680949,
		-0.135641, -0.725994, 0.674192,
		0.954259, 0.087268, 0.285962,
		44.320839, 37.074917, 38.162384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658173, 37.243092, 38.617565>,  <43.652859, 37.013828, 37.962212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658173, 37.243092, 38.617565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.052578, 37.278610, 38.561150>,  <44.289223, 37.299923, 38.527302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.052578, 37.278610, 38.561150>,  <43.658173, 37.243092, 38.617565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052578, 37.278610, 38.561150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047034, 0.663580, 0.746625,
		0.159888, -0.742816, 0.650123,
		0.986014, 0.088799, -0.141036,
		44.348381, 37.305248, 38.518837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079727, 36.991932, 39.187141>,  <43.658173, 37.243092, 38.617565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079727, 36.991932, 39.187141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.261375, 37.284027, 38.982971>,  <44.370365, 37.459282, 38.860470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.261375, 37.284027, 38.982971>,  <44.079727, 36.991932, 39.187141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261375, 37.284027, 38.982971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006971, 0.575802, 0.817559,
		0.890915, -0.367709, 0.266572,
		0.454117, 0.730234, -0.510427,
		44.397610, 37.503098, 38.829842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730598, 37.169685, 39.618996>,  <44.079727, 36.991932, 39.187141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730598, 37.169685, 39.618996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664017, 37.469967, 39.363266>,  <44.624069, 37.650135, 39.209827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664017, 37.469967, 39.363266>,  <44.730598, 37.169685, 39.618996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664017, 37.469967, 39.363266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093279, 0.633474, 0.768121,
		0.981627, 0.187492, -0.035419,
		-0.166453, 0.750705, -0.639325,
		44.614082, 37.695179, 39.171467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163452, 37.808460, 39.918129>,  <44.730598, 37.169685, 39.618996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.163452, 37.808460, 39.918129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.915142, 37.993137, 39.664680>,  <44.766155, 38.103943, 39.512611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.915142, 37.993137, 39.664680>,  <45.163452, 37.808460, 39.918129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915142, 37.993137, 39.664680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075907, 0.769013, 0.634710,
		0.780302, 0.442112, -0.442342,
		-0.620780, 0.461689, -0.633622,
		44.728909, 38.131645, 39.474594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.281734, 38.497433, 40.018677>,  <45.163452, 37.808460, 39.918129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.281734, 38.497433, 40.018677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933670, 38.528095, 39.823971>,  <44.724831, 38.546494, 39.707146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933670, 38.528095, 39.823971>,  <45.281734, 38.497433, 40.018677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933670, 38.528095, 39.823971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243513, 0.791880, 0.560025,
		0.428389, 0.605847, -0.670397,
		-0.870164, 0.076658, -0.486764,
		44.672623, 38.551094, 39.677940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209892, 39.192959, 39.904057>,  <45.281734, 38.497433, 40.018677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209892, 39.192959, 39.904057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.840351, 39.040287, 39.892567>,  <44.618626, 38.948685, 39.885674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.840351, 39.040287, 39.892567>,  <45.209892, 39.192959, 39.904057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840351, 39.040287, 39.892567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343694, 0.794193, 0.501131,
		-0.168456, 0.472842, -0.864894,
		-0.923849, -0.381678, -0.028726,
		44.563198, 38.925785, 39.883949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777863, 39.746796, 39.797905>,  <45.209892, 39.192959, 39.904057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777863, 39.746796, 39.797905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539879, 39.471153, 39.963387>,  <44.397087, 39.305767, 40.062675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539879, 39.471153, 39.963387>,  <44.777863, 39.746796, 39.797905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539879, 39.471153, 39.963387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334346, 0.680264, 0.652268,
		-0.730911, 0.249754, -0.635132,
		-0.594964, -0.689103, 0.413708,
		44.361389, 39.264423, 40.087498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228649, 40.110821, 39.936131>,  <44.777863, 39.746796, 39.797905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228649, 40.110821, 39.936131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182903, 39.790394, 40.171146>,  <44.155457, 39.598137, 40.312157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182903, 39.790394, 40.171146>,  <44.228649, 40.110821, 39.936131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182903, 39.790394, 40.171146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333843, 0.588020, 0.736737,
		-0.935665, -0.111887, -0.334682,
		-0.114369, -0.801070, 0.587542,
		44.148594, 39.550072, 40.347408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560730, 40.209404, 40.221893>,  <44.228649, 40.110821, 39.936131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560730, 40.209404, 40.221893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.754375, 39.946148, 40.452538>,  <43.870564, 39.788193, 40.590923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.754375, 39.946148, 40.452538>,  <43.560730, 40.209404, 40.221893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754375, 39.946148, 40.452538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318433, 0.481279, 0.816683,
		-0.815004, -0.578982, 0.023421,
		0.484117, -0.658141, 0.576611,
		43.899612, 39.748707, 40.625523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161011, 40.089275, 40.767067>,  <43.560730, 40.209404, 40.221893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161011, 40.089275, 40.767067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.521160, 39.984718, 40.906208>,  <43.737251, 39.921982, 40.989693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.521160, 39.984718, 40.906208>,  <43.161011, 40.089275, 40.767067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521160, 39.984718, 40.906208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070754, 0.700851, 0.709790,
		-0.429330, -0.663687, 0.612532,
		0.900372, -0.261395, 0.347854,
		43.791271, 39.906300, 41.010563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.598064, 34.621429, 41.115307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272369, 34.416203, 41.006664>,  <39.076950, 34.293064, 40.941479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272369, 34.416203, 41.006664>,  <39.598064, 34.621429, 41.115307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272369, 34.416203, 41.006664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014069, 0.485169, -0.874307,
		0.580360, -0.708073, -0.402262,
		-0.814238, -0.513072, -0.271611,
		39.028099, 34.262283, 40.925182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796715, 34.302673, 40.324162>,  <39.598064, 34.621429, 41.115307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796715, 34.302673, 40.324162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404404, 34.327240, 40.398254>,  <39.169018, 34.341980, 40.442711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404404, 34.327240, 40.398254>,  <39.796715, 34.302673, 40.324162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404404, 34.327240, 40.398254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135656, 0.467761, -0.873383,
		-0.140283, -0.881719, -0.450436,
		-0.980774, 0.061417, 0.185229,
		39.110172, 34.345665, 40.453823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514076, 33.981422, 39.732410>,  <39.796715, 34.302673, 40.324162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514076, 33.981422, 39.732410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212166, 34.201824, 39.874798>,  <39.031021, 34.334064, 39.960228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212166, 34.201824, 39.874798>,  <39.514076, 33.981422, 39.732410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212166, 34.201824, 39.874798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183215, 0.343978, -0.920930,
		-0.629877, -0.760314, -0.158675,
		-0.754776, 0.551000, 0.355965,
		38.985733, 34.367123, 39.981586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972401, 33.894653, 39.306339>,  <39.514076, 33.981422, 39.732410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972401, 33.894653, 39.306339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883865, 34.236668, 39.493919>,  <38.830746, 34.441875, 39.606468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883865, 34.236668, 39.493919>,  <38.972401, 33.894653, 39.306339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883865, 34.236668, 39.493919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204652, 0.429446, -0.879598,
		-0.953481, -0.290662, 0.079933,
		-0.221339, 0.855039, 0.468953,
		38.817463, 34.493179, 39.634605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336689, 34.075352, 39.062183>,  <38.972401, 33.894653, 39.306339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336689, 34.075352, 39.062183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487476, 34.414177, 39.212055>,  <38.577950, 34.617474, 39.301979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487476, 34.414177, 39.212055>,  <38.336689, 34.075352, 39.062183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487476, 34.414177, 39.212055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261750, 0.485455, -0.834159,
		-0.888471, 0.216381, 0.404719,
		0.376969, 0.847062, 0.374675,
		38.600567, 34.668297, 39.324459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852989, 34.626926, 39.077927>,  <38.336689, 34.075352, 39.062183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852989, 34.626926, 39.077927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204536, 34.817616, 39.085258>,  <38.415462, 34.932030, 39.089657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204536, 34.817616, 39.085258>,  <37.852989, 34.626926, 39.077927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204536, 34.817616, 39.085258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293673, 0.570890, -0.766708,
		-0.375969, 0.668449, 0.641735,
		0.878865, 0.476718, 0.018332,
		38.468197, 34.960632, 39.090759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654156, 35.231186, 39.045174>,  <37.852989, 34.626926, 39.077927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654156, 35.231186, 39.045174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028980, 35.265121, 38.909687>,  <38.253876, 35.285484, 38.828396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028980, 35.265121, 38.909687>,  <37.654156, 35.231186, 39.045174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028980, 35.265121, 38.909687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287686, 0.737335, -0.611206,
		0.197890, 0.670178, 0.715333,
		0.937057, 0.084839, -0.338712,
		38.310097, 35.290573, 38.808075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684502, 35.889187, 38.879650>,  <37.654156, 35.231186, 39.045174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684502, 35.889187, 38.879650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010292, 35.737885, 38.703671>,  <38.205765, 35.647102, 38.598083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010292, 35.737885, 38.703671>,  <37.684502, 35.889187, 38.879650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010292, 35.737885, 38.703671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121177, 0.630649, -0.766550,
		0.567407, 0.677645, 0.467810,
		0.814473, -0.378258, -0.439949,
		38.254635, 35.624409, 38.571686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172871, 36.522659, 38.690411>,  <37.684502, 35.889187, 38.879650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172871, 36.522659, 38.690411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231411, 36.192486, 38.472332>,  <38.266537, 35.994381, 38.341484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231411, 36.192486, 38.472332>,  <38.172871, 36.522659, 38.690411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231411, 36.192486, 38.472332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179891, 0.519734, -0.835174,
		0.972738, 0.220307, -0.072423,
		0.146354, -0.825434, -0.545197,
		38.275318, 35.944855, 38.308773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684349, 36.730072, 38.231369>,  <38.172871, 36.522659, 38.690411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684349, 36.730072, 38.231369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514912, 36.408306, 38.064762>,  <38.413250, 36.215248, 37.964798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514912, 36.408306, 38.064762>,  <38.684349, 36.730072, 38.231369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514912, 36.408306, 38.064762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218968, 0.537096, -0.814605,
		0.878987, -0.253861, -0.403653,
		-0.423597, -0.804415, -0.416513,
		38.387833, 36.166981, 37.939808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838978, 36.762909, 37.525398>,  <38.684349, 36.730072, 38.231369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838978, 36.762909, 37.525398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532604, 36.506092, 37.538837>,  <38.348778, 36.352001, 37.546902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532604, 36.506092, 37.538837>,  <38.838978, 36.762909, 37.525398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532604, 36.506092, 37.538837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348073, 0.370170, -0.861290,
		0.540544, -0.671387, -0.507002,
		-0.765935, -0.642039, 0.033599,
		38.302822, 36.313480, 37.548916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789684, 36.397495, 36.894970>,  <38.838978, 36.762909, 37.525398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789684, 36.397495, 36.894970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420444, 36.398647, 37.048786>,  <38.198898, 36.399338, 37.141075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420444, 36.398647, 37.048786>,  <38.789684, 36.397495, 36.894970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420444, 36.398647, 37.048786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366380, 0.297213, -0.881720,
		-0.116827, -0.954807, -0.273304,
		-0.923102, 0.002876, 0.384545,
		38.143513, 36.399509, 37.164150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861385, 35.895596, 36.406319>,  <38.789684, 36.397495, 36.894970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861385, 35.895596, 36.406319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801937, 36.227318, 36.190853>,  <38.766266, 36.426353, 36.061573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801937, 36.227318, 36.190853>,  <38.861385, 35.895596, 36.406319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801937, 36.227318, 36.190853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981205, 0.191462, 0.024040,
		0.123071, -0.524967, -0.842178,
		-0.148625, 0.829308, -0.538664,
		38.757351, 36.476109, 36.029255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376141, 35.407742, 36.565968>,  <38.861385, 35.895596, 36.406319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376141, 35.407742, 36.565968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483295, 35.282772, 36.201412>,  <39.547588, 35.207790, 35.982677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483295, 35.282772, 36.201412>,  <39.376141, 35.407742, 36.565968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483295, 35.282772, 36.201412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794006, -0.607388, -0.025168,
		-0.545704, 0.730391, -0.410775,
		0.267883, -0.312424, -0.911389,
		39.563660, 35.189045, 35.927994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973896, 34.985573, 36.131996>,  <39.376141, 35.407742, 36.565968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973896, 34.985573, 36.131996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158737, 34.687443, 35.939766>,  <39.269642, 34.508564, 35.824429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158737, 34.687443, 35.939766>,  <38.973896, 34.985573, 36.131996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158737, 34.687443, 35.939766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085244, -0.502068, 0.860617,
		-0.882722, -0.438657, -0.168471,
		0.462099, -0.745324, -0.480580,
		39.297367, 34.463844, 35.795593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610283, 34.469891, 36.448048>,  <38.973896, 34.985573, 36.131996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610283, 34.469891, 36.448048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925266, 34.289028, 36.280495>,  <39.114258, 34.180511, 36.179962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925266, 34.289028, 36.280495>,  <38.610283, 34.469891, 36.448048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925266, 34.289028, 36.280495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001525, -0.681026, 0.732257,
		-0.616364, -0.575984, -0.536970,
		0.787460, -0.452156, -0.418881,
		39.161503, 34.153381, 36.154831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415974, 33.798534, 36.420902>,  <38.610283, 34.469891, 36.448048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415974, 33.798534, 36.420902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815269, 33.808388, 36.399307>,  <39.054848, 33.814301, 36.386353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815269, 33.808388, 36.399307>,  <38.415974, 33.798534, 36.420902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815269, 33.808388, 36.399307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058256, -0.579855, 0.812634,
		-0.011285, -0.814347, -0.580268,
		0.998238, 0.024633, -0.053985,
		39.114742, 33.815777, 36.383110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566799, 33.109425, 36.500332>,  <38.415974, 33.798534, 36.420902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566799, 33.109425, 36.500332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907299, 33.301601, 36.584763>,  <39.111599, 33.416908, 36.635422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907299, 33.301601, 36.584763>,  <38.566799, 33.109425, 36.500332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907299, 33.301601, 36.584763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120702, -0.570704, 0.812236,
		0.510689, -0.665940, -0.543802,
		0.851251, 0.480438, 0.211072,
		39.162674, 33.445732, 36.648083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081909, 32.579998, 36.533253>,  <38.566799, 33.109425, 36.500332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081909, 32.579998, 36.533253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199753, 32.898937, 36.743946>,  <39.270458, 33.090302, 36.870361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199753, 32.898937, 36.743946>,  <39.081909, 32.579998, 36.533253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199753, 32.898937, 36.743946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330713, -0.602206, 0.726621,
		0.896569, -0.039870, -0.441106,
		0.294606, 0.797345, 0.526733,
		39.288136, 33.138142, 36.901966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709240, 32.462780, 36.759544>,  <39.081909, 32.579998, 36.533253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709240, 32.462780, 36.759544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556370, 32.727085, 37.017948>,  <39.464649, 32.885670, 37.172993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556370, 32.727085, 37.017948>,  <39.709240, 32.462780, 36.759544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556370, 32.727085, 37.017948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249991, -0.599084, 0.760659,
		0.889634, 0.452200, 0.063767,
		-0.382172, 0.660767, 0.646012,
		39.441719, 32.925316, 37.211750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070007, 32.430988, 37.292583>,  <39.709240, 32.462780, 36.759544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070007, 32.430988, 37.292583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752117, 32.604607, 37.462296>,  <39.561382, 32.708778, 37.564125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752117, 32.604607, 37.462296>,  <40.070007, 32.430988, 37.292583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752117, 32.604607, 37.462296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177577, -0.502165, 0.846343,
		0.580412, 0.747953, 0.322006,
		-0.794725, 0.434047, 0.424282,
		39.513699, 32.734821, 37.589581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300304, 32.522095, 37.952496>,  <40.070007, 32.430988, 37.292583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300304, 32.522095, 37.952496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905159, 32.570633, 37.991295>,  <39.668072, 32.599758, 38.014572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905159, 32.570633, 37.991295>,  <40.300304, 32.522095, 37.952496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905159, 32.570633, 37.991295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048916, -0.349634, 0.935608,
		0.147448, 0.928994, 0.339454,
		-0.987859, 0.121349, 0.096995,
		39.608803, 32.607037, 38.020393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242886, 32.775562, 38.527164>,  <40.300304, 32.522095, 37.952496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242886, 32.775562, 38.527164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858261, 32.673653, 38.486183>,  <39.627487, 32.612507, 38.461594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858261, 32.673653, 38.486183>,  <40.242886, 32.775562, 38.527164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858261, 32.673653, 38.486183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022374, -0.299158, 0.953941,
		-0.273691, 0.919561, 0.281957,
		-0.961557, -0.254776, -0.102452,
		39.569794, 32.597221, 38.455448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847004, 33.106750, 39.092232>,  <40.242886, 32.775562, 38.527164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847004, 33.106750, 39.092232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651798, 32.776443, 38.979134>,  <39.534676, 32.578259, 38.911274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651798, 32.776443, 38.979134>,  <39.847004, 33.106750, 39.092232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651798, 32.776443, 38.979134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110933, -0.262632, 0.958498,
		-0.865758, 0.499126, 0.036563,
		-0.488014, -0.825771, -0.282746,
		39.505394, 32.528713, 38.894310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360535, 32.979404, 39.618328>,  <39.847004, 33.106750, 39.092232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360535, 32.979404, 39.618328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340111, 32.641655, 39.405003>,  <39.327858, 32.439007, 39.277008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340111, 32.641655, 39.405003>,  <39.360535, 32.979404, 39.618328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340111, 32.641655, 39.405003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243837, -0.507310, 0.826547,
		-0.968471, 0.172243, -0.179988,
		-0.051057, -0.844375, -0.533314,
		39.324795, 32.388344, 39.245007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783489, 32.620625, 39.762356>,  <39.360535, 32.979404, 39.618328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783489, 32.620625, 39.762356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009560, 32.319992, 39.626297>,  <39.145203, 32.139614, 39.544662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009560, 32.319992, 39.626297>,  <38.783489, 32.620625, 39.762356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009560, 32.319992, 39.626297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196155, -0.522918, 0.829506,
		-0.801308, -0.402099, -0.442969,
		0.565180, -0.751581, -0.340144,
		39.179115, 32.094517, 39.524254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356281, 31.988129, 39.769993>,  <38.783489, 32.620625, 39.762356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356281, 31.988129, 39.769993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744614, 31.892494, 39.762848>,  <38.977615, 31.835114, 39.758560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744614, 31.892494, 39.762848>,  <38.356281, 31.988129, 39.769993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744614, 31.892494, 39.762848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154810, -0.682013, 0.714767,
		-0.183073, -0.691155, -0.699134,
		0.970834, -0.239088, -0.017860,
		39.035862, 31.820768, 39.757488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358196, 31.309666, 39.958847>,  <38.356281, 31.988129, 39.769993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358196, 31.309666, 39.958847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747299, 31.382702, 40.015980>,  <38.980762, 31.426523, 40.050259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747299, 31.382702, 40.015980>,  <38.358196, 31.309666, 39.958847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747299, 31.382702, 40.015980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035913, -0.489988, 0.870989,
		0.229022, -0.852392, -0.470083,
		0.972759, 0.182593, 0.142830,
		39.039127, 31.437479, 40.058830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843979, 30.913416, 39.684067>,  <38.358196, 31.309666, 39.958847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843979, 30.913416, 39.684067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466118, 30.800470, 39.750881>,  <37.239403, 30.732704, 39.790970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466118, 30.800470, 39.750881>,  <37.843979, 30.913416, 39.684067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466118, 30.800470, 39.750881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308807, 0.593408, -0.743307,
		0.110760, -0.753749, -0.647760,
		-0.944653, -0.282362, 0.167037,
		37.182720, 30.715761, 39.800991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626041, 30.912066, 39.063942>,  <37.843979, 30.913416, 39.684067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626041, 30.912066, 39.063942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295929, 30.912237, 39.289829>,  <37.097862, 30.912340, 39.425362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295929, 30.912237, 39.289829>,  <37.626041, 30.912066, 39.063942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295929, 30.912237, 39.289829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420799, 0.666433, -0.615463,
		-0.376615, -0.745564, -0.549814,
		-0.825281, 0.000432, 0.564721,
		37.048344, 30.912367, 39.459244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097130, 30.816982, 38.509121>,  <37.626041, 30.912066, 39.063942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097130, 30.816982, 38.509121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899952, 30.971745, 38.820839>,  <36.781643, 31.064602, 39.007870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899952, 30.971745, 38.820839>,  <37.097130, 30.816982, 38.509121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899952, 30.971745, 38.820839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565360, 0.538376, -0.624915,
		-0.661339, -0.748635, -0.046650,
		-0.492948, 0.386907, 0.779298,
		36.752068, 31.087816, 39.054626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371029, 30.821875, 38.330067>,  <37.097130, 30.816982, 38.509121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371029, 30.821875, 38.330067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443451, 31.090984, 38.617008>,  <36.486904, 31.252451, 38.789173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443451, 31.090984, 38.617008>,  <36.371029, 30.821875, 38.330067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443451, 31.090984, 38.617008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419206, 0.712618, -0.562532,
		-0.889654, -0.198868, 0.411056,
		0.181057, 0.672776, 0.717350,
		36.497768, 31.292818, 38.832214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718819, 31.112389, 38.400269>,  <36.371029, 30.821875, 38.330067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718819, 31.112389, 38.400269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982449, 31.366144, 38.561848>,  <36.140625, 31.518398, 38.658794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982449, 31.366144, 38.561848>,  <35.718819, 31.112389, 38.400269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982449, 31.366144, 38.561848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423625, 0.756940, -0.497578,
		-0.621420, 0.156819, 0.767623,
		0.659074, 0.634389, 0.403945,
		36.180172, 31.556461, 38.683033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336891, 31.562021, 38.579044>,  <35.718819, 31.112389, 38.400269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336891, 31.562021, 38.579044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686932, 31.755547, 38.574699>,  <35.896957, 31.871662, 38.572094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686932, 31.755547, 38.574699>,  <35.336891, 31.562021, 38.579044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686932, 31.755547, 38.574699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428040, 0.763365, -0.483793,
		-0.225777, 0.428017, 0.875115,
		0.875104, 0.483814, -0.010858,
		35.949463, 31.900690, 38.571442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231590, 32.309731, 38.853733>,  <35.336891, 31.562021, 38.579044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231590, 32.309731, 38.853733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542454, 32.267239, 38.605621>,  <35.728970, 32.241745, 38.456757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542454, 32.267239, 38.605621>,  <35.231590, 32.309731, 38.853733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542454, 32.267239, 38.605621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353996, 0.741126, -0.570455,
		0.520303, 0.662908, 0.538366,
		0.777156, -0.106231, -0.620277,
		35.775600, 32.235371, 38.419537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449844, 32.979111, 38.684738>,  <35.231590, 32.309731, 38.853733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449844, 32.979111, 38.684738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641071, 32.770199, 38.402271>,  <35.755810, 32.644852, 38.232792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641071, 32.770199, 38.402271>,  <35.449844, 32.979111, 38.684738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641071, 32.770199, 38.402271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122894, 0.756310, -0.642567,
		0.869682, 0.393975, 0.297384,
		0.478070, -0.522282, -0.706166,
		35.784492, 32.613514, 38.190422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978500, 33.395679, 38.438713>,  <35.449844, 32.979111, 38.684738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978500, 33.395679, 38.438713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910309, 33.130508, 38.147106>,  <35.869396, 32.971405, 37.972141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910309, 33.130508, 38.147106>,  <35.978500, 33.395679, 38.438713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910309, 33.130508, 38.147106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162901, 0.710703, -0.684371,
		0.971803, -0.235426, -0.013167,
		-0.170477, -0.662929, -0.729015,
		35.859165, 32.931629, 37.928402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164909, 33.783756, 37.903511>,  <35.978500, 33.395679, 38.438713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164909, 33.783756, 37.903511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980434, 33.473614, 37.730938>,  <35.869751, 33.287529, 37.627396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980434, 33.473614, 37.730938>,  <36.164909, 33.783756, 37.903511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980434, 33.473614, 37.730938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082204, 0.521474, -0.849299,
		0.883489, -0.356216, -0.304232,
		-0.461183, -0.775355, -0.431434,
		35.842079, 33.241009, 37.601509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517666, 33.650414, 37.227570>,  <36.164909, 33.783756, 37.903511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517666, 33.650414, 37.227570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143826, 33.508343, 37.219864>,  <35.919521, 33.423100, 37.215240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143826, 33.508343, 37.219864>,  <36.517666, 33.650414, 37.227570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143826, 33.508343, 37.219864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128638, 0.387990, -0.912642,
		0.331620, -0.850479, -0.408305,
		-0.934602, -0.355174, -0.019261,
		35.863445, 33.401791, 37.214085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492138, 33.356117, 36.576103>,  <36.517666, 33.650414, 37.227570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492138, 33.356117, 36.576103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117954, 33.414074, 36.705051>,  <35.893444, 33.448849, 36.782421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117954, 33.414074, 36.705051>,  <36.492138, 33.356117, 36.576103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117954, 33.414074, 36.705051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239133, 0.412162, -0.879169,
		-0.260249, -0.899517, -0.350914,
		-0.935460, 0.144887, 0.322368,
		35.837315, 33.457539, 36.801762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.333702, 28.027563, 42.112823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051605, 28.233837, 42.307434>,  <37.882347, 28.357601, 42.424198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051605, 28.233837, 42.307434>,  <38.333702, 28.027563, 42.112823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051605, 28.233837, 42.307434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311758, 0.390761, -0.866091,
		-0.636744, -0.762480, -0.114811,
		-0.705240, 0.515685, 0.486523,
		37.840034, 28.388542, 42.453392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702141, 27.858244, 41.716175>,  <38.333702, 28.027563, 42.112823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702141, 27.858244, 41.716175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634537, 28.194550, 41.921913>,  <37.593975, 28.396332, 42.045357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634537, 28.194550, 41.921913>,  <37.702141, 27.858244, 41.716175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634537, 28.194550, 41.921913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549093, 0.353053, -0.757529,
		-0.818495, -0.410452, 0.401989,
		-0.169006, 0.840763, 0.514348,
		37.583836, 28.446779, 42.076218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055401, 28.001356, 41.462257>,  <37.702141, 27.858244, 41.716175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055401, 28.001356, 41.462257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181080, 28.335709, 41.642292>,  <37.256485, 28.536320, 41.750313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181080, 28.335709, 41.642292>,  <37.055401, 28.001356, 41.462257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181080, 28.335709, 41.642292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411875, 0.547175, -0.728669,
		-0.855360, 0.043565, 0.516199,
		0.314196, 0.835884, 0.450089,
		37.275337, 28.586473, 41.777317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560566, 28.435081, 41.373810>,  <37.055401, 28.001356, 41.462257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560566, 28.435081, 41.373810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.869823, 28.676529, 41.451668>,  <37.055378, 28.821398, 41.498383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.869823, 28.676529, 41.451668>,  <36.560566, 28.435081, 41.373810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869823, 28.676529, 41.451668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384507, 0.690177, -0.613033,
		-0.504380, 0.399121, 0.765704,
		0.773146, 0.603620, 0.194647,
		37.101768, 28.857615, 41.510063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270084, 29.021004, 41.386223>,  <36.560566, 28.435081, 41.373810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270084, 29.021004, 41.386223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656670, 29.117037, 41.349747>,  <36.888618, 29.174658, 41.327862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656670, 29.117037, 41.349747>,  <36.270084, 29.021004, 41.386223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656670, 29.117037, 41.349747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241080, 0.725692, -0.644400,
		-0.088532, 0.644771, 0.759231,
		0.966459, 0.240085, -0.091195,
		36.946606, 29.189062, 41.322388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384548, 29.818041, 41.422787>,  <36.270084, 29.021004, 41.386223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384548, 29.818041, 41.422787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716949, 29.705145, 41.231045>,  <36.916389, 29.637407, 41.116001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716949, 29.705145, 41.231045>,  <36.384548, 29.818041, 41.422787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716949, 29.705145, 41.231045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120350, 0.750093, -0.650289,
		0.543097, 0.598081, 0.589360,
		0.831000, -0.282240, -0.479352,
		36.966251, 29.620472, 41.087238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729443, 30.406122, 41.368706>,  <36.384548, 29.818041, 41.422787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729443, 30.406122, 41.368706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890957, 30.166319, 41.092285>,  <36.987865, 30.022438, 40.926434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890957, 30.166319, 41.092285>,  <36.729443, 30.406122, 41.368706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890957, 30.166319, 41.092285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154281, 0.699923, -0.697356,
		0.901750, 0.388200, 0.190128,
		0.403788, -0.599507, -0.691047,
		37.012093, 29.986467, 40.884972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289467, 30.779646, 41.061844>,  <36.729443, 30.406122, 41.368706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289467, 30.779646, 41.061844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.199669, 30.494333, 40.796261>,  <37.145790, 30.323147, 40.636913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.199669, 30.494333, 40.796261>,  <37.289467, 30.779646, 41.061844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199669, 30.494333, 40.796261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071967, 0.667348, -0.741260,
		0.971815, -0.214189, -0.098481,
		-0.224491, -0.713281, -0.663954,
		37.132320, 30.280350, 40.597076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771675, 30.804493, 40.526440>,  <37.289467, 30.779646, 41.061844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771675, 30.804493, 40.526440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.464489, 30.618282, 40.350479>,  <37.280178, 30.506556, 40.244904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.464489, 30.618282, 40.350479>,  <37.771675, 30.804493, 40.526440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464489, 30.618282, 40.350479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000011, 0.686812, -0.726835,
		0.640490, -0.558190, -0.527444,
		-0.767967, -0.465525, -0.439902,
		37.234100, 30.478624, 40.218510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527195, 30.855165, 40.490292>,  <37.771675, 30.804493, 40.526440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527195, 30.855165, 40.490292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.867847, 31.063496, 40.466732>,  <39.072239, 31.188494, 40.452595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.867847, 31.063496, 40.466732>,  <38.527195, 30.855165, 40.490292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867847, 31.063496, 40.466732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348294, -0.478338, 0.806153,
		0.391691, -0.707058, -0.588767,
		0.851627, 0.520828, -0.058903,
		39.123337, 31.219744, 40.449062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052120, 30.387577, 40.469681>,  <38.527195, 30.855165, 40.490292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052120, 30.387577, 40.469681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.206985, 30.730930, 40.604309>,  <39.299904, 30.936943, 40.685085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.206985, 30.730930, 40.604309>,  <39.052120, 30.387577, 40.469681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206985, 30.730930, 40.604309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306879, -0.464196, 0.830871,
		0.869441, -0.218400, -0.443141,
		0.387167, 0.858384, 0.336569,
		39.323135, 30.988445, 40.705280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781876, 30.266701, 40.523666>,  <39.052120, 30.387577, 40.469681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781876, 30.266701, 40.523666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.690685, 30.577990, 40.757725>,  <39.635971, 30.764763, 40.898159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.690685, 30.577990, 40.757725>,  <39.781876, 30.266701, 40.523666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690685, 30.577990, 40.757725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559012, -0.387441, 0.733073,
		0.797204, 0.494223, -0.346711,
		-0.227971, 0.778224, 0.585146,
		39.622295, 30.811457, 40.933270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457970, 30.451847, 40.853825>,  <39.781876, 30.266701, 40.523666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457970, 30.451847, 40.853825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.162086, 30.594131, 41.082314>,  <39.984554, 30.679502, 41.219406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.162086, 30.594131, 41.082314>,  <40.457970, 30.451847, 40.853825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162086, 30.594131, 41.082314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535332, -0.203273, 0.819817,
		0.407733, 0.912222, -0.040060,
		-0.739712, 0.355711, 0.571223,
		39.940174, 30.700846, 41.253681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831017, 30.768925, 41.357998>,  <40.457970, 30.451847, 40.853825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831017, 30.768925, 41.357998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.455887, 30.744387, 41.494656>,  <40.230808, 30.729664, 41.576653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.455887, 30.744387, 41.494656>,  <40.831017, 30.768925, 41.357998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455887, 30.744387, 41.494656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343962, -0.296512, 0.890938,
		0.046646, 0.953057, 0.299177,
		-0.937824, -0.061347, 0.341646,
		40.174538, 30.725983, 41.597149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659233, 31.200033, 41.891979>,  <40.831017, 30.768925, 41.357998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659233, 31.200033, 41.891979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.384125, 30.913757, 41.940590>,  <40.219059, 30.741993, 41.969757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.384125, 30.913757, 41.940590>,  <40.659233, 31.200033, 41.891979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384125, 30.913757, 41.940590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356261, -0.186913, 0.915501,
		-0.632498, 0.672945, 0.383524,
		-0.687767, -0.715687, 0.121522,
		40.177795, 30.699051, 41.977047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483192, 31.321392, 42.493164>,  <40.659233, 31.200033, 41.891979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483192, 31.321392, 42.493164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.340557, 30.951550, 42.439579>,  <40.254974, 30.729643, 42.407429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.340557, 30.951550, 42.439579>,  <40.483192, 31.321392, 42.493164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340557, 30.951550, 42.439579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134004, -0.192521, 0.972100,
		-0.924602, 0.328687, 0.192552,
		-0.356587, -0.924608, -0.133960,
		40.233582, 30.674168, 42.399391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131649, 31.139952, 43.183445>,  <40.483192, 31.321392, 42.493164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131649, 31.139952, 43.183445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.168606, 30.777958, 43.017326>,  <40.190781, 30.560762, 42.917656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.168606, 30.777958, 43.017326>,  <40.131649, 31.139952, 43.183445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168606, 30.777958, 43.017326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043597, -0.413000, 0.909687,
		-0.994768, -0.102153, 0.001297,
		0.092391, -0.904984, -0.415293,
		40.196323, 30.506462, 42.892738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759632, 30.708021, 43.594868>,  <40.131649, 31.139952, 43.183445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759632, 30.708021, 43.594868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.031376, 30.481096, 43.408695>,  <40.194424, 30.344940, 43.296993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.031376, 30.481096, 43.408695>,  <39.759632, 30.708021, 43.594868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031376, 30.481096, 43.408695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079205, -0.573872, 0.815106,
		-0.729518, -0.590615, -0.344931,
		0.679360, -0.567314, -0.465430,
		40.235184, 30.310902, 43.269066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694942, 30.056463, 43.968037>,  <39.759632, 30.708021, 43.594868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694942, 30.056463, 43.968037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.018703, 29.987648, 43.743443>,  <40.212959, 29.946358, 43.608685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.018703, 29.987648, 43.743443>,  <39.694942, 30.056463, 43.968037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018703, 29.987648, 43.743443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287453, -0.717682, 0.634274,
		-0.512087, -0.674786, -0.531442,
		0.809406, -0.172039, -0.561484,
		40.261524, 29.936035, 43.574997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823421, 29.349840, 44.005859>,  <39.694942, 30.056463, 43.968037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823421, 29.349840, 44.005859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.183620, 29.497782, 43.914375>,  <40.399742, 29.586546, 43.859486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.183620, 29.497782, 43.914375>,  <39.823421, 29.349840, 44.005859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183620, 29.497782, 43.914375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425374, -0.639968, 0.639920,
		0.090309, -0.673536, -0.733617,
		0.900501, 0.369852, -0.228710,
		40.453770, 29.608738, 43.845764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285927, 28.682270, 43.945850>,  <39.823421, 29.349840, 44.005859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285927, 28.682270, 43.945850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.481010, 29.024256, 44.016487>,  <40.598061, 29.229446, 44.058868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.481010, 29.024256, 44.016487>,  <40.285927, 28.682270, 43.945850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481010, 29.024256, 44.016487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418440, -0.406457, 0.812220,
		0.766193, -0.322231, -0.555982,
		0.487705, 0.854962, 0.176590,
		40.627323, 29.280745, 44.069466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683453, 28.450132, 44.410297>,  <40.285927, 28.682270, 43.945850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683453, 28.450132, 44.410297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.781277, 28.837860, 44.420200>,  <40.839973, 29.070496, 44.426140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.781277, 28.837860, 44.420200>,  <40.683453, 28.450132, 44.410297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781277, 28.837860, 44.420200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328162, -0.106765, 0.938569,
		0.912413, -0.221418, -0.344204,
		0.244564, 0.969317, 0.024753,
		40.854645, 29.128654, 44.427628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332069, 28.537725, 44.429329>,  <40.683453, 28.450132, 44.410297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332069, 28.537725, 44.429329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.143936, 28.842245, 44.607861>,  <41.031055, 29.024958, 44.714981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.143936, 28.842245, 44.607861>,  <41.332069, 28.537725, 44.429329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143936, 28.842245, 44.607861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396611, -0.269458, 0.877549,
		0.788346, 0.589758, -0.175206,
		-0.470330, 0.761300, 0.446331,
		41.002838, 29.070635, 44.741760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.423470, 31.315300, 47.925488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478699, 31.072847, 47.612171>,  <34.511837, 30.927376, 47.424183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478699, 31.072847, 47.612171>,  <34.423470, 31.315300, 47.925488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478699, 31.072847, 47.612171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248219, 0.744445, -0.619830,
		0.958813, 0.280009, -0.047665,
		0.138074, -0.606133, -0.783287,
		34.520123, 30.891008, 47.377186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613579, 31.763218, 47.375008>,  <34.423470, 31.315300, 47.925488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613579, 31.763218, 47.375008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.521122, 31.437735, 47.161671>,  <34.465649, 31.242445, 47.033669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.521122, 31.437735, 47.161671>,  <34.613579, 31.763218, 47.375008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521122, 31.437735, 47.161671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280264, 0.580639, -0.764402,
		0.931679, -0.027207, -0.362262,
		-0.231140, -0.813707, -0.533344,
		34.451778, 31.193623, 47.001667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953522, 31.811443, 46.613319>,  <34.613579, 31.763218, 47.375008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953522, 31.811443, 46.613319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641693, 31.564323, 46.572144>,  <34.454597, 31.416052, 46.547436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641693, 31.564323, 46.572144>,  <34.953522, 31.811443, 46.613319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641693, 31.564323, 46.572144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155587, 0.350236, -0.923649,
		0.606683, -0.704031, -0.369155,
		-0.779569, -0.617798, -0.102944,
		34.407822, 31.378984, 46.541260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888256, 31.549994, 45.869705>,  <34.953522, 31.811443, 46.613319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888256, 31.549994, 45.869705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528221, 31.480576, 46.029572>,  <34.312202, 31.438925, 46.125492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528221, 31.480576, 46.029572>,  <34.888256, 31.549994, 45.869705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528221, 31.480576, 46.029572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427394, 0.173222, -0.887316,
		0.084754, -0.969473, -0.230084,
		-0.900084, -0.173540, 0.399665,
		34.258198, 31.428513, 46.149471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623959, 31.096809, 45.410892>,  <34.888256, 31.549994, 45.869705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623959, 31.096809, 45.410892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.298309, 31.252430, 45.583332>,  <34.102921, 31.345802, 45.686794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.298309, 31.252430, 45.583332>,  <34.623959, 31.096809, 45.410892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298309, 31.252430, 45.583332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324333, 0.311158, -0.893302,
		-0.481682, -0.867075, -0.127137,
		-0.814120, 0.389052, 0.431100,
		34.054073, 31.369146, 45.712662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173428, 31.124840, 44.891769>,  <34.623959, 31.096809, 45.410892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173428, 31.124840, 44.891769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.022881, 31.372574, 45.167385>,  <33.932552, 31.521214, 45.332756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.022881, 31.372574, 45.167385>,  <34.173428, 31.124840, 44.891769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022881, 31.372574, 45.167385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317353, 0.612550, -0.723927,
		-0.870423, -0.491130, -0.033995,
		-0.376365, 0.619334, 0.689039,
		33.909969, 31.558374, 45.374096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417652, 31.100971, 44.770763>,  <34.173428, 31.124840, 44.891769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417652, 31.100971, 44.770763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492764, 31.436230, 44.975605>,  <33.537830, 31.637384, 45.098511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492764, 31.436230, 44.975605>,  <33.417652, 31.100971, 44.770763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492764, 31.436230, 44.975605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309308, 0.545313, -0.779078,
		-0.932238, -0.012105, 0.361643,
		0.187777, 0.838146, 0.512106,
		33.549095, 31.687674, 45.129238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776012, 31.546392, 44.671432>,  <33.417652, 31.100971, 44.770763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776012, 31.546392, 44.671432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063950, 31.805010, 44.772476>,  <33.236710, 31.960180, 44.833103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063950, 31.805010, 44.772476>,  <32.776012, 31.546392, 44.671432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063950, 31.805010, 44.772476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252025, 0.582522, -0.772756,
		-0.646773, 0.492595, 0.582267,
		0.719839, 0.646544, 0.252614,
		33.279900, 31.998974, 44.848259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494194, 32.181522, 44.639851>,  <32.776012, 31.546392, 44.671432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494194, 32.181522, 44.639851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.886997, 32.247784, 44.603580>,  <33.122681, 32.287540, 44.581818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.886997, 32.247784, 44.603580>,  <32.494194, 32.181522, 44.639851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886997, 32.247784, 44.603580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180805, 0.686077, -0.704704,
		-0.054524, 0.708419, 0.703683,
		0.982006, 0.165653, -0.090678,
		33.181599, 32.297478, 44.576378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529175, 32.804379, 44.485992>,  <32.494194, 32.181522, 44.639851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529175, 32.804379, 44.485992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.900787, 32.698765, 44.382305>,  <33.123753, 32.635399, 44.320091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.900787, 32.698765, 44.382305>,  <32.529175, 32.804379, 44.485992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900787, 32.698765, 44.382305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002374, 0.704812, -0.709390,
		0.370002, 0.658427, 0.655417,
		0.929028, -0.264032, -0.259219,
		33.179497, 32.619556, 44.304539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875820, 33.463562, 44.374306>,  <32.529175, 32.804379, 44.485992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875820, 33.463562, 44.374306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095753, 33.182514, 44.193638>,  <33.227711, 33.013885, 44.085236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095753, 33.182514, 44.193638>,  <32.875820, 33.463562, 44.374306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095753, 33.182514, 44.193638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095210, 0.589943, -0.801813,
		0.829832, 0.397858, 0.391265,
		0.549831, -0.702622, -0.451673,
		33.260700, 32.971729, 44.058136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410759, 33.794697, 44.081936>,  <32.875820, 33.463562, 44.374306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410759, 33.794697, 44.081936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.382504, 33.446636, 43.886856>,  <33.365551, 33.237801, 43.769810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.382504, 33.446636, 43.886856>,  <33.410759, 33.794697, 44.081936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382504, 33.446636, 43.886856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291017, 0.449674, -0.844455,
		0.954106, -0.201584, 0.221461,
		-0.070643, -0.870148, -0.487701,
		33.361309, 33.185593, 43.740547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951710, 33.809483, 43.559109>,  <33.410759, 33.794697, 44.081936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951710, 33.809483, 43.559109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.726044, 33.521755, 43.396973>,  <33.590645, 33.349121, 43.299690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.726044, 33.521755, 43.396973>,  <33.951710, 33.809483, 43.559109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726044, 33.521755, 43.396973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037142, 0.512539, -0.857860,
		0.824824, -0.468922, -0.315875,
		-0.564168, -0.719316, -0.405338,
		33.556793, 33.305962, 43.275372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218048, 33.703621, 42.827381>,  <33.951710, 33.809483, 43.559109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218048, 33.703621, 42.827381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.842655, 33.567947, 42.853302>,  <33.617420, 33.486542, 42.868855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.842655, 33.567947, 42.853302>,  <34.218048, 33.703621, 42.827381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842655, 33.567947, 42.853302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256857, 0.560231, -0.787506,
		0.230805, -0.755708, -0.612890,
		-0.938485, -0.339186, 0.064805,
		33.561111, 33.466190, 42.872742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767963, 33.359726, 42.430534>,  <34.218048, 33.703621, 42.827381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767963, 33.359726, 42.430534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062939, 33.627659, 42.395889>,  <35.239925, 33.788418, 42.375103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062939, 33.627659, 42.395889>,  <34.767963, 33.359726, 42.430534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062939, 33.627659, 42.395889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436466, -0.374751, 0.817961,
		0.515441, -0.641001, -0.568717,
		0.737440, 0.669836, -0.086613,
		35.284172, 33.828609, 42.369904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371086, 32.961067, 42.581535>,  <34.767963, 33.359726, 42.430534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371086, 32.961067, 42.581535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.437241, 33.353649, 42.620312>,  <35.476933, 33.589199, 42.643578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.437241, 33.353649, 42.620312>,  <35.371086, 32.961067, 42.581535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437241, 33.353649, 42.620312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373098, -0.153250, 0.915048,
		0.912933, -0.115168, -0.391523,
		0.165385, 0.981453, 0.096938,
		35.486855, 33.648087, 42.649395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118073, 33.028164, 42.762135>,  <35.371086, 32.961067, 42.581535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118073, 33.028164, 42.762135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.934509, 33.359138, 42.891594>,  <35.824371, 33.557724, 42.969269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.934509, 33.359138, 42.891594>,  <36.118073, 33.028164, 42.762135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934509, 33.359138, 42.891594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466775, -0.085420, 0.880241,
		0.755993, 0.555019, -0.347028,
		-0.458907, 0.827440, 0.323646,
		35.796837, 33.607372, 42.988689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626003, 33.488380, 43.026333>,  <36.118073, 33.028164, 42.762135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626003, 33.488380, 43.026333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.273506, 33.596588, 43.181377>,  <36.062008, 33.661510, 43.274403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.273506, 33.596588, 43.181377>,  <36.626003, 33.488380, 43.026333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273506, 33.596588, 43.181377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418602, 0.065801, 0.905783,
		0.219524, 0.960464, -0.171225,
		-0.881239, 0.270516, 0.387608,
		36.009136, 33.677742, 43.297661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911507, 33.782394, 43.568878>,  <36.626003, 33.488380, 43.026333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911507, 33.782394, 43.568878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.522987, 33.758991, 43.661106>,  <36.289875, 33.744949, 43.716442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.522987, 33.758991, 43.661106>,  <36.911507, 33.782394, 43.568878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522987, 33.758991, 43.661106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236239, -0.123687, 0.963791,
		-0.027874, 0.990595, 0.133959,
		-0.971295, -0.058511, 0.230570,
		36.231598, 33.741436, 43.730278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793556, 34.286842, 44.139420>,  <36.911507, 33.782394, 43.568878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793556, 34.286842, 44.139420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.492840, 34.023109, 44.135605>,  <36.312408, 33.864872, 44.133316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.492840, 34.023109, 44.135605>,  <36.793556, 34.286842, 44.139420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492840, 34.023109, 44.135605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156256, -0.192188, 0.968838,
		-0.640618, 0.726875, 0.247510,
		-0.751793, -0.659330, -0.009540,
		36.267303, 33.825310, 44.132744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419315, 34.354599, 44.802086>,  <36.793556, 34.286842, 44.139420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419315, 34.354599, 44.802086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.376396, 33.986076, 44.652592>,  <36.350643, 33.764961, 44.562897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.376396, 33.986076, 44.652592>,  <36.419315, 34.354599, 44.802086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376396, 33.986076, 44.652592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307695, -0.388221, 0.868682,
		-0.945416, -0.021786, 0.325138,
		-0.107300, -0.921309, -0.373734,
		36.344208, 33.709682, 44.540470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126522, 34.024658, 45.307205>,  <36.419315, 34.354599, 44.802086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126522, 34.024658, 45.307205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.224491, 33.703304, 45.090103>,  <36.283272, 33.510490, 44.959843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.224491, 33.703304, 45.090103>,  <36.126522, 34.024658, 45.307205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224491, 33.703304, 45.090103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196004, -0.507218, 0.839233,
		-0.949523, -0.311932, 0.033236,
		0.244926, -0.803385, -0.542755,
		36.297970, 33.462288, 44.927277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651215, 33.454979, 45.523209>,  <36.126522, 34.024658, 45.307205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651215, 33.454979, 45.523209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992565, 33.308582, 45.374725>,  <36.197376, 33.220745, 45.285633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992565, 33.308582, 45.374725>,  <35.651215, 33.454979, 45.523209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992565, 33.308582, 45.374725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033806, -0.671744, 0.740012,
		-0.520197, -0.644058, -0.560878,
		0.853377, -0.365991, -0.371212,
		36.248577, 33.198784, 45.263363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595985, 32.838184, 45.808788>,  <35.651215, 33.454979, 45.523209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595985, 32.838184, 45.808788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.981270, 32.846035, 45.701576>,  <36.212440, 32.850746, 45.637249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.981270, 32.846035, 45.701576>,  <35.595985, 32.838184, 45.808788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981270, 32.846035, 45.701576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229859, -0.576936, 0.783779,
		-0.139256, -0.816553, -0.560222,
		0.963209, 0.019626, -0.268034,
		36.270233, 32.851921, 45.621166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889965, 32.114891, 45.599934>,  <35.595985, 32.838184, 45.808788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889965, 32.114891, 45.599934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.161400, 32.372620, 45.740997>,  <36.324261, 32.527256, 45.825634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.161400, 32.372620, 45.740997>,  <35.889965, 32.114891, 45.599934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161400, 32.372620, 45.740997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224754, -0.639238, 0.735432,
		0.699286, -0.419796, -0.578595,
		0.678591, 0.644319, 0.352659,
		36.364979, 32.565914, 45.846794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481209, 31.790325, 45.605556>,  <35.889965, 32.114891, 45.599934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481209, 31.790325, 45.605556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559341, 32.080948, 45.869061>,  <36.606220, 32.255322, 46.027161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559341, 32.080948, 45.869061>,  <36.481209, 31.790325, 45.605556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559341, 32.080948, 45.869061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416993, -0.669481, 0.614745,
		0.887673, 0.154620, -0.433737,
		0.195327, 0.726559, 0.658756,
		36.617939, 32.298916, 46.066689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172207, 31.915594, 45.595505>,  <36.481209, 31.790325, 45.605556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172207, 31.915594, 45.595505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.028759, 32.028606, 45.951385>,  <36.942688, 32.096413, 46.164913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.028759, 32.028606, 45.951385>,  <37.172207, 31.915594, 45.595505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028759, 32.028606, 45.951385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368148, -0.833039, 0.412932,
		0.857821, 0.475628, 0.194733,
		-0.358622, 0.282531, 0.889700,
		36.921173, 32.113365, 46.218296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679935, 31.623140, 46.021893>,  <37.172207, 31.915594, 45.595505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679935, 31.623140, 46.021893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.355396, 31.695501, 46.244240>,  <37.160671, 31.738918, 46.377647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.355396, 31.695501, 46.244240>,  <37.679935, 31.623140, 46.021893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355396, 31.695501, 46.244240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209124, -0.798156, 0.564991,
		0.545877, 0.574649, 0.609751,
		-0.811348, 0.180902, 0.555868,
		37.111992, 31.749771, 46.410999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342403, 31.797470, 46.087578>,  <37.679935, 31.623140, 46.021893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342403, 31.797470, 46.087578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.738533, 31.801380, 46.032215>,  <38.976212, 31.803726, 45.998997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.738533, 31.801380, 46.032215>,  <38.342403, 31.797470, 46.087578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738533, 31.801380, 46.032215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119363, 0.568565, -0.813933,
		0.070738, 0.822581, 0.564232,
		0.990328, 0.009773, -0.138405,
		39.035633, 31.804312, 45.990692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623543, 32.561646, 45.926735>,  <38.342403, 31.797470, 46.087578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623543, 32.561646, 45.926735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.912575, 32.314743, 45.802235>,  <39.085995, 32.166603, 45.727535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.912575, 32.314743, 45.802235>,  <38.623543, 32.561646, 45.926735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912575, 32.314743, 45.802235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110209, 0.341626, -0.933352,
		0.682446, 0.708723, 0.178825,
		0.722580, -0.617254, -0.311249,
		39.129349, 32.129566, 45.708858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118820, 32.999966, 45.712166>,  <38.623543, 32.561646, 45.926735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118820, 32.999966, 45.712166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.169308, 32.646687, 45.531490>,  <39.199600, 32.434719, 45.423084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.169308, 32.646687, 45.531490>,  <39.118820, 32.999966, 45.712166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169308, 32.646687, 45.531490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059749, 0.461274, -0.885244,
		0.990201, 0.084748, 0.110993,
		0.126221, -0.883201, -0.451690,
		39.207172, 32.381725, 45.395985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637238, 33.214382, 45.159077>,  <39.118820, 32.999966, 45.712166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637238, 33.214382, 45.159077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.481365, 32.856178, 45.073093>,  <39.387840, 32.641254, 45.021503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.481365, 32.856178, 45.073093>,  <39.637238, 33.214382, 45.159077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481365, 32.856178, 45.073093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113978, 0.184715, -0.976160,
		0.913870, -0.404890, 0.030089,
		-0.389680, -0.895514, -0.214954,
		39.364460, 32.587524, 45.008606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953842, 32.917652, 44.546051>,  <39.637238, 33.214382, 45.159077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953842, 32.917652, 44.546051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.611423, 32.711308, 44.532921>,  <39.405972, 32.587502, 44.525043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.611423, 32.711308, 44.532921>,  <39.953842, 32.917652, 44.546051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611423, 32.711308, 44.532921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038025, 0.126177, -0.991279,
		0.515503, -0.847329, -0.127629,
		-0.856043, -0.515860, -0.032825,
		39.354610, 32.556549, 44.523075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027439, 32.467865, 44.001305>,  <39.953842, 32.917652, 44.546051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027439, 32.467865, 44.001305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.630871, 32.490097, 44.048637>,  <39.392929, 32.503437, 44.077038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.630871, 32.490097, 44.048637>,  <40.027439, 32.467865, 44.001305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630871, 32.490097, 44.048637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107582, 0.167482, -0.979988,
		-0.074288, -0.984307, -0.160065,
		-0.991417, 0.055581, 0.118335,
		39.333447, 32.506771, 44.084137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758541, 32.182396, 43.345726>,  <40.027439, 32.467865, 44.001305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758541, 32.182396, 43.345726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.434078, 32.360321, 43.497604>,  <39.239403, 32.467075, 43.588730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.434078, 32.360321, 43.497604>,  <39.758541, 32.182396, 43.345726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434078, 32.360321, 43.497604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321828, 0.202594, -0.924869,
		-0.488318, -0.872409, -0.021182,
		-0.811155, 0.444813, 0.379696,
		39.190731, 32.493763, 43.611515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178928, 31.980085, 42.946453>,  <39.758541, 32.182396, 43.345726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178928, 31.980085, 42.946453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.061241, 32.317455, 43.126263>,  <38.990627, 32.519878, 43.234146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.061241, 32.317455, 43.126263>,  <39.178928, 31.980085, 42.946453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061241, 32.317455, 43.126263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382936, 0.326904, -0.863999,
		-0.875668, -0.426344, 0.226795,
		-0.294221, 0.843424, 0.449522,
		38.972977, 32.570484, 43.261120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420029, 32.080673, 42.693390>,  <39.178928, 31.980085, 42.946453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420029, 32.080673, 42.693390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566513, 32.432796, 42.814018>,  <38.654404, 32.644070, 42.886395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566513, 32.432796, 42.814018>,  <38.420029, 32.080673, 42.693390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566513, 32.432796, 42.814018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133805, 0.370531, -0.919132,
		-0.920861, 0.296246, 0.253483,
		0.366212, 0.880310, 0.301568,
		38.676376, 32.696888, 42.904488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983566, 32.522774, 42.296848>,  <38.420029, 32.080673, 42.693390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983566, 32.522774, 42.296848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.295513, 32.747795, 42.406639>,  <38.482681, 32.882809, 42.472515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.295513, 32.747795, 42.406639>,  <37.983566, 32.522774, 42.296848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295513, 32.747795, 42.406639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015959, 0.420490, -0.907157,
		-0.625736, 0.711846, 0.318950,
		0.779871, 0.562551, 0.274476,
		38.529476, 32.916561, 42.488983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795582, 33.148666, 42.105995>,  <37.983566, 32.522774, 42.296848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795582, 33.148666, 42.105995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.192348, 33.185417, 42.141014>,  <38.430408, 33.207466, 42.162025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.192348, 33.185417, 42.141014>,  <37.795582, 33.148666, 42.105995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192348, 33.185417, 42.141014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011573, 0.621469, -0.783353,
		-0.126380, 0.778032, 0.615381,
		0.991915, 0.091878, 0.087545,
		38.489922, 33.212982, 42.167278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037212, 33.854324, 42.171520>,  <37.795582, 33.148666, 42.105995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037212, 33.854324, 42.171520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.350777, 33.652824, 42.026348>,  <38.538914, 33.531925, 41.939243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.350777, 33.652824, 42.026348>,  <38.037212, 33.854324, 42.171520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350777, 33.652824, 42.026348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041671, 0.625923, -0.778771,
		0.619473, 0.595364, 0.511660,
		0.783911, -0.503748, -0.362933,
		38.585949, 33.501701, 41.917469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485619, 34.305515, 42.146492>,  <38.037212, 33.854324, 42.171520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485619, 34.305515, 42.146492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.585400, 34.020653, 41.884010>,  <38.645267, 33.849735, 41.726521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.585400, 34.020653, 41.884010>,  <38.485619, 34.305515, 42.146492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585400, 34.020653, 41.884010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058191, 0.687424, -0.723921,
		0.966638, 0.142396, 0.212918,
		0.249448, -0.712160, -0.656204,
		38.660233, 33.807003, 41.687149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057247, 34.559307, 41.793365>,  <38.485619, 34.305515, 42.146492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057247, 34.559307, 41.793365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.928192, 34.291798, 41.525440>,  <38.850761, 34.131294, 41.364685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.928192, 34.291798, 41.525440>,  <39.057247, 34.559307, 41.793365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928192, 34.291798, 41.525440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228521, 0.631689, -0.740775,
		0.918524, -0.392066, -0.050976,
		-0.322633, -0.668770, -0.669816,
		38.831402, 34.091167, 41.324493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.763987, 38.132755, 29.852058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.150805, 38.099407, 29.948286>,  <28.382895, 38.079399, 30.006023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.150805, 38.099407, 29.948286>,  <27.763987, 38.132755, 29.852058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150805, 38.099407, 29.948286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238392, -0.628259, 0.740581,
		0.089400, -0.773525, -0.627429,
		0.967046, -0.083366, 0.240568,
		28.440918, 38.074398, 30.020456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837946, 37.466248, 29.868233>,  <27.763987, 38.132755, 29.852058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837946, 37.466248, 29.868233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123474, 37.592560, 30.118271>,  <28.294790, 37.668346, 30.268293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123474, 37.592560, 30.118271>,  <27.837946, 37.466248, 29.868233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123474, 37.592560, 30.118271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319777, -0.647130, 0.692074,
		0.623059, -0.693908, -0.360956,
		0.713820, 0.315777, 0.625096,
		28.337620, 37.687294, 30.305799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054819, 36.826115, 30.118780>,  <27.837946, 37.466248, 29.868233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054819, 36.826115, 30.118780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.228657, 37.094543, 30.359043>,  <28.332958, 37.255600, 30.503201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.228657, 37.094543, 30.359043>,  <28.054819, 36.826115, 30.118780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228657, 37.094543, 30.359043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068386, -0.640420, 0.764974,
		0.898027, -0.373529, -0.232430,
		0.434593, 0.671072, 0.600659,
		28.359035, 37.295864, 30.539240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576019, 36.546776, 30.481472>,  <28.054819, 36.826115, 30.118780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576019, 36.546776, 30.481472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.454546, 36.848259, 30.714605>,  <28.381662, 37.029148, 30.854486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.454546, 36.848259, 30.714605>,  <28.576019, 36.546776, 30.481472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454546, 36.848259, 30.714605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154281, -0.642553, 0.750548,
		0.940198, 0.138010, 0.311417,
		-0.303685, 0.753710, 0.582835,
		28.363440, 37.074371, 30.889456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614439, 36.230488, 31.088234>,  <28.576019, 36.546776, 30.481472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614439, 36.230488, 31.088234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461660, 36.579224, 31.210880>,  <28.369993, 36.788464, 31.284468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461660, 36.579224, 31.210880>,  <28.614439, 36.230488, 31.088234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461660, 36.579224, 31.210880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221941, -0.408589, 0.885323,
		0.897140, 0.270095, 0.349556,
		-0.381946, 0.871839, 0.306616,
		28.347076, 36.840775, 31.302866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000940, 36.499382, 31.688414>,  <28.614439, 36.230488, 31.088234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000940, 36.499382, 31.688414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626417, 36.638424, 31.708410>,  <28.401703, 36.721848, 31.720409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626417, 36.638424, 31.708410>,  <29.000940, 36.499382, 31.688414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626417, 36.638424, 31.708410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093634, -0.384308, 0.918444,
		0.338464, 0.855267, 0.392379,
		-0.936309, 0.347600, 0.049993,
		28.345524, 36.742702, 31.723408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032116, 36.852589, 32.306000>,  <29.000940, 36.499382, 31.688414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032116, 36.852589, 32.306000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.635460, 36.858913, 32.254772>,  <28.397467, 36.862709, 32.224037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.635460, 36.858913, 32.254772>,  <29.032116, 36.852589, 32.306000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635460, 36.858913, 32.254772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128583, -0.037694, 0.990982,
		0.010841, 0.999164, 0.039412,
		-0.991639, 0.015811, -0.128067,
		28.337969, 36.863655, 32.216351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665474, 37.403656, 32.678402>,  <29.032116, 36.852589, 32.306000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665474, 37.403656, 32.678402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374043, 37.132523, 32.638988>,  <28.199183, 36.969841, 32.615341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374043, 37.132523, 32.638988>,  <28.665474, 37.403656, 32.678402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374043, 37.132523, 32.638988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116265, -0.019381, 0.993029,
		-0.675022, 0.734957, -0.064688,
		-0.728580, -0.677837, -0.098533,
		28.155468, 36.929173, 32.609428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210604, 37.525146, 33.220516>,  <28.665474, 37.403656, 32.678402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210604, 37.525146, 33.220516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.094023, 37.159069, 33.109184>,  <28.024075, 36.939423, 33.042385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.094023, 37.159069, 33.109184>,  <28.210604, 37.525146, 33.220516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094023, 37.159069, 33.109184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247488, -0.208912, 0.946100,
		-0.924015, 0.344629, -0.165613,
		-0.291455, -0.915198, -0.278329,
		28.006586, 36.884510, 33.025684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561108, 37.483719, 33.389366>,  <28.210604, 37.525146, 33.220516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561108, 37.483719, 33.389366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685663, 37.103802, 33.377159>,  <27.760397, 36.875851, 33.369835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685663, 37.103802, 33.377159>,  <27.561108, 37.483719, 33.389366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685663, 37.103802, 33.377159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087328, -0.003382, 0.996174,
		-0.946261, -0.312864, 0.081890,
		0.311390, -0.949792, -0.030522,
		27.779079, 36.818863, 33.368004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045061, 37.077499, 33.739300>,  <27.561108, 37.483719, 33.389366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045061, 37.077499, 33.739300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376829, 36.854065, 33.742039>,  <27.575890, 36.720005, 33.743683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376829, 36.854065, 33.742039>,  <27.045061, 37.077499, 33.739300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376829, 36.854065, 33.742039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035142, -0.039940, 0.998584,
		-0.557519, -0.828486, -0.052757,
		0.829420, -0.558584, 0.006847,
		27.625656, 36.686489, 33.744091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923983, 36.590294, 34.234875>,  <27.045061, 37.077499, 33.739300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923983, 36.590294, 34.234875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.316893, 36.525356, 34.197395>,  <27.552639, 36.486393, 34.174908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.316893, 36.525356, 34.197395>,  <26.923983, 36.590294, 34.234875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316893, 36.525356, 34.197395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085820, -0.054901, 0.994797,
		-0.166650, -0.985205, -0.039995,
		0.982274, -0.162350, -0.093700,
		27.611574, 36.476650, 34.169285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070915, 36.044861, 34.665897>,  <26.923983, 36.590294, 34.234875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070915, 36.044861, 34.665897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430450, 36.208019, 34.601765>,  <27.646172, 36.305916, 34.563286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430450, 36.208019, 34.601765>,  <27.070915, 36.044861, 34.665897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430450, 36.208019, 34.601765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228696, -0.124447, 0.965511,
		0.373879, -0.904506, -0.205143,
		0.898840, 0.407900, -0.160328,
		27.700102, 36.330391, 34.553665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590481, 35.545605, 34.876270>,  <27.070915, 36.044861, 34.665897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590481, 35.545605, 34.876270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753172, 35.910816, 34.888557>,  <27.850786, 36.129944, 34.895927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753172, 35.910816, 34.888557>,  <27.590481, 35.545605, 34.876270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753172, 35.910816, 34.888557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428936, -0.220547, 0.875998,
		0.806589, -0.343120, -0.481335,
		0.406730, 0.913032, 0.030715,
		27.875191, 36.184727, 34.897774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209791, 35.463753, 35.089485>,  <27.590481, 35.545605, 34.876270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209791, 35.463753, 35.089485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.172379, 35.855213, 35.162701>,  <28.149931, 36.090088, 35.206631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.172379, 35.855213, 35.162701>,  <28.209791, 35.463753, 35.089485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172379, 35.855213, 35.162701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368327, -0.136786, 0.919578,
		0.924979, 0.153425, -0.347669,
		-0.093530, 0.978647, 0.183035,
		28.144320, 36.148808, 35.217609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868999, 35.676010, 35.599220>,  <28.209791, 35.463753, 35.089485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868999, 35.676010, 35.599220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.569759, 35.935879, 35.653290>,  <28.390217, 36.091801, 35.685730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.569759, 35.935879, 35.653290>,  <28.868999, 35.676010, 35.599220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569759, 35.935879, 35.653290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171921, -0.006992, 0.985086,
		0.640931, 0.760180, -0.106462,
		-0.748098, 0.649675, 0.135173,
		28.345329, 36.130783, 35.693840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170769, 36.245697, 35.933918>,  <28.868999, 35.676010, 35.599220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170769, 36.245697, 35.933918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777378, 36.257927, 36.005287>,  <28.541344, 36.265266, 36.048111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777378, 36.257927, 36.005287>,  <29.170769, 36.245697, 35.933918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777378, 36.257927, 36.005287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180802, 0.116731, 0.976568,
		0.009030, 0.992693, -0.120330,
		-0.983478, 0.030575, 0.178427,
		28.482334, 36.267097, 36.058815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979437, 36.835892, 36.404842>,  <29.170769, 36.245697, 35.933918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979437, 36.835892, 36.404842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643160, 36.624748, 36.453182>,  <28.441393, 36.498062, 36.482185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643160, 36.624748, 36.453182>,  <28.979437, 36.835892, 36.404842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643160, 36.624748, 36.453182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117227, 0.040480, 0.992280,
		-0.528672, 0.848369, 0.027847,
		-0.840693, -0.527855, 0.120852,
		28.390951, 36.466393, 36.489437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455921, 37.146358, 36.893345>,  <28.979437, 36.835892, 36.404842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455921, 37.146358, 36.893345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146418, 37.164032, 36.640572>,  <27.960716, 37.174637, 36.488907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146418, 37.164032, 36.640572>,  <28.455921, 37.146358, 36.893345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146418, 37.164032, 36.640572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629624, 0.056267, 0.774860,
		0.069792, 0.997438, -0.015720,
		-0.773759, 0.044181, -0.631938,
		27.914289, 37.177288, 36.450989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789433, 37.186752, 37.331528>,  <28.455921, 37.146358, 36.893345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789433, 37.186752, 37.331528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667532, 37.516388, 37.140533>,  <27.594391, 37.714169, 37.025936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667532, 37.516388, 37.140533>,  <27.789433, 37.186752, 37.331528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667532, 37.516388, 37.140533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896111, -0.078252, 0.436877,
		0.322663, 0.561023, 0.762327,
		-0.304752, 0.824093, -0.477490,
		27.576107, 37.763615, 36.997288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325792, 37.173466, 37.795033>,  <27.789433, 37.186752, 37.331528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325792, 37.173466, 37.795033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.540508, 37.496365, 37.893181>,  <28.669338, 37.690105, 37.952068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.540508, 37.496365, 37.893181>,  <28.325792, 37.173466, 37.795033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540508, 37.496365, 37.893181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731222, 0.590196, -0.342028,
		-0.420919, 0.004175, 0.907089,
		0.536788, 0.807249, 0.245372,
		28.701544, 37.738541, 37.966793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873783, 37.652184, 38.070915>,  <28.325792, 37.173466, 37.795033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873783, 37.652184, 38.070915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.169531, 37.903145, 37.973183>,  <28.346979, 38.053722, 37.914543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.169531, 37.903145, 37.973183>,  <27.873783, 37.652184, 38.070915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169531, 37.903145, 37.973183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671893, 0.664097, -0.327924,
		-0.043483, 0.406620, 0.912562,
		0.739371, 0.627403, -0.244328,
		28.391342, 38.091366, 37.899883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704165, 38.227169, 38.373917>,  <27.873783, 37.652184, 38.070915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704165, 38.227169, 38.373917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949127, 38.333866, 38.076244>,  <28.096106, 38.397884, 37.897640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949127, 38.333866, 38.076244>,  <27.704165, 38.227169, 38.373917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949127, 38.333866, 38.076244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668940, 0.676500, -0.308005,
		0.421278, 0.686436, 0.592731,
		0.612408, 0.266746, -0.744179,
		28.132851, 38.413891, 37.852989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465490, 38.944637, 38.333481>,  <27.704165, 38.227169, 38.373917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465490, 38.944637, 38.333481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.660746, 38.858257, 37.995228>,  <27.777899, 38.806431, 37.792278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.660746, 38.858257, 37.995228>,  <27.465490, 38.944637, 38.333481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660746, 38.858257, 37.995228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479875, 0.742895, -0.466720,
		0.728999, 0.633620, 0.259009,
		0.488140, -0.215947, -0.845628,
		27.807188, 38.793472, 37.741539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685381, 39.541943, 38.122684>,  <27.465490, 38.944637, 38.333481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685381, 39.541943, 38.122684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.708069, 39.308170, 37.798901>,  <27.721682, 39.167908, 37.604630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.708069, 39.308170, 37.798901>,  <27.685381, 39.541943, 38.122684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708069, 39.308170, 37.798901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346448, 0.748861, -0.564961,
		0.936353, 0.312480, -0.159999,
		0.056722, -0.584434, -0.809456,
		27.725086, 39.132839, 37.556065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844063, 40.003345, 37.619968>,  <27.685381, 39.541943, 38.122684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844063, 40.003345, 37.619968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.698290, 39.693546, 37.413147>,  <27.610826, 39.507668, 37.289055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.698290, 39.693546, 37.413147>,  <27.844063, 40.003345, 37.619968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698290, 39.693546, 37.413147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385440, 0.630897, -0.673353,
		0.847718, -0.046097, -0.528441,
		-0.364431, -0.774495, -0.517056,
		27.588961, 39.461197, 37.258030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864956, 40.143791, 36.913494>,  <27.844063, 40.003345, 37.619968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864956, 40.143791, 36.913494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.605556, 39.840061, 36.892029>,  <27.449917, 39.657825, 36.879150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.605556, 39.840061, 36.892029>,  <27.864956, 40.143791, 36.913494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605556, 39.840061, 36.892029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515575, 0.490004, -0.702907,
		0.560032, -0.428162, -0.709254,
		-0.648495, -0.759324, -0.053668,
		27.411007, 39.612263, 36.875927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840816, 39.967953, 36.161510>,  <27.864956, 40.143791, 36.913494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840816, 39.967953, 36.161510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508394, 39.824242, 36.331341>,  <27.308941, 39.738014, 36.433239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508394, 39.824242, 36.331341>,  <27.840816, 39.967953, 36.161510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508394, 39.824242, 36.331341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521110, 0.236172, -0.820163,
		0.194392, -0.902853, -0.383495,
		-0.831057, -0.359276, 0.424576,
		27.259077, 39.716457, 36.458714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600792, 39.492981, 35.737976>,  <27.840816, 39.967953, 36.161510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600792, 39.492981, 35.737976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.274210, 39.587910, 35.948532>,  <27.078260, 39.644867, 36.074863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.274210, 39.587910, 35.948532>,  <27.600792, 39.492981, 35.737976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274210, 39.587910, 35.948532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511337, 0.126289, -0.850050,
		-0.268211, -0.963188, 0.018241,
		-0.816454, 0.237320, 0.526386,
		27.029274, 39.659107, 36.106449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108591, 39.157478, 35.457233>,  <27.600792, 39.492981, 35.737976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108591, 39.157478, 35.457233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.896053, 39.439606, 35.644932>,  <26.768532, 39.608883, 35.757553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.896053, 39.439606, 35.644932>,  <27.108591, 39.157478, 35.457233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896053, 39.439606, 35.644932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563465, 0.119385, -0.817469,
		-0.632600, -0.698762, 0.333990,
		-0.531343, 0.705322, 0.469250,
		26.736650, 39.651203, 35.785706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332041, 38.971642, 35.485535>,  <27.108591, 39.157478, 35.457233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332041, 38.971642, 35.485535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.359756, 39.370117, 35.506691>,  <26.376385, 39.609203, 35.519382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.359756, 39.370117, 35.506691>,  <26.332041, 38.971642, 35.485535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359756, 39.370117, 35.506691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537834, 0.081954, -0.839058,
		-0.840198, 0.029691, 0.541466,
		0.069288, 0.996194, 0.052889,
		26.380543, 39.668976, 35.522556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715588, 39.318207, 35.330063>,  <26.332041, 38.971642, 35.485535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715588, 39.318207, 35.330063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.964483, 39.628395, 35.287235>,  <26.113821, 39.814507, 35.261539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.964483, 39.628395, 35.287235>,  <25.715588, 39.318207, 35.330063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964483, 39.628395, 35.287235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446819, 0.239520, -0.861965,
		-0.642783, 0.584189, 0.495533,
		0.622240, 0.775470, -0.107067,
		26.151155, 39.861034, 35.255116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.252132, 39.884312, 35.127983>,  <25.715588, 39.318207, 35.330063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.252132, 39.884312, 35.127983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632025, 39.947880, 35.020092>,  <25.859961, 39.986019, 34.955357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632025, 39.947880, 35.020092>,  <25.252132, 39.884312, 35.127983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632025, 39.947880, 35.020092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276803, 0.023754, -0.960633,
		-0.146253, 0.987006, 0.066549,
		0.949731, 0.158917, -0.269732,
		25.916945, 39.995556, 34.939171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158438, 40.376591, 34.727631>,  <25.252132, 39.884312, 35.127983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158438, 40.376591, 34.727631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.530352, 40.262016, 34.635147>,  <25.753500, 40.193272, 34.579655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.530352, 40.262016, 34.635147>,  <25.158438, 40.376591, 34.727631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.530352, 40.262016, 34.635147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249574, -0.028816, -0.967927,
		0.270582, 0.957667, -0.098279,
		0.929784, -0.286432, -0.231212,
		25.809286, 40.176086, 34.565784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.269251, 40.697109, 34.175117>,  <25.158438, 40.376591, 34.727631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.269251, 40.697109, 34.175117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.544321, 40.406925, 34.163792>,  <25.709364, 40.232815, 34.156998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.544321, 40.406925, 34.163792>,  <25.269251, 40.697109, 34.175117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544321, 40.406925, 34.163792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163299, -0.116559, -0.979667,
		0.707413, 0.678318, -0.198623,
		0.687677, -0.725465, -0.028314,
		25.750624, 40.189285, 34.155296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693523, 40.829067, 33.503811>,  <25.269251, 40.697109, 34.175117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693523, 40.829067, 33.503811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.731190, 40.447170, 33.616669>,  <25.753790, 40.218033, 33.684383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.731190, 40.447170, 33.616669>,  <25.693523, 40.829067, 33.503811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.731190, 40.447170, 33.616669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118085, -0.292110, -0.949066,
		0.988528, 0.056054, -0.140248,
		0.094167, -0.954740, 0.282140,
		25.759439, 40.160748, 33.701309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991074, 40.507065, 32.962582>,  <25.693523, 40.829067, 33.503811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991074, 40.507065, 32.962582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.853329, 40.188095, 33.160782>,  <25.770681, 39.996712, 33.279701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.853329, 40.188095, 33.160782>,  <25.991074, 40.507065, 32.962582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853329, 40.188095, 33.160782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206701, -0.450437, -0.868551,
		0.915799, -0.401519, -0.009715,
		-0.344364, -0.797427, 0.495504,
		25.750019, 39.948868, 33.309433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340977, 39.909443, 32.695156>,  <25.991074, 40.507065, 32.962582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340977, 39.909443, 32.695156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.001085, 39.783649, 32.864418>,  <25.797152, 39.708172, 32.965977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.001085, 39.783649, 32.864418>,  <26.340977, 39.909443, 32.695156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001085, 39.783649, 32.864418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168012, -0.599249, -0.782734,
		0.499735, -0.736206, 0.456361,
		-0.849727, -0.314486, 0.423158,
		25.746166, 39.689304, 32.991364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322947, 39.253159, 32.533543>,  <26.340977, 39.909443, 32.695156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322947, 39.253159, 32.533543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.948275, 39.350243, 32.634518>,  <25.723473, 39.408493, 32.695103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.948275, 39.350243, 32.634518>,  <26.322947, 39.253159, 32.533543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948275, 39.350243, 32.634518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349016, -0.587973, -0.729709,
		-0.028679, -0.771609, 0.635451,
		-0.936678, 0.242709, 0.252441,
		25.667271, 39.423054, 32.710251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012472, 38.630737, 32.271103>,  <26.322947, 39.253159, 32.533543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012472, 38.630737, 32.271103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.722391, 38.903492, 32.309280>,  <25.548344, 39.067146, 32.332188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.722391, 38.903492, 32.309280>,  <26.012472, 38.630737, 32.271103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722391, 38.903492, 32.309280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444114, -0.357324, -0.821634,
		-0.526162, -0.638235, 0.561969,
		-0.725200, 0.681891, 0.095439,
		25.504831, 39.108059, 32.337914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381670, 38.325706, 32.013870>,  <26.012472, 38.630737, 32.271103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381670, 38.325706, 32.013870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.274578, 38.710606, 32.033485>,  <25.210323, 38.941544, 32.045254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.274578, 38.710606, 32.033485>,  <25.381670, 38.325706, 32.013870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.274578, 38.710606, 32.033485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525303, -0.103113, -0.844645,
		-0.807699, -0.251895, 0.533077,
		-0.267729, 0.962246, 0.049037,
		25.194260, 38.999279, 32.048195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.589506, 38.343544, 31.913340>,  <25.381670, 38.325706, 32.013870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.589506, 38.343544, 31.913340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.808643, 38.651154, 31.781605>,  <24.940126, 38.835720, 31.702564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.808643, 38.651154, 31.781605>,  <24.589506, 38.343544, 31.913340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.808643, 38.651154, 31.781605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491144, -0.023025, -0.870774,
		-0.677233, 0.638800, 0.365090,
		0.547844, 0.769029, -0.329336,
		24.972996, 38.881863, 31.682804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.013344, 29.208727, 45.058449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.621220, 29.210939, 45.137394>,  <41.385944, 29.212267, 45.184761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.621220, 29.210939, 45.137394>,  <42.013344, 29.208727, 45.058449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621220, 29.210939, 45.137394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177725, -0.410737, 0.894264,
		0.086013, 0.911737, 0.401668,
		-0.980314, 0.005532, 0.197367,
		41.327126, 29.212599, 45.196606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065048, 29.234037, 45.706821>,  <42.013344, 29.208727, 45.058449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065048, 29.234037, 45.706821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.679199, 29.138090, 45.663074>,  <41.447689, 29.080523, 45.636826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.679199, 29.138090, 45.663074>,  <42.065048, 29.234037, 45.706821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679199, 29.138090, 45.663074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044770, -0.259795, 0.964625,
		-0.259795, 0.935399, 0.239866,
		-0.964625, -0.239866, -0.109371,
		41.389812, 29.066130, 45.630264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784409, 29.519253, 46.344624>,  <42.065048, 29.234037, 45.706821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784409, 29.519253, 46.344624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.513138, 29.246294, 46.235508>,  <41.350376, 29.082520, 46.170040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.513138, 29.246294, 46.235508>,  <41.784409, 29.519253, 46.344624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513138, 29.246294, 46.235508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083826, -0.440599, 0.893782,
		-0.730104, 0.583273, 0.356006,
		-0.678175, -0.682397, -0.272789,
		41.309685, 29.041574, 46.153671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346821, 29.496983, 46.904381>,  <41.784409, 29.519253, 46.344624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346821, 29.496983, 46.904381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.249332, 29.162600, 46.707699>,  <41.190838, 28.961969, 46.589691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.249332, 29.162600, 46.707699>,  <41.346821, 29.496983, 46.904381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249332, 29.162600, 46.707699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299715, -0.417255, 0.857945,
		-0.922373, 0.356470, -0.148855,
		-0.243721, -0.835959, -0.491704,
		41.176216, 28.911812, 46.560188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719299, 29.328119, 47.141674>,  <41.346821, 29.496983, 46.904381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719299, 29.328119, 47.141674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.844551, 28.974859, 47.001961>,  <40.919704, 28.762903, 46.918133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.844551, 28.974859, 47.001961>,  <40.719299, 29.328119, 47.141674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844551, 28.974859, 47.001961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083345, -0.391913, 0.916219,
		-0.946046, -0.257786, -0.196326,
		0.313131, -0.883148, -0.349283,
		40.938492, 28.709915, 46.897175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245960, 28.861332, 47.429241>,  <40.719299, 29.328119, 47.141674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245960, 28.861332, 47.429241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.557987, 28.644922, 47.303516>,  <40.745201, 28.515078, 47.228081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.557987, 28.644922, 47.303516>,  <40.245960, 28.861332, 47.429241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557987, 28.644922, 47.303516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055208, -0.559892, 0.826724,
		-0.623259, -0.627546, -0.466621,
		0.780064, -0.541024, -0.314312,
		40.792007, 28.482615, 47.209225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022503, 28.059341, 47.304878>,  <40.245960, 28.861332, 47.429241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022503, 28.059341, 47.304878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.411762, 28.089304, 47.391941>,  <40.645317, 28.107281, 47.444180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.411762, 28.089304, 47.391941>,  <40.022503, 28.059341, 47.304878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411762, 28.089304, 47.391941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125452, -0.620195, 0.774351,
		0.192991, -0.780863, -0.594144,
		0.973148, 0.074906, 0.217653,
		40.703705, 28.111776, 47.457237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322098, 27.317362, 47.398254>,  <40.022503, 28.059341, 47.304878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322098, 27.317362, 47.398254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.602627, 27.552416, 47.559662>,  <40.770947, 27.693447, 47.656506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.602627, 27.552416, 47.559662>,  <40.322098, 27.317362, 47.398254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602627, 27.552416, 47.559662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123580, -0.457276, 0.880696,
		0.702048, -0.667521, -0.248079,
		0.701324, 0.587634, 0.403523,
		40.813023, 27.728706, 47.680717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703671, 26.871500, 47.724167>,  <40.322098, 27.317362, 47.398254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703671, 26.871500, 47.724167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.792286, 27.219004, 47.901333>,  <40.845455, 27.427505, 48.007633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.792286, 27.219004, 47.901333>,  <40.703671, 26.871500, 47.724167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792286, 27.219004, 47.901333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056813, -0.441934, 0.895247,
		0.973495, -0.223498, -0.048550,
		0.221542, 0.868760, 0.442918,
		40.858749, 27.479631, 48.034206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078949, 26.590000, 48.247669>,  <40.703671, 26.871500, 47.724167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078949, 26.590000, 48.247669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.988388, 26.959549, 48.371086>,  <40.934052, 27.181278, 48.445137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.988388, 26.959549, 48.371086>,  <41.078949, 26.590000, 48.247669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988388, 26.959549, 48.371086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096875, -0.336554, 0.936668,
		0.969203, 0.182178, 0.165698,
		-0.226407, 0.923873, 0.308541,
		40.920467, 27.236712, 48.463650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548561, 26.765392, 48.793537>,  <41.078949, 26.590000, 48.247669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548561, 26.765392, 48.793537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.243576, 27.021933, 48.827778>,  <41.060585, 27.175858, 48.848320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.243576, 27.021933, 48.827778>,  <41.548561, 26.765392, 48.793537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243576, 27.021933, 48.827778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168678, -0.324737, 0.930641,
		0.624664, 0.695136, 0.355780,
		-0.762458, 0.641351, 0.085598,
		41.014839, 27.214338, 48.853458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666855, 27.171114, 49.444584>,  <41.548561, 26.765392, 48.793537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666855, 27.171114, 49.444584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.271484, 27.183298, 49.385128>,  <41.034264, 27.190609, 49.349453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.271484, 27.183298, 49.385128>,  <41.666855, 27.171114, 49.444584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271484, 27.183298, 49.385128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150899, -0.299897, 0.941961,
		-0.015884, 0.953485, 0.301021,
		-0.988422, 0.030462, -0.148643,
		40.974957, 27.192436, 49.340534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342110, 27.511724, 49.963879>,  <41.666855, 27.171114, 49.444584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342110, 27.511724, 49.963879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.083210, 27.245258, 49.815670>,  <40.927868, 27.085379, 49.726746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.083210, 27.245258, 49.815670>,  <41.342110, 27.511724, 49.963879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083210, 27.245258, 49.815670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179928, -0.338826, 0.923484,
		-0.740735, 0.664397, 0.099445,
		-0.647254, -0.666164, -0.370524,
		40.889034, 27.045408, 49.704514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768650, 27.729805, 50.223602>,  <41.342110, 27.511724, 49.963879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768650, 27.729805, 50.223602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.756115, 27.331427, 50.189869>,  <40.748596, 27.092400, 50.169628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.756115, 27.331427, 50.189869>,  <40.768650, 27.729805, 50.223602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756115, 27.331427, 50.189869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020686, -0.085007, 0.996165,
		-0.999295, 0.029469, 0.023266,
		-0.031334, -0.995944, -0.084337,
		40.746716, 27.032642, 50.164566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064266, 28.375849, 50.301392>,  <40.768650, 27.729805, 50.223602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064266, 28.375849, 50.301392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.935234, 28.698183, 50.500015>,  <40.857815, 28.891582, 50.619190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.935234, 28.698183, 50.500015>,  <41.064266, 28.375849, 50.301392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935234, 28.698183, 50.500015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110521, 0.488950, -0.865282,
		-0.940068, -0.334004, -0.068664,
		-0.322581, 0.805835, 0.496560,
		40.838459, 28.939934, 50.648983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427280, 28.624344, 49.937363>,  <41.064266, 28.375849, 50.301392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427280, 28.624344, 49.937363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.546574, 28.950218, 50.136299>,  <40.618149, 29.145742, 50.255661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.546574, 28.950218, 50.136299>,  <40.427280, 28.624344, 49.937363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546574, 28.950218, 50.136299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333869, 0.577174, -0.745252,
		-0.894198, 0.056208, 0.444128,
		0.298229, 0.814684, 0.497342,
		40.636044, 29.194624, 50.285503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867619, 29.002281, 49.997253>,  <40.427280, 28.624344, 49.937363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867619, 29.002281, 49.997253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.183720, 29.245153, 50.030300>,  <40.373383, 29.390877, 50.050129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.183720, 29.245153, 50.030300>,  <39.867619, 29.002281, 49.997253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183720, 29.245153, 50.030300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308620, 0.510845, -0.802365,
		-0.529384, 0.608578, 0.591088,
		0.790257, 0.607181, 0.082614,
		40.420795, 29.427307, 50.055084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610928, 29.722235, 49.881115>,  <39.867619, 29.002281, 49.997253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610928, 29.722235, 49.881115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.003056, 29.776436, 49.823692>,  <40.238335, 29.808956, 49.789238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.003056, 29.776436, 49.823692>,  <39.610928, 29.722235, 49.881115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003056, 29.776436, 49.823692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195854, 0.576674, -0.793151,
		-0.024690, 0.805659, 0.591865,
		0.980322, 0.135502, -0.143554,
		40.297153, 29.817087, 49.780624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655529, 30.409971, 49.758465>,  <39.610928, 29.722235, 49.881115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655529, 30.409971, 49.758465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.003220, 30.265055, 49.623890>,  <40.211834, 30.178104, 49.543144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.003220, 30.265055, 49.623890>,  <39.655529, 30.409971, 49.758465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003220, 30.265055, 49.623890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017632, 0.657336, -0.753391,
		0.494101, 0.660799, 0.564986,
		0.869226, -0.362289, -0.336442,
		40.263988, 30.156368, 49.522957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215199, 30.917620, 49.829071>,  <39.655529, 30.409971, 49.758465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215199, 30.917620, 49.829071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.304436, 30.674166, 49.524494>,  <40.357979, 30.528093, 49.341747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.304436, 30.674166, 49.524494>,  <40.215199, 30.917620, 49.829071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304436, 30.674166, 49.524494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228634, 0.726670, -0.647825,
		0.947606, 0.318617, 0.022960,
		0.223092, -0.608633, -0.761443,
		40.371365, 30.491575, 49.296062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538097, 31.355207, 49.257694>,  <40.215199, 30.917620, 49.829071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538097, 31.355207, 49.257694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.466747, 31.002094, 49.083851>,  <40.423939, 30.790226, 48.979546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.466747, 31.002094, 49.083851>,  <40.538097, 31.355207, 49.257694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466747, 31.002094, 49.083851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244403, 0.467595, -0.849484,
		0.953127, -0.045306, -0.299160,
		-0.178372, -0.882781, -0.434604,
		40.413235, 30.737261, 48.953468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866581, 31.397789, 48.576164>,  <40.538097, 31.355207, 49.257694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866581, 31.397789, 48.576164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.579475, 31.119844, 48.558327>,  <40.407211, 30.953077, 48.547623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.579475, 31.119844, 48.558327>,  <40.866581, 31.397789, 48.576164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579475, 31.119844, 48.558327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308360, 0.374636, -0.874392,
		0.624288, -0.613852, -0.483166,
		-0.717759, -0.694862, -0.044593,
		40.364147, 30.911386, 48.544949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975555, 31.106640, 47.859821>,  <40.866581, 31.397789, 48.576164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975555, 31.106640, 47.859821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.611179, 30.985777, 47.972176>,  <40.392555, 30.913260, 48.039589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.611179, 30.985777, 47.972176>,  <40.975555, 31.106640, 47.859821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611179, 30.985777, 47.972176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376713, 0.331690, -0.864910,
		0.168174, -0.893690, -0.415975,
		-0.910936, -0.302159, 0.280883,
		40.337898, 30.895128, 48.056442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707855, 30.770527, 47.276669>,  <40.975555, 31.106640, 47.859821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707855, 30.770527, 47.276669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.375828, 30.880898, 47.470516>,  <40.176613, 30.947119, 47.586826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.375828, 30.880898, 47.470516>,  <40.707855, 30.770527, 47.276669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375828, 30.880898, 47.470516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460202, 0.151889, -0.874725,
		-0.314968, -0.949102, 0.000904,
		-0.830065, 0.275926, 0.484619,
		40.126808, 30.963675, 47.615902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224991, 30.482548, 46.851395>,  <40.707855, 30.770527, 47.276669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224991, 30.482548, 46.851395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.010712, 30.739229, 47.070938>,  <39.882145, 30.893238, 47.202663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.010712, 30.739229, 47.070938>,  <40.224991, 30.482548, 46.851395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010712, 30.739229, 47.070938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536262, 0.243547, -0.808151,
		-0.652265, -0.727258, 0.213652,
		-0.535700, 0.641702, 0.548858,
		39.850002, 30.931740, 47.235596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581356, 30.366512, 46.753681>,  <40.224991, 30.482548, 46.851395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581356, 30.366512, 46.753681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.616474, 30.754015, 46.846466>,  <39.637543, 30.986517, 46.902138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.616474, 30.754015, 46.846466>,  <39.581356, 30.366512, 46.753681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616474, 30.754015, 46.846466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493067, 0.244597, -0.834900,
		-0.865550, -0.041076, 0.499135,
		0.087792, 0.968755, 0.231964,
		39.642811, 31.044641, 46.916054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072803, 30.666035, 46.416466>,  <39.581356, 30.366512, 46.753681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072803, 30.666035, 46.416466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257385, 30.998661, 46.540119>,  <39.368134, 31.198236, 46.614311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257385, 30.998661, 46.540119>,  <39.072803, 30.666035, 46.416466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257385, 30.998661, 46.540119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316149, 0.479707, -0.818493,
		-0.828922, 0.279965, 0.484261,
		0.461453, 0.831565, 0.309129,
		39.395821, 31.248131, 46.632858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528706, 31.173660, 46.387268>,  <39.072803, 30.666035, 46.416466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528706, 31.173660, 46.387268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881222, 31.359848, 46.354618>,  <39.092731, 31.471561, 46.335030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881222, 31.359848, 46.354618>,  <38.528706, 31.173660, 46.387268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881222, 31.359848, 46.354618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319901, 0.460478, -0.828024,
		-0.347834, 0.755842, 0.554720,
		0.881291, 0.465471, -0.081625,
		39.145611, 31.499489, 46.330132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935997, 31.458258, 46.664505>,  <38.528706, 31.173660, 46.387268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935997, 31.458258, 46.664505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552261, 31.481760, 46.774929>,  <37.322018, 31.495861, 46.841183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552261, 31.481760, 46.774929>,  <37.935997, 31.458258, 46.664505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552261, 31.481760, 46.774929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163958, -0.680118, 0.714533,
		0.229734, 0.730744, 0.642834,
		-0.959344, 0.058755, 0.276057,
		37.264458, 31.499386, 46.857746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922256, 31.587578, 47.372017>,  <37.935997, 31.458258, 46.664505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922256, 31.587578, 47.372017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567574, 31.416906, 47.300808>,  <37.354763, 31.314505, 47.258083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567574, 31.416906, 47.300808>,  <37.922256, 31.587578, 47.372017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567574, 31.416906, 47.300808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140495, -0.615533, 0.775487,
		-0.440462, 0.662621, 0.605745,
		-0.886710, -0.426677, -0.178023,
		37.301559, 31.288904, 47.247402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603062, 31.561115, 48.056934>,  <37.922256, 31.587578, 47.372017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603062, 31.561115, 48.056934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.413803, 31.282858, 47.840710>,  <37.300247, 31.115904, 47.710976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.413803, 31.282858, 47.840710>,  <37.603062, 31.561115, 48.056934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413803, 31.282858, 47.840710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054238, -0.589428, 0.805998,
		-0.879311, 0.410677, 0.241157,
		-0.473149, -0.695643, -0.540565,
		37.271858, 31.074165, 47.678539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033073, 31.407923, 48.475254>,  <37.603062, 31.561115, 48.056934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033073, 31.407923, 48.475254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079720, 31.092361, 48.233913>,  <37.107708, 30.903025, 48.089108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079720, 31.092361, 48.233913>,  <37.033073, 31.407923, 48.475254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079720, 31.092361, 48.233913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048309, -0.611285, 0.789935,
		-0.992002, -0.062969, -0.109395,
		0.116612, -0.788902, -0.603354,
		37.114704, 30.855690, 48.052906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530155, 31.013021, 48.600639>,  <37.033073, 31.407923, 48.475254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530155, 31.013021, 48.600639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782963, 30.754246, 48.429985>,  <36.934647, 30.598980, 48.327591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782963, 30.754246, 48.429985>,  <36.530155, 31.013021, 48.600639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782963, 30.754246, 48.429985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075788, -0.599496, 0.796782,
		-0.771238, -0.471248, -0.427923,
		0.632020, -0.646939, -0.426639,
		36.972569, 30.560163, 48.301994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213203, 30.264082, 48.720684>,  <36.530155, 31.013021, 48.600639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213203, 30.264082, 48.720684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610577, 30.263355, 48.674938>,  <36.849003, 30.262920, 48.647491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610577, 30.263355, 48.674938>,  <36.213203, 30.264082, 48.720684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610577, 30.263355, 48.674938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084836, -0.658935, 0.747401,
		-0.076715, -0.752198, -0.654456,
		0.993437, -0.001816, -0.114364,
		36.908607, 30.262810, 48.640629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368710, 29.557693, 48.916031>,  <36.213203, 30.264082, 48.720684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368710, 29.557693, 48.916031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.718212, 29.751965, 48.926300>,  <36.927914, 29.868526, 48.932461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.718212, 29.751965, 48.926300>,  <36.368710, 29.557693, 48.916031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718212, 29.751965, 48.926300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269422, -0.527295, 0.805836,
		0.404913, -0.697191, -0.591582,
		0.873761, 0.485678, 0.025670,
		36.980339, 29.897669, 48.934002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524448, 28.978239, 48.470470>,  <36.368710, 29.557693, 48.916031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524448, 28.978239, 48.470470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.152435, 28.983612, 48.617363>,  <35.929226, 28.986835, 48.705498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.152435, 28.983612, 48.617363>,  <36.524448, 28.978239, 48.470470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152435, 28.983612, 48.617363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238600, 0.737957, -0.631260,
		-0.279483, -0.674714, -0.683118,
		-0.930032, 0.013434, 0.367233,
		35.873425, 28.987642, 48.727531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109417, 29.144791, 47.962845>,  <36.524448, 28.978239, 48.470470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109417, 29.144791, 47.962845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818672, 29.203384, 48.231239>,  <35.644226, 29.238541, 48.392277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818672, 29.203384, 48.231239>,  <36.109417, 29.144791, 47.962845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818672, 29.203384, 48.231239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451269, 0.634617, -0.627390,
		-0.517720, -0.758818, -0.395174,
		-0.726858, 0.146483, 0.670984,
		35.600616, 29.247330, 48.432533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460274, 28.923992, 47.622124>,  <36.109417, 29.144791, 47.962845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460274, 28.923992, 47.622124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382973, 29.178925, 47.920509>,  <35.336594, 29.331884, 48.099541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382973, 29.178925, 47.920509>,  <35.460274, 28.923992, 47.622124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382973, 29.178925, 47.920509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514784, 0.581378, -0.630076,
		-0.835255, -0.505773, 0.215737,
		-0.193251, 0.637332, 0.745964,
		35.324997, 29.370125, 48.144299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816422, 28.975792, 47.672562>,  <35.460274, 28.923992, 47.622124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816422, 28.975792, 47.672562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914608, 29.313019, 47.863972>,  <34.973518, 29.515354, 47.978817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914608, 29.313019, 47.863972>,  <34.816422, 28.975792, 47.672562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914608, 29.313019, 47.863972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590488, 0.521515, -0.615911,
		-0.768811, -0.131377, 0.625835,
		0.245466, 0.843067, 0.478523,
		34.988247, 29.565939, 48.007530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198723, 29.307676, 47.838810>,  <34.816422, 28.975792, 47.672562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198723, 29.307676, 47.838810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483734, 29.588320, 47.835945>,  <34.654739, 29.756706, 47.834225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483734, 29.588320, 47.835945>,  <34.198723, 29.307676, 47.838810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483734, 29.588320, 47.835945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617184, 0.621864, -0.482047,
		-0.333755, 0.347891, 0.876116,
		0.712525, 0.701611, -0.007163,
		34.697491, 29.798803, 47.833797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912052, 29.932314, 47.997799>,  <34.198723, 29.307676, 47.838810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912052, 29.932314, 47.997799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258640, 30.055054, 47.840279>,  <34.466591, 30.128696, 47.745766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258640, 30.055054, 47.840279>,  <33.912052, 29.932314, 47.997799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258640, 30.055054, 47.840279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497891, 0.588911, -0.636623,
		0.036565, 0.747682, 0.663050,
		0.866469, 0.306848, -0.393797,
		34.518581, 30.147108, 47.722141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959663, 30.702625, 48.076897>,  <33.912052, 29.932314, 47.997799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959663, 30.702625, 48.076897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.233932, 30.618647, 47.798107>,  <34.398495, 30.568260, 47.630833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.233932, 30.618647, 47.798107>,  <33.959663, 30.702625, 48.076897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233932, 30.618647, 47.798107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301829, 0.789306, -0.534691,
		0.662385, 0.576990, 0.477836,
		0.685671, -0.209947, -0.696978,
		34.439632, 30.555662, 47.589012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.174698, 25.907923, 49.105724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.545403, 26.045912, 49.046249>,  <38.767826, 26.128704, 49.010567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.545403, 26.045912, 49.046249>,  <38.174698, 25.907923, 49.105724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545403, 26.045912, 49.046249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266988, 0.326464, -0.906719,
		-0.264251, 0.880010, 0.394657,
		0.926762, 0.344970, -0.148684,
		38.823433, 26.149403, 49.001644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152813, 26.608257, 48.760246>,  <38.174698, 25.907923, 49.105724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152813, 26.608257, 48.760246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.530964, 26.499718, 48.688000>,  <38.757854, 26.434593, 48.644650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.530964, 26.499718, 48.688000>,  <38.152813, 26.608257, 48.760246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530964, 26.499718, 48.688000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078270, 0.348927, -0.933876,
		0.316429, 0.897006, 0.308630,
		0.945382, -0.271348, -0.180619,
		38.814579, 26.418314, 48.633816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429714, 27.113686, 48.466686>,  <38.152813, 26.608257, 48.760246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429714, 27.113686, 48.466686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.713848, 26.867285, 48.330471>,  <38.884327, 26.719444, 48.248741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.713848, 26.867285, 48.330471>,  <38.429714, 27.113686, 48.466686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713848, 26.867285, 48.330471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089845, 0.400503, -0.911880,
		0.698106, 0.678336, 0.229147,
		0.710335, -0.616001, -0.340539,
		38.926949, 26.682484, 48.228310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977295, 27.546572, 48.050335>,  <38.429714, 27.113686, 48.466686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977295, 27.546572, 48.050335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.000679, 27.165325, 47.931572>,  <39.014709, 26.936577, 47.860313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.000679, 27.165325, 47.931572>,  <38.977295, 27.546572, 48.050335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000679, 27.165325, 47.931572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077340, 0.300843, -0.950533,
		0.995289, 0.032606, 0.091301,
		0.058461, -0.953116, -0.296904,
		39.018219, 26.879391, 47.842503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413685, 27.547657, 47.412495>,  <38.977295, 27.546572, 48.050335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413685, 27.547657, 47.412495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.225929, 27.194542, 47.404888>,  <39.113277, 26.982674, 47.400326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.225929, 27.194542, 47.404888>,  <39.413685, 27.547657, 47.412495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225929, 27.194542, 47.404888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090943, 0.069753, -0.993410,
		0.878297, -0.464565, -0.113025,
		-0.469387, -0.882787, -0.019015,
		39.085114, 26.929707, 47.399185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625343, 27.217598, 46.782124>,  <39.413685, 27.547657, 47.412495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625343, 27.217598, 46.782124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.297451, 27.016651, 46.892155>,  <39.100716, 26.896084, 46.958172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.297451, 27.016651, 46.892155>,  <39.625343, 27.217598, 46.782124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297451, 27.016651, 46.892155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367930, 0.093812, -0.925109,
		0.438939, -0.859550, -0.261737,
		-0.819731, -0.502368, 0.275076,
		39.051533, 26.865940, 46.974678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656433, 26.737427, 46.275322>,  <39.625343, 27.217598, 46.782124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656433, 26.737427, 46.275322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.276093, 26.737656, 46.399178>,  <39.047886, 26.737793, 46.473492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.276093, 26.737656, 46.399178>,  <39.656433, 26.737427, 46.275322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276093, 26.737656, 46.399178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309527, -0.029005, -0.950448,
		0.008433, -0.999579, 0.027758,
		-0.950853, 0.000576, 0.309641,
		38.990837, 26.737827, 46.492069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214970, 26.192186, 45.897087>,  <39.656433, 26.737427, 46.275322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214970, 26.192186, 45.897087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.973923, 26.484880, 46.024467>,  <38.829292, 26.660498, 46.100895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.973923, 26.484880, 46.024467>,  <39.214970, 26.192186, 45.897087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973923, 26.484880, 46.024467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375377, 0.092229, -0.922272,
		-0.704230, -0.675320, 0.219098,
		-0.602621, 0.731736, 0.318450,
		38.793137, 26.704401, 46.120003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651939, 26.097239, 45.428204>,  <39.214970, 26.192186, 45.897087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651939, 26.097239, 45.428204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.589867, 26.461468, 45.581448>,  <38.552624, 26.680006, 45.673393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.589867, 26.461468, 45.581448>,  <38.651939, 26.097239, 45.428204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589867, 26.461468, 45.581448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368405, 0.306488, -0.877692,
		-0.916622, -0.277343, 0.287898,
		-0.155184, 0.910574, 0.383108,
		38.543312, 26.734640, 45.696381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998783, 26.181425, 45.274769>,  <38.651939, 26.097239, 45.428204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998783, 26.181425, 45.274769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.137070, 26.554937, 45.311726>,  <38.220039, 26.779045, 45.333900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.137070, 26.554937, 45.311726>,  <37.998783, 26.181425, 45.274769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137070, 26.554937, 45.311726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459768, 0.254404, -0.850818,
		-0.817983, 0.251661, 0.517273,
		0.345714, 0.933780, 0.092393,
		38.240784, 26.835072, 45.339443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415466, 26.597513, 45.116051>,  <37.998783, 26.181425, 45.274769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415466, 26.597513, 45.116051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.720165, 26.855223, 45.088776>,  <37.902985, 27.009848, 45.072411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.720165, 26.855223, 45.088776>,  <37.415466, 26.597513, 45.116051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720165, 26.855223, 45.088776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414308, 0.403511, -0.815799,
		-0.498082, 0.649686, 0.574302,
		0.761750, 0.644273, -0.068189,
		37.948689, 27.048504, 45.068317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109093, 27.334206, 45.014389>,  <37.415466, 26.597513, 45.116051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109093, 27.334206, 45.014389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.485752, 27.352785, 44.881042>,  <37.711750, 27.363934, 44.801033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.485752, 27.352785, 44.881042>,  <37.109093, 27.334206, 45.014389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485752, 27.352785, 44.881042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298528, 0.572745, -0.763442,
		0.155474, 0.818417, 0.553192,
		0.941652, 0.046448, -0.333368,
		37.768250, 27.366720, 44.781033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540298, 27.753412, 45.189007>,  <37.109093, 27.334206, 45.014389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540298, 27.753412, 45.189007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.225834, 27.523829, 45.097336>,  <36.037155, 27.386078, 45.042332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.225834, 27.523829, 45.097336>,  <36.540298, 27.753412, 45.189007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225834, 27.523829, 45.097336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022809, -0.397521, 0.917310,
		-0.617603, 0.715924, 0.325606,
		-0.786159, -0.573960, -0.229181,
		35.989986, 27.351641, 45.028580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138561, 27.723368, 45.806904>,  <36.540298, 27.753412, 45.189007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138561, 27.723368, 45.806904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.041946, 27.411377, 45.575977>,  <35.983978, 27.224182, 45.437420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.041946, 27.411377, 45.575977>,  <36.138561, 27.723368, 45.806904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041946, 27.411377, 45.575977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262262, -0.520323, 0.812701,
		-0.934279, 0.347709, -0.078879,
		-0.241541, -0.779976, -0.577318,
		35.969482, 27.177383, 45.402782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452602, 27.540569, 45.901997>,  <36.138561, 27.723368, 45.806904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452602, 27.540569, 45.901997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.644440, 27.217508, 45.764774>,  <35.759541, 27.023672, 45.682442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.644440, 27.217508, 45.764774>,  <35.452602, 27.540569, 45.901997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644440, 27.217508, 45.764774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095486, -0.436660, 0.894545,
		-0.872280, -0.396262, -0.286539,
		0.479594, -0.807654, -0.343052,
		35.788319, 26.975212, 45.661858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086742, 26.989170, 46.198044>,  <35.452602, 27.540569, 45.901997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086742, 26.989170, 46.198044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433384, 26.826332, 46.082615>,  <35.641369, 26.728630, 46.013359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433384, 26.826332, 46.082615>,  <35.086742, 26.989170, 46.198044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433384, 26.826332, 46.082615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014853, -0.599091, 0.800543,
		-0.498778, -0.689466, -0.525221,
		0.866602, -0.407094, -0.288573,
		35.693363, 26.704203, 45.996044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079929, 26.306995, 46.375904>,  <35.086742, 26.989170, 46.198044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079929, 26.306995, 46.375904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474487, 26.343647, 46.321301>,  <35.711220, 26.365639, 46.288536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474487, 26.343647, 46.321301>,  <35.079929, 26.306995, 46.375904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474487, 26.343647, 46.321301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164040, -0.492670, 0.854615,
		0.011054, -0.865379, -0.500997,
		0.986392, 0.091631, -0.136511,
		35.770405, 26.371136, 46.280346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331623, 25.686413, 46.464077>,  <35.079929, 26.306995, 46.375904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331623, 25.686413, 46.464077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.620628, 25.945639, 46.560394>,  <35.794033, 26.101175, 46.618187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.620628, 25.945639, 46.560394>,  <35.331623, 25.686413, 46.464077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620628, 25.945639, 46.560394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187162, -0.518640, 0.834256,
		0.665539, -0.557695, -0.496018,
		0.722515, 0.648066, 0.240796,
		35.837383, 26.140059, 46.632633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681793, 25.309361, 46.919403>,  <35.331623, 25.686413, 46.464077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681793, 25.309361, 46.919403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.844734, 25.670837, 46.972172>,  <35.942501, 25.887724, 47.003834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.844734, 25.670837, 46.972172>,  <35.681793, 25.309361, 46.919403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844734, 25.670837, 46.972172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176614, -0.219670, 0.959454,
		0.896030, -0.367541, -0.249088,
		0.407356, 0.903692, 0.131918,
		35.966942, 25.941944, 47.011745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416592, 25.162125, 47.144436>,  <35.681793, 25.309361, 46.919403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416592, 25.162125, 47.144436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.317684, 25.519274, 47.294971>,  <36.258339, 25.733564, 47.385292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.317684, 25.519274, 47.294971>,  <36.416592, 25.162125, 47.144436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317684, 25.519274, 47.294971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384015, -0.266292, 0.884093,
		0.889601, 0.363129, -0.277032,
		-0.247268, 0.892875, 0.376341,
		36.243504, 25.787136, 47.407875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188393, 25.476950, 47.346935>,  <36.416592, 25.162125, 47.144436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188393, 25.476950, 47.346935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.896378, 25.691236, 47.516666>,  <36.721169, 25.819809, 47.618507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.896378, 25.691236, 47.516666>,  <37.188393, 25.476950, 47.346935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896378, 25.691236, 47.516666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459537, -0.074773, 0.885006,
		0.505843, 0.841079, -0.191596,
		-0.730034, 0.535719, 0.424330,
		36.677368, 25.851952, 47.643967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501369, 25.941151, 47.738174>,  <37.188393, 25.476950, 47.346935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501369, 25.941151, 47.738174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.141617, 25.964088, 47.911530>,  <36.925766, 25.977852, 48.015541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.141617, 25.964088, 47.911530>,  <37.501369, 25.941151, 47.738174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141617, 25.964088, 47.911530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433039, -0.018986, 0.901175,
		0.059908, 0.998174, -0.007757,
		-0.899382, 0.057346, 0.433385,
		36.871803, 25.981293, 48.041546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618286, 26.416542, 48.266838>,  <37.501369, 25.941151, 47.738174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618286, 26.416542, 48.266838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.274303, 26.239103, 48.367786>,  <37.067913, 26.132639, 48.428356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.274303, 26.239103, 48.367786>,  <37.618286, 26.416542, 48.266838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274303, 26.239103, 48.367786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283841, -0.004740, 0.958860,
		-0.424152, 0.896213, 0.129988,
		-0.859959, -0.443598, 0.252372,
		37.016315, 26.106024, 48.443497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314396, 26.772722, 48.883526>,  <37.618286, 26.416542, 48.266838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314396, 26.772722, 48.883526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.135391, 26.415266, 48.897015>,  <37.027988, 26.200792, 48.905109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.135391, 26.415266, 48.897015>,  <37.314396, 26.772722, 48.883526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135391, 26.415266, 48.897015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227029, -0.077055, 0.970835,
		-0.864979, 0.442119, 0.237365,
		-0.447515, -0.893640, 0.033723,
		37.001137, 26.147175, 48.907131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852222, 26.776999, 49.532921>,  <37.314396, 26.772722, 48.883526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852222, 26.776999, 49.532921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.903011, 26.392824, 49.433773>,  <36.933487, 26.162319, 49.374283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.903011, 26.392824, 49.433773>,  <36.852222, 26.776999, 49.532921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903011, 26.392824, 49.433773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059245, -0.242104, 0.968440,
		-0.990135, -0.137652, 0.026160,
		0.126974, -0.960436, -0.247871,
		36.941105, 26.104692, 49.359413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282726, 26.465284, 49.946274>,  <36.852222, 26.776999, 49.532921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282726, 26.465284, 49.946274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.551567, 26.192194, 49.831615>,  <36.712872, 26.028339, 49.762821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.551567, 26.192194, 49.831615>,  <36.282726, 26.465284, 49.946274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551567, 26.192194, 49.831615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048914, -0.345340, 0.937202,
		-0.738844, -0.643914, -0.198708,
		0.672099, -0.682726, -0.286648,
		36.753197, 25.987375, 49.745621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628159, 26.203016, 49.620819>,  <36.282726, 26.465284, 49.946274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628159, 26.203016, 49.620819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.755943, 26.412279, 49.936859>,  <35.832615, 26.537836, 50.126484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.755943, 26.412279, 49.936859>,  <35.628159, 26.203016, 49.620819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755943, 26.412279, 49.936859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223465, 0.851863, -0.473702,
		-0.920874, -0.025230, 0.389044,
		0.319461, 0.523157, 0.790096,
		35.851780, 26.569225, 50.173889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159798, 26.751556, 49.681442>,  <35.628159, 26.203016, 49.620819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159798, 26.751556, 49.681442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.462849, 26.877096, 49.910351>,  <35.644680, 26.952421, 50.047695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.462849, 26.877096, 49.910351>,  <35.159798, 26.751556, 49.681442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462849, 26.877096, 49.910351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084766, 0.916686, -0.390515,
		-0.647158, 0.247356, 0.721111,
		0.757628, 0.313851, 0.572273,
		35.690136, 26.971251, 50.082031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966446, 27.343250, 50.089275>,  <35.159798, 26.751556, 49.681442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966446, 27.343250, 50.089275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361393, 27.392950, 50.049950>,  <35.598362, 27.422770, 50.026356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361393, 27.392950, 50.049950>,  <34.966446, 27.343250, 50.089275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361393, 27.392950, 50.049950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150773, 0.927531, -0.341986,
		0.048699, 0.352490, 0.934548,
		0.987368, 0.124250, -0.098315,
		35.657604, 27.430225, 50.020454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113342, 27.886444, 50.498425>,  <34.966446, 27.343250, 50.089275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113342, 27.886444, 50.498425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409389, 27.851042, 50.231773>,  <35.587017, 27.829800, 50.071785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409389, 27.851042, 50.231773>,  <35.113342, 27.886444, 50.498425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409389, 27.851042, 50.231773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122944, 0.956785, -0.263528,
		0.661140, 0.277000, 0.697256,
		0.740121, -0.088506, -0.666624,
		35.631424, 27.824490, 50.031788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569489, 28.577560, 50.506573>,  <35.113342, 27.886444, 50.498425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569489, 28.577560, 50.506573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.662575, 28.378841, 50.172142>,  <35.718426, 28.259609, 49.971481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.662575, 28.378841, 50.172142>,  <35.569489, 28.577560, 50.506573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662575, 28.378841, 50.172142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027161, 0.856030, -0.516212,
		0.972165, 0.142841, 0.185722,
		0.232720, -0.496799, -0.836081,
		35.732391, 28.229801, 49.921318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070896, 29.021656, 50.246349>,  <35.569489, 28.577560, 50.506573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070896, 29.021656, 50.246349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.917965, 28.796431, 49.953285>,  <35.826206, 28.661295, 49.777447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.917965, 28.796431, 49.953285>,  <36.070896, 29.021656, 50.246349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917965, 28.796431, 49.953285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049214, 0.804179, -0.592347,
		0.922716, -0.190413, -0.335169,
		-0.382326, -0.563063, -0.732658,
		35.803268, 28.627512, 49.733490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536419, 29.110605, 49.703903>,  <36.070896, 29.021656, 50.246349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536419, 29.110605, 49.703903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.198429, 28.971355, 49.541508>,  <35.995636, 28.887806, 49.444073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.198429, 28.971355, 49.541508>,  <36.536419, 29.110605, 49.703903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198429, 28.971355, 49.541508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057493, 0.813858, -0.578212,
		0.531704, -0.465234, -0.707706,
		-0.844976, -0.348126, -0.405984,
		35.944935, 28.866917, 49.419712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923531, 29.076887, 49.066730>,  <36.536419, 29.110605, 49.703903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923531, 29.076887, 49.066730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.064537, 29.434704, 49.176659>,  <37.149143, 29.649393, 49.242615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.064537, 29.434704, 49.176659>,  <36.923531, 29.076887, 49.066730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064537, 29.434704, 49.176659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400244, -0.409586, 0.819783,
		0.845893, -0.178993, -0.502421,
		0.352520, 0.894539, 0.274825,
		37.170292, 29.703066, 49.259106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486118, 28.915051, 49.359829>,  <36.923531, 29.076887, 49.066730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486118, 28.915051, 49.359829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.464954, 29.290091, 49.497292>,  <37.452255, 29.515116, 49.579769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.464954, 29.290091, 49.497292>,  <37.486118, 28.915051, 49.359829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464954, 29.290091, 49.497292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564753, -0.255724, 0.784640,
		0.823562, 0.235599, -0.515983,
		-0.052911, 0.937602, 0.343660,
		37.449081, 29.571371, 49.600391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171749, 29.015381, 49.596916>,  <37.486118, 28.915051, 49.359829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171749, 29.015381, 49.596916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.931946, 29.280579, 49.776264>,  <37.788063, 29.439697, 49.883873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.931946, 29.280579, 49.776264>,  <38.171749, 29.015381, 49.596916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931946, 29.280579, 49.776264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469229, -0.162689, 0.867961,
		0.648398, 0.730733, -0.213563,
		-0.599504, 0.662994, 0.448369,
		37.752094, 29.479477, 49.910774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596836, 29.485140, 50.020252>,  <38.171749, 29.015381, 49.596916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596836, 29.485140, 50.020252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.235855, 29.568846, 50.170872>,  <38.019268, 29.619070, 50.261246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.235855, 29.568846, 50.170872>,  <38.596836, 29.485140, 50.020252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235855, 29.568846, 50.170872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359755, -0.114745, 0.925965,
		0.236980, 0.971103, 0.028267,
		-0.902451, 0.209266, 0.376551,
		37.965118, 29.631626, 50.283836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743660, 30.040886, 50.471989>,  <38.596836, 29.485140, 50.020252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743660, 30.040886, 50.471989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.413963, 29.825701, 50.542664>,  <38.216145, 29.696589, 50.585068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.413963, 29.825701, 50.542664>,  <38.743660, 30.040886, 50.471989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413963, 29.825701, 50.542664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283136, -0.121341, 0.951373,
		-0.490365, 0.834189, 0.252331,
		-0.824243, -0.537964, 0.176687,
		38.166691, 29.664312, 50.595669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576412, 30.218569, 51.110950>,  <38.743660, 30.040886, 50.471989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576412, 30.218569, 51.110950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.297195, 29.932194, 51.116104>,  <38.129665, 29.760368, 51.119198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.297195, 29.932194, 51.116104>,  <38.576412, 30.218569, 51.110950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297195, 29.932194, 51.116104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244908, -0.221798, 0.943836,
		-0.672868, 0.661997, 0.330164,
		-0.698046, -0.715937, 0.012888,
		38.087780, 29.717413, 51.119972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879486, 30.310112, 51.649143>,  <38.576412, 30.218569, 51.110950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879486, 30.310112, 51.649143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.997871, 29.935415, 51.574394>,  <38.068901, 29.710598, 51.529545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.997871, 29.935415, 51.574394>,  <37.879486, 30.310112, 51.649143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997871, 29.935415, 51.574394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234325, -0.118457, 0.964914,
		-0.926013, -0.329365, 0.184443,
		0.295960, -0.936743, -0.186871,
		38.086658, 29.654392, 51.518333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011379, 30.105082, 52.257778>,  <37.879486, 30.310112, 51.649143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011379, 30.105082, 52.257778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.132034, 29.766859, 52.081573>,  <38.204430, 29.563927, 51.975853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.132034, 29.766859, 52.081573>,  <38.011379, 30.105082, 52.257778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132034, 29.766859, 52.081573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553927, -0.220629, 0.802800,
		-0.776000, -0.486169, 0.401825,
		0.301642, -0.845555, -0.440510,
		38.222527, 29.513193, 51.949421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785923, 29.617451, 52.703709>,  <38.011379, 30.105082, 52.257778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785923, 29.617451, 52.703709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.093361, 29.500011, 52.476357>,  <38.277824, 29.429548, 52.339943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.093361, 29.500011, 52.476357>,  <37.785923, 29.617451, 52.703709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093361, 29.500011, 52.476357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571516, -0.084095, 0.816270,
		-0.287452, -0.952223, 0.103161,
		0.768596, -0.293597, -0.568384,
		38.323940, 29.411932, 52.305840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.343208, 35.764332, 37.803589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669121, 35.534592, 37.771973>,  <34.864670, 35.396748, 37.753002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669121, 35.534592, 37.771973>,  <34.343208, 35.764332, 37.803589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669121, 35.534592, 37.771973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180236, -0.380519, 0.907039,
		-0.551035, -0.724796, -0.413560,
		0.814785, -0.574349, -0.079045,
		34.913555, 35.362286, 37.748260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315891, 35.104355, 38.267643>,  <34.343208, 35.764332, 37.803589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315891, 35.104355, 38.267643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697388, 35.218281, 38.229164>,  <34.926285, 35.286636, 38.206078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697388, 35.218281, 38.229164>,  <34.315891, 35.104355, 38.267643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697388, 35.218281, 38.229164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214955, -0.422381, 0.880561,
		0.210164, -0.860508, -0.464066,
		0.953743, 0.284815, -0.096202,
		34.983509, 35.303726, 38.200302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772636, 34.492603, 38.265022>,  <34.315891, 35.104355, 38.267643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772636, 34.492603, 38.265022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937744, 34.825188, 38.413776>,  <35.036808, 35.024738, 38.503029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937744, 34.825188, 38.413776>,  <34.772636, 34.492603, 38.265022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937744, 34.825188, 38.413776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041183, -0.424907, 0.904300,
		0.909903, -0.357953, -0.209632,
		0.412771, 0.831459, 0.371883,
		35.061577, 35.074627, 38.525341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263435, 34.251869, 38.660248>,  <34.772636, 34.492603, 38.265022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263435, 34.251869, 38.660248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221672, 34.628147, 38.789364>,  <35.196613, 34.853912, 38.866833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221672, 34.628147, 38.789364>,  <35.263435, 34.251869, 38.660248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221672, 34.628147, 38.789364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113561, -0.311169, 0.943545,
		0.988030, 0.135172, -0.074338,
		-0.104409, 0.940693, 0.322795,
		35.190350, 34.910355, 38.886204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666546, 34.164074, 39.186569>,  <35.263435, 34.251869, 38.660248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666546, 34.164074, 39.186569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491840, 34.520023, 39.239269>,  <35.387016, 34.733593, 39.270889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491840, 34.520023, 39.239269>,  <35.666546, 34.164074, 39.186569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491840, 34.520023, 39.239269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139384, -0.077745, 0.987182,
		0.888711, 0.449532, -0.090078,
		-0.436767, 0.889875, 0.131751,
		35.360809, 34.786987, 39.278793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054031, 34.458729, 39.718285>,  <35.666546, 34.164074, 39.186569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054031, 34.458729, 39.718285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700283, 34.644066, 39.740959>,  <35.488033, 34.755268, 39.754562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700283, 34.644066, 39.740959>,  <36.054031, 34.458729, 39.718285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700283, 34.644066, 39.740959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066258, 0.004403, 0.997793,
		0.462067, 0.886170, -0.034594,
		-0.884366, 0.463339, 0.056682,
		35.434975, 34.783066, 39.757965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103649, 34.931572, 40.282993>,  <36.054031, 34.458729, 39.718285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103649, 34.931572, 40.282993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716694, 34.858414, 40.212891>,  <35.484520, 34.814518, 40.170830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716694, 34.858414, 40.212891>,  <36.103649, 34.931572, 40.282993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716694, 34.858414, 40.212891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152662, -0.131132, 0.979540,
		-0.202138, 0.974347, 0.098933,
		-0.967385, -0.182898, -0.175253,
		35.426479, 34.803543, 40.160316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769218, 35.278862, 40.793461>,  <36.103649, 34.931572, 40.282993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769218, 35.278862, 40.793461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493423, 35.019245, 40.664871>,  <35.327946, 34.863476, 40.587715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493423, 35.019245, 40.664871>,  <35.769218, 35.278862, 40.793461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493423, 35.019245, 40.664871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343350, -0.097914, 0.934090,
		-0.637739, 0.754426, -0.155337,
		-0.689492, -0.649041, -0.321476,
		35.286575, 34.824532, 40.568428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212982, 35.495316, 41.212772>,  <35.769218, 35.278862, 40.793461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212982, 35.495316, 41.212772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133003, 35.128235, 41.075459>,  <35.085014, 34.907986, 40.993069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133003, 35.128235, 41.075459>,  <35.212982, 35.495316, 41.212772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133003, 35.128235, 41.075459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296707, -0.277200, 0.913852,
		-0.933801, 0.284580, -0.216862,
		-0.199950, -0.917701, -0.343286,
		35.073017, 34.852924, 40.972473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713375, 35.293999, 41.668953>,  <35.212982, 35.495316, 41.212772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713375, 35.293999, 41.668953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846531, 34.950886, 41.512291>,  <34.926426, 34.745018, 41.418293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846531, 34.950886, 41.512291>,  <34.713375, 35.293999, 41.668953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846531, 34.950886, 41.512291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003699, -0.414151, 0.910200,
		-0.942957, -0.304448, -0.134695,
		0.332893, -0.857782, -0.391653,
		34.946400, 34.693550, 41.394794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387814, 34.784149, 41.999966>,  <34.713375, 35.293999, 41.668953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387814, 34.784149, 41.999966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716206, 34.610855, 41.851215>,  <34.913242, 34.506878, 41.761967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716206, 34.610855, 41.851215>,  <34.387814, 34.784149, 41.999966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716206, 34.610855, 41.851215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063644, -0.577829, 0.813672,
		-0.567388, -0.691682, -0.446818,
		0.820988, -0.433230, -0.371874,
		34.962502, 34.480885, 41.739651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420685, 34.011318, 42.171730>,  <34.387814, 34.784149, 41.999966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420685, 34.011318, 42.171730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810184, 34.071999, 42.103848>,  <35.043884, 34.108406, 42.063118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810184, 34.071999, 42.103848>,  <34.420685, 34.011318, 42.171730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810184, 34.071999, 42.103848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224105, -0.508277, 0.831524,
		0.039880, -0.847728, -0.528930,
		0.973749, 0.151697, -0.169710,
		35.102310, 34.117508, 42.052933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993469, 33.450199, 42.036285>,  <34.420685, 34.011318, 42.171730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993469, 33.450199, 42.036285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658298, 33.460072, 42.254379>,  <33.457195, 33.465996, 42.385235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658298, 33.460072, 42.254379>,  <33.993469, 33.450199, 42.036285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658298, 33.460072, 42.254379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516761, 0.285569, -0.807099,
		-0.175624, -0.958040, -0.226529,
		-0.837923, 0.024685, 0.545231,
		33.406921, 33.467476, 42.417950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392216, 33.247898, 41.591293>,  <33.993469, 33.450199, 42.036285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392216, 33.247898, 41.591293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225903, 33.448318, 41.894890>,  <33.126114, 33.568569, 42.077049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225903, 33.448318, 41.894890>,  <33.392216, 33.247898, 41.591293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225903, 33.448318, 41.894890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640516, 0.431138, -0.635499,
		-0.645649, -0.750377, 0.141672,
		-0.415784, 0.501052, 0.758993,
		33.101166, 33.598633, 42.122589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753315, 33.437462, 41.323505>,  <33.392216, 33.247898, 41.591293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753315, 33.437462, 41.323505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770332, 33.690857, 41.632538>,  <32.780544, 33.842896, 41.817959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770332, 33.690857, 41.632538>,  <32.753315, 33.437462, 41.323505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770332, 33.690857, 41.632538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697599, 0.572406, -0.430939,
		-0.715225, -0.520617, 0.466274,
		0.042544, 0.633490, 0.772580,
		32.783096, 33.880905, 41.864311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116039, 33.519505, 41.589664>,  <32.753315, 33.437462, 41.323505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116039, 33.519505, 41.589664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332417, 33.846626, 41.668232>,  <32.462242, 34.042900, 41.715370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332417, 33.846626, 41.668232>,  <32.116039, 33.519505, 41.589664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332417, 33.846626, 41.668232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512953, 0.505866, -0.693526,
		-0.666527, 0.274407, 0.693140,
		0.540944, 0.817802, 0.196416,
		32.494701, 34.091969, 41.727158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605614, 33.987095, 41.684589>,  <32.116039, 33.519505, 41.589664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605614, 33.987095, 41.684589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934877, 34.206902, 41.627396>,  <32.132435, 34.338787, 41.593079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934877, 34.206902, 41.627396>,  <31.605614, 33.987095, 41.684589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934877, 34.206902, 41.627396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473778, 0.525907, -0.706368,
		-0.312963, 0.649195, 0.693253,
		0.823157, 0.549515, -0.142985,
		32.181824, 34.371758, 41.584499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340918, 34.588158, 41.495838>,  <31.605614, 33.987095, 41.684589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340918, 34.588158, 41.495838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723562, 34.620258, 41.383801>,  <31.953150, 34.639519, 41.316578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723562, 34.620258, 41.383801>,  <31.340918, 34.588158, 41.495838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723562, 34.620258, 41.383801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277825, 0.540923, -0.793861,
		0.087798, 0.837234, 0.539750,
		0.956611, 0.080256, -0.280097,
		32.010544, 34.644337, 41.299770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413931, 35.288845, 41.295094>,  <31.340918, 34.588158, 41.495838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413931, 35.288845, 41.295094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697826, 35.080746, 41.105099>,  <31.868164, 34.955887, 40.991100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697826, 35.080746, 41.105099>,  <31.413931, 35.288845, 41.295094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697826, 35.080746, 41.105099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141052, 0.555651, -0.819363,
		0.690198, 0.648533, 0.320987,
		0.709741, -0.520247, -0.474986,
		31.910749, 34.924671, 40.962605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872414, 35.724140, 41.005165>,  <31.413931, 35.288845, 41.295094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872414, 35.724140, 41.005165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927879, 35.386024, 40.798763>,  <31.961159, 35.183155, 40.674923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927879, 35.386024, 40.798763>,  <31.872414, 35.724140, 41.005165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927879, 35.386024, 40.798763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185261, 0.489703, -0.851979,
		0.972857, 0.213735, -0.088695,
		0.138664, -0.845286, -0.516008,
		31.969479, 35.132439, 40.643959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171398, 35.815990, 40.430241>,  <31.872414, 35.724140, 41.005165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171398, 35.815990, 40.430241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011154, 35.459724, 40.344242>,  <31.915009, 35.245964, 40.292641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011154, 35.459724, 40.344242>,  <32.171398, 35.815990, 40.430241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011154, 35.459724, 40.344242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416717, 0.386091, -0.822971,
		0.816003, -0.240094, -0.525827,
		-0.400607, -0.890667, -0.215000,
		31.890972, 35.192524, 40.279743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238064, 35.712811, 39.729408>,  <32.171398, 35.815990, 40.430241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238064, 35.712811, 39.729408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947639, 35.453136, 39.820087>,  <31.773384, 35.297333, 39.874493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947639, 35.453136, 39.820087>,  <32.238064, 35.712811, 39.729408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947639, 35.453136, 39.820087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501921, 0.275005, -0.820029,
		0.470011, -0.709173, -0.525511,
		-0.726061, -0.649188, 0.226694,
		31.729820, 35.258381, 39.888096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105350, 35.561237, 39.091980>,  <32.238064, 35.712811, 39.729408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105350, 35.561237, 39.091980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790075, 35.439064, 39.305695>,  <31.600910, 35.365761, 39.433922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790075, 35.439064, 39.305695>,  <32.105350, 35.561237, 39.091980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790075, 35.439064, 39.305695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615430, 0.391515, -0.684077,
		-0.000239, -0.868000, -0.496564,
		-0.788191, -0.305437, 0.534287,
		31.553617, 35.347431, 39.465981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666578, 35.287392, 38.566071>,  <32.105350, 35.561237, 39.091980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666578, 35.287392, 38.566071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411467, 35.356655, 38.866272>,  <31.258400, 35.398212, 39.046394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411467, 35.356655, 38.866272>,  <31.666578, 35.287392, 38.566071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411467, 35.356655, 38.866272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685102, 0.317720, -0.655506,
		-0.351958, -0.932239, -0.084002,
		-0.637777, 0.173161, 0.750503,
		31.220133, 35.408604, 39.091423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078873, 35.066601, 38.316689>,  <31.666578, 35.287392, 38.566071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078873, 35.066601, 38.316689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974316, 35.302444, 38.622379>,  <30.911581, 35.443951, 38.805794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974316, 35.302444, 38.622379>,  <31.078873, 35.066601, 38.316689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974316, 35.302444, 38.622379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844170, 0.244265, -0.477191,
		-0.468029, -0.769868, 0.433880,
		-0.261393, 0.589608, 0.764223,
		30.895897, 35.479328, 38.851646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970655, 34.421307, 37.971375>,  <31.078873, 35.066601, 38.316689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970655, 34.421307, 37.971375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853220, 34.232399, 37.638924>,  <30.782759, 34.119057, 37.439453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853220, 34.232399, 37.638924>,  <30.970655, 34.421307, 37.971375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853220, 34.232399, 37.638924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752822, 0.421592, -0.505490,
		0.589122, -0.774096, 0.231757,
		-0.293590, -0.472267, -0.831125,
		30.765142, 34.090717, 37.389587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431524, 33.940899, 37.695026>,  <30.970655, 34.421307, 37.971375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431524, 33.940899, 37.695026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241039, 34.086887, 37.375023>,  <31.126749, 34.174480, 37.183022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241039, 34.086887, 37.375023>,  <31.431524, 33.940899, 37.695026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241039, 34.086887, 37.375023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862805, 0.369494, -0.345023,
		0.169677, -0.854559, -0.490855,
		-0.476211, 0.364970, -0.800013,
		31.098175, 34.196377, 37.135017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053005, 33.794140, 37.331913>,  <31.431524, 33.940899, 37.695026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053005, 33.794140, 37.331913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346390, 33.744389, 37.064613>,  <32.522423, 33.714539, 36.904232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346390, 33.744389, 37.064613>,  <32.053005, 33.794140, 37.331913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346390, 33.744389, 37.064613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427815, -0.679497, 0.596035,
		-0.528207, -0.723059, -0.445178,
		0.733465, -0.124376, -0.668251,
		32.566429, 33.707077, 36.864140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129063, 33.055775, 37.056938>,  <32.053005, 33.794140, 37.331913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129063, 33.055775, 37.056938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479252, 33.248215, 37.038597>,  <32.689365, 33.363678, 37.027592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479252, 33.248215, 37.038597>,  <32.129063, 33.055775, 37.056938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479252, 33.248215, 37.038597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417276, -0.704638, 0.573904,
		0.243795, -0.521567, -0.817638,
		0.875468, 0.481096, -0.045850,
		32.741894, 33.392544, 37.024841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586811, 32.545368, 37.028961>,  <32.129063, 33.055775, 37.056938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586811, 32.545368, 37.028961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809418, 32.858749, 37.139599>,  <32.942982, 33.046776, 37.205982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809418, 32.858749, 37.139599>,  <32.586811, 32.545368, 37.028961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809418, 32.858749, 37.139599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537256, -0.593275, 0.599484,
		0.633759, -0.185021, -0.751077,
		0.556512, 0.783449, 0.276590,
		32.976372, 33.093784, 37.222576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326244, 32.364361, 37.006710>,  <32.586811, 32.545368, 37.028961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326244, 32.364361, 37.006710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295204, 32.661892, 37.272251>,  <33.276581, 32.840408, 37.431576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295204, 32.661892, 37.272251>,  <33.326244, 32.364361, 37.006710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295204, 32.661892, 37.272251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572459, -0.511913, 0.640497,
		0.816253, 0.429730, -0.386086,
		-0.077599, 0.743826, 0.663853,
		33.271923, 32.885040, 37.471409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972347, 32.294319, 37.359737>,  <33.326244, 32.364361, 37.006710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972347, 32.294319, 37.359737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751141, 32.508171, 37.615345>,  <33.618416, 32.636482, 37.768711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751141, 32.508171, 37.615345>,  <33.972347, 32.294319, 37.359737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751141, 32.508171, 37.615345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556619, -0.333631, 0.760832,
		0.619958, 0.776443, -0.113080,
		-0.553016, 0.534627, 0.639020,
		33.585236, 32.668560, 37.807053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367298, 32.474438, 37.988228>,  <33.972347, 32.294319, 37.359737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367298, 32.474438, 37.988228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000969, 32.539375, 38.135147>,  <33.781170, 32.578339, 38.223301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000969, 32.539375, 38.135147>,  <34.367298, 32.474438, 37.988228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000969, 32.539375, 38.135147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303102, -0.320542, 0.897431,
		0.263428, 0.933219, 0.244353,
		-0.915825, 0.162345, 0.367300,
		33.726223, 32.588078, 38.245338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450005, 32.852428, 38.648754>,  <34.367298, 32.474438, 37.988228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450005, 32.852428, 38.648754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083851, 32.691486, 38.654007>,  <33.864159, 32.594921, 38.657158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083851, 32.691486, 38.654007>,  <34.450005, 32.852428, 38.648754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083851, 32.691486, 38.654007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123933, -0.250614, 0.960122,
		-0.383020, 0.880512, 0.279274,
		-0.915389, -0.402357, 0.013134,
		33.809235, 32.570778, 38.657948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179047, 32.985203, 39.341770>,  <34.450005, 32.852428, 38.648754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179047, 32.985203, 39.341770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932751, 32.703869, 39.199680>,  <33.784973, 32.535069, 39.114426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932751, 32.703869, 39.199680>,  <34.179047, 32.985203, 39.341770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932751, 32.703869, 39.199680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106600, -0.372320, 0.921962,
		-0.780705, 0.605556, 0.154276,
		-0.615740, -0.703335, -0.355225,
		33.748028, 32.492870, 39.093113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584286, 32.916485, 39.781494>,  <34.179047, 32.985203, 39.341770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584286, 32.916485, 39.781494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593166, 32.557682, 39.604912>,  <33.598495, 32.342400, 39.498962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593166, 32.557682, 39.604912>,  <33.584286, 32.916485, 39.781494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593166, 32.557682, 39.604912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048050, -0.442013, 0.895721,
		-0.998598, 0.001329, -0.052913,
		0.022198, -0.897008, -0.441457,
		33.599827, 32.288578, 39.472473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026539, 32.425751, 40.195465>,  <33.584286, 32.916485, 39.781494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026539, 32.425751, 40.195465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313889, 32.223713, 40.004124>,  <33.486298, 32.102489, 39.889320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313889, 32.223713, 40.004124>,  <33.026539, 32.425751, 40.195465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313889, 32.223713, 40.004124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141935, -0.566742, 0.811577,
		-0.681028, -0.650908, -0.335440,
		0.718370, -0.505096, -0.478354,
		33.529400, 32.072186, 39.860619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883873, 31.723713, 40.459801>,  <33.026539, 32.425751, 40.195465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883873, 31.723713, 40.459801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249214, 31.734440, 40.297283>,  <33.468418, 31.740875, 40.199772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249214, 31.734440, 40.297283>,  <32.883873, 31.723713, 40.459801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249214, 31.734440, 40.297283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323397, -0.654061, 0.683826,
		-0.247404, -0.755966, -0.606058,
		0.913349, 0.026816, -0.406295,
		33.523220, 31.742485, 40.175396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020485, 31.084461, 40.384129>,  <32.883873, 31.723713, 40.459801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020485, 31.084461, 40.384129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380615, 31.257702, 40.367008>,  <33.596695, 31.361647, 40.356735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380615, 31.257702, 40.367008>,  <33.020485, 31.084461, 40.384129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380615, 31.257702, 40.367008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371685, -0.714017, 0.593322,
		0.226408, -0.550093, -0.803827,
		0.900328, 0.433103, -0.042802,
		33.650715, 31.387632, 40.354168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398327, 30.547266, 40.358601>,  <33.020485, 31.084461, 40.384129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398327, 30.547266, 40.358601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643135, 30.843613, 40.469269>,  <33.790020, 31.021420, 40.535671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643135, 30.843613, 40.469269>,  <33.398327, 30.547266, 40.358601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643135, 30.843613, 40.469269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460850, -0.618414, 0.636538,
		0.642687, -0.262072, -0.719911,
		0.612022, 0.740866, 0.276671,
		33.826740, 31.065872, 40.552269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099335, 30.342815, 40.276989>,  <33.398327, 30.547266, 40.358601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099335, 30.342815, 40.276989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077744, 30.629135, 40.555473>,  <34.064789, 30.800928, 40.722565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077744, 30.629135, 40.555473>,  <34.099335, 30.342815, 40.276989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077744, 30.629135, 40.555473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420734, -0.616015, 0.665964,
		0.905577, 0.328867, -0.267912,
		-0.053976, 0.715802, 0.696214,
		34.061550, 30.843876, 40.764339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656155, 30.080357, 40.817162>,  <34.099335, 30.342815, 40.276989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656155, 30.080357, 40.817162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488739, 30.394745, 40.999184>,  <34.388290, 30.583378, 41.108395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488739, 30.394745, 40.999184>,  <34.656155, 30.080357, 40.817162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488739, 30.394745, 40.999184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270603, -0.370368, 0.888595,
		0.866948, 0.495051, -0.057672,
		-0.418540, 0.785972, 0.455052,
		34.363178, 30.630537, 41.135700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196270, 30.365349, 41.188648>,  <34.656155, 30.080357, 40.817162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196270, 30.365349, 41.188648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849178, 30.484064, 41.348129>,  <34.640923, 30.555294, 41.443817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849178, 30.484064, 41.348129>,  <35.196270, 30.365349, 41.188648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849178, 30.484064, 41.348129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311512, -0.300332, 0.901533,
		0.387307, 0.906487, 0.168154,
		-0.867729, 0.296788, 0.398702,
		34.588860, 30.573101, 41.467739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350540, 30.662870, 41.879848>,  <35.196270, 30.365349, 41.188648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350540, 30.662870, 41.879848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976627, 30.521433, 41.893448>,  <34.752281, 30.436571, 41.901608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976627, 30.521433, 41.893448>,  <35.350540, 30.662870, 41.879848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976627, 30.521433, 41.893448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196813, -0.435872, 0.878226,
		-0.295718, 0.827639, 0.477037,
		-0.934781, -0.353594, 0.033995,
		34.696194, 30.415354, 41.903645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306801, 30.587051, 42.560883>,  <35.350540, 30.662870, 41.879848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306801, 30.587051, 42.560883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978264, 30.385563, 42.453800>,  <34.781143, 30.264669, 42.389549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978264, 30.385563, 42.453800>,  <35.306801, 30.587051, 42.560883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978264, 30.385563, 42.453800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198800, -0.692641, 0.693344,
		-0.534678, 0.516250, 0.669033,
		-0.821339, -0.503720, -0.267710,
		34.731861, 30.234447, 42.373486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949509, 30.486759, 43.099186>,  <35.306801, 30.587051, 42.560883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949509, 30.486759, 43.099186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836761, 30.200066, 42.844051>,  <34.769112, 30.028049, 42.690971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836761, 30.200066, 42.844051>,  <34.949509, 30.486759, 43.099186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836761, 30.200066, 42.844051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089502, -0.681540, 0.726286,
		-0.955269, 0.147631, 0.256255,
		-0.281871, -0.716734, -0.637841,
		34.752201, 29.985044, 42.652699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352974, 30.190002, 43.377495>,  <34.949509, 30.486759, 43.099186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352974, 30.190002, 43.377495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533653, 29.917295, 43.147308>,  <34.642059, 29.753672, 43.009197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533653, 29.917295, 43.147308>,  <34.352974, 30.190002, 43.377495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533653, 29.917295, 43.147308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184899, -0.559476, 0.807960,
		-0.872801, -0.471357, -0.126656,
		0.451698, -0.681769, -0.575465,
		34.669163, 29.712765, 42.974670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070732, 29.537266, 43.541115>,  <34.352974, 30.190002, 43.377495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070732, 29.537266, 43.541115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407143, 29.431444, 43.352360>,  <34.608990, 29.367950, 43.239105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407143, 29.431444, 43.352360>,  <34.070732, 29.537266, 43.541115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407143, 29.431444, 43.352360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130289, -0.747548, 0.651304,
		-0.525065, -0.609248, -0.594242,
		0.841030, -0.264554, -0.471890,
		34.659451, 29.352077, 43.210793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986950, 28.837914, 43.632027>,  <34.070732, 29.537266, 43.541115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986950, 28.837914, 43.632027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366943, 28.885004, 43.516319>,  <34.594940, 28.913258, 43.446896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366943, 28.885004, 43.516319>,  <33.986950, 28.837914, 43.632027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366943, 28.885004, 43.516319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256451, -0.822663, 0.507404,
		-0.178238, -0.556207, -0.811705,
		0.949981, 0.117724, -0.289269,
		34.651939, 28.920321, 43.429539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269810, 28.167446, 43.335163>,  <33.986950, 28.837914, 43.632027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269810, 28.167446, 43.335163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588505, 28.359001, 43.482613>,  <34.779720, 28.473934, 43.571083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588505, 28.359001, 43.482613>,  <34.269810, 28.167446, 43.335163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588505, 28.359001, 43.482613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363746, -0.867115, 0.340294,
		0.482601, -0.137039, -0.865053,
		0.796734, 0.478886, 0.368624,
		34.827526, 28.502666, 43.593201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823257, 27.694746, 43.162312>,  <34.269810, 28.167446, 43.335163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823257, 27.694746, 43.162312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964767, 27.944111, 43.441223>,  <35.049671, 28.093729, 43.608570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964767, 27.944111, 43.441223>,  <34.823257, 27.694746, 43.162312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964767, 27.944111, 43.441223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551310, -0.741208, 0.382972,
		0.755581, 0.248935, -0.605911,
		0.353771, 0.623411, 0.697283,
		35.070900, 28.131134, 43.650410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585712, 27.349459, 43.322651>,  <34.823257, 27.694746, 43.162312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585712, 27.349459, 43.322651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476898, 27.591133, 43.622238>,  <35.411610, 27.736137, 43.801991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476898, 27.591133, 43.622238>,  <35.585712, 27.349459, 43.322651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476898, 27.591133, 43.622238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485468, -0.585847, 0.648925,
		0.830854, 0.540129, -0.133945,
		-0.272032, 0.604188, 0.748970,
		35.395290, 27.772390, 43.846928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231991, 27.504156, 43.712963>,  <35.585712, 27.349459, 43.322651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231991, 27.504156, 43.712963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935425, 27.550489, 43.977352>,  <35.757484, 27.578289, 44.135986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935425, 27.550489, 43.977352>,  <36.231991, 27.504156, 43.712963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935425, 27.550489, 43.977352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530579, -0.501853, 0.683103,
		0.410836, 0.857162, 0.310624,
		-0.741417, 0.115833, 0.660971,
		35.713001, 27.585239, 44.175644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579666, 27.694330, 44.285206>,  <36.231991, 27.504156, 43.712963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579666, 27.694330, 44.285206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218349, 27.589355, 44.420967>,  <36.001560, 27.526371, 44.502426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218349, 27.589355, 44.420967>,  <36.579666, 27.694330, 44.285206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218349, 27.589355, 44.420967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428893, -0.572513, 0.698770,
		0.010931, 0.776760, 0.629702,
		-0.903289, -0.262436, 0.339405,
		35.947361, 27.510624, 44.522789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193634, 27.993444, 44.747883>,  <36.579666, 27.694330, 44.285206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193634, 27.993444, 44.747883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504482, 27.808107, 44.577518>,  <37.690990, 27.696905, 44.475300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504482, 27.808107, 44.577518>,  <37.193634, 27.993444, 44.747883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504482, 27.808107, 44.577518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041168, 0.637873, -0.769041,
		0.628006, 0.615170, 0.476628,
		0.777119, -0.463340, -0.425913,
		37.737617, 27.669106, 44.449745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764523, 28.445234, 44.485371>,  <37.193634, 27.993444, 44.747883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764523, 28.445234, 44.485371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801289, 28.118172, 44.258041>,  <37.823349, 27.921934, 44.121643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801289, 28.118172, 44.258041>,  <37.764523, 28.445234, 44.485371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801289, 28.118172, 44.258041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036742, 0.567565, -0.822509,
		0.995089, 0.096482, 0.022125,
		0.091914, -0.817656, -0.568323,
		37.828861, 27.872875, 44.087543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363480, 28.546263, 44.068153>,  <37.764523, 28.445234, 44.485371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363480, 28.546263, 44.068153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144970, 28.277752, 43.867764>,  <38.013866, 28.116646, 43.747528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144970, 28.277752, 43.867764>,  <38.363480, 28.546263, 44.068153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144970, 28.277752, 43.867764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069788, 0.559545, -0.825856,
		0.834697, -0.486102, -0.258815,
		-0.546269, -0.671278, -0.500975,
		37.981091, 28.076368, 43.717472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632179, 28.515310, 43.408630>,  <38.363480, 28.546263, 44.068153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632179, 28.515310, 43.408630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269192, 28.357424, 43.351086>,  <38.051399, 28.262691, 43.316559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269192, 28.357424, 43.351086>,  <38.632179, 28.515310, 43.408630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269192, 28.357424, 43.351086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038118, 0.418386, -0.907469,
		0.418386, -0.818016, -0.394718,
		0.907469, 0.394718, 0.143866,
		37.996952, 28.239008, 43.307926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608711, 28.151999, 42.788914>,  <38.632179, 28.515310, 43.408630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608711, 28.151999, 42.788914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230507, 28.262291, 42.858185>,  <38.003586, 28.328466, 42.899746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230507, 28.262291, 42.858185>,  <38.608711, 28.151999, 42.788914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230507, 28.262291, 42.858185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094094, 0.277778, -0.956026,
		-0.311710, -0.920224, -0.236696,
		-0.945507, 0.275731, 0.173174,
		37.946854, 28.345011, 42.910137>
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
